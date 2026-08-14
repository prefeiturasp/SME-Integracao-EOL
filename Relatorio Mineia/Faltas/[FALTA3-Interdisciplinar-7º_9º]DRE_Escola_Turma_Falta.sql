USE GestaoPedagogica

DECLARE

	--@tur_id INT = 201667	--EF-2A -Ensino Fundamental
	--,@tpc_id INT = 4		--4º Bimestre
	--,@alu_id INT = 1699464

     @dataIntervaloInicio DATE = '2019-02-04'
    ,@dataIntervaloFim	  DATE = '2019-04-30'

    ,@fav_id INT = 9

	--resultado:94766 28min36seg
   	
	--8 1º ao 3º ano;				Alfabetização
	--7 4º ao 5º ano; 10 6º ano;	Interdisciplinar
	--9 7º ao 9º ano;				Autoral


IF OBJECT_ID('tempdb..#tau_dada')			IS NOT NULL		DROP TABLE #tau_dada
IF OBJECT_ID('tempdb..#frequencia_alunos')	IS NOT NULL		DROP TABLE #frequencia_alunos
IF OBJECT_ID('tempdb..#AuxFrequencia')		IS NOT NULL		DROP TABLE #AuxFrequencia

SELECT 
	tau_dada.tud_id,
	SUM(tau_dada.tau_numeroAulas) As tau_dada_sum
INTO #tau_dada 
FROM GestaoPedagogica..CLS_TurmaAula tau_dada	--Plano de Aula
WHERE tau_dada.tau_situacao NOT IN (3,6)		--1–Aula prevista, 3–Excluído, 4–Aula dada, 6–Aula cancelada
	AND tau_dada.tau_data BETWEEN 
	@dataIntervaloInicio AND @dataIntervaloFim
Group By 
tau_dada.tud_id									--, tau_dada.tau_numeroAulas

CREATE INDEX idx_tau_dada ON #tau_dada (tud_id);

Select 
	 uad.uad_nome				AS 'DirRegionalEnsino'
	,esc.esc_nome				As 'NomeEscola'
	,cal.cal_ano				As 'Ano'
	, tpc.tpc_nome				As 'Bimestre'
	, mtu.alu_id				As 'CodigoEstudante'
	, pes.pes_nome				As 'NomeEstudante'
	,tud.tud_codigo				As 'Turma'			-- Ex 2A, 2C
	,tud.tud_nome				As 'NomeDisciplina'	
	,SUM(taa.taa_frequencia)	As 'QtdFaltas'		-- numero de faltas no dia Aluno
	,aula_dada.tau_dada_sum		As 'QtdAulas'		-- numero de aulas Totais
	

INTO #frequencia_alunos

FROM MTR_MatriculaTurma mtu
	INNER JOIN TUR_Turma tur 				WITH(NOLOCK)
	ON tur.tur_id = Mtu.tur_id
	AND tur.tur_situacao <> 3
	INNER JOIN ACA_CalendarioPeriodo cap	WITH(NOLOCK)
	ON cap.cal_id = tur.cal_id
	AND cap.cap_situacao <> 3
	INNER JOIN ACA_TipoPeriodoCalendario tpc WITH(NOLOCK)
	ON tpc.tpc_id = cap.tpc_id
	INNER JOIN ACA_CalendarioAnual cal		WITH(NOLOCK)
	ON cal.cal_id = cap.cal_id 
	AND tur.cal_id = cal.cal_id
    INNER JOIN ACA_Curso  cur				WITH(NOLOCK)
	ON cur.cur_id = mtu.cur_id
    AND cur.cur_situacao <> 3
    INNER JOIN ACA_TipoNivelEnsino tne		WITH(NOLOCK)
	ON tne.tne_id = cur.tne_id

    INNER JOIN ACA_ALUNO alu
	ON alu.alu_id = mtu.alu_id
	INNER JOIN CoreSSO..PES_PESSOA pes		WITH(NOLOCK)
	ON alu.pes_id = pes.pes_id
	INNER JOIN ESC_Escola esc				WITH(NOLOCK)
	ON esc.esc_id = tur.esc_id
	INNER JOIN CoreSSO..SYS_UnidadeAdministrativa uad 
											WITH(NOLOCK)
	ON uad.uad_id = esc.uad_idSuperiorGestao
	INNER JOIN TUR_TurmaRelTurmaDisciplina tur_rel_tud 
											WITH(NOLOCK)
	ON tur_rel_tud.tur_id = tur.tur_id
	INNER JOIN GestaoPedagogica..TUR_TurmaDisciplina tud
	ON  tur_rel_tud.tud_id = tud.tud_id

	INNER JOIN CLS_TurmaAula tau			WITH(NOLOCK)
	ON tau.tud_id = tud.tud_id 
	AND tau.tpc_id = tpc.tpc_id

	INNER JOIN CLS_TurmaAulaAluno taa		WITH(NOLOCK)
	ON tau.tau_id = taa.tau_id 
	AND tau.tud_id = taa.tud_id 
	AND taa.mtu_id = mtu.mtu_id 
	AND taa.alu_id = mtu.alu_id

    INNER JOIN #tau_dada AS aula_dada
    ON taa.tud_id = aula_dada.tud_id
	
	INNER JOIN GestaoPedagogica..MTR_MatriculaTurmaDisciplina mtr_mat_tud
	ON mtr_mat_tud.tud_id = tud.tud_id 
	AND mtr_mat_tud.alu_id = alu.alu_id 
	AND (tau.tau_data between mtr_mat_tud.mtd_dataMatricula 
	AND Coalesce(mtr_mat_tud.mtd_dataSaida,@dataIntervaloFim))
    

WHERE tur.fav_id = @fav_id 
	AND tau.tau_data BETWEEN @dataIntervaloInicio 
	AND @dataIntervaloFim
	AND tau.tau_situacao not in(3,6)
	AND Left(RTrim(LTrim(tud.tud_codigo)),1) IN('7','8','9')
	AND tau.tau_statusPlanoAula = 2 

Group by
	uad.uad_nome		
	,esc.esc_nome			
	,cal.cal_ano			
	,tpc.tpc_nome			
	,mtu.alu_id			
	,pes.pes_nome			
	,tud.tud_codigo
	,aula_dada.tau_dada_sum
	,tud.tud_nome


Select * 
	Into #AuxFrequencia
From #frequencia_alunos where QtdFaltas >= 10


Select 

	 DirRegionalEnsino
	,NomeEscola
	,Ano
	,Bimestre
	,CodigoEstudante
	,NomeEstudante
	,Turma
	,NomeDisciplina
	,QtdFaltas
	,QtdAulas	
	,[dbo].[fn_StringtoFloat](Cast(QtdFaltas As Decimal(10,2)) / Cast(QtdAulas  As Decimal(10,2)),'.') As PercAusencias

From #AuxFrequencia


IF OBJECT_ID('tempdb..#tau_dada')			IS NOT NULL		DROP TABLE #tau_dada
IF OBJECT_ID('tempdb..#frequencia_alunos')	IS NOT NULL		DROP TABLE #frequencia_alunos
IF OBJECT_ID('tempdb..#AuxFrequencia')		IS NOT NULL		DROP TABLE #AuxFrequencia

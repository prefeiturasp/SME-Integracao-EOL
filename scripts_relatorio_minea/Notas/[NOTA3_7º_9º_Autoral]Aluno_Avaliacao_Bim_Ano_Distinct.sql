USE GestaoPedagogica

Declare

     @tpc_id INT = 1
    ,@fav_id INT = 9

	
	--9 7º ao 9º ano;				Autoral

	--8 1º ao 3º ano;				Alfabetização

	--7 4º ao 5º ano; 10 6º ano;	Interdisciplinar
				
      ,@ano INT = 2019
	  
   --,@tur_id int = 201667	--EF-2A -Ensino Fundamental
   --,@alu_id int = 1699464	--Daniel Moura Feitosa


If Object_Id('tempdb..#Tmp_TurmaDisciplina')	IS NOT NULL		DROP TABLE #Tmp_TurmaDisciplina

Select * 
	Into #Tmp_TurmaDisciplina
From GestaoPedagogica..TUR_TurmaDisciplina WITH(NOLOCK)
	Where 
	   Upper(tud_nome) LIKE '%MATEMATICA%' 
	OR Upper(tud_nome) LIKE '%MATEMÁTICA%' 
	OR Upper(tud_nome) LIKE '%PORTUGUES%'
	OR Upper(tud_nome) LIKE '%PORTUGUÊS%'

CREATE INDEX idx_TurmaDisciplina ON #Tmp_TurmaDisciplina (tud_id);

Select

	esc.esc_nome	As 'NomeEscola' 
	,Year(cap.cap_dataInicio) 
					As 'Ano'
	,mtu.alu_id		As 'CodigoEstudante'
	,pes.pes_nome	As 'NomeEstudante'
	,tud.tud_codigo As 'Turma'
	,tud.tud_nome	As 'NomeDiscuplina'
	,atd_avaliacao	As 'Nota'

From MTR_MatriculaTurma mtu
	INNER JOIN TUR_Turma tur WITH(NOLOCK)
	ON tur.tur_id = Mtu.tur_id
	AND tur.tur_situacao <> 3

	INNER JOIN ACA_CalendarioPeriodo cap WITH(NOLOCK)
	ON cap.cal_id = tur.cal_id
	AND cap.cap_situacao <> 3

	INNER JOIN ACA_CalendarioAnual cal WITH(NOLOCK)
	ON cal.cal_id = cap.cal_id
	INNER JOIN ACA_TipoPeriodoCalendario  tpc WITH(NOLOCK)
	ON tpc.tpc_id = cap.tpc_id

	INNER JOIN ACA_Curso  cur WITH(NOLOCK)
	ON cur.cur_id = mtu.cur_id
	INNER JOIN ACA_TipoNivelEnsino tne WITH(NOLOCK)
	ON tne.tne_id = cur.tne_id
	INNER JOIN ACA_ALUNO alu
	ON alu.alu_id = mtu.alu_id
	INNER JOIN CoreSSO..PES_PESSOA pes  WITH(NOLOCK)
	ON alu.pes_id = pes.pes_id

	INNER JOIN ESC_Escola esc WITH(NOLOCK)
	ON esc.esc_id = tur.esc_id

	INNER JOIN TUR_TurmaRelTurmaDisciplina tur_rel_tud WITH(NOLOCK)
	ON tur_rel_tud.tur_id = tur.tur_id
	
	INNER JOIN #Tmp_TurmaDisciplina tud 
	ON  tur_rel_tud.tud_id = tud.tud_id

	--	Uma Turma para Varias Disciplinas

	INNER JOIN [GestaoPedagogica].[dbo].[TUR_TurmaRelTurmaDisciplina] turm_Dis
	ON turm_Dis.tur_id = tur.tur_id 

	INNER JOIN GestaoPedagogica..MTR_MatriculaTurmaDisciplina mtr_mat_tud	WITH(NOLOCK)
	ON mtr_mat_tud.tud_id = turm_Dis.tud_id 
	AND mtr_mat_tud.alu_id = alu.alu_id
	
	INNER JOIN CLS_AlunoFechamento caf	WITH(NOLOCK)
	ON caf.tud_id = tud.tud_id 
	AND caf.tpc_id = tpc.tpc_id 
	AND caf.alu_id = alu.alu_id 
	AND caf.mtu_id = mtu.mtu_id 
	AND caf.mtd_id = mtr_mat_tud.mtd_id

	INNER JOIN CLS_AlunoAvaliacaoTurmaDisciplina alu_ava_tur_dis	WITH(NOLOCK)
	ON alu_ava_tur_dis.tud_id = tud.tud_id 
	AND alu_ava_tur_dis.alu_id = alu.alu_id 
	AND alu_ava_tur_dis.mtu_id = mtu.mtu_id 
	AND alu_ava_tur_dis.mtd_id = mtr_mat_tud.mtd_id

	INNER JOIN ACA_FormatoAvaliacao fav	WITH(NOLOCK)
	ON fav.fav_id = alu_ava_tur_dis.fav_id

	INNER JOIN CoreSSO..SYS_UnidadeAdministrativa uad WITH(NOLOCK)
	ON uad.uad_id = esc.uad_idSuperiorGestao

WHERE 
	tpc.tpc_id = @tpc_id 
	AND alu_ava_tur_dis.ava_id = @tpc_id 

-- ava_id foi usado pois não achei amarração com outra tabela, 
--na documentação dos dados não possui mapeamento de algumas 
--tabelas de fechamento, e como fechamento é baseado em 4 Bimestres foi feito isso

AND alu_ava_tur_dis.atd_avaliacao not in ('NS','P','S','F (Frequente)','NF (Não Frequente)','Aprovado',',','.','-2146826281','-2146826273')
AND CONVERT(decimal(10,2), REPLACE(atd_avaliacao, ',', '.'))  <=	5.0
AND alu_ava_tur_dis.atd_avaliacao is not null
AND fav.fav_id = @fav_id
AND cal.cal_ano = @ano
AND Left(RTrim(LTrim(tud.tud_codigo)),1) IN('7','8','9')


IF OBJECT_ID('tempdb..#Tmp_TurmaDisciplina')	IS NOT NULL		DROP TABLE #Tmp_TurmaDisciplina




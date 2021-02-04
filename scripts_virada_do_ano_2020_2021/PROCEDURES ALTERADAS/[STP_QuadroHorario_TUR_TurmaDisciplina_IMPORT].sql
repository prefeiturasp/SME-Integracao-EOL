USE [Manutencao]
GO
/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_TUR_TurmaDisciplina_IMPORT]    Script Date: 20/01/2021 18:47:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[STP_QuadroHorario_TUR_TurmaDisciplina_IMPORT]
AS
BEGIN	

	--------------------------------------------------------------------------------------------------------------------------------------
	--FOTO de territórios do saber e experiencias pedagógicas antes de começarmos a alterar tuds
	--é necessário porque precisamos comparar com o que estava antes para criar novas experiências pedagógicas no fim da TUR_TurmaDocente
	insert into Manutencao..ultimaFotoTerritorios
	(tte_id, tud_idExperiencia, tud_nomeExperiencia, ter_id, ter_codigo, tud_idTerritorio, tud_nomeTerritorio, 
	 tte_vigenciaInicio, tte_vigenciaFim, tte_situacao, doc_id, tdt_situacao, tdt_vigenciaInicio, tdt_vigenciaFim, 
	 tdt_posicao, dataFoto)
	select tte.tte_id, tte.tud_idExperiencia,tudExp.tud_nome as tud_nomeExperiencia,
		   tudExp.ter_id, ter.ter_codigo, tte.tud_idTerritorio, tudTer.tud_nome as tud_nomeTerritorio,
		   tte.tte_vigenciaInicio, tte.tte_vigenciaFim, tte.tte_situacao, tdt.doc_id, tdt_situacao, 
		   tdt_vigenciaInicio, tdt_vigenciaFim, tdt_posicao, GETDATE() AS dataFoto
	  from GestaoPedagogica..TUR_TurmaDisciplinaTerritorio tte
		   inner join GestaoPedagogica..TUR_TurmaDisciplina tudExp on tudExp.tud_id = tte.tud_idExperiencia --tud_tipo=18=PAI
		   inner join GestaoPedagogica..ACA_TerritorioExperiencia ter on ter.ter_id = tudExp.ter_id
		   inner join GestaoPedagogica..TUR_TurmaDisciplina tudTer on tudTer.tud_id = tte.tud_idTerritorio --tud_tipo=19=OBRIG
		   left join GestaoPedagogica..TUR_TurmaDocente tdt 
				  on tdt.tud_id = tte.tud_idTerritorio and tdt.tdt_situacao = 1
				 and tdt.tdt_posicao = 1 and tdt.tdt_vigenciaInicio < GETDATE() 
				 and (tdt.tdt_vigenciaFim >= GETDATE() or tdt.tdt_vigenciaFim is null)
	 where tte.tte_vigenciaInicio <= GETDATE() 
	   and (tte.tte_vigenciaFim >= GETDATE() or tte.tte_vigenciaFim is null)
	IF @@ERROR <> 0
    BEGIN
       PRINT 'Erro na foto'
       RETURN
    END
	--FIM da FOTO de territórios do saber e experiencias pedagógicas
	--------------------------------------------------------------------------------------------------------------------------------------
	
    create table #RelacaoTurma
       (tur_codigo        varchar(30) COLLATE DATABASE_DEFAULT,
        cd_turma_escola   bigint,
        qt_vaga_oferecida tinyint,
        dt_inicio_turma   datetime,
        dt_fim_turma      datetime)
      
    insert into #RelacaoTurma 
     select dc_turma_escola AS tur_codigo, cd_turma_escola,
            tmpt.qt_vaga_oferecida, tmpt.dt_inicio_turma, tmpt.dt_fim_turma
       from (SELECT r.cd_escola, r.cd_turma_escola, r.qt_vaga_oferecida, r.dt_inicio_turma,
                    r.dt_fim_turma, r.dc_turma_escola
               FROM (SELECT CAST(cd_turma_escola AS VARCHAR(30)) AS cd_turma_escola, cd_escola,
                            qt_vaga_oferecida, dt_inicio_turma, dt_fim_turma, dc_turma_escola,
                            ROW_NUMBER() OVER ( PARTITION BY cd_turma_escola ORDER BY cd_turma_escola ) AS RowNum
                       FROM tmp_DiarioClasse_turma t) AS r
              WHERE  r.RowNum = 1) AS tmpt
                
	create table #tempRelacionamentos (tur_id bigint, tud_id bigint, dis_id int)

    CREATE TABLE #tmp_TUR_TurmaDisciplina
        ( tur_id bigint, dis_id int, 
          tud_verificador INT ,
          tud_codigo VARCHAR(30) COLLATE DATABASE_DEFAULT,
          tud_nome VARCHAR(70) COLLATE DATABASE_DEFAULT,
          tud_multiseriado INT ,
          tud_vagas TINYINT ,
          tud_modo INT ,
          tud_tipo INT ,
          tud_situacao INT ,
          tud_dataInicio DATETIME ,
          tud_dataFim DATETIME ,
          tud_global INT ,
          carga_horaria INT,
          tud_naoLancarNota BIT,
          tud_naoExibirNota BIT,
          tud_naoLancarFrequencia BIT,
          tud_naoExibirFrequencia BIT,
          tud_naoExibirBoletim BIT)
    
    INSERT INTO #tmp_TUR_TurmaDisciplina
           (tur_id, dis_id, tud_verificador, tud_codigo, tud_nome, tud_multiseriado, tud_vagas,
            tud_modo, tud_tipo, tud_situacao, tud_dataInicio, tud_dataFim, tud_global, carga_horaria,
            tud_naoLancarNota, tud_naoExibirNota, tud_naoLancarFrequencia, tud_naoExibirFrequencia, tud_naoExibirBoletim)
    SELECT DEPARA_TURMA.tur_id, dis.dis_id, 1 AS tud_verificador, tmpt.tur_codigo, dis.dis_nome AS tud_nome,
           0 AS tud_multiseriado, tmpt.qt_vaga_oferecida AS tud_vagas, 1 AS tud_modo,
           crd.crd_tipo AS tud_tipo, 1 AS tud_situacao, tmpt.dt_inicio_turma AS tud_dataInicio,
           tmpt.dt_fim_turma AS tud_dataFim, 0 AS tud_global, dis.dis_cargaHorariaTeorica carga_horaria,
           tud_naoLancarNota = case when dis.tds_id in (11,12,13,30,32,123,124) or dis.dis_nome like 'Territ%' then 1 else 0 end,
           tud_naoExibirNota = case when dis.tds_id in (11,12,13,30,32,123,124) or dis.dis_nome like 'Territ%' then 1 else 0 end,
           tud_naoLancarFrequencia = case when dis.tds_id in (11,12) and crd.cur_id = 116 then 1 
										  when dis.tds_id = 10 and crd.crp_id < 6 then 1 
										  when dis.tds_id in (13,30,32) then 1 
										  else 0 end,
           tud_naoExibirFrequencia = case when dis.tds_id in (11,12) and crd.cur_id = 116 then 1 
										  when dis.tds_id = 10 and crd.crp_id < 6 then 1 
										  when dis.tds_id in (13,30,32) then 1 
										  else 0 end,
           CASE when dis.tds_id in (13,30,32) or dis.dis_nome like 'Territ%' then 1 else null END as tud_naoExibirBoletim 
      FROM #RelacaoTurma tmpt inner join tmp_DiarioClasse_turma dct
           ON tmpt.cd_turma_escola = dct.cd_turma_escola
           INNER JOIN DEPARA_TURMA
           ON cast(dct.cd_turma_escola as varchar(10)) = DEPARA_TURMA.tur_codigo
           INNER JOIN GE_TUR_TurmaCurriculo trc
           ON DEPARA_TURMA.tur_id = trc.tur_id
           inner join GE_ACA_CurriculoDisciplina crd
            on trc.cur_id = crd.cur_id
           and trc.crr_id = crd.crr_id
           and trc.crp_id = crd.crp_id
           and crd_tipo not in (10, 14)
           inner join GE_ACA_Disciplina dis
           on crd.dis_id = dis.dis_id
     WHERE dct.cd_tipo_turma not in (2, 3)
       AND tcr_situacao = 1  
       AND crd_situacao = 1
       AND dis_situacao = 1
       AND (crd.cur_id not in (109,116)
           or (crd.cur_id in (109,116) and dis.dis_cargaHorariaTeorica <> 0))
    
    -- Recuperação Paralela
    INSERT INTO #tmp_TUR_TurmaDisciplina
           (tur_id, dis_id, tud_verificador, tud_codigo, tud_nome, tud_multiseriado, tud_vagas,
            tud_modo, tud_tipo, tud_situacao, tud_dataInicio, tud_dataFim, tud_global, carga_horaria,
            tud_naoLancarNota, tud_naoExibirNota, tud_naoLancarFrequencia, tud_naoExibirFrequencia, tud_naoExibirBoletim)
    SELECT DEPARA_TURMA.tur_id, dis.dis_id, 1 AS tud_verificador, tmpt.tur_codigo, dis.dis_nome AS tud_nome,
           0 AS tud_multiseriado, tmpt.qt_vaga_oferecida AS tud_vagas, 1 AS tud_modo,
           crd.crd_tipo AS tud_tipo, 1 AS tud_situacao, tmpt.dt_inicio_turma AS tud_dataInicio,
           tmpt.dt_fim_turma AS tud_dataFim, 0 AS tud_global, dis.dis_cargaHorariaTeorica carga_horaria,
           tud_naoLancarNota = 1, tud_naoExibirNota = 1, tud_naoLancarFrequencia = 0, tud_naoExibirFrequencia = 0, 
           null as tud_naoExibirBoletim
      FROM #RelacaoTurma tmpt inner join tmp_DiarioClasse_turma dct
           ON tmpt.cd_turma_escola = dct.cd_turma_escola
           INNER JOIN DEPARA_TURMA
           ON cast(dct.cd_turma_escola as varchar(10)) = DEPARA_TURMA.tur_codigo
           INNER JOIN
           (select tur_id, cur_id, crr_id, crp_id,
                   ROW_NUMBER() OVER (PARTITION BY tur_id ORDER BY CASE WHEN cur_id in (39,40,41,42,119,120,121) 
																		THEN 1 ELSE 0 END -- CASE PARA dar preferencia para turmas q nao sejam de EJA quando tiverem vários cursos
																 , tcr_dataCriacao DESC) AS linha
              from GE_TUR_TurmaCurriculo
             where tcr_situacao = 1) trc
           ON DEPARA_TURMA.tur_id = trc.tur_id
           inner join GE_ACA_CurriculoDisciplina crd
            on trc.cur_id = crd.cur_id
           and trc.crr_id = crd.crr_id
           and trc.crp_id = crd.crp_id
           and 10 = crd.crd_tipo
           inner join GE_ACA_Disciplina dis
            on crd.dis_id = dis.dis_id
           inner join DEPARA_TIPO_PROGRAMA_DISCIPLINA_RP dtp 
			on dtp.tds_id = dis.tds_id
		   and dtp.cd_tipo_programa = dct.cd_tipo_programa
     WHERE dct.cd_tipo_turma = 3 and dct.cd_tipo_programa not in (94,95,96,97,362)
       AND trc.linha = 1
       AND crd_situacao = 1
       AND dis_situacao = 1
    
	-- AEE
    INSERT INTO #tmp_TUR_TurmaDisciplina
           (tur_id, dis_id, tud_verificador, tud_codigo, tud_nome, tud_multiseriado, tud_vagas,
            tud_modo, tud_tipo, tud_situacao, tud_dataInicio, tud_dataFim, tud_global, carga_horaria,
            tud_naoLancarNota, tud_naoExibirNota, tud_naoLancarFrequencia, tud_naoExibirFrequencia, tud_naoExibirBoletim)
    SELECT DEPARA_TURMA.tur_id, dis.dis_id, 1 AS tud_verificador, tmpt.tur_codigo, dis.dis_nome AS tud_nome,
           0 AS tud_multiseriado, tmpt.qt_vaga_oferecida AS tud_vagas, 1 AS tud_modo,
           crd.crd_tipo AS tud_tipo, 1 AS tud_situacao, tmpt.dt_inicio_turma AS tud_dataInicio,
           tmpt.dt_fim_turma AS tud_dataFim, 0 AS tud_global, dis.dis_cargaHorariaTeorica carga_horaria,
           tud_naoLancarNota = 1, tud_naoExibirNota = 1, tud_naoLancarFrequencia = 0, tud_naoExibirFrequencia = 0, 
           null as tud_naoExibirBoletim
      FROM #RelacaoTurma tmpt inner join tmp_DiarioClasse_turma dct
           ON tmpt.cd_turma_escola = dct.cd_turma_escola
           INNER JOIN DEPARA_TURMA
           ON cast(dct.cd_turma_escola as varchar(10)) = DEPARA_TURMA.tur_codigo
           INNER JOIN
           (select tur_id, cur_id, crr_id, crp_id,
                   ROW_NUMBER() OVER (PARTITION BY tur_id ORDER BY CASE WHEN cur_id in (39,40,41,42,119,120,121) 
																		THEN 1 ELSE 0 END -- CASE PARA dar preferencia para turmas q nao sejam de EJA quando tiverem vários cursos
																 , tcr_dataCriacao DESC) AS linha
              from GE_TUR_TurmaCurriculo
             where tcr_situacao = 1) trc
           ON DEPARA_TURMA.tur_id = trc.tur_id
           inner join GE_ACA_CurriculoDisciplina crd
            on trc.cur_id = crd.cur_id
           and trc.crr_id = crd.crr_id
           and trc.crp_id = crd.crp_id
           and 20 = crd.crd_tipo -- Tipo do AEE 
           inner join GE_ACA_Disciplina dis
            on crd.dis_id = dis.dis_id
     WHERE dct.cd_tipo_turma = 3 and dct.cd_tipo_programa in (94,95,96,97,362)
       AND trc.linha = 1
       AND crd_situacao = 1
       AND dis_situacao = 1
	   
    -- Educação Física
    INSERT INTO #tmp_TUR_TurmaDisciplina
           (tur_id, dis_id, tud_verificador, tud_codigo, tud_nome, tud_multiseriado, tud_vagas,
            tud_modo, tud_tipo, tud_situacao, tud_dataInicio, tud_dataFim, tud_global, carga_horaria,
            tud_naoLancarNota, tud_naoExibirNota, tud_naoLancarFrequencia, tud_naoExibirFrequencia, tud_naoExibirBoletim)
    SELECT DEPARA_TURMA.tur_id, dis.dis_id, 1 AS tud_verificador, tmpt.tur_codigo, dis.dis_nome AS tud_nome,
           0 AS tud_multiseriado, tmpt.qt_vaga_oferecida AS tud_vagas, 1 AS tud_modo,
           crd.crd_tipo AS tud_tipo, 1 AS tud_situacao, tmpt.dt_inicio_turma AS tud_dataInicio,
           tmpt.dt_fim_turma AS tud_dataFim, 0 AS tud_global, dis.dis_cargaHorariaTeorica carga_horaria,
           tud_naoLancarNota = 0, tud_naoExibirNota = 0, tud_naoLancarFrequencia = 0, tud_naoExibirFrequencia = 0, 
           null as tud_naoExibirBoletim
      FROM #RelacaoTurma tmpt inner join tmp_DiarioClasse_turma dct
           ON tmpt.cd_turma_escola = dct.cd_turma_escola
           INNER JOIN DEPARA_TURMA
		   ON cast(dct.cd_turma_escola as varchar(10)) = DEPARA_TURMA.tur_codigo
		   INNER JOIN GE_Tur_Turma TUR
		   ON DEPARA_TURMA.tur_id = TUR.TUR_ID
		   INNER JOIN
		   (select tur_id, cur_id, crr_id, crp_id,
			       ROW_NUMBER() OVER (PARTITION BY tur_id ORDER BY tcr_dataCriacao DESC) AS linha
			  from GE_TUR_TurmaCurriculo
			 where tcr_situacao = 1) trc
		   ON DEPARA_TURMA.tur_id = trc.tur_id
		   inner join GE_ACA_CurriculoDisciplina crd
		    on trc.cur_id = crd.cur_id
		   and trc.crr_id = crd.crr_id
		   and trc.crp_id = crd.crp_id
		   and 14 = crd.crd_tipo
		   inner join GE_ACA_Disciplina dis
		   on crd.dis_id = dis.dis_id
	 WHERE dct.cd_tipo_turma = 2
	   AND TUR.tur_tipo = 3
	   AND trc.linha = 1
	   AND crd_situacao = 1
	   AND dis_situacao = 1
    
    MERGE INTO GE_TUR_TurmaDisciplina _target
    USING  (SELECT tmp.tud_codigo, tmp.tud_nome, tmp.tud_multiseriado, tmp.tud_vagas, tmp.tud_modo,
                   tmp.tud_tipo, tmp.tud_situacao, tmp.tud_dataInicio, tmp.tud_dataFim, tmp.tud_global,
                   carga_horaria, tmp.tur_id, dis_id, isnull(trtd.tud_id, -1) as tud_id,
                   tmp.tud_naoLancarNota, tmp.tud_naoExibirNota, tmp.tud_naoExibirBoletim, 
                   tmp.tud_naoLancarFrequencia, tmp.tud_naoExibirFrequencia
              FROM #tmp_TUR_TurmaDisciplina tmp
                   LEFT JOIN GE_TUR_TurmaRelTurmaDisciplina trtd
                   on tmp.tur_id = trtd.tur_id
                   LEFT JOIN GE_TUR_TurmaDisciplina td
                    on trtd.tud_id = td.tud_id
                   and tmp.tud_nome = td.tud_nome
             where trtd.tur_id is null
                or (trtd.tur_id is not null and trtd.tud_id = td.tud_id)) AS _source
     ON _source.tud_id = _target.tud_id
    WHEN NOT MATCHED THEN
    INSERT (tud_codigo, tud_nome, tud_multiseriado, tud_vagas, tud_modo, tud_tipo,
            tud_cargaHorariaSemanal, tud_situacao, tud_dataInicio, tud_dataFim, tud_global,
            tud_naoLancarNota, tud_naoExibirNota, tud_naoExibirBoletim, 
            tud_naoLancarFrequencia, tud_naoExibirFrequencia)
    VALUES ( _source.tud_codigo, _source.tud_nome, _source.tud_multiseriado, _source.tud_vagas,
             _source.tud_modo, _source.tud_tipo, _source.carga_horaria, _source.tud_situacao,
             _source.tud_dataInicio, _source.tud_dataFim, _source.tud_global,
             _source.tud_naoLancarNota, _source.tud_naoExibirNota, _source.tud_naoExibirBoletim,
             _source.tud_naoLancarFrequencia, _source.tud_naoExibirFrequencia) 
    OUTPUT _source.tur_id, INSERTED.tud_id, _source.dis_id
      INTO #tempRelacionamentos;
		        
	-- Atualiza com situacao = 3 os registros existentes em TUR_TurmaDisciplina e que não constam mais na base da PRODAM		        
    UPDATE GE_TUR_TurmaDisciplina
       SET tud_situacao = 3 ,
           tud_dataAlteracao = GETDATE()
      FROM GE_TUR_TurmaDisciplina tud
           INNER JOIN GE_TUR_TurmaRelTurmaDisciplina trd
           ON tud.tud_id = trd.tud_id
           INNER JOIN GE_TUR_Turma tur
            ON trd.tur_id = tur.tur_id
           AND tur.tur_situacao = 1
           INNER JOIN GE_ACA_CalendarioAnual cal
           ON tur.cal_id = cal.cal_id
           LEFT JOIN #tmp_TUR_TurmaDisciplina tmp
            ON tud.tud_codigo COLLATE database_default = tmp.tud_codigo COLLATE database_default
           AND tud.tud_nome COLLATE database_default = tmp.tud_nome COLLATE database_default
     WHERE cal.cal_ano = DATEPART(YEAR, GETDATE())
       AND tmp.tud_verificador IS NULL	
	   AND tud.tud_tipo not in (18,19) -- porque tuds de Territorios do Saber serão tratados separadamente ao final da TUR_TurmaDocente
    
    INSERT INTO GE_TUR_TurmaDisciplinaCalendario
	select distinct tud.tud_id, cap.tpc_id as tpc_id 
	  from #tempRelacionamentos tud
		   inner join GE_TUR_Turma tur on tur.tur_id = tud.tur_id and tur.tur_tipo in (2,5)
		   inner join GE_ACA_CalendarioAnual cal on cal.cal_id = tur.cal_id and cal.cal_situacao <> 3
           inner join _PARAMETROS par ON par.CHAVE = 'ANO_BASE' and cal.cal_ano = par.VALOR
		   inner join GE_ACA_CalendarioPeriodo cap on cap.cal_id = cal.cal_id
    
    INSERT INTO GE_TUR_TurmaRelTurmaDisciplina 
	select distinct tur_id, tud_id from #tempRelacionamentos
    
	INSERT INTO GE_TUR_TurmaDisciplinaRelDisciplina
	select distinct tud_id, dis_id from #tempRelacionamentos									
    
	update GestaoPedagogica..TUR_TurmaDisciplina set tud_duplaRegencia = 1
	--select distinct  TUR_TurmaDisciplina.tud_id
	  from GestaoPedagogica..TUR_TurmaDisciplina 
		   inner join GestaoPedagogica..TUR_TurmaRelTurmaDisciplina trel on trel.tud_id = TUR_TurmaDisciplina.tud_id
		   inner join GestaoPedagogica..TUR_Turma tur on tur.tur_id = trel.tur_id
		   inner join GestaoPedagogica..ACA_CalendarioAnual cal on cal.cal_id = tur.cal_id 
		   inner join _PARAMETROS par ON par.CHAVE = 'ANO_BASE' and cal.cal_ano = par.VALOR
		   inner join GestaoPedagogica..TUR_TurmaDisciplinaRelDisciplina td on td.tud_id = TUR_TurmaDisciplina.tud_id
		   inner join GestaoPedagogica..ACA_Disciplina dis on dis.dis_id = td.dis_id
		   inner join Manutencao..DEPARA_TURMA depTur on depTur.tur_id = trel.tur_id
		   inner join Manutencao..tmp_turma_grade_mstech tg on tg.cd_turma_escola = depTur.tur_codigo
		   inner join Manutencao..tmp_grade_componente_mstech gc on gc.cd_grade = tg.cd_grade
		   inner join Manutencao..DEPARA_DISCIPLINAS depDis on depDis.cd_componente_curricular = gc.cd_componente_curricular 
														   and depDis.dis_nome = dis.dis_nome
														   and depDis.disciplinaDuplaRegencia = 1
	  where tud_duplaRegencia = 0
			
------------------------------------------------------------------
    --PEDRO: Correção para casos onde a tur_turmacurriculo mudou de curso... 
    --portanto temos que mudar o dis_id da TUR_TurmaDisciplinaRelDisciplina
    CREATE TABLE #ACERTA_TUD 
	(tud_id bigint, tud_nome varchar(200), tur_id bigint, tur_codigo varchar(30),
	 cur_id int, crp_id int, dis_id_tud int, dis_id_crd int, dis_nome varchar(200) )

	insert into #ACERTA_TUD
	select tud.tud_id, tud.tud_nome, tur.tur_id, tur.tur_codigo, tcr.cur_id, 
		   tcr.crp_id, td.dis_id, dis.dis_id, dis.dis_nome 
	  from (SELECT tur_id, tur_codigo 
			  FROM GE_TUR_Turma with(nolock)  
				   inner join GE_ACA_CalendarioAnual cal ON cal.cal_id = GE_TUR_Turma.cal_id 
				   inner join _PARAMETROS par ON par.CHAVE = 'ANO_BASE' and cal.cal_ano = par.VALOR
			 where tur_id in (select tur_id from GE_TUR_TurmaCurriculo  
							   where tcr_situacao = 3	
								 and CAST(tcr_dataAlteracao as date) = cast(GETDATE() as DATE)
								--PEGAR APENAS OS CASOS QUE FORAM MUDADOS HOJE NO MESMO PROCESSO para não trazer registros demais nesta query e deixá-la pesada
							 )) tur 
		   inner join GE_TUR_TurmaCurriculo tcr with(nolock) ON tur.tur_id = tcr.tur_id and tcr_situacao <> 3
		   inner join GE_TUR_TurmaRelTurmaDisciplina trel with(nolock) ON tur.tur_id = trel.tur_id
		   inner join GE_TUR_TurmaDisciplina tud with(nolock) on trel.tud_id = tud.tud_id
		   inner join GE_TUR_TurmaDisciplinaRelDisciplina td with(nolock) ON tud.tud_id = td.tud_id
		   inner join GE_ACA_CurriculoDisciplina crd with(nolock) 
				   ON tcr.cur_id  = crd.cur_id and tcr.crp_id = crd.crp_id and crd_situacao <> 3
		   inner join GE_ACA_Disciplina dis with(nolock) ON crd.dis_id = dis.dis_id
	 where tud.tud_nome = dis.dis_nome 
	   and crd.dis_id <> td.dis_id
		   
	UPDATE GE_TUR_TurmaDisciplinaRelDisciplina SET dis_id = ac.dis_id_crd
	  FROM GE_TUR_TurmaDisciplinaRelDisciplina
		   inner join #ACERTA_TUD ac ON ac.tud_id = GE_TUR_TurmaDisciplinaRelDisciplina.tud_id
									AND ac.dis_id_tud = GE_TUR_TurmaDisciplinaRelDisciplina.dis_id
------------------------------------------------------------------------
    
	select distinct tud_id, dis_id from #tempRelacionamentos 									
        
	--o update abaixo comentado em 05/09/2017 para resolver alguns chamados. Descobrimos que não estava sendo mais usado e 
	--estava causando com que alunos com deficiencia não aparececem para docentes na posição 1 (o esperado era estarem na posicao 5) e ninguem mais usa a posição 5
	-- /* Marca a disciplina de Libras */
    -- update GE_TUR_TurmaDisciplina
       -- set tud_disciplinaEspecial = 1
     -- where tud_id in 
           -- (select tdrd.tud_id
              -- from GE_TUR_Turma turma inner join 
                   -- (select esc_id
                      -- from DEPARA_DISCIPLINAS inner join BD_PRODAM..v_cadastro_disciplina
                           -- on DEPARA_DISCIPLINAS.cd_componente_curricular = v_cadastro_disciplina.cd_componente_curricular
                           -- inner join GE_ESC_Escola Escola
                           -- on v_cadastro_disciplina.cd_escola = Escola.esc_codigo
						   -- AND Escola.esc_situacao <> 3
                           -- inner join BD_PRODAM..v_unidade_educacao_dados_gerais
                           -- on v_cadastro_disciplina.cd_escola = v_unidade_educacao_dados_gerais.cd_unidade_educacao
                     -- where DEPARA_DISCIPLINAS.disciplinaDeficiente = 1
                       -- and v_unidade_educacao_dados_gerais.sg_tp_escola IN ('EMEF','EMEFM','CEU EMEF','EMEBS','CIEJA')) escolas
                   -- on turma.esc_id = escolas.esc_id
                   -- inner join GE_TUR_TurmaCurriculo tcr
                   -- on turma.tur_id = tcr.tur_id
                   -- inner join GE_ACA_CurriculoPeriodo crp
                    -- on tcr.cur_id = crp.cur_id
                   -- and tcr.crr_id = crp.crr_id
                   -- and tcr.crp_id = crp.crp_id
                   -- inner join GE_ACA_CurriculoDisciplina crd
                    -- on crp.cur_id = crd.cur_id
                   -- and crp.crr_id = crd.crr_id
                   -- and crp.crp_id = crd.crp_id
                   -- inner join GE_TUR_TurmaRelTurmaDisciplina trtd
                   -- on turma.tur_id = trtd.tur_id
                   -- inner join GE_TUR_TurmaDisciplinaRelDisciplina tdrd
                    -- on trtd.tud_id = tdrd.tud_id
                   -- and crd.dis_id = tdrd.dis_id
                   -- inner join GE_ACA_Disciplina dis
                   -- on tdrd.dis_id = dis.dis_id
                   -- inner join GestaoPedagogica..ACA_TipoDisciplinaDeficiencia tdd
                   -- on dis.tds_id = tdd.tds_id
             -- where turma.tur_situacao = 1
               -- and tcr.tcr_situacao = 1
               -- and crp.crp_situacao = 1
               -- and crp.crp_ordem between 6 and 9  -- sexto ao nono ano
               -- and crd.crd_situacao = 1
               -- and dis.dis_situacao = 1
             -- group by tdrd.tud_id)    
			 
	-------------------------------------------------------------------------------------------------------------------------
	/* TERRITÓRIOS DO SABER - Alimentando a tmp_territorio_saber, 
	depois fazendo o Merge dos territorios na ACA_TerritorioExperiencia, na ACA_Disciplina e na ACA_TipoDisciplina *ver se vamos deixar aqui mesmo
	e depois acertando o ter_id da TUR_TurmaDisciplina do territorio */
	-------------------------------------------------------------------------------------------------------------------------
	truncate table tmp_territorio_saber
	
	--apenas se ja existem territorios com o tipo correto
	if exists (select top 1 tud_id from GestaoPedagogica..TUR_TurmaDisciplina where tud_tipo = 19 and tud_situacao <> 3)
	begin
	
	insert into tmp_territorio_saber
	select cd_turma_escola, cd_componente_curricular, cd_territorio_saber, cd_experiencia_pedagogica,
		   dt_inicio, dt_fim, dc_territorio_saber, 
		   UPPER(LEFT(dc_experiencia_pedagogica,1))+LOWER(SUBSTRING(dc_experiencia_pedagogica,2,LEN(dc_experiencia_pedagogica)-1)), 
		   dt_atualizacao_tabela 
	  from (select t.cd_turma_escola, cd_componente_curricular, cd_territorio_saber, cd_experiencia_pedagogica,
				   t.dt_inicio, t.dt_fim, dc_territorio_saber, dc_experiencia_pedagogica, dt_atualizacao_tabela,
				   ROW_NUMBER() OVER(PARTITION BY t.cd_turma_escola, t.cd_componente_curricular
										 ORDER BY ISNULL(t.dt_fim,'2099-12-31'), 
												  ISNULL(t.dt_atualizacao_tabela,'2099-12-31') desc, 
												  cd_experiencia_pedagogica) as linha
			  from BD_PRODAM..v_historico_turma_grade_territorio_experiencia_mstech t
				   inner join BD_PRODAM..v_turma_MSTECH tur on tur.cd_turma_escola = t.cd_turma_escola
				   inner join GestaoPedagogica..ESC_Escola esc on esc.esc_codigo = tur.cd_escola --filtro para tirar alguns dados de testes em cd_escola = 888888 q vem do BD_PRODAM
			 where cd_territorio_saber <> 1 AND esc.esc_situacao <> 3
			   and (t.dt_inicio <= GETDATE() and t.dt_fim >= GETDATE() or t.dt_fim is null)
			group by t.cd_turma_escola, cd_componente_curricular, cd_territorio_saber, cd_experiencia_pedagogica,
					 t.dt_inicio, t.dt_fim, dc_territorio_saber, dc_experiencia_pedagogica, dt_atualizacao_tabela
		   ) Tab
	 where Tab.linha = 1
	IF @@ERROR <> 0
    BEGIN
       PRINT 'Erro ao preencher tmp_territorio_saber'
       RETURN
    END
	
	MERGE INTO GestaoPedagogica..ACA_TerritorioExperiencia _target
	USING (select cd_experiencia_pedagogica, dc_experiencia_pedagogica,
				 ROW_NUMBER() OVER(ORDER BY cd_experiencia_pedagogica, dc_experiencia_pedagogica) as ordem
			from tmp_territorio_saber
		   group by cd_experiencia_pedagogica, dc_experiencia_pedagogica) _source
	   ON _source.cd_experiencia_pedagogica = _target.ter_codigo
	 WHEN NOT MATCHED THEN
		  INSERT (ter_codigo, ter_nome, ter_situacao, ter_dataCriacao, ter_dataAlteracao)
		  VALUES (_source.cd_experiencia_pedagogica, _source.dc_experiencia_pedagogica, 1, GETDATE(), GETDATE()) 
	 WHEN MATCHED AND _target.ter_nome <> _source.dc_experiencia_pedagogica THEN
		  UPDATE SET ter_situacao = 1
					,ter_nome = _source.dc_experiencia_pedagogica
					,ter_dataAlteracao = GETDATE();
	IF @@ERROR <> 0
    BEGIN
       PRINT 'Erro na ACA_TerritorioExperiencia'
       RETURN
    END
    
	MERGE INTO GestaoPedagogica..ACA_TipoDisciplina _target
	USING (select cd_experiencia_pedagogica, dc_experiencia_pedagogica,
				 (select max(tds_ordem) from GestaoPedagogica..ACA_TipoDisciplina) as maxTdsOrdem,
				 ROW_NUMBER() OVER(ORDER BY cd_experiencia_pedagogica, dc_experiencia_pedagogica) as ordem
			from tmp_territorio_saber
		   group by cd_experiencia_pedagogica, dc_experiencia_pedagogica) _source
	   ON _source.dc_experiencia_pedagogica = _target.tds_nome
	  AND _target.tds_tipo = 4
	 WHEN NOT MATCHED THEN
		  INSERT (tne_id, tds_nome, tds_base, tds_situacao, tds_dataCriacao, tds_dataAlteracao, 
				  tds_ordem, tds_tipo, tds_qtdeDisciplinaRelacionada)
		  VALUES (2, _source.dc_experiencia_pedagogica, 2, 1, GETDATE(), GETDATE(), maxTdsOrdem+ordem, 4, 0);
	IF @@ERROR <> 0
    BEGIN
       PRINT 'Erro na ACA_TipoDisciplina'
       RETURN
    END
    
	MERGE INTO GestaoPedagogica..ACA_Disciplina _target
	USING (select cd_experiencia_pedagogica, dc_experiencia_pedagogica, tds.tds_id
			from tmp_territorio_saber
				 inner join GestaoPedagogica..ACA_TipoDisciplina tds 
						 on tds.tds_nome = tmp_territorio_saber.dc_experiencia_pedagogica
						and tds.tds_tipo = 4
		   group by cd_experiencia_pedagogica, dc_experiencia_pedagogica, tds.tds_id) _source
	   ON _source.dc_experiencia_pedagogica = _target.dis_nome
	  and _source.tds_id = _target.tds_id
	 WHEN NOT MATCHED THEN
		  INSERT (tds_id, dis_nome, dis_codigo, dis_nomeAbreviado, dis_cargaHorariaTeorica, 
				  dis_situacao, dis_dataCriacao, dis_dataAlteracao)
		  VALUES (_source.tds_id, _source.dc_experiencia_pedagogica, 0, left(_source.dc_experiencia_pedagogica, 20), 
				  1, 1, GETDATE(), GETDATE());
	IF @@ERROR <> 0
    BEGIN
       PRINT 'Erro na ACA_Disciplina'
       RETURN
    END
    
	--apenas acerta o ter_id do territorio. 
	--O Acerto do tud_id da Experiencia vai ser feito no final da TUR_TurmaDocente por causa da atribuição de docentes mesmo
	update GestaoPedagogica..TUR_TurmaDisciplina
	   set ter_id = ter.ter_id, tud_dataAlteracao = GETDATE()
	  from GestaoPedagogica..TUR_TurmaDisciplina 
		   inner join GestaoPedagogica..TUR_TurmaDisciplinaRelDisciplina td on td.tud_id = TUR_TurmaDisciplina.tud_id
		   inner join GestaoPedagogica..ACA_Disciplina dis on dis.dis_id = td.dis_id
		   inner join GestaoPedagogica..ACA_TipoDisciplina tds on tds.tds_id = dis.tds_id and tds.tds_nome like 'Territ. Saber%'
		   inner join DEPARA_DISCIPLINAS depDis on depDis.dis_nome = tds.tds_nome
		   inner join GestaoPedagogica..TUR_TurmaRelTurmaDisciplina trel on trel.tud_id = TUR_TurmaDisciplina.tud_id
		   inner join DEPARA_TURMA depTur on depTur.tur_id = trel.tur_id 
		   --inner join tmp_DiarioClasse_grade_curricular tmpgc on tmpgc.cd_turma_escola = depTur.tur_codigo
					--										 and tmpgc.cd_componente_curricular = depDis.cd_componente_curricular
		   left join tmp_territorio_saber ts on ts.cd_turma_escola = depTur.tur_codigo
											 and ts.cd_componente_curricular = depDis.cd_componente_curricular
		   left join GestaoPedagogica..ACA_TerritorioExperiencia ter on ter.ter_codigo = ts.cd_experiencia_pedagogica
																	 and ter.ter_situacao = 1
	 where TUR_TurmaDisciplina.tud_tipo = 19 --tud_id=19=OBRIG=FILHO
	   and (TUR_TurmaDisciplina.ter_id is null or ter.ter_id <> TUR_TurmaDisciplina.ter_id)
	IF @@ERROR <> 0
    BEGIN
       PRINT 'Erro ao acertar o ter_id na TUR_TurmaDisciplina'
       RETURN
    END
	
	--adicionando número na frente do nome da experiência
	update GestaoPedagogica..TUR_TurmaDisciplina
	   set tud_nome = ter_nome + ' ' + cast(linha as varchar(5))--, tud_dataAlteracao = GETDATE()
	  from GestaoPedagogica..TUR_TurmaDisciplina
		   inner join (select tudExp.tud_id, ter.ter_nome, 
							  ROW_NUMBER() OVER(PARTITION BY trel.tur_id, ter.ter_nome ORDER BY tudExp.tud_id) as linha
						 from GestaoPedagogica..TUR_TurmaDisciplina tudExp
							   inner join (select tud_idExperiencia from GestaoPedagogica..TUR_TurmaDisciplinaTerritorio 
											where tte_situacao <> 3	group by tud_idExperiencia) as tte
									   on tudExp.tud_id = tte.tud_idExperiencia --tud_tipo=18=PAI
							   inner join GestaoPedagogica..TUR_TurmaRelTurmaDisciplina trel on trel.tud_id = tudExp.tud_id
							   inner join GestaoPedagogica..ACA_TerritorioExperiencia ter on ter.ter_id = tudExp.ter_id
						 where tudExp.tud_tipo = 18) Tab
				  on Tab.tud_id = TUR_TurmaDisciplina.tud_id
	
	END --end do if do territorios
	
END

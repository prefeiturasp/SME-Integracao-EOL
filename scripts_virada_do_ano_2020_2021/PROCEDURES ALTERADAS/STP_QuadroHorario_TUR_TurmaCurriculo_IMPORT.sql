USE [Manutencao]
GO
/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_TUR_TurmaCurriculo_IMPORT]    Script Date: 20/01/2021 18:46:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[STP_QuadroHorario_TUR_TurmaCurriculo_IMPORT]
	@ent_id UNIQUEIDENTIFIER
AS
BEGIN
	IF (@ent_id IS NULL)
		SET @ent_id = (SELECT ent_id FROM SSO_SYS_Entidade WHERE ent_sigla = 'smesp')
    
    --estes insert abaixo foi adicionado em 16/09 para que o processo insira as novas series de EJA segundo semestre
	insert into tmpTipoSerieEOL (cd_serie_eol98)
	 select distinct cd_serie_eol98 from BD_PRODAM..v_turma_MSTECH tm
	  where an_letivo = 2019 and cd_serie_ensino is not null
		and not exists (select * from tmpTipoSerieEOL te where te.cd_serie_eol98 = tm.cd_serie_eol98)
		and dc_etapa_ensino like '%EJA%' and cd_etapa_ensino = 3
    
    CREATE TABLE #tmp_turma_edfisica(
      cd_turma_edfisica int NOT NULL,
      cd_serie_ensino int NULL,
      dc_serie_ensino varchar(40) COLLATE DATABASE_DEFAULT NULL ,
      cd_modalidade_ensino int NULL,
      dc_modalidade_ensino varchar(40) COLLATE DATABASE_DEFAULT NULL,
      cd_etapa_ensino int NULL,
      dc_etapa_ensino varchar(60) COLLATE DATABASE_DEFAULT NULL,
      cd_ciclo_ensino int NULL,
      dc_ciclo_ensino varchar(20) COLLATE DATABASE_DEFAULT NULL,
      tne_nome varchar(100) COLLATE DATABASE_DEFAULT NULL,
      tme_nome varchar(100) COLLATE DATABASE_DEFAULT NULL,
      crp_ciclo varchar(100) COLLATE DATABASE_DEFAULT NULL,
      cd_turma_escola int NOT NULL)

      INSERT INTO #tmp_turma_edfisica
            (cd_turma_edfisica, tne_nome, tme_nome, cd_etapa_ensino, dc_etapa_ensino,
             cd_serie_ensino, dc_serie_ensino, crp_ciclo, cd_turma_escola)
      SELECT cd_turma_edfisica, tne_nome, tme_nome, cd_etapa_ensino, dc_etapa_ensino,
             cd_serie_ensino, dc_serie_ensino, crp_ciclo, cd_turma_escola
        FROM (SELECT turma_programa.cd_turma_escola AS cd_turma_edfisica, turma_regular.tne_nome,
                     turma_regular.tme_nome, turma_regular.cd_etapa_ensino, turma_regular.dc_etapa_ensino,
                     turma_regular.cd_serie_ensino, turma_regular.dc_serie_ensino, turma_regular.crp_ciclo,
                     turma_regular.cd_turma_escola
                FROM tmp_DiarioClasse_turma turma_programa inner join
                     (select cl_alu_codigo, cl_tur_codigo
                        from BD_PRODAM..v_alunos_matriculados
                       where an_letivo = (SELECT CAST(VALOR as int) FROM _PARAMETROS WHERE CHAVE = 'ANO_BASE')
                         and cl_st in ('I', 'S')) alunos_programa
                     ON turma_programa.cd_turma_escola = alunos_programa.cl_tur_codigo
                     INNER JOIN 
                     (SELECT cl_alu_codigo, cl_st, cl_tur_codigo, cl_dt_inclusao,
                             ROW_NUMBER() OVER (PARTITION BY cl_alu_codigo
                                          ORDER BY cl_dt_inclusao DESC, cl_datst DESC) AS row_num
                        FROM BD_PRODAM..v_alunos_matriculados  
                             INNER JOIN 
                             (SELECT t.cd_turma_escola
                                FROM (SELECT tal.cd_turma_escola
                                        FROM BD_PRODAM..v_turma_MSTECH tal
                                             INNER JOIN tmpTipoSerieEOL tse
                                             ON tse.cd_serie_eol98 = tal.cd_serie_eol98
                                             INNER JOIN GE_ESC_Escola esc on esc.esc_codigo = tal.cd_escola
											 AND esc.esc_situacao <> 3
											 LEFT JOIN EscolasComEJA eja on eja.esc_id = esc.esc_id
                                       WHERE tal.an_letivo = (SELECT CAST(VALOR as int) FROM _PARAMETROS WHERE CHAVE = 'ANO_BASE')
                                         AND tal.dc_etapa_ensino IS NOT NULL
                                         AND tal.cd_modalidade_ensino IS NOT NULL
                                         AND tal.cd_serie_ensino IS NOT NULL
                                         AND tal.dc_ciclo_ensino IS NOT NULL
                                         AND (tal.cd_escola IN (select esc_codigo from _PARAMETROS_ESCOLA_EDUCACAO_FISICA) 
											  or esc.esc_nome like 'EMEFM%' or eja.esc_id IS NOT NULL)) AS t
                                       GROUP BY t.cd_turma_escola) AS tur
                             ON tur.cd_turma_escola = v_alunos_matriculados.cl_tur_codigo
                       where an_letivo = (SELECT CAST(VALOR as int) FROM _PARAMETROS WHERE CHAVE = 'ANO_BASE')
                         and isnull(cl_st,'X') in ('I','S')) tmp_DiarioClasse_aluno
                     ON alunos_programa.cl_alu_codigo = tmp_DiarioClasse_aluno.cl_alu_codigo
                     INNER JOIN tmp_DiarioClasse_turma turma_regular
                     ON tmp_DiarioClasse_aluno.cl_tur_codigo = turma_regular.cd_turma_escola
               WHERE tmp_DiarioClasse_aluno.row_num = 1
                 AND turma_programa.cd_tipo_turma = 2
                 AND turma_regular.cd_tipo_turma <> 3) A
       GROUP BY cd_turma_edfisica, tne_nome, tme_nome, cd_etapa_ensino, dc_etapa_ensino,
             cd_serie_ensino, dc_serie_ensino, crp_ciclo, cd_turma_escola

    CREATE TABLE #tmp_turma_programa(
      cd_turma_programa int NOT NULL,
      cd_serie_ensino int NULL,
      dc_serie_ensino varchar(40) COLLATE DATABASE_DEFAULT NULL ,
      cd_modalidade_ensino int NULL,
      dc_modalidade_ensino varchar(40) COLLATE DATABASE_DEFAULT NULL,
      cd_etapa_ensino int NULL,
      dc_etapa_ensino varchar(60) COLLATE DATABASE_DEFAULT NULL,
      cd_ciclo_ensino int NULL,
      dc_ciclo_ensino varchar(20) COLLATE DATABASE_DEFAULT NULL,
      tne_nome varchar(100) COLLATE DATABASE_DEFAULT NULL,
      tme_nome varchar(100) COLLATE DATABASE_DEFAULT NULL,
      crp_ciclo varchar(100) COLLATE DATABASE_DEFAULT NULL,
      cd_tipo_programa int,
      cd_turma_escola int NOT NULL)

      INSERT INTO #tmp_turma_programa
            (cd_turma_programa, tne_nome, tme_nome, cd_etapa_ensino, dc_etapa_ensino,
             cd_serie_ensino, dc_serie_ensino, crp_ciclo, cd_tipo_programa, cd_turma_escola)
      SELECT cd_turma_programa, tne_nome, tme_nome, cd_etapa_ensino, dc_etapa_ensino,
             cd_serie_ensino, dc_serie_ensino, crp_ciclo, cd_tipo_programa, cd_turma_escola
        FROM (SELECT turma_programa.cd_turma_escola AS cd_turma_programa, turma_regular.tne_nome,
                     turma_regular.tme_nome, turma_regular.cd_etapa_ensino, turma_regular.dc_etapa_ensino,
                     turma_regular.cd_serie_ensino, turma_regular.dc_serie_ensino, turma_regular.crp_ciclo,
                     turma_programa.cd_tipo_programa, turma_regular.cd_turma_escola
                FROM tmp_DiarioClasse_turma turma_programa inner join
                     (select cl_alu_codigo, cl_tur_codigo
                        from BD_PRODAM..v_alunos_matriculados
                       where an_letivo = (SELECT CAST(VALOR as int) FROM _PARAMETROS WHERE CHAVE = 'ANO_BASE')
                         and cl_st in ('I', 'S')) alunos_programa
                     ON turma_programa.cd_turma_escola = alunos_programa.cl_tur_codigo
                     INNER JOIN 
                     (SELECT cl_alu_codigo, cl_st, cl_tur_codigo, cl_dt_inclusao,
                             ROW_NUMBER() OVER (PARTITION BY cl_alu_codigo
                                          ORDER BY cl_dt_inclusao DESC, cl_datst DESC) AS row_num
                        FROM BD_PRODAM..v_alunos_matriculados  
                             INNER JOIN 
                             (SELECT t.cd_turma_escola
                                FROM (SELECT tal.cd_turma_escola
                                        FROM BD_PRODAM..v_turma_MSTECH tal
                                             INNER JOIN tmpTipoSerieEOL tse
                                             ON tse.cd_serie_eol98 = tal.cd_serie_eol98
                                       WHERE tal.an_letivo = (SELECT CAST(VALOR as int) FROM _PARAMETROS WHERE CHAVE = 'ANO_BASE')
                                         AND tal.dc_etapa_ensino IS NOT NULL
                                         AND tal.cd_modalidade_ensino IS NOT NULL
                                         AND tal.cd_serie_ensino IS NOT NULL
                                         AND tal.dc_ciclo_ensino IS NOT NULL) AS t
                                       GROUP BY t.cd_turma_escola) AS tur
                             ON tur.cd_turma_escola = v_alunos_matriculados.cl_tur_codigo
                       where an_letivo = (SELECT CAST(VALOR as int) FROM _PARAMETROS WHERE CHAVE = 'ANO_BASE')
                         and isnull(cl_st,'X') in ('I','S')) tmp_DiarioClasse_aluno
                     ON alunos_programa.cl_alu_codigo = tmp_DiarioClasse_aluno.cl_alu_codigo
                     INNER JOIN tmp_DiarioClasse_turma turma_regular
                     ON tmp_DiarioClasse_aluno.cl_tur_codigo = turma_regular.cd_turma_escola
               WHERE tmp_DiarioClasse_aluno.row_num = 1
                 AND turma_programa.cd_tipo_turma = 3
                 AND turma_regular.cd_tipo_turma <> 3) A
       GROUP BY cd_turma_programa, tne_nome, tme_nome, cd_etapa_ensino, dc_etapa_ensino,
             cd_serie_ensino, dc_serie_ensino, crp_ciclo, cd_tipo_programa, cd_turma_escola
    
    CREATE TABLE #tmp_TurmaCurriculo(
      tur_id bigint NOT NULL,
      cur_id int NULL,
      crr_id int NULL,
      crp_id int NULL,
      tcr_prioridade int NULL,
      tcr_situacao tinyint NULL,
      tcp_id int NULL)    
    
	--turmas regulares com fl_edFisica = 0
    INSERT INTO #tmp_TurmaCurriculo (tur_id, cur_id, crr_id, crp_id, tcr_prioridade, tcr_situacao, tcp_id)
    SELECT tur.tur_id, cur.cur_id, crr.crr_id, crp.crp_id, 1 AS tcr_prioridade, 1 AS tcr_situacao, crp.tcp_id
      FROM tmp_DiarioClasse_turma tmp
           INNER JOIN DEPARA_TURMA tur
           ON (tur.tur_codigo = CONVERT(VARCHAR(10), tmp.cd_turma_escola))
           INNER JOIN GE_ACA_TipoNivelEnsino tne
           ON (tne.tne_nome COLLATE DATABASE_DEFAULT = tmp.tne_nome COLLATE DATABASE_DEFAULT)
           INNER JOIN GE_ACA_TipoModalidadeEnsino tme
           ON (tme.tme_nome COLLATE DATABASE_DEFAULT = tmp.tme_nome COLLATE DATABASE_DEFAULT)
           INNER JOIN Manutencao..DEPARA_NOME_CURSO nom ON nom.cd_etapa_ensino = tmp.cd_etapa_ensino
           LEFT JOIN (select distinct * from tmp_turma_grade_mstech) tg 
            ON tg.cd_turma_escola = tmp.cd_turma_escola
           AND (tg.dt_fim is null or tg.dt_fim >= GETDATE())
           INNER JOIN DEPARA_CURSO_GRADES dep
            ON dep.cd_grade = tg.cd_grade 
           AND dep.cd_serie_ensino = tmp.cd_serie_ensino
           INNER JOIN GE_ACA_Curso cur
           ON cur.cur_id = dep.cur_id
           INNER JOIN GE_ACA_Curriculo crr
            ON crr.cur_id = cur.cur_id
           AND crr.crr_codigo = CONVERT(VARCHAR(10), tmp.cd_etapa_ensino)
           INNER JOIN DEPARA_SERIE
            ON cur.cur_id = DEPARA_SERIE.cur_id
           AND crr.crr_id = DEPARA_SERIE.crr_id
           AND tmp.cd_serie_ensino = DEPARA_SERIE.cd_serie_ensino
           INNER JOIN GE_ACA_CurriculoPeriodo crp
            ON crp.cur_id = cur.cur_id
           AND crp.crr_id = crr.crr_id
           AND crp.crp_ordem = DEPARA_SERIE.crp_ordem
     WHERE tmp.an_letivo = (SELECT CAST(VALOR as int) FROM _PARAMETROS WHERE CHAVE = 'ANO_BASE')
       and tmp.cd_tipo_turma <> 3
       and DEPARA_SERIE.cur_id in (SELECT cur_id FROM DEPARA_CURSOS_DIVIDIDOS)
       and  ((crp.cur_id = 116 and crp.crp_ordem >= 6 and tmp.cd_escola not in (select esc_codigo from _PARAMETROS_ESCOLA_EDUCACAO_FISICA))
			  or (crp.cur_id = 116 and crp.crp_ordem < 6)
			  or (crp.cur_id = 109 and tmp.cd_escola not in (select esc_codigo from _PARAMETROS_ESCOLA_EDUCACAO_FISICA))
			  or crp.cur_id not in (109,111,116,119,120)
			)
       and dep.fl_edFisica = 0
    
	--turmas regulares com fl_edFisica = 1
    INSERT INTO #tmp_TurmaCurriculo (tur_id, cur_id, crr_id, crp_id, tcr_prioridade, tcr_situacao, tcp_id)
    SELECT tur.tur_id, cur.cur_id, crr.crr_id, crp.crp_id, 1 AS tcr_prioridade, 1 AS tcr_situacao, crp.tcp_id
      FROM tmp_DiarioClasse_turma tmp
           INNER JOIN DEPARA_TURMA tur
           ON (tur.tur_codigo = CONVERT(VARCHAR(10), tmp.cd_turma_escola))
           INNER JOIN GE_ACA_TipoNivelEnsino tne
           ON (tne.tne_nome COLLATE DATABASE_DEFAULT = tmp.tne_nome COLLATE DATABASE_DEFAULT)
           INNER JOIN GE_ACA_TipoModalidadeEnsino tme
           ON (tme.tme_nome COLLATE DATABASE_DEFAULT = tmp.tme_nome COLLATE DATABASE_DEFAULT)
           INNER JOIN Manutencao..DEPARA_NOME_CURSO nom ON nom.cd_etapa_ensino = tmp.cd_etapa_ensino
           LEFT JOIN (select distinct * from tmp_turma_grade_mstech) tg 
            ON tg.cd_turma_escola = tmp.cd_turma_escola
           AND (tg.dt_fim is null or tg.dt_fim >= GETDATE())
           INNER JOIN DEPARA_CURSO_GRADES dep
            ON dep.cd_grade = tg.cd_grade 
           AND dep.cd_serie_ensino = tmp.cd_serie_ensino
           INNER JOIN GE_ACA_Curso cur
           ON cur.cur_id = dep.cur_id 
           INNER JOIN GE_ACA_Curriculo crr
            ON crr.cur_id = cur.cur_id
           AND crr.crr_codigo = CONVERT(VARCHAR(10), tmp.cd_etapa_ensino)
           INNER JOIN DEPARA_SERIE
            ON cur.cur_id = DEPARA_SERIE.cur_id
           AND crr.crr_id = DEPARA_SERIE.crr_id
           AND tmp.cd_serie_ensino = DEPARA_SERIE.cd_serie_ensino
           INNER JOIN GE_ACA_CurriculoPeriodo crp
            ON crp.cur_id = cur.cur_id
           AND crp.crr_id = crr.crr_id
           AND crp.crp_ordem = DEPARA_SERIE.crp_ordem
     WHERE tmp.an_letivo = (SELECT CAST(VALOR as int) FROM _PARAMETROS WHERE CHAVE = 'ANO_BASE')
       and tmp.cd_tipo_turma <> 3
       and DEPARA_SERIE.cur_id in (SELECT cur_id FROM DEPARA_CURSOS_DIVIDIDOS)
	   and  ((crp.cur_id = 116 and crp.crp_ordem >= 6 and tmp.cd_escola in (select esc_codigo from _PARAMETROS_ESCOLA_EDUCACAO_FISICA))
			  or (crp.cur_id = 109 and tmp.cd_escola in (select esc_codigo from _PARAMETROS_ESCOLA_EDUCACAO_FISICA))
			  or (crp.cur_id in (111,119,120))
			)
       and dep.fl_edFisica = 1

	 --turmas de RP com fl_edFisica = 0
    INSERT INTO #tmp_TurmaCurriculo (tur_id, cur_id, crr_id, crp_id, tcr_prioridade, tcr_situacao, crp.tcp_id)
    SELECT tur.tur_id, cur.cur_id, crr.crr_id, crp.crp_id, 1 AS tcr_prioridade, 1 AS tcr_situacao, crp.tcp_id
      FROM tmp_DiarioClasse_turma tmp
           INNER JOIN #tmp_turma_programa trp
           ON tmp.cd_turma_escola = trp.cd_turma_programa
           INNER JOIN DEPARA_TURMA tur
           ON tur.tur_codigo = CONVERT(VARCHAR(10), trp.cd_turma_programa)
           INNER JOIN GE_ACA_TipoNivelEnsino tne
           ON tne.tne_nome COLLATE DATABASE_DEFAULT = trp.tne_nome COLLATE DATABASE_DEFAULT
           INNER JOIN GE_ACA_TipoModalidadeEnsino tme
           ON tme.tme_nome COLLATE DATABASE_DEFAULT = trp.tme_nome COLLATE DATABASE_DEFAULT
           INNER JOIN GE_ACA_Curso cur
            ON cur.tne_id = tne.tne_id
           AND cur.tme_id = tme.tme_id
           AND cur.cur_codigo = CONVERT(VARCHAR(10), trp.cd_etapa_ensino)
           AND cur.ent_id = @ent_id
           INNER JOIN GE_ACA_Curriculo crr
            ON crr.cur_id = cur.cur_id
           AND crr.crr_codigo = CONVERT(VARCHAR(10), trp.cd_etapa_ensino)
           INNER JOIN DEPARA_SERIE
            ON cur.cur_id = DEPARA_SERIE.cur_id
           AND crr.crr_id = DEPARA_SERIE.crr_id
           AND trp.cd_serie_ensino = DEPARA_SERIE.cd_serie_ensino
           INNER JOIN GE_ACA_CurriculoPeriodo crp
            ON crp.cur_id = cur.cur_id
           AND crp.crr_id = crr.crr_id
           AND crp.crp_ordem = DEPARA_SERIE.crp_ordem
           INNER JOIN tmp_turma_grade_mstech
           ON trp.cd_turma_escola = tmp_turma_grade_mstech.cd_turma_escola
           INNER JOIN DEPARA_CURSO_GRADES
            ON tmp_turma_grade_mstech.cd_grade = DEPARA_CURSO_GRADES.cd_grade
           AND crp.cur_id = DEPARA_CURSO_GRADES.cur_id
           AND crp.crr_id = DEPARA_CURSO_GRADES.crr_id
           AND crp.crp_id = DEPARA_CURSO_GRADES.crp_id
     WHERE tmp.an_letivo = (SELECT CAST(VALOR as int) FROM _PARAMETROS WHERE CHAVE = 'ANO_BASE')
       AND tmp_turma_grade_mstech.dt_fim IS NULL
       AND  ((crp.cur_id = 116 and crp.crp_ordem >= 6 and tmp.cd_escola not in (select esc_codigo from _PARAMETROS_ESCOLA_EDUCACAO_FISICA))
			  or (crp.cur_id = 116 and crp.crp_ordem < 6)
			  or (crp.cur_id = 109 and tmp.cd_escola not in (select esc_codigo from _PARAMETROS_ESCOLA_EDUCACAO_FISICA))
			  or (crp.cur_id NOT IN (109,111,116))
			 )
       and DEPARA_CURSO_GRADES.fl_edFisica = 0
    
	 --turmas de RP com fl_edFisica = 1
    INSERT INTO #tmp_TurmaCurriculo (tur_id, cur_id, crr_id, crp_id, tcr_prioridade, tcr_situacao, crp.tcp_id)
    SELECT tur.tur_id, cur.cur_id, crr.crr_id, crp.crp_id, 1 AS tcr_prioridade, 1 AS tcr_situacao, crp.tcp_id
      FROM tmp_DiarioClasse_turma tmp
           INNER JOIN #tmp_turma_programa trp
           ON tmp.cd_turma_escola = trp.cd_turma_programa
           INNER JOIN DEPARA_TURMA tur
           ON tur.tur_codigo = CONVERT(VARCHAR(10), trp.cd_turma_programa)
           INNER JOIN GE_ACA_TipoNivelEnsino tne
           ON tne.tne_nome COLLATE DATABASE_DEFAULT = trp.tne_nome COLLATE DATABASE_DEFAULT
           INNER JOIN GE_ACA_TipoModalidadeEnsino tme
           ON tme.tme_nome COLLATE DATABASE_DEFAULT = trp.tme_nome COLLATE DATABASE_DEFAULT
           INNER JOIN GE_ACA_Curso cur
            ON cur.tne_id = tne.tne_id
           AND cur.tme_id = tme.tme_id
           AND cur.cur_codigo = CONVERT(VARCHAR(10), trp.cd_etapa_ensino)
           AND cur.ent_id = @ent_id
           INNER JOIN GE_ACA_Curriculo crr
            ON crr.cur_id = cur.cur_id
           AND crr.crr_codigo = CONVERT(VARCHAR(10), trp.cd_etapa_ensino)
           INNER JOIN DEPARA_SERIE
            ON cur.cur_id = DEPARA_SERIE.cur_id
           AND crr.crr_id = DEPARA_SERIE.crr_id
           AND trp.cd_serie_ensino = DEPARA_SERIE.cd_serie_ensino
           INNER JOIN GE_ACA_CurriculoPeriodo crp
            ON crp.cur_id = cur.cur_id
           AND crp.crr_id = crr.crr_id
           AND crp.crp_ordem = DEPARA_SERIE.crp_ordem
           INNER JOIN tmp_turma_grade_mstech
           ON trp.cd_turma_escola = tmp_turma_grade_mstech.cd_turma_escola
           INNER JOIN DEPARA_CURSO_GRADES
            ON tmp_turma_grade_mstech.cd_grade = DEPARA_CURSO_GRADES.cd_grade
           AND crp.cur_id = DEPARA_CURSO_GRADES.cur_id
           AND crp.crr_id = DEPARA_CURSO_GRADES.crr_id
           AND crp.crp_id = DEPARA_CURSO_GRADES.crp_id
     WHERE tmp.an_letivo = (SELECT CAST(VALOR as int) FROM _PARAMETROS WHERE CHAVE = 'ANO_BASE')
       AND tmp_turma_grade_mstech.dt_fim IS NULL
       and  ((crp.cur_id = 116 and crp.crp_ordem >= 6 and tmp.cd_escola in (select esc_codigo from _PARAMETROS_ESCOLA_EDUCACAO_FISICA))
			  or (crp.cur_id = 109 and tmp.cd_escola in (select esc_codigo from _PARAMETROS_ESCOLA_EDUCACAO_FISICA))
			  or (crp.cur_id in (111,119,120))
			)
       and DEPARA_CURSO_GRADES.fl_edFisica = 1
    
    INSERT INTO #tmp_TurmaCurriculo (tur_id, cur_id, crr_id, crp_id, tcr_prioridade, tcr_situacao, crp.tcp_id)
    SELECT tur.tur_id, cur.cur_id, crr.crr_id, crp.crp_id, 1 AS tcr_prioridade, 1 AS tcr_situacao, crp.tcp_id
      FROM tmp_DiarioClasse_turma tmp
           INNER JOIN #tmp_turma_edfisica edf
           ON tmp.cd_turma_escola = edf.cd_turma_edfisica
           INNER JOIN DEPARA_TURMA tur
           ON tur.tur_codigo = CONVERT(VARCHAR(10), edf.cd_turma_edfisica)
           INNER JOIN GE_ACA_TipoNivelEnsino tne
           ON tne.tne_nome COLLATE DATABASE_DEFAULT = edf.tne_nome COLLATE DATABASE_DEFAULT
           INNER JOIN GE_ACA_TipoModalidadeEnsino tme
           ON tme.tme_nome COLLATE DATABASE_DEFAULT = edf.tme_nome COLLATE DATABASE_DEFAULT
           INNER JOIN GE_ACA_Curso cur
            ON cur.tne_id = tne.tne_id
           AND cur.tme_id = tme.tme_id
           AND cur.cur_codigo = CONVERT(VARCHAR(10), edf.cd_etapa_ensino)
           AND cur.ent_id = @ent_id
           INNER JOIN GE_ACA_Curriculo crr
            ON crr.cur_id = cur.cur_id
           AND crr.crr_codigo = CONVERT(VARCHAR(10), edf.cd_etapa_ensino)
           INNER JOIN DEPARA_SERIE
            ON cur.cur_id = DEPARA_SERIE.cur_id
           AND crr.crr_id = DEPARA_SERIE.crr_id
           AND edf.cd_serie_ensino = DEPARA_SERIE.cd_serie_ensino
           INNER JOIN GE_ACA_CurriculoPeriodo crp
            ON crp.cur_id = cur.cur_id
           AND crp.crr_id = crr.crr_id
           AND crp.crp_ordem = DEPARA_SERIE.crp_ordem
           INNER JOIN tmp_turma_grade_mstech
           ON edf.cd_turma_escola = tmp_turma_grade_mstech.cd_turma_escola
           INNER JOIN DEPARA_CURSO_GRADES
            ON tmp_turma_grade_mstech.cd_grade = DEPARA_CURSO_GRADES.cd_grade
           AND crp.cur_id = DEPARA_CURSO_GRADES.cur_id
           AND crp.crr_id = DEPARA_CURSO_GRADES.crr_id
           AND crp.crp_id = DEPARA_CURSO_GRADES.crp_id
     WHERE tmp.an_letivo = (SELECT CAST(VALOR as int) FROM _PARAMETROS WHERE CHAVE = 'ANO_BASE')
       AND tmp_turma_grade_mstech.dt_fim IS NULL
       AND DEPARA_CURSO_GRADES.fl_edFisica = 1
    
    MERGE INTO GE_TUR_TurmaCurriculo _target
    USING (select tur_id, cur_id, crr_id, crp_id, tcr_situacao, tcr_prioridade, tcp_id
			 from #tmp_TurmaCurriculo 
			group by tur_id, cur_id, crr_id, crp_id, tcr_situacao, tcr_prioridade, tcp_id) AS _source
     ON _source.tur_id = _target.tur_id
    AND _source.cur_id = _target.cur_id
    AND _source.crr_id = _target.crr_id
    AND _source.crp_id = _target.crp_id
    WHEN MATCHED AND _target.tcr_situacao <> 1 THEN
         UPDATE SET tcr_situacao = 1, tcr_dataAlteracao = GETDATE()
    WHEN NOT MATCHED THEN
         INSERT (tur_id, cur_id, crr_id, crp_id, tcr_prioridade, tcr_situacao)
         VALUES (_source.tur_id, _source.cur_id, _source.crr_id, _source.crp_id,
                 _source.tcr_prioridade, _source.tcr_situacao);
  
	--AEE
    update tur 
	   set fav_id = 14 --AEE
	  from GE_TUR_Turma tur
	 WHERE tur.tur_tipo = 5
	   AND tur.fav_id IS NULL    
  
	-- acertando os fav_ids do ensino fundamental regular
	update tur 
	   set fav_id = CASE WHEN crp_ordem < 4 THEN 8 --alfabetizacao
						 WHEN crp_ordem > 6 THEN 9 --autoral
						 WHEN crp_ordem = 6 THEN 10 --interdisciplinar 6º ano
						 ELSE 7 --interdisciplinar 4º e 5º ano
					 END
	  from GE_TUR_Turma tur
		   INNER JOIN GE_TUR_TurmaCurriculo tcr ON tcr.tur_id = tur.tur_id
		   INNER JOIN GE_ACA_Curso cur ON cur.cur_id = tcr.cur_id
		   INNER JOIN GE_ACA_CurriculoPeriodo crp ON crp.cur_id = cur.cur_id and crp.crp_id = tcr.crp_id
		   INNER JOIN GE_ACA_TipoModalidadeEnsino tme ON tme.tme_id = cur.tme_id
		   INNER JOIN GE_ACA_TipoNivelEnsino tne ON tne.tne_id = cur.tne_id
	 WHERE tme_nome in ('Regular','Especial') and tne_nome = 'Ensino Fundamental'
	   AND tur.fav_id IS NULL
    
    update tur 
	   set fav_id = 9 --mesmo do 7° ano pra frente
	  from GE_TUR_Turma tur
		   INNER JOIN GE_TUR_TurmaCurriculo tcr ON tcr.tur_id = tur.tur_id
		   INNER JOIN GE_ACA_Curso cur ON cur.cur_id = tcr.cur_id
		   INNER JOIN GE_ACA_CurriculoPeriodo crp ON crp.cur_id = cur.cur_id and crp.crp_id = tcr.crp_id
		   INNER JOIN GE_ACA_TipoModalidadeEnsino tme ON tme.tme_id = cur.tme_id
		   INNER JOIN GE_ACA_TipoNivelEnsino tne ON tne.tne_id = cur.tne_id
	 WHERE tne_nome = 'Ensino Médio'
	   AND tur.fav_id IS NULL    
	   
	update tur 
	   set fav_id = 12 --conceitos EJA pra Alfabetizacao I e II
	  from GE_TUR_Turma tur
		   INNER JOIN GE_TUR_TurmaCurriculo tcr ON tcr.tur_id = tur.tur_id
		   INNER JOIN GE_ACA_Curso cur ON cur.cur_id = tcr.cur_id
		   INNER JOIN GE_ACA_CurriculoPeriodo crp ON crp.cur_id = cur.cur_id and crp.crp_id = tcr.crp_id
		   INNER JOIN GE_ACA_TipoModalidadeEnsino tme ON tme.tme_id = cur.tme_id
		   INNER JOIN GE_ACA_TipoNivelEnsino tne ON tne.tne_id = cur.tne_id
	 WHERE tme.tme_nome like '%EJA%' and crp.crp_id <= 2
	   AND tur.fav_id IS NULL    
	
	update tur 
	   set fav_id = 13 --Notas por disciplina EJA -- pra todos os outros grupamentos
	  from GE_TUR_Turma tur
		   INNER JOIN GE_TUR_TurmaCurriculo tcr ON tcr.tur_id = tur.tur_id
		   INNER JOIN GE_ACA_Curso cur ON cur.cur_id = tcr.cur_id
		   INNER JOIN GE_ACA_CurriculoPeriodo crp ON crp.cur_id = cur.cur_id and crp.crp_id = tcr.crp_id
		   INNER JOIN GE_ACA_TipoModalidadeEnsino tme ON tme.tme_id = cur.tme_id
		   INNER JOIN GE_ACA_TipoNivelEnsino tne ON tne.tne_id = cur.tne_id
	 WHERE tme.tme_nome like '%EJA%' and crp.crp_id > 2
	   AND tur.fav_id IS NULL    
	   
	update tur 
	   set fav_id = 11 --infantil
	  from GE_TUR_Turma tur
		   INNER JOIN GE_TUR_TurmaCurriculo tcr ON tcr.tur_id = tur.tur_id
		   INNER JOIN GE_ACA_Curso cur ON cur.cur_id = tcr.cur_id
		   INNER JOIN GE_ACA_TipoModalidadeEnsino tme ON tme.tme_id = cur.tme_id
		   INNER JOIN GE_ACA_TipoNivelEnsino tne ON tne.tne_id = cur.tne_id
	 WHERE tme.tme_id in (1) --infantil 
	   and tne_nome = 'Educação Infantil'
	   AND tur.fav_id IS NULL    
    
    -- acerta os turnos de acordo com o fav_id
    update GE_TUR_Turma
       set trn_id = Turno_new.trn_id
      from GE_TUR_Turma  tur inner join 
           (select trn_id, replace(trn_descricao, ' FUND1', '') as trn_descricao from GE_ACA_Turno
             where trn_controleTempo = 2 and trn_situacao <> 3) Turno_old
           on tur.trn_id = Turno_old.trn_id
           inner join
           (select trn_id, trn_descricao from GE_ACA_Turno
             where trn_controleTempo = 1 and trn_situacao <> 3) Turno_new
           on Turno_old.trn_descricao = Turno_new.trn_descricao
     where fav_id in (9, 10)

	-- adicionado para marcar como excluídos os registros antigos
	UPDATE GE_TUR_TurmaCurriculo SET tcr_situacao = 3, tcr_dataAlteracao = GETDATE()
	  from GE_TUR_TurmaCurriculo
		   inner join GE_TUR_Turma tur ON GE_TUR_TurmaCurriculo.tur_id = tur.tur_id and tur.tur_tipo = 1
           inner join GE_ACA_CalendarioAnual cal ON cal.cal_id = tur.cal_id 
           inner join _PARAMETROS par ON par.CHAVE = 'ANO_BASE' and cal.cal_ano = par.VALOR
	 where tcr_situacao <> 3
	   and tcr_dataAlteracao = (select min(tcr_dataAlteracao) FROM GE_TUR_TurmaCurriculo tcr2
			 where tcr2.tur_id = tur.tur_id and tcr2.tcr_situacao <> 3)
	   and (select COUNT(*) FROM GE_TUR_TurmaCurriculo tcr2
			 where tcr2.tur_id = tur.tur_id and tcr2.tcr_situacao <> 3) > 1
   
    update GE_TUR_Turma SET tur_situacao = 5, tur_dataAlteracao = GETDATE() 
      from GE_TUR_Turma 
     where tur_situacao = 1 
       and not exists (select * from GE_TUR_TurmaCurriculo tcr 
                        where tcr.tur_id = GE_TUR_Turma.tur_id and tcr_situacao = 1) 
       and GE_TUR_Turma.tur_tipo in (2,3,5)
	
	--18/01/2017 - adicionando prefixo nas turmas regulares. Só é possível fazer neste ponto, pois preciso do curso da turma
	update GE_TUR_Turma set tur_codigo = depSer.modEnsino + '-' + tm.dc_turma_escola
	  --select * 
	  from GE_TUR_Turma 
		   inner join GE_TUR_TurmaCurriculo tcr on tcr.tur_id = GE_TUR_Turma.tur_id and tcr.tcr_situacao <> 3
		   inner join (select distinct cur_id, crp_id, modEnsino from Manutencao..DEPARA_SERIE) depSer on depSer.cur_id = tcr.cur_id and depSer.crp_id = tcr.crp_id
		   inner join GE_ACA_CalendarioAnual cal on cal.cal_id = GE_TUR_Turma.cal_id 
		   inner join _PARAMETROS par ON par.CHAVE = 'ANO_BASE' and cal.cal_ano = par.VALOR
		   inner join Manutencao..DEPARA_TURMA depTur on depTur.tur_id = tcr.tur_id
		   inner join BD_PRODAM..v_turma_mstech tm on tm.cd_turma_escola = depTur.tur_codigo
	 where tur_tipo = 1 and GE_TUR_Turma.tur_codigo <> depSer.modEnsino + '-' + tm.dc_turma_escola
	
	--adicionado em 04/09/2017 pra tratar casos em que a turma de Recuperação Paralela muda de nome no decorrer do ano 
	--(São exceções mas decidimos tratar aqui pois não causam impacto no SGP)
	update tur set tur_codigo = tm.dc_turma_escola, tur_dataAlteracao = GETDATE()
	  from GestaoPedagogica..TUR_Turma tur
		   inner join GestaoPedagogica..ACA_CalendarioAnual cal on cal.cal_id = tur.cal_id
		   inner join _PARAMETROS par ON par.CHAVE = 'ANO_BASE' and cal.cal_ano = par.VALOR
		   inner join DEPARA_TURMA dep on dep.tur_id = tur.tur_id
		   inner join BD_PRODAM..v_turma_mstech tm on tm.cd_turma_Escola = dep.tur_codigo 
	 where tur.tur_situacao = 1 
	   and tur.tur_tipo = 2 and tur.tur_codigo <> tm.dc_turma_escola
	 
	 --adicionando tratamento na ACA_CurriculoEscola apenas para as turmas do infantil
	 -- em 2016 escolhemos não fazer isso para o Ensino Fundamental para que ficasse mais rápido 
	 --e fácil identificar problemas de alguma nova turma não prevista que pudesse impactar a grade e os deparas
	 --porém para o Ensino Infantil isso faz sentido, principalmente porque novas escolas e turmas aparecem a qualquer momento e as grades são menos complexas
		insert into GE_ACA_CurriculoEscola
		select distinct cur_id, crr_id, tur.esc_id, uni_id, 1 as ces_id, '2019-01-01' as ces_vigenciaInicio,
			   cast(null as date) as ces_vigenciafim, 1 as ces_situacao, GETDATE() as ces_DataCriacao,
			   GETDATE() as ces_DataAlteracao, 1 as vis_id
		  from GE_TUR_Turma tur
			   inner join GE_TUR_TurmaCurriculo tcr
			   on tur.tur_id = tcr.tur_id and tcr.cur_id in (105,106,107,108)
			   inner join GE_ESC_Escola esc
			   on tur.esc_id = esc.esc_id
			   inner join GE_ACA_CalendarioAnual cal
			   on tur.cal_id = cal.cal_id
		 where tur.tur_situacao <> 3
		   and tcr.tcr_situacao <> 3
		   and esc.esc_situacao <> 3
		   and cal.cal_situacao <> 3
		   and cal.cal_ano = 2019
		   and cur_id not in (select cur_id from GE_ACA_CurriculoEscola ces
							   where ces.cur_id = tcr.cur_id
								 and ces.crr_id = tcr.crr_id
								 and ces.esc_id = tur.esc_id
								 and ces.uni_id = tur.uni_id)
		 
		 insert into GE_ACA_CurriculoEscolaPeriodo
		select distinct ces.cur_id, ces.crr_id, ces.esc_id, ces.uni_id, ces.ces_id, tcr.crp_id, ces_situacao
		  from GE_TUR_Turma tur
			   inner join GE_TUR_TurmaCurriculo tcr
			   on tur.tur_id = tcr.tur_id and tcr.cur_id in (105,106,107,108)
			   inner join GE_ESC_Escola esc
			   on tur.esc_id = esc.esc_id
			   inner join GE_ACA_CalendarioAnual cal
			   on tur.cal_id = cal.cal_id
			   inner join GE_ACA_CurriculoEscola  ces
				on tcr.cur_id = ces.cur_id
			   and tcr.crr_id = ces.crr_id
			   and tur.esc_id = ces.esc_id
			   and tur.uni_id = ces.uni_id
		 where tur.tur_situacao <> 3 
		   and tcr.tcr_situacao <> 3
		   and esc.esc_situacao <> 3
		   and cal.cal_situacao <> 3
		   and cal.cal_ano = 2019
		   and ces.ces_situacao <> 3
		   and ces.cur_id not in (select cur_id from GE_ACA_CurriculoEscolaPeriodo cep
								   where cep.cur_id = ces.cur_id
									 and cep.crr_id = ces.crr_id
									 and cep.esc_id = ces.esc_id
									 and cep.uni_id = ces.uni_id
									 and cep.ces_id = ces.ces_id
									 and cep.crp_id = tcr.crp_id)

END
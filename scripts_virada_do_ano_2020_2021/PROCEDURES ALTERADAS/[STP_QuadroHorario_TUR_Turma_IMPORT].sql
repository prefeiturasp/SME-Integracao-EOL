USE [Manutencao]
GO
/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_TUR_Turma_IMPORT]    Script Date: 20/01/2021 18:37:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[STP_QuadroHorario_TUR_Turma_IMPORT]
	@ent_id UNIQUEIDENTIFIER,
	@ano INT
AS
BEGIN
	IF (@ent_id IS NULL)
		SET @ent_id = (SELECT ent_id FROM SSO_SYS_Entidade WHERE ent_sigla = 'smesp')

	DECLARE @fav_id int
    DECLARE @tmpTurmaTable AS TABLE
     (cd_turma_escola BIGINT,
      qtd_matriculados INT)
	
	SET @fav_id = NULL --(SELECT TOP 1 fav_id FROM GE_ACA_FormatoAvaliacao WHERE ent_id = @ent_id AND LOWER(fav_nome) = 'conceito global + nota de disciplina')
    
    /* cria tabela de DEPARA_TURMA com o id do SGP e o código do EOL */
    IF  NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DEPARA_TURMA]') AND type in (N'U'))
        CREATE TABLE dbo.DEPARA_TURMA(
	       tur_id     BIGINT NOT NULL,
	       tur_codigo VARCHAR(30) NOT NULL)

    CREATE TABLE #DP_TURMA(
      tur_id     BIGINT NOT NULL,
      tur_codigo VARCHAR(30) NULL)
	           
    CREATE TABLE #TUR_Turma(
      tur_id bigint NULL,
      esc_id int NULL,
      uni_id int NULL,
      tur_codigo varchar(30) COLLATE DATABASE_DEFAULT NULL,
      tur_descricao varchar(2000) COLLATE DATABASE_DEFAULT NULL,
      tur_vagas int NULL,
      tur_minimoMatriculados int NULL,
      tur_duracao tinyint NULL,
      cal_id int NULL,
      trn_id int NULL,
      fav_id int NULL,
      tur_docenteEspecialista bit NULL,
      tur_situacao tinyint NULL,
      tur_tipo tinyint NULL,
      tur_dataAlteracao datetime NULL,
      tur_dataEncerramento datetime NULL)
    
    insert into #TUR_Turma (tur_id, esc_id, uni_id, tur_codigo, tur_descricao, tur_vagas,
           tur_minimoMatriculados, tur_duracao, cal_id, fav_id, trn_id, tur_situacao,
           tur_tipo, tur_docenteEspecialista, tur_dataAlteracao, tur_dataEncerramento)
    SELECT isnull(_out.tur_id, -1) as tur_id, _out.esc_id, _out.uni_id, _out.tur_codigo, _out.tur_descricao,
           _out.tur_vagas, _out.tur_minimoMatriculados, _out.tur_duracao, _out.cal_id, _out.fav_id,
           _out.trn_id, _out.tur_situacao, _out.tur_tipo, _out.tur_docenteEspecialista, _out.tur_dataAlteracao, _out.dt_fim
      FROM (SELECT DEPARA_TURMA.tur_id, es.esc_id, uni.uni_id,
                   cast(tur.cd_turma_escola as varchar (30)) AS tur_codigo,
                   tur.dc_turma_escola AS tur_descricao, tur.qt_vaga_oferecida AS tur_vagas,
                   tur.qt_vaga_oferecida/4 AS tur_minimoMatriculados, 1 AS tur_duracao, cal.cal_id AS cal_id,
                   @fav_id AS fav_id, trn.trn_id, 1 AS tur_situacao, 1 /* 1 - Normal 2 - Eletiva */ AS tur_tipo,
				   --A pedido do pessoal de desenvolvimento, passar sempre 0 para docenteespecialista
                   0 AS tur_docenteEspecialista, turm.tur_dataAlteracao, tur.dt_fim
              FROM tmp_DiarioClasse_turma tur 
				   INNER JOIN GE_ACA_CalendarioAnual cal ON cal.cal_ano = tur.an_letivo and cal.cal_situacao = 1
														AND ((tur.dc_etapa_ensino like '%infantil%' and cal.cal_id = 23) 
															 or (tur.dc_etapa_ensino like '%EJA%' and tur.dc_tipo_periodicidade = 'SEMESTRAL INICIO NO 1º SEMESTRE' and cal.cal_id = 24)
															 or (tur.dc_etapa_ensino like '%EJA%' and tur.dc_tipo_periodicidade = 'SEMESTRAL INICIO NO 2º SEMESTRE' and cal.cal_id = 25)
														     or (tur.dc_etapa_ensino not like '%infantil%' 
																 and tur.dc_etapa_ensino not like '%EJA%' and cal.cal_id = 22))
                   INNER JOIN GE_ESC_Escola es
                   ON (es.esc_codigo COLLATE DATABASE_DEFAULT = tur.cd_escola COLLATE DATABASE_DEFAULT)
				   AND es.esc_situacao <> 3
                   INNER JOIN GE_ESC_UnidadeEscola uni
                   ON (uni.esc_id = es.esc_id)
                   INNER JOIN GE_ACA_TipoTurno ttn
                   ON (ttn.ttn_nome COLLATE DATABASE_DEFAULT = tur.dc_tipo_turno COLLATE DATABASE_DEFAULT)
                   INNER JOIN (select * from GE_ACA_Turno where trn_controleTempo = 2) trn
                   ON (replace(trn.trn_descricao, ' FUND1', '') COLLATE DATABASE_DEFAULT = tur.tur_descricao COLLATE DATABASE_DEFAULT)
                   LEFT JOIN DEPARA_TURMA
                   ON CAST(tur.cd_turma_escola AS VARCHAR(30)) COLLATE DATABASE_DEFAULT = DEPARA_TURMA.tur_codigo
                   LEFT JOIN GE_TUR_Turma turm
                    ON DEPARA_TURMA.tur_id = turm.tur_id
                   AND 1 = turm.tur_situacao
             where tur.st_turma_escola <> 'E'
               and tur.cd_tipo_turma not in (2, 3)) AS _out
     GROUP BY isnull(tur_id, -1), esc_id, uni_id, tur_codigo, tur_descricao, tur_vagas,
              tur_minimoMatriculados, tur_duracao, cal_id, fav_id, trn_id,
              tur_situacao, tur_tipo, tur_docenteEspecialista, tur_dataAlteracao, dt_fim
    
	UPDATE #TUR_Turma SET tur_dataAlteracao = GETDATE() where tur_dataAlteracao is null
	
	DECLARE @cal_idEF int
	DECLARE @cal_idEI int
	DECLARE @cal_idEJA int
	DECLARE @cal_idEJA2 int
	select top 1 @cal_idEF = cal_id from GE_ACA_CalendarioAnual 
	 where cal_ano = (select valor from _parametros where chave = 'ANO_BASE') and cal_descricao not like '%Infant%' and cal_descricao not like '%EJA%'
	select top 1 @cal_idEI = cal_id from GE_ACA_CalendarioAnual 
	 where cal_ano = (select valor from _parametros where chave = 'ANO_BASE') and cal_descricao like '%Infant%'
	select top 1 @cal_idEJA = cal_id from GE_ACA_CalendarioAnual 
	 where cal_ano = (select valor from _parametros where chave = 'ANO_BASE') and cal_descricao like '%1°%EJA%'
	select top 1 @cal_idEJA2 = cal_id from GE_ACA_CalendarioAnual 
	 where cal_ano = (select valor from _parametros where chave = 'ANO_BASE') and cal_descricao like '%2°%EJA%'
	 
	MERGE INTO GE_TUR_Turma _target
	USING #TUR_Turma _source
	ON (_source.tur_id = _target.tur_id)
	WHEN MATCHED THEN
		UPDATE SET			
		    tur_descricao = NULL
			, tur_codigoEOL = cast(_source.tur_codigo as int) 
		    , tur_tipo = _source.tur_tipo
		    , trn_id = _source.trn_id
			, tur_docenteEspecialista = _source.tur_docenteEspecialista
			--, fav_id = _source.fav_id
			, tur_minimoMatriculados = _source.tur_minimoMatriculados
			, tur_situacao = 1
			, tur_dataEncerramento = null
			, tur_dataAlteracao = isnull(CASE 
									WHEN (	_source.tur_docenteEspecialista <> _target.tur_docenteEspecialista
											OR  _source.fav_id <> _target.fav_id
											OR  _source.tur_minimoMatriculados <> _target.tur_minimoMatriculados)	 
									THEN GETDATE()
									ELSE _source.tur_dataAlteracao
								  END, getdate())
	WHEN NOT MATCHED THEN
		INSERT (esc_id, uni_id, tur_codigo, tur_vagas, tur_minimoMatriculados, tur_duracao, cal_id,
		        fav_id, trn_id, tur_situacao, tur_tipo, tur_docenteEspecialista, 
		        tur_dataCriacao, tur_dataAlteracao, tur_codigoEOL 
			    )
		VALUES (_source.esc_id, _source.uni_id, _source.tur_descricao, _source.tur_vagas,
		        _source.tur_minimoMatriculados, _source.tur_duracao, _source.cal_id, _source.fav_id,
		        _source.trn_id, _source.tur_situacao, _source.tur_tipo, _source.tur_docenteEspecialista, 
		        _source.tur_dataAlteracao, _source.tur_dataAlteracao, cast(_source.tur_codigo as int) 
			   )
	WHEN NOT MATCHED BY SOURCE AND _target.tur_situacao = 1 AND _target.tur_tipo = 1 
							   AND (_target.cal_id = @cal_idEF or _target.cal_id = @cal_idEI or _target.cal_id = @cal_idEJA or _target.cal_id = @cal_idEJA2) THEN
	     UPDATE SET tur_situacao = 7, tur_dataAlteracao = getdate()
    OUTPUT INSERTED.tur_id, _source.tur_codigo
      INTO #DP_TURMA;
  
    CREATE TABLE #TURNO(
      esc_id int NULL,
      trn_id int NULL,
      trn_descricao varchar(200) COLLATE DATABASE_DEFAULT)   
    
    insert into #TURNO
    select esc_id, trn_id, trn_descricao
      from (select tur.esc_id, tur.trn_id, left(trn_descricao, CHARINDEX('-', trn_descricao) - 2) trn_descricao,
                   ROW_NUMBER() OVER(PARTITION BY tur.esc_id, left(trn_descricao, CHARINDEX('-', trn_descricao) - 2)
		           ORDER BY tur.esc_id, left(trn_descricao, CHARINDEX('-', trn_descricao) - 2) desc) as LINHA
              from GE_TUR_Turma tur inner join GE_ACA_Turno
                   on tur.trn_id = GE_ACA_Turno.trn_id
             where cal_id > 3
               and tur_tipo not in (2,3,5)) Turnos
     where LINHA = 1

    TRUNCATE TABLE #TUR_Turma
    
    -- Turmas de Recuperação Paralela
    insert into #TUR_Turma (tur_id, esc_id, uni_id, tur_codigo, tur_descricao, tur_vagas,
           tur_minimoMatriculados, tur_duracao, cal_id, fav_id, trn_id, tur_situacao,
           tur_tipo, tur_docenteEspecialista, tur_dataAlteracao)
    SELECT isnull(_out.tur_id, -1) as tur_id, _out.esc_id, _out.uni_id, _out.tur_codigo, _out.tur_descricao,
           _out.tur_vagas, _out.tur_minimoMatriculados, _out.tur_duracao, _out.cal_id, _out.fav_id,
           _out.trn_id, _out.tur_situacao, _out.tur_tipo, _out.tur_docenteEspecialista, _out.tur_dataAlteracao
      FROM (SELECT DEPARA_TURMA.tur_id, es.esc_id, uni.uni_id,
                   cast(tur.cd_turma_escola as varchar (30)) AS tur_codigo,
                   tur.dc_turma_escola AS tur_descricao, tur.qt_vaga_oferecida AS tur_vagas,
                   tur.qt_vaga_oferecida/4 AS tur_minimoMatriculados, 1 AS tur_duracao, cal.cal_id AS cal_id,
                   @fav_id AS fav_id, trn.trn_id, 1 AS tur_situacao, 
				   CASE WHEN tur.cd_tipo_programa in (94,95,96,97,362) THEN 5 -- AEE
						ELSE 2  -- RP
					END AS tur_tipo,
				   --A pedido do pessoal de desenvolvimento, passar sempre 0 para docenteespecialista
                   0 AS tur_docenteEspecialista, turm.tur_dataAlteracao
              FROM tmp_DiarioClasse_turma tur 
				   INNER JOIN GE_ACA_CalendarioAnual cal ON cal.cal_ano = tur.an_letivo and cal.cal_situacao = 1 and cal.cal_id = @cal_idEF
                   INNER JOIN GE_ESC_Escola es
                   ON (es.esc_codigo COLLATE DATABASE_DEFAULT = tur.cd_escola COLLATE DATABASE_DEFAULT)
				   AND es.esc_situacao <> 3
                   INNER JOIN GE_ESC_UnidadeEscola uni
                   ON (uni.esc_id = es.esc_id)
                   LEFT JOIN #TURNO trn
                    ON tur.dc_tipo_turno COLLATE DATABASE_DEFAULT = trn.trn_descricao
                   AND es.esc_id = TRN.esc_id
                   LEFT JOIN DEPARA_TURMA
                   ON CAST(tur.cd_turma_escola AS VARCHAR(30)) COLLATE DATABASE_DEFAULT = DEPARA_TURMA.tur_codigo
                   LEFT JOIN GE_TUR_Turma turm
                    ON DEPARA_TURMA.tur_id = turm.tur_id
                   AND turm.tur_situacao <> 3
             where tur.st_turma_escola <> 'E'
               and tur.cd_tipo_turma = 3) AS _out
     GROUP BY isnull(tur_id, -1), esc_id, uni_id, tur_codigo, tur_descricao, tur_vagas,
              tur_minimoMatriculados, tur_duracao, cal_id, fav_id, trn_id,
              tur_situacao, tur_tipo, tur_docenteEspecialista, tur_dataAlteracao
    
	truncate table EscolasComEJA

	insert into EscolasComEJA (esc_id)
	select tur.esc_id
	  from GE_TUR_Turma tur
		   inner join GE_TUR_TurmaCurriculo tcr on tcr.tur_id = tur.tur_id and tcr.tcr_situacao <> 3 and tcr.cur_id in (119,120)
		   inner join GE_ACA_CalendarioAnual cal on cal.cal_id = tur.cal_id 
		   inner join _PARAMETROS par ON par.CHAVE = 'ANO_BASE' and cal.cal_ano = par.VALOR
	 where tur.tur_tipo = 1 and tur.tur_situacao <> 3
	 group by tur.esc_id
	  
	  
    -- Turmas de Educação Física
    insert into #TUR_Turma (tur_id, esc_id, uni_id, tur_codigo, tur_descricao, tur_vagas,
           tur_minimoMatriculados, tur_duracao, cal_id, fav_id, trn_id, tur_situacao,
           tur_tipo, tur_docenteEspecialista, tur_dataAlteracao)
    SELECT isnull(_out.tur_id, -1) as tur_id, _out.esc_id, _out.uni_id, _out.tur_codigo, _out.tur_descricao,
           _out.tur_vagas, _out.tur_minimoMatriculados, _out.tur_duracao, _out.cal_id, _out.fav_id,
           _out.trn_id, _out.tur_situacao, _out.tur_tipo, _out.tur_docenteEspecialista, _out.tur_dataAlteracao
      FROM (SELECT DEPARA_TURMA.tur_id, es.esc_id, uni.uni_id,
                   cast(tur.cd_turma_escola as varchar (30)) AS tur_codigo,
                   tur.dc_turma_escola AS tur_descricao, tur.qt_vaga_oferecida AS tur_vagas,
                   tur.qt_vaga_oferecida/4 AS tur_minimoMatriculados, 1 AS tur_duracao, cal.cal_id AS cal_id,
                   @fav_id AS fav_id, trn.trn_id, 1 AS tur_situacao,
                   3 /* 1 - Normal 2 - Eletiva 3 - Ed. Fisica*/ AS tur_tipo,
				   --A pedido do pessoal de desenvolvimento, passar sempre 0 para docenteespecialista
                   0 AS tur_docenteEspecialista, turm.tur_dataAlteracao
              FROM tmp_DiarioClasse_turma tur 
				   INNER JOIN GE_ACA_CalendarioAnual cal ON cal.cal_ano = tur.an_letivo and cal.cal_situacao = 1 and cal.cal_id = @cal_idEF
                   INNER JOIN GE_ESC_Escola es
                   ON (es.esc_codigo COLLATE DATABASE_DEFAULT = tur.cd_escola COLLATE DATABASE_DEFAULT)
				   AND es.esc_situacao <> 3
                   INNER JOIN GE_ESC_UnidadeEscola uni
                   ON (uni.esc_id = es.esc_id)
                   LEFT JOIN _PARAMETROS_ESCOLA_EDUCACAO_FISICA
                   ON tur.cd_escola = _PARAMETROS_ESCOLA_EDUCACAO_FISICA.esc_codigo
                   LEFT JOIN #TURNO trn
                    ON tur.dc_tipo_turno COLLATE DATABASE_DEFAULT = trn.trn_descricao
                   AND es.esc_id = TRN.esc_id
                   LEFT JOIN DEPARA_TURMA
                   ON CAST(tur.cd_turma_escola AS VARCHAR(30)) COLLATE DATABASE_DEFAULT = DEPARA_TURMA.tur_codigo
                   LEFT JOIN GE_TUR_Turma turm
                    ON DEPARA_TURMA.tur_id = turm.tur_id
                   AND turm.tur_situacao <> 3
				   LEFT JOIN EscolasComEJA eja on eja.esc_id = es.esc_id
             where tur.st_turma_escola <> 'E'
               and tur.cd_tipo_turma = 2
               and (_PARAMETROS_ESCOLA_EDUCACAO_FISICA.esc_codigo is not null 
					or es.esc_nome like 'EMEFM%' or eja.esc_id is not null) --add para pegar as turmas de ensino médio e turmas de EJA
             ) AS _out
     GROUP BY isnull(tur_id, -1), esc_id, uni_id, tur_codigo, tur_descricao, tur_vagas,
              tur_minimoMatriculados, tur_duracao, cal_id, fav_id, trn_id,
              tur_situacao, tur_tipo, tur_docenteEspecialista, tur_dataAlteracao
	
	UPDATE #TUR_Turma SET tur_dataAlteracao = GETDATE() where tur_dataAlteracao is null

	MERGE INTO GE_TUR_Turma _target
	USING #TUR_Turma _source
	ON (_source.tur_id = _target.tur_id)
	WHEN MATCHED AND (_source.trn_id IS NOT NULL) THEN
		UPDATE SET			
		    tur_descricao = NULL
			, tur_codigoEOL = cast(_source.tur_codigo as int) 
		    , tur_tipo = _source.tur_tipo
		    , trn_id = _source.trn_id
			, tur_docenteEspecialista = _source.tur_docenteEspecialista
			--, fav_id = _source.fav_id
			, tur_minimoMatriculados = _source.tur_minimoMatriculados
			, tur_situacao = 1
			, tur_dataEncerramento = null
			, tur_dataAlteracao = isnull(CASE 
									WHEN (	_source.tur_docenteEspecialista <> _target.tur_docenteEspecialista
											OR  _source.fav_id <> _target.fav_id
											OR  _target.tur_situacao <> 1
											OR  _source.tur_minimoMatriculados <> _target.tur_minimoMatriculados)	 
									THEN GETDATE()
									ELSE _source.tur_dataAlteracao
								  END, getdate())
	WHEN NOT MATCHED THEN
		INSERT (esc_id, uni_id, tur_codigo, tur_vagas, tur_minimoMatriculados, tur_duracao, cal_id,
		        fav_id, trn_id, tur_situacao, tur_tipo, tur_docenteEspecialista, 
		        tur_dataCriacao, tur_dataAlteracao, tur_codigoEOL 
			    )
		VALUES (_source.esc_id, _source.uni_id, _source.tur_descricao, _source.tur_vagas,
		        _source.tur_minimoMatriculados, _source.tur_duracao, _source.cal_id, _source.fav_id,
		        _source.trn_id, _source.tur_situacao, _source.tur_tipo, _source.tur_docenteEspecialista, 
		        _source.tur_dataAlteracao, _source.tur_dataAlteracao, cast(_source.tur_codigo as int)
				)
	WHEN NOT MATCHED BY SOURCE AND _target.tur_tipo in (2,3,5) AND _target.tur_situacao = 1
	     AND RIGHT(_target.tur_codigo ,4) <> '- EF' AND _target.cal_id = @cal_idEF  THEN
	     UPDATE SET tur_situacao = 7, tur_dataAlteracao = getdate()
    OUTPUT INSERTED.tur_id,  _source.tur_codigo
      INTO #DP_TURMA;
    
    insert into DEPARA_TURMA (tur_id, tur_codigo)
    select tur_id, tur_codigo
      from #DP_TURMA
     where tur_codigo is not null and tur_id not in (select tur_id from DEPARA_TURMA)
    
    -- Elimina as duplicidade da DEPARA_TURMA
    CREATE TABLE #TURMA(
       tur_id     BIGINT NOT NULL,
       tur_codigo VARCHAR(30) COLLATE DATABASE_DEFAULT NOT NULL)
    
    insert into #TURMA   
    select distinct tur_id, tur_codigo from DEPARA_TURMA
    truncate table DEPARA_TURMA
    insert into DEPARA_TURMA select * from #TURMA
    
    UPDATE GE_TUR_Turma SET trn_id = turno.trn_id
	  from GE_TUR_Turma 
		   inner join DEPARA_TURMA dep on dep.tur_id = GE_TUR_Turma.tur_id 
		   inner join tmp_DiarioClasse_turma tm on tm.cd_turma_escola = dep.tur_codigo
		   inner join ( select * 
						  from (select ttn.ttn_nome, trn.* , ROW_NUMBER() OVER(PARTITION BY trn.ttn_id ORDER BY trn_id) linha
								  from GE_Aca_turno trn inner join GE_Aca_tipoTurno ttn on ttn.ttn_id = trn.ttn_id
								 where trn_controletempo = 2) a 
						 where a.linha = 1) turno on turno.ttn_nome = dc_tipo_turno
	 where tur_tipo in (2,5)
	   and GE_TUR_Turma.trn_id is null
	   and tur_situacao <> 3
    
    /* cria tabela de DEPARA_TURMA_ED com o id da turma regular e da turma inventada para Ed. Física */
    IF  NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DEPARA_TURMA_ED]') AND type in (N'U'))
    BEGIN
        CREATE TABLE dbo.DEPARA_TURMA_ED(
	       tur_id_reg bigint NOT NULL,
	       tur_id_ed bigint NOT NULL)
        CREATE NONCLUSTERED INDEX IX_TURMA_REG ON dbo.DEPARA_TURMA_ED (tur_id_reg ASC)
        CREATE NONCLUSTERED INDEX IX_TURMA_ED ON dbo.DEPARA_TURMA_ED (tur_id_ed ASC)
        CREATE NONCLUSTERED INDEX IX_TURMA_CODIGO ON dbo.DEPARA_TURMA (tur_codigo ASC)
    END
          
    --update dataEncerramento turma. Quando vem preenchido, usamos a data que vem do EOL, caso contrário data de hoje
	update GE_TUR_Turma set tur_dataEncerramento = isnull(tm.dt_fim, tur_dataAlteracao)
	  from GE_TUR_Turma
		   left join DEPARA_TURMA dep on dep.tur_id = GE_TUR_Turma.tur_id
		   left join tmp_DiarioClasse_turma tm on tm.cd_turma_escola = dep.tur_codigo
	 where tur_situacao in (5,7)
	   and tur_dataEncerramento is null
END

USE [Manutencao]
GO
/****** Object:  StoredProcedure [dbo].[STP_DiarioClasse_MTR_Movimentacao_IMPORT]    Script Date: 20/01/2021 18:22:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[STP_DiarioClasse_MTR_Movimentacao_IMPORT] 
	@ent_id UNIQUEIDENTIFIER
AS
BEGIN
    IF (@ent_id IS NULL)
       SET @ent_id = (SELECT ent_id FROM SSO_SYS_Entidade WHERE ent_sigla = 'smesp')
    
    IF EXISTS (SELECT * FROM   sys.objects WHERE  object_id = OBJECT_ID(N'tempdb..#MTR_Movimentacao') AND type IN ( N'U' )) 
       DROP TABLE #MTR_Movimentacao
    
    CREATE TABLE #MTR_Movimentacao
        ([alu_id] [bigint] NULL ,
         [mov_id] [int] NULL ,
         [tmv_idEntrada] [int] NULL ,
         [tmv_idSaida] [int] NULL ,
         [usu_id] [uniqueidentifier] NULL ,
         [alc_idAnterior] [int] NULL ,
         [alc_idAtual] [int] NULL ,
         [mtu_idAnterior] [int] NULL ,
         [mtu_idAtual] [int] NULL ,
         [mov_dataRealizacao] [date] NULL ,
         [mov_situacao] [tinyint] NULL ,
         [mov_dataCriacao] [datetime] NULL ,
         [mov_dataAlteracao] [datetime] NULL ,
         [tmo_id] [int] NULL ,
         [mov_ordem] [int] NULL ,
         [mov_frequencia] [decimal](5, 2) NULL ,
         [tmo_idImportado] [int] NULL ,
         CONTADOR INT IDENTITY(1, 1))
    
	declare @SourceID UNIQUEIDENTIFIER, @PackageLogID INT
    SELECT @SourceID = NEWID()
	SELECT @PackageLogID = ISNULL(MAX(PackageLogID), 0) FROM PackageLog
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'insert na tmp_DiarioClasse_MTR_Movimentacao', @SourceID, getdate())
    	
    insert into tmp_DiarioClasse_MTR_Movimentacao
           (alu_id, alc_id, mtu_id, cl_st, mtu_dataMatricula)
    select alu_id, alc_id, mtu_id, CL_ST, cl_dt_inclusao
      from (select IMP_alunos_pais.alu_codigo, IMP_alunos_pais.alu_id, mtr.mtu_id, mtr.alc_id, mtr.tur_id
              from IMP_alunos_pais inner join GE_MTR_MatriculaTurma mtr
                   on IMP_alunos_pais.alu_id = mtr.alu_id
             where mtu_situacao = 1
               and mtr.alu_id not in
                   (select alu_id from tmp_DiarioClasse_MTR_Movimentacao)) alu
           inner join DEPARA_TURMA
           on alu.tur_id = DEPARA_TURMA.tur_id
           inner join
           (SELECT cl_alu_codigo, cl_st, cl_tur_codigo, cl_dt_inclusao
              FROM tmp_DiarioClasse_aluno
             where cl_st not in ('I','S')) alm
            on alu.alu_codigo = alm.CL_ALU_CODIGO
           and DEPARA_TURMA.tur_codigo = alm.cl_tur_codigo
           inner join GE_TUR_Turma tur on tur.tur_id = DEPARA_TURMA.tur_id
           inner join GE_ESC_Escola esc on esc.esc_id = tur.esc_id 
		   AND esc.esc_situacao <> 3
				  --and esc.esc_controleSistema = 1-- mas teve q ser comentado em 28/04/2016 por causa dos CIEJAS
    
	UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
	SELECT @SourceID = NEWID()
	
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'inserts na #MTR_MovimentacaoAnterior', @SourceID, getdate())
    
	
    CREATE TABLE #MTR_MovimentacaoAnterior
      (alu_id bigint NOT NULL,
       mov_id int NOT NULL,
       tmv_idEntrada int NULL,
       tmv_idSaida int NULL,
       alc_idAtual int NULL,
       mtu_idAtual int NULL,
       tmo_id int NULL)
    
    insert into #MTR_MovimentacaoAnterior
          (alu_id, mov_id, tmv_idEntrada, tmv_idSaida, alc_idAtual, mtu_idAtual, tmo_id)
    select alu_id, mov_id, tmv_idEntrada, tmv_idSaida, alc_idAtual, mtu_idAtual, tmo_id
      from (select alu_id, mov_id, tmv_idEntrada, tmv_idSaida, alc_idAtual, mtu_idAtual, tmo_id,
                   ROW_NUMBER() OVER (PARTITION BY alu_id ORDER BY mov_ordem DESC) AS linha
              from GE_MTR_Movimentacao
             where mov_situacao <> 3) ultima_mov
      where linha = 1               
    
    --Matricula Inicial
    INSERT INTO #MTR_Movimentacao
           (alu_id, mtu_idAtual, alc_idAtual, tmv_idEntrada, tmv_idSaida, mov_situacao, tmo_id, mov_dataRealizacao, mov_ordem)
    SELECT tmp.alu_id, tmp.mtu_id, tmp.alc_id, tmo.tmv_idEntrada, tmo.tmv_idSaida,
           1 as mov_situacao, tmo.tmo_id, tmp.mtu_dataMatricula, 1 as mov_ordem
      FROM tmp_DiarioClasse_MTR_Movimentacao tmp, GE_MTR_TipoMovimentacao tmo
     WHERE tmp.cl_st in ('I','S')
       AND tmp.alu_id NOT IN (SELECT alu_id from GE_MTR_Movimentacao where mov_situacao <> 3)
       AND tmo.tmo_tipoMovimento = 1
    
    -- Recondução
    INSERT INTO #MTR_Movimentacao
           (alu_id, mtu_idAtual, alc_idAtual, tmv_idEntrada, tmv_idSaida, mov_situacao, tmo_id, mov_dataRealizacao, mov_ordem)
    SELECT tmp.alu_id, tmp.mtu_id, tmp.alc_id, tmo.tmv_idEntrada, tmo.tmv_idSaida,
           1 as mov_situacao, tmo.tmo_id, tmp.mtu_dataMatricula, 1 as mov_ordem
      FROM tmp_DiarioClasse_MTR_Movimentacao tmp, GE_MTR_TipoMovimentacao tmo, 
           #MTR_MovimentacaoAnterior MovAnt, GE_MTR_TipoMovimentacao TmoAnt
     WHERE tmp.cl_st in ('I','S','E')
       and TmoAnt.tmo_tipoMovimento = 20
       and tmo.tmo_tipoMovimento = 5
       and tmp.alu_id = MovAnt.alu_id
       and MovAnt.tmo_id = TmoAnt.tmo_id
       and tmp.alu_id not in (select alu_id from #MTR_Movimentacao)
    
    -- Transferência de outras redes
    INSERT INTO #MTR_Movimentacao
           (alu_id, mtu_idAtual, alc_idAtual, tmv_idEntrada, tmv_idSaida, mov_situacao, tmo_id, mov_dataRealizacao, mov_ordem)
    SELECT tmp.alu_id, tmp.mtu_id, tmp.alc_id, tmo.tmv_idEntrada, tmo.tmv_idSaida,
           1 as mov_situacao, tmo.tmo_id, tmp.mtu_dataMatricula, 1 as mov_ordem
      FROM tmp_DiarioClasse_MTR_Movimentacao tmp, GE_MTR_TipoMovimentacao tmo, 
           #MTR_MovimentacaoAnterior MovAnt, GE_MTR_TipoMovimentacao TmoAnt
     WHERE tmp.cl_st in ('I','S','E')
       and TmoAnt.tmo_tipoMovimento = 14
       and tmo.tmo_tipoMovimento = 2
       and tmp.alu_id = MovAnt.alu_id
       and MovAnt.tmo_id = TmoAnt.tmo_id
       and tmp.alu_id not in (select alu_id from #MTR_Movimentacao)

    -- Renovação de Matricula
    INSERT INTO #MTR_Movimentacao
           (alu_id, mtu_idAtual, alc_idAtual, tmv_idEntrada, tmv_idSaida, mov_situacao, tmo_id, mov_dataRealizacao,
            mtu_idAnterior, alc_idAnterior, mov_ordem)
    SELECT tmp.alu_id, tmp.mtu_id, tmp.alc_id, tmo.tmv_idEntrada, tmo.tmv_idSaida,
           1 as mov_situacao, tmo.tmo_id, tmp.mtu_dataMatricula, MovAnt.mtu_idAtual, MovAnt.alc_idAtual, 1 as mov_ordem
      FROM tmp_DiarioClasse_MTR_Movimentacao tmp, GE_MTR_TipoMovimentacao tmo,
           GE_MTR_MatriculaTurma mtr, GE_TUR_Turma tur,
           #MTR_MovimentacaoAnterior MovAnt, GE_MTR_TipoMovimentacao TmoAnt,
           GE_MTR_MatriculaTurma mtrAnt, GE_TUR_Turma turAnt
     WHERE tmp.cl_st in ('I','S','E')
       and TmoAnt.tmo_tipoMovimento not in (20, 14, 27)
       AND tmo.tmo_tipoMovimento = 23
       and tur.cal_id <> turAnt.cal_id
       and tur.esc_id = turAnt.esc_id
       AND tmp.alu_id = mtr.alu_id
       AND tmp.mtu_id = mtr.mtu_id
       AND mtr.tur_id = tur.tur_id
       AND tmp.alu_id = MovAnt.alu_id
       AND MovAnt.tmo_id = TmoAnt.tmo_id
       AND MovAnt.alu_id = mtrAnt.alu_id
       and isnull(MovAnt.mtu_idAtual,-1) = mtrAnt.mtu_id
       AND mtrAnt.tur_id = turAnt.tur_id
       and tmp.alu_id not in (select alu_id from #MTR_Movimentacao)

    -- Remanejamento
    INSERT INTO #MTR_Movimentacao
           (alu_id, mtu_idAtual, alc_idAtual, tmv_idEntrada, tmv_idSaida, mov_situacao, tmo_id, mov_dataRealizacao,
            mtu_idAnterior, alc_idAnterior, mov_ordem)
    SELECT tmp.alu_id, tmp.mtu_id, tmp.alc_id, tmo.tmv_idEntrada, tmo.tmv_idSaida,
           1 as mov_situacao, tmo.tmo_id, tmp.mtu_dataMatricula, MovAnt.mtu_idAtual, MovAnt.alc_idAtual, 1 as mov_ordem
      FROM tmp_DiarioClasse_MTR_Movimentacao tmp, GE_MTR_TipoMovimentacao tmo,
           GE_MTR_MatriculaTurma mtr, GE_TUR_Turma tur,
           #MTR_MovimentacaoAnterior MovAnt, GE_MTR_TipoMovimentacao TmoAnt,
           GE_MTR_MatriculaTurma mtrAnt, GE_TUR_Turma turAnt
     WHERE tmp.cl_st in ('I','S','E')
       and TmoAnt.tmo_tipoMovimento not in (20, 14, 27)
       AND tmo.tmo_tipoMovimento = 8
       and tur.cal_id <> turAnt.cal_id
       and tur.esc_id <> turAnt.esc_id
       AND tmp.alu_id = mtr.alu_id
       AND tmp.mtu_id = mtr.mtu_id
       AND mtr.tur_id = tur.tur_id
       AND tmp.alu_id = MovAnt.alu_id
       AND MovAnt.tmo_id = TmoAnt.tmo_id
       AND MovAnt.alu_id = mtrAnt.alu_id
       and isnull(MovAnt.mtu_idAtual,-1) = mtrAnt.mtu_id
       AND mtrAnt.tur_id = turAnt.tur_id
       and tmp.alu_id not in (select alu_id from #MTR_Movimentacao)
    
    -- Mudança de turma
    INSERT INTO #MTR_Movimentacao
           (alu_id, mtu_idAtual, alc_idAtual, tmv_idEntrada, tmv_idSaida, mov_situacao, tmo_id, mov_dataRealizacao,
            mtu_idAnterior, alc_idAnterior, mov_ordem)
    SELECT tmp.alu_id, tmp.mtu_id, tmp.alc_id, tmo.tmv_idEntrada, tmo.tmv_idSaida,
           1 as mov_situacao, tmo.tmo_id, tmp.mtu_dataMatricula, MovAnt.mtu_idAtual, MovAnt.alc_idAtual, 1 as mov_ordem
      FROM tmp_DiarioClasse_MTR_Movimentacao tmp, GE_MTR_TipoMovimentacao tmo,
           GE_MTR_MatriculaTurma mtr, GE_TUR_Turma tur,
           #MTR_MovimentacaoAnterior MovAnt, GE_MTR_TipoMovimentacao TmoAnt,
           GE_MTR_MatriculaTurma mtrAnt, GE_TUR_Turma turAnt
     WHERE tmp.cl_st in ('I','S','E')
       and TmoAnt.tmo_tipoMovimento not in (20, 14, 27)
       and tmo.tmo_tipoMovimento = 12
       and tur.cal_id = turAnt.cal_id
       and tur.esc_id = turAnt.esc_id
       and mtr.cur_id = mtrAnt.cur_id
       and mtr.crr_id = mtrAnt.crr_id
       and mtr.crp_id = mtrAnt.crp_id
       and tmp.alu_id = mtr.alu_id
       AND tmp.mtu_id = mtr.mtu_id
       AND mtr.tur_id = tur.tur_id
       AND tmp.alu_id = MovAnt.alu_id
       AND MovAnt.tmo_id = TmoAnt.tmo_id
       AND MovAnt.alu_id = mtrAnt.alu_id
       and isnull(MovAnt.mtu_idAtual,-1) = mtrAnt.mtu_id
       AND mtrAnt.tur_id = turAnt.tur_id
       AND mtrAnt.tur_id <> tur.tur_id
       and tmp.alu_id not in (select alu_id from #MTR_Movimentacao)
    
    -- Transferência na própria rede
    INSERT INTO #MTR_Movimentacao
           (alu_id, mtu_idAtual, alc_idAtual, tmv_idEntrada, tmv_idSaida, mov_situacao, tmo_id, mov_dataRealizacao,
            mtu_idAnterior, alc_idAnterior, mov_ordem)
    SELECT tmp.alu_id, tmp.mtu_id, tmp.alc_id, tmo.tmv_idEntrada, tmo.tmv_idSaida,
           1 as mov_situacao, tmo.tmo_id, tmp.mtu_dataMatricula, MovAnt.mtu_idAtual, MovAnt.alc_idAtual, 1 as mov_ordem
      FROM tmp_DiarioClasse_MTR_Movimentacao tmp, GE_MTR_TipoMovimentacao tmo,
           GE_MTR_MatriculaTurma mtr, GE_TUR_Turma tur,
           #MTR_MovimentacaoAnterior MovAnt, GE_MTR_TipoMovimentacao TmoAnt,
           GE_MTR_MatriculaTurma mtrAnt, GE_TUR_Turma turAnt
     WHERE tmp.cl_st in ('I','S','E')
       and TmoAnt.tmo_tipoMovimento not in (20, 14, 27)
       and tmo.tmo_tipoMovimento = 6
       and tur.cal_id = turAnt.cal_id
       and tur.esc_id <> turAnt.esc_id
       and mtr.cur_id = mtrAnt.cur_id
       and mtr.crr_id = mtrAnt.crr_id
       and mtr.crp_id = mtrAnt.crp_id
       and tmp.alu_id = mtr.alu_id
       AND tmp.mtu_id = mtr.mtu_id
       AND mtr.tur_id = tur.tur_id
       AND tmp.alu_id = MovAnt.alu_id
       AND MovAnt.tmo_id = TmoAnt.tmo_id
       AND MovAnt.alu_id = mtrAnt.alu_id
       and isnull(MovAnt.mtu_idAtual,-1) = mtrAnt.mtu_id
       AND mtrAnt.tur_id = turAnt.tur_id
       and tmp.alu_id not in (select alu_id from #MTR_Movimentacao)

	-- Reclassificação
    INSERT INTO #MTR_Movimentacao
           (alu_id, mtu_idAtual, alc_idAtual, tmv_idEntrada, tmv_idSaida, mov_situacao, tmo_id, mov_dataRealizacao,
            mtu_idAnterior, alc_idAnterior, mov_ordem)
    SELECT tmp.alu_id, tmp.mtu_id, tmp.alc_id, tmo.tmv_idEntrada, tmo.tmv_idSaida,
           1 as mov_situacao, tmo.tmo_id, tmp.mtu_dataMatricula, MovAnt.mtu_idAtual, MovAnt.alc_idAtual, 1 as mov_ordem
      FROM tmp_DiarioClasse_MTR_Movimentacao tmp, GE_MTR_TipoMovimentacao tmo,
           GE_MTR_MatriculaTurma mtr, GE_TUR_Turma tur,
           #MTR_MovimentacaoAnterior MovAnt, GE_MTR_TipoMovimentacao TmoAnt,
           GE_MTR_MatriculaTurma mtrAnt, GE_TUR_Turma turAnt
     WHERE tmp.cl_st in ('I','S','E')
       and TmoAnt.tmo_tipoMovimento not in (20, 14, 27)
       and tmo.tmo_tipoMovimento = 11
       and tur.cal_id = turAnt.cal_id
       and mtr.cur_id = mtrAnt.cur_id
       and mtr.crr_id = mtrAnt.crr_id
       and mtr.crp_id <> mtrAnt.crp_id
       and tmp.alu_id = mtr.alu_id
       AND tmp.mtu_id = mtr.mtu_id
       AND mtr.tur_id = tur.tur_id
       AND tmp.alu_id = MovAnt.alu_id
       AND MovAnt.tmo_id = TmoAnt.tmo_id
       AND MovAnt.alu_id = mtrAnt.alu_id
       and isnull(MovAnt.mtu_idAtual,-1) = mtrAnt.mtu_id
       AND mtrAnt.tur_id = turAnt.tur_id
       and tmp.alu_id not in (select alu_id from #MTR_Movimentacao)
	UNION
	SELECT tmp.alu_id, tmp.mtu_id, tmp.alc_id, tmo.tmv_idEntrada, tmo.tmv_idSaida,
           1 as mov_situacao, tmo.tmo_id, tmp.mtu_dataMatricula, MovAnt.mtu_idAtual, MovAnt.alc_idAtual, 1 as mov_ordem
      FROM tmp_DiarioClasse_MTR_Movimentacao tmp, GE_MTR_TipoMovimentacao tmo,
           GE_MTR_MatriculaTurma mtr, GE_TUR_Turma tur,
           #MTR_MovimentacaoAnterior MovAnt, GE_MTR_TipoMovimentacao TmoAnt,
           GE_MTR_MatriculaTurma mtrAnt, GE_TUR_Turma turAnt, GestaoPedagogica..ACA_CursoRelacionado cr 
     WHERE tmp.cl_st in ('I','S','E')
       and TmoAnt.tmo_tipoMovimento not in (20, 14, 27)
       and tmo.tmo_tipoMovimento = 11
       and tur.cal_id = turAnt.cal_id
       and mtr.cur_id <> mtrAnt.cur_id 
	   and mtr.cur_id = cr.cur_id and mtrAnt.cur_id = cr.cur_idRelacionado -- essa é a diferença p parte de cima do UNION, q leva em conta os relacionados
       and mtr.crr_id = mtrAnt.crr_id
       and mtr.crp_id <> mtrAnt.crp_id
       and tmp.alu_id = mtr.alu_id
       AND tmp.mtu_id = mtr.mtu_id
       AND mtr.tur_id = tur.tur_id
       AND tmp.alu_id = MovAnt.alu_id
       AND MovAnt.tmo_id = TmoAnt.tmo_id
       AND MovAnt.alu_id = mtrAnt.alu_id
       and isnull(MovAnt.mtu_idAtual,-1) = mtrAnt.mtu_id
       AND mtrAnt.tur_id = turAnt.tur_id
       and tmp.alu_id not in (select alu_id from #MTR_Movimentacao)
	
    -- Adequaçao
    INSERT INTO #MTR_Movimentacao
           (alu_id, mtu_idAtual, alc_idAtual, tmv_idEntrada, tmv_idSaida, mov_situacao, tmo_id, mov_dataRealizacao,
            mtu_idAnterior, alc_idAnterior, mov_ordem)
    SELECT tmp.alu_id, tmp.mtu_id, tmp.alc_id, tmo.tmv_idEntrada, tmo.tmv_idSaida,
           1 as mov_situacao, tmo.tmo_id, tmp.mtu_dataMatricula, MovAnt.mtu_idAtual, MovAnt.alc_idAtual, 1 as mov_ordem
      FROM tmp_DiarioClasse_MTR_Movimentacao tmp, GE_MTR_TipoMovimentacao tmo,
           #MTR_MovimentacaoAnterior MovAnt, GE_MTR_TipoMovimentacao TmoAnt
     WHERE tmp.cl_st in ('I','S','E')
       and tmo.tmo_tipoMovimento = 10
       and tmp.alu_id not in (select alu_id from #MTR_Movimentacao)
       and tmp.alu_id = MovAnt.alu_id
       and MovAnt.tmo_id = TmoAnt.tmo_id
       and isnull(MovAnt.mtu_idAtual,-1) <> tmp.mtu_id
    
    -- Abandono
    INSERT INTO #MTR_Movimentacao
           (alu_id, tmv_idEntrada, tmv_idSaida, mov_situacao, tmo_id, mov_dataRealizacao,
            mtu_idAnterior, alc_idAnterior, mov_ordem)
    SELECT tmp.alu_id, tmo.tmv_idEntrada, tmo.tmv_idSaida,
           1 as mov_situacao, tmo.tmo_id, tmp.mtu_dataMatricula, tmp.mtu_id, tmp.alc_id, 1 as mov_ordem
      FROM tmp_DiarioClasse_MTR_Movimentacao tmp, GE_MTR_TipoMovimentacao tmo
     WHERE tmp.cl_st in ('D','A')
       and tmo.tmo_tipoMovimento = 20
    
    -- Tranferencia para outras redes
    INSERT INTO #MTR_Movimentacao
           (alu_id, tmv_idEntrada, tmv_idSaida, mov_situacao, tmo_id, mov_dataRealizacao,
            mtu_idAnterior, alc_idAnterior, mov_ordem)
    SELECT tmp.alu_id, tmo.tmv_idEntrada, tmo.tmv_idSaida,
           1 as mov_situacao, tmo.tmo_id, tmp.mtu_dataMatricula, tmp.mtu_id, tmp.alc_id, 1 as mov_ordem
      FROM tmp_DiarioClasse_MTR_Movimentacao tmp, GE_MTR_TipoMovimentacao tmo
     WHERE tmp.cl_st = 'T'
       and tmo.tmo_tipoMovimento = 14
    
    -- Falecimento
    INSERT INTO #MTR_Movimentacao
           (alu_id, tmv_idEntrada, tmv_idSaida, mov_situacao, tmo_id, mov_dataRealizacao,
            mtu_idAnterior, alc_idAnterior, mov_ordem)
    SELECT tmp.alu_id, tmo.tmv_idEntrada, tmo.tmv_idSaida,
           1 as mov_situacao, tmo.tmo_id, tmp.mtu_dataMatricula, tmp.mtu_id, tmp.alc_id, 1 as mov_ordem
      FROM tmp_DiarioClasse_MTR_Movimentacao tmp, GE_MTR_TipoMovimentacao tmo
     WHERE tmp.cl_st = 'L'
       and tmo.tmo_tipoMovimento = 17
    
    -- Duplicidade de matrícula ou exclusão por erro da escola
    INSERT INTO #MTR_Movimentacao
           (alu_id, tmv_idEntrada, tmv_idSaida, mov_situacao, tmo_id, mov_dataRealizacao,
            mtu_idAnterior, alc_idAnterior, mov_ordem)
    SELECT tmp.alu_id, tmo.tmv_idEntrada, tmo.tmv_idSaida,
           1 as mov_situacao, tmo.tmo_id, tmp.mtu_dataMatricula, tmp.mtu_id, tmp.alc_id, 1 as mov_ordem
      FROM tmp_DiarioClasse_MTR_Movimentacao tmp, GE_MTR_TipoMovimentacao tmo
     WHERE tmp.cl_st = 'X'
       AND tmo.tmo_tipoMovimento = 21
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
	SELECT @SourceID = NEWID()
	
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'prepara #MTR_MovimentacaoAnterior para inclusao no sgp', @SourceID, getdate())
        
    UPDATE #MTR_Movimentacao
       SET mov_id = ISNULL(ar.mov_id, 0) + 1
      FROM #MTR_Movimentacao tar
           LEFT JOIN (SELECT alu_id, MAX(mov_id) mov_id
                        FROM GE_MTR_Movimentacao WITH (NOLOCK)
                       GROUP BY alu_id) ar
           ON tar.alu_id = ar.alu_id
    
    IF OBJECT_ID('tempdb..#AUX_MOV_CHAVE') > 0 
       DROP TABLE #AUX_MOV_CHAVE
    
    CREATE TABLE #AUX_MOV_CHAVE
      (alu_id    BIGINT,
       DIFERENCA INT)
    
    INSERT INTO #AUX_MOV_CHAVE
    SELECT alu_id, MIN(CONTADOR) DIFERENCA
      FROM #MTR_Movimentacao
     GROUP BY alu_id 
    
    UPDATE #MTR_Movimentacao
       SET mov_id = CASE WHEN mov_id > DIFERENCA
                         THEN mov_id - DIFERENCA + CONTADOR
                         WHEN mov_id = DIFERENCA THEN CONTADOR
                         ELSE mov_id + CONTADOR - DIFERENCA
                    END
      FROM #MTR_Movimentacao
           INNER JOIN #AUX_MOV_CHAVE AUX_MOV_CHAVE 
           ON #MTR_Movimentacao.alu_id = AUX_MOV_CHAVE.alu_id
    
    update movim
       set mov_ordem = dados.mov_ordem
      from #MTR_Movimentacao movim
           inner join 
           (select mov.alu_id, ISNULL(MAX(mov.mov_ordem),0) + 1 mov_ordem
              from GestaoPedagogica..MTR_Movimentacao mov
                   left join #MTR_Movimentacao novo
                   on mov.alu_id = novo.alu_id
             group by mov.alu_id) dados
           on movim.alu_id = dados.alu_id
    
	UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
	SELECT @SourceID = NEWID()
	
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'insert na MTR_Movimentacao', @SourceID, getdate())
    
    INSERT INTO GE_MTR_Movimentacao
           (mov_id, alu_id, mtu_idAtual, alc_idAtual, mov_situacao, tmv_idEntrada,
            tmo_id, mov_dataRealizacao, alc_idAnterior, mtu_idAnterior, tmv_idSaida, mov_ordem)
    SELECT mov_id, alu_id, mtu_idAtual, alc_idAtual, mov_situacao, tmv_idEntrada, tmo_id, mov_dataRealizacao,
           alc_idAnterior = CASE when tmv_idSaida is not null then alc_idAnterior end,
           mtu_idAnterior = CASE when tmv_idSaida is not null then mtu_idAnterior end, tmv_idSaida, mov_ordem
      FROM #MTR_Movimentacao
    
	UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
	SELECT @SourceID = NEWID()
	
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'updates nas tabelas de matrículas', @SourceID, getdate())
    
    UPDATE GE_ACA_AlunoCurriculo
       set alc_dataSaida = #MTR_Movimentacao.mov_dataRealizacao,
           alc_situacao = 4
      from GE_ACA_AlunoCurriculo alc inner join #MTR_Movimentacao
            on alc.alu_id = #MTR_Movimentacao.alu_id
           and alc.alc_id = #MTR_Movimentacao.alc_idAnterior
     where #MTR_Movimentacao.alc_idAnterior is not null
       --and #MTR_Movimentacao.alc_idAtual is null
    
    UPDATE GE_MTR_MatriculaTurma
       set mtu_dataSaida = #MTR_Movimentacao.mov_dataRealizacao,
           mtu_situacao = 5
      from GE_MTR_MatriculaTurma mtu inner join #MTR_Movimentacao
            on mtu.alu_id = #MTR_Movimentacao.alu_id
           and mtu.mtu_id = #MTR_Movimentacao.mtu_idAnterior
     where #MTR_Movimentacao.mtu_idAnterior is not null
       --and #MTR_Movimentacao.mtu_idAtual is null
    
    UPDATE GE_MTR_MatriculaTurmaDisciplina
       set mtd_dataSaida = #MTR_Movimentacao.mov_dataRealizacao,
           mtd_situacao = 5
      from GE_MTR_MatriculaTurmaDisciplina mtd inner join #MTR_Movimentacao
            on mtd.alu_id = #MTR_Movimentacao.alu_id
           and mtd.mtu_id = #MTR_Movimentacao.mtu_idAnterior
     where #MTR_Movimentacao.mtu_idAnterior is not null
       and mtd.mtd_situacao <> 3
       --and #MTR_Movimentacao.mtu_idAtual is null
    
    UPDATE GE_ACA_Aluno
       SET alu_situacao = 4
     WHERE alu_situacao = 1 
       AND alu_id NOT IN (SELECT alu_id FROM GE_ACA_AlunoCurriculo WHERE alc_situacao = 1)
    
    UPDATE GE_ACA_Aluno
       SET alu_situacao = 1
     WHERE alu_situacao <> 1 
       AND alu_id IN (SELECT alu_id FROM GE_ACA_AlunoCurriculo WHERE alc_situacao = 1)
    
	UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
	SELECT @SourceID = NEWID()
	
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'cria indices', @SourceID, getdate())
    
    IF NOT EXISTS (SELECT * FROM BD_PRODAM.sys.indexes
                    WHERE object_id = OBJECT_ID(N'[BD_PRODAM].[dbo].[v_alunos_matriculados]')
                      AND name = N'IX_v_alunos_matriculados_an_letivo')
       CREATE NONCLUSTERED INDEX [IX_v_alunos_matriculados_an_letivo] 
           ON [BD_PRODAM].[dbo].[v_alunos_matriculados] ([an_letivo])
              INCLUDE ([cl_alu_codigo],[cl_tur_codigo],[cl_datst])
    
    IF NOT EXISTS (SELECT * FROM BD_PRODAM.sys.indexes
                    WHERE object_id = OBJECT_ID(N'[BD_PRODAM].[dbo].[v_alunos_da_turma_MSTECH]')
                      AND name = N'IX_v_alunos_da_turma_MSTECH_cl_alu_codigo')
       CREATE NONCLUSTERED INDEX [IX_v_alunos_da_turma_MSTECH_cl_alu_codigo] 
           ON [BD_PRODAM].[dbo].[v_alunos_da_turma_MSTECH] ([cl_alu_codigo], [cd_turma_escola])
    
    IF NOT EXISTS (SELECT * FROM sys.indexes
                    WHERE object_id = OBJECT_ID(N'[dbo].[tmp_DiarioClasse_MTR_Movimentacao]')
                      AND name = N'IX_tmp_DiarioClasse_MTR_Movimentacao_alu_id')
       CREATE NONCLUSTERED INDEX [IX_tmp_DiarioClasse_MTR_Movimentacao_alu_id]
           ON [dbo].[tmp_DiarioClasse_MTR_Movimentacao] ([alu_id],[alc_id])
              INCLUDE ([mtu_id])
    
	UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
	SELECT @SourceID = NEWID()
	
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'delete na CLS_AlunoFechamento', @SourceID, getdate())
    
	--adicionado para evitar dados pré-processados em mtus errados q estavam causando duplicidades
    delete a
	  from GestaoPedagogica..CLS_AlunoFechamento a
	 where not exists (select mb.alu_id
						 from GestaoPedagogica..MTR_MatriculasBoletim mb with(nolock)
						where mb.alu_id = a.alu_id
						  and mb.mtu_id = a.mtu_id
						  and mb.tpc_id = a.tpc_id)
	
	UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
	SELECT @SourceID = NEWID()
	
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'acerta número de chamada para matriculas ativas', @SourceID, getdate())
    
    ----------------------------Arruma número de chamada para as matrículas ativas----------------------------
	IF EXISTS 
	   (select mtu.alu_id
		  from GE_ACA_CalendarioAnual cal with (nolock)
			   inner join GE_TUR_Turma tur with (nolock)
			   on cal.cal_id = tur.cal_id
			   inner join GE_MTR_MatriculaTurma mtu with (nolock)
			   on tur.tur_id = mtu.tur_id
		 where cal_ano = (select CONVERT(INT,VALOR) FROM _PARAMETROS where CHAVE = 'ANO_BASE')
		   and cal_situacao = 1
		   and tur_situacao = 1
		   and mtu_situacao = 1
		   and ISNULL(mtu_numeroChamada,0) = 0)
	begin
		update mtu
		   set mtu.mtu_numeroChamada = dca.cl_cham
		  from GE_ACA_CalendarioAnual cal with (nolock)
			   inner join GE_TUR_Turma tur with (nolock)
			   on cal.cal_id = tur.cal_id
			   inner join GE_MTR_MatriculaTurma mtu
			   on tur.tur_id = mtu.tur_id
			   inner join GE_ACA_AlunoCurriculo alc with (nolock)
				on mtu.alu_id = alc.alu_id
			   and mtu.alc_id = alc.alc_id
			   inner join Manutencao..ssis_DiarioClasse_aluno dca
			   on alc.alc_matricula = dca.cl_alu_codigo
		 where cal_ano = (select CONVERT(INT,VALOR) FROM _PARAMETROS where CHAVE = 'ANO_BASE')
		   and cal_situacao = 1
		   and tur_situacao = 1
		   and mtu_situacao = 1
		   and alc_situacao = 1
		   and (ISNULL(mtu_numeroChamada,0) = 0 
		        or ((ISNULL(mtu_numeroChamada,0) <> dca.cl_cham)
		            and (dca.cl_cham is not null)))
		   and dca.cl_cham is not null
		   and dca.cl_st in ('I', 'S', 'E')

		update mtd
		   set mtd_numeroChamada = mtu_numeroChamada
		  from GestaoPedagogica..MTR_MatriculaTurmaDisciplina mtd 
			   inner join GestaoPedagogica..MTR_MatriculaTurma mtu with (nolock)
				on mtd.alu_id = mtu.alu_id
			   and mtd.mtu_id = mtu.mtu_id
			   inner join GestaoPedagogica..TUR_TurmaDisciplina tud with (nolock)
			   on mtd.tud_id = tud.tud_id
			   inner join GestaoPedagogica..TUR_TurmaRelTurmaDisciplina tdrd with (nolock)
			   on tud.tud_id = tdrd.tud_id
			   inner join GestaoPedagogica..TUR_Turma tur with (nolock)
			    on tdrd.tur_id = tur.tur_id
			   and 1 = tur.tur_tipo
		 where mtd_situacao = 1
		   and mtu_situacao = 1
		   and tud_situacao = 1
		   and ISNULL(mtu_numeroChamada,0) <> 0
		   and ISNULL(mtd_numeroChamada,0) <> ISNULL(mtu_numeroChamada,0)
	end
    ------------------------------------FIM ATUALIZACAO do número de chamada--------------------------------

	UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
	SELECT @SourceID = NEWID()
	
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'acerta números de chamadas para ed. física', @SourceID, getdate())
    
    ----------------- Arruma número de chamada para as matrículas ativas (Educação Física) -----------------
    
    update MTR_MatriculaTurmaDisciplina
       set mtd_numeroChamada = case when dados.cl_cham IS NULL then mtd_numeroChamada else dados.cl_cham end
      from GestaoPedagogica..MTR_MatriculaTurmaDisciplina 
           inner join
	       (SELECT mtd.alu_id, mtd.mtu_id, mtd.mtd_id, cl_cham
              FROM GestaoPedagogica..MTR_MatriculaTurmaDisciplina mtd with (nolock)
                   inner join GestaoPedagogica..TUR_TurmaRelTurmaDisciplina trtd WITH (NOLOCK)
                   on mtd.tud_id = trtd.tud_id
                   inner join DEPARA_TURMA with (nolock)
                   on trtd.tur_id = DEPARA_TURMA.tur_id
                   inner join
                   (select alu_id, tur.cd_turma_escola, cl_cham 
                      from tmp_diarioClasse_turma tur
						   inner join GE_ESC_Escola esc on esc.esc_codigo = tur.cd_escola
													   AND esc.esc_situacao <> 3
                           inner join
                           (select cl_alu_codigo, cl_tur_codigo, cl_st, cl_cham,
                                   ROW_NUMBER() OVER (PARTITION BY cl_alu_codigo, cl_tur_codigo
                                                ORDER BY expr1 desc) AS linha
                              from BD_PRODAM..v_alunos_turma_matriculados_historico_movimentacao WITH (NOLOCK)
							 where an_letivo = (SELECT CAST(VALOR as int)
							                      FROM _PARAMETROS WHERE CHAVE = 'ANO_BASE')) alu
						   ON tur.cd_turma_escola = alu.cl_tur_codigo
						   LEFT JOIN EscolasComEJA eja on eja.esc_id = esc.esc_id
						   inner join GE_ACA_AlunoCurriculo alc WITH (NOLOCK) on alc.alc_matricula = alu.cl_alu_codigo
					 where (tur.cd_escola IN (SELECT esc_codigo from _PARAMETROS_ESCOLA_EDUCACAO_FISICA) 
							or esc.esc_nome like 'EMEFM%' or eja.esc_id is not null)
					   AND tur.an_letivo = (SELECT CAST(VALOR as int) FROM _PARAMETROS WHERE CHAVE = 'ANO_BASE')
					   and cd_tipo_turma = 2
					   and alu.linha = 1
                       and alu.cl_st in ('I', 'S')
                      group by alu_id, tur.cd_turma_escola, cl_cham) edf
                    on mtd.alu_id = edf.alu_id
                   and DEPARA_TURMA.tur_codigo = edf.cd_turma_escola
             WHERE mtd_situacao = 1
             GROUP BY mtd.alu_id, mtd.mtu_id, mtd.mtd_id, cl_cham) dados
            on MTR_MatriculaTurmaDisciplina.alu_id = dados.alu_id
           and MTR_MatriculaTurmaDisciplina.mtu_id = dados.mtu_id
           and MTR_MatriculaTurmaDisciplina.mtd_id = dados.mtd_id
     where MTR_MatriculaTurmaDisciplina.mtd_situacao = 1
    
    -------------------------FIM ATUALIZACAO do número de chamada (Educação Física)-------------------------

	UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
	SELECT @SourceID = NEWID()
	
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Atualiza MTR_MatriculasBoletim', @SourceID, getdate())
    
     -------------------------------------ATUALIZACAO MTR_MatriculasBoletim -----------------------------------
     
     IF DATEPART(WEEKDAY, GETDATE()) = 1
        DELETE FROM GestaoPedagogica..MTR_MatriculasBoletim WHERE CAL_ANO = (SELECT CAST(VALOR as int)
																			   FROM _PARAMETROS WHERE CHAVE = 'ANO_BASE')
     ELSE
        DELETE MTB
          FROM GestaoPedagogica..MTR_MatriculasBoletim MTB
               INNER JOIN GestaoPedagogica..MTR_Movimentacao MOV
               on MTB.alu_id = MOV.alu_id
         WHERE MOV.mov_dataAlteracao >= DATEADD(hh, -40, GETDATE())
		   AND MTB.cal_ano = (SELECT CAST(VALOR as int) FROM _PARAMETROS WHERE CHAVE = 'ANO_BASE')
		   
	 CREATE TABLE #INSERIR (alu_id int, mtu_id int, controle int)

	 while exists (select mtu.alu_id, mtu.mtu_id
					 from GE_ACA_AlunoCurriculo alc
						  inner join GE_MTR_MatriculaTurma mtu on mtu.alu_id = alc.alu_id and mtu.alc_id = alc.alc_id
						  inner join GE_TUR_Turma tur on tur.tur_id = mtu.tur_id 
						  inner join GE_ACA_CalendarioAnual cal on cal.cal_id = tur.cal_id and cal.cal_ano = (select valor from Manutencao.._parametros where chave = 'ANO_BASE')
				    where alc_situacao <> 3
					  and mtu_situacao <> 3
					  and not exists (select mb.alu_id from GestaoPedagogica..MTR_MatriculasBoletim mb 
						   	  		   where mb.alu_id = mtu.alu_id
						   	  		   and mb.mtu_origemDados = mtu.mtu_id)
					 group by mtu.alu_id, mtu.mtu_id)
	 begin
	 delete from #INSERIR

	 insert into #INSERIR
	 select top 100000 alu_id, mtu_id, 0
	   from (select mtu.alu_id, mtu.mtu_id 
			   from GE_ACA_AlunoCurriculo alc
				    inner join GE_MTR_MatriculaTurma mtu on mtu.alu_id = alc.alu_id and mtu.alc_id = alc.alc_id
					inner join GE_TUR_Turma tur on tur.tur_id = mtu.tur_id 
					inner join GE_ACA_CalendarioAnual cal on cal.cal_id = tur.cal_id and cal.cal_ano = (select valor from Manutencao.._parametros where chave = 'ANO_BASE')
			  where alc_situacao <> 3
			    and mtu_situacao <> 3
			    and not exists (select mb.alu_id from GestaoPedagogica..MTR_MatriculasBoletim mb 
								 where mb.alu_id = mtu.alu_id
								   and mb.mtu_origemDados = mtu.mtu_id)
			  group by mtu.alu_id, mtu.mtu_id) a 
	 
	 insert into GestaoPedagogica..MTR_MatriculasBoletim
	 select Mtr.alu_id,cal_ano,cal_id,cap_id,tpc_id,tpc_ordem,Mtr.mtu_id,tur_id,tur_codigo,fav_id,tpc_nome,
			    PermiteConceitoGlobal,PermiteDisciplinas,PeriodosEquivalentes,MesmoCalendario,MesmoFormato,MesmaEscola,
			    esc_id,mtu_numeroChamada,PossuiSaidaPeriodo,PossuiEntradaPeriodo,mov_id,mov_frequencia,registroExterno,
			    EntradaImportacaoSCA,EntradaTransfOutrasRedes, #INSERIR.mtu_id
	   from #INSERIR
		    CROSS APPLY GestaoPedagogica.dbo.FN_MatriculasBoletim(#INSERIR.alu_id, #INSERIR.mtu_id) Mtr
	
	 end
    
	drop table #INSERIR
    
    ------------------------------------FIM ATUALIZACAO MatriculasBoletim ------------------------------------

	UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
	SELECT @SourceID = NEWID()
	
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'atualzia MTR_MatriculasBoletimDisciplina', @SourceID, getdate())
    
	-------------------------------------ATUALIZACAO MTR_MatriculasBoletimDisciplina -----------------------------------
     
     IF DATEPART(WEEKDAY, GETDATE()) = 1
        DELETE FROM GestaoPedagogica..MTR_MatriculasBoletimDisciplina WHERE CAL_ANO = (SELECT CAST(VALOR as int)
																						 FROM _PARAMETROS WHERE CHAVE = 'ANO_BASE')
     ELSE
	 BEGIN
        DELETE MTB
          FROM GestaoPedagogica..MTR_MatriculasBoletimDisciplina MTB
               INNER JOIN GestaoPedagogica..MTR_Movimentacao MOV
               on MTB.alu_id = MOV.alu_id
         WHERE MOV.mov_dataAlteracao >= DATEADD(hh, -40, GETDATE())
		   AND MTB.cal_ano = (SELECT CAST(VALOR as int) FROM _PARAMETROS WHERE CHAVE = 'ANO_BASE')
		   
		DELETE MTB
		  FROM GestaoPedagogica..MTR_MatriculasBoletimDisciplina MTB
			   INNER JOIN GestaoPedagogica..TUR_TurmaDisciplinaTerritorio TTE
			   on (MTB.tud_id = TTE.tud_idExperiencia OR MTB.tud_id = TTE.tud_idTerritorio)
		 WHERE TTE.tte_dataAlteracao >= DATEADD(hh, -40, GETDATE())
		   AND MTB.cal_ano = (SELECT CAST(VALOR as int) FROM _PARAMETROS WHERE CHAVE = 'ANO_BASE')
	 END

	 CREATE TABLE #MatriculaBoletimDisciplinaDosAlunosASeremInseridos (linha int, alu_id int, mtu_id int, controle int);
	 CREATE TABLE #MatriculaBoletimDisciplinaDosAlunos (alu_id int, mtu_id int, controle int);
	 
	 INSERT INTO #MatriculaBoletimDisciplinaDosAlunosASeremInseridos
	 SELECT linha, alu_id, mtu_id, controle
     FROM (select ROW_NUMBER() OVER ( ORDER BY mtu.alu_id,mtu.mtu_id ) AS linha, mtu.alu_id, mtu.mtu_id, 0 as controle
			 from GestaoPedagogica..ACA_AlunoCurriculo alc
				  inner join GestaoPedagogica..MTR_MatriculaTurma mtu on mtu.alu_id = alc.alu_id and mtu.alc_id = alc.alc_id
				  inner join GestaoPedagogica..TUR_Turma tur on tur.tur_id = mtu.tur_id 
				  inner join GE_ACA_CalendarioAnual cal on cal.cal_id = tur.cal_id and cal.cal_ano = (select valor from Manutencao.._parametros where chave = 'ANO_BASE')
				  inner join GestaoPedagogica..MTR_MatriculasBoletim mb 
						  on mb.alu_id = mtu.alu_id and mb.mtu_origemDados = mtu.mtu_id
						 and mb.mtu_id is not null
				  INNER JOIN GestaoPedagogica..MTR_MatriculaTurma mtu2 on mtu2.alu_id = alc.alu_id and mtu2.mtu_id = mb.mtu_id
																	  and mtu2.cur_id not in (123,124) --cursos sem TUD E MTD
			where alc.alc_situacao <> 3
			  and mtu.mtu_situacao <> 3 --and alc.esc_id between 500 and 600
			  and not exists (select mb.alu_id from GestaoPedagogica..MTR_MatriculasBoletimDisciplina mb 
		   	  				   where mb.alu_id = mtu.alu_id
		   	  					 and mb.mtu_origemDados = mtu.mtu_id)
			 group by mtu.alu_id, mtu.mtu_id) As Resultado
		 
	 DECLARE @QuantidadeDeRegistros INT = 0, @RegistrosPorPagina INT = 100, @Paginas INT = 0, @ContadorDePaginas INT = 1, @RegistroInicial INT = 1, @RegistroFinal INT = 0;
	 
	 SET @RegistroFinal = @RegistrosPorPagina;
	 SET @QuantidadeDeRegistros = (SELECT COUNT(*) FROM #MatriculaBoletimDisciplinaDosAlunosASeremInseridos)
	 SET @Paginas = CEILING(CONVERT(DECIMAL,@QuantidadeDeRegistros) / CONVERT(DECIMAL,@RegistrosPorPagina))
	 
	 while (@ContadorDePaginas <= @Paginas)
	 begin
		TRUNCATE TABLE #MatriculaBoletimDisciplinaDosAlunos;
		
		INSERT INTO #MatriculaBoletimDisciplinaDosAlunos
		SELECT alu_id, mtu_id, controle FROM #MatriculaBoletimDisciplinaDosAlunosASeremInseridos
		WHERE linha >= @RegistroInicial AND linha <= @RegistroFinal
		ORDER BY linha
			
		SET @RegistroInicial = @RegistroFinal + 1 ;
		SET @ContadorDePaginas  = @ContadorDePaginas + 1;
		SET @RegistroFinal = @ContadorDePaginas * @RegistrosPorPagina;		  
			  
		 insert into GestaoPedagogica..MTR_MatriculasBoletimDisciplina
		(alu_id, cal_ano, cal_id, cap_id, tpc_id, tpc_ordem, mtu_id, mtd_id, esc_id, tur_id, tur_codigo, tud_id,
		 tud_nome, tud_tipo, dis_id, tds_id, fav_id, PeriodosEquivalentes, MesmoCalendario, MesmoFormato, MesmaEscola,
		 mtd_numeroChamada, PossuiSaidaPeriodo, PossuiEntradaPeriodo, mov_id, registroExterno, EntradaImportacaoSCA,
		 EntradaTransfOutrasRedes, mtu_origemDados)
		 select alu_id, cal_ano, cal_id, cap_id, tpc_id, tpc_ordem, mtu_id, mtd_id, esc_id, tur_id, tur_codigo, tud_id,
		 tud_nome, tud_tipo, dis_id, tds_id, fav_id, PeriodosEquivalentes, MesmoCalendario, MesmoFormato, MesmaEscola,
		 mtd_numeroChamada, PossuiSaidaPeriodo, PossuiEntradaPeriodo, mov_id, registroExterno, EntradaImportacaoSCA,
		 EntradaTransfOutrasRedes, mtu_origemDados 
			from (   select mtd.alu_id, mb.cal_ano, mb.cal_id, mb.cap_id, mb.tpc_id, mb.tpc_ordem, mtd.mtu_id, 
						mtd.mtd_id, mb.esc_id, mb.tur_id, mb.tur_codigo, tud.tud_id, tud.tud_nome, tud.tud_tipo, 
						dis.dis_id, dis.tds_id, mb.fav_id, mb.PeriodosEquivalentes, mb.MesmoCalendario, 
						mb.MesmoFormato, mb.MesmaEscola, mtd.mtd_numeroChamada, mb.PossuiSaidaPeriodo, 
						mb.PossuiEntradaPeriodo, mb.mov_id, mb.registroExterno, mb.EntradaImportacaoSCA, 
						mb.EntradaTransfOutrasRedes, mb.mtu_origemDados,
						CASE WHEN tud_tipo = 18
						THEN 
							ROW_NUMBER() OVER(PARTITION BY mtd.alu_id, mb.mtu_origemDados, mb.tpc_id, mtd.tud_id
								ORDER BY mtd.mtd_dataMatricula desc, mtd.mtd_id desc)
						ELSE
							ROW_NUMBER() OVER(PARTITION BY mtd.alu_id, mb.mtu_origemDados, mb.tpc_id, dis.tds_id
								ORDER BY mtd.mtd_dataMatricula desc, mtd.mtd_id desc)
						END as OrdemEntrada
				   from GestaoPedagogica..ACA_AlunoCurriculo alc
						inner join GestaoPedagogica..MTR_MatriculaTurma mtu 
								on mtu.alu_id = alc.alu_id and mtu.alc_id = alc.alc_id
						inner join GestaoPedagogica..TUR_Turma tur on tur.tur_id = mtu.tur_id
						inner join GestaoPedagogica..ACA_CalendarioAnual cal on cal.cal_id = tur.cal_id and cal.cal_ano = (select valor from Manutencao.._parametros where chave = 'ANO_BASE')
						inner join #MatriculaBoletimDisciplinaDosAlunos #mbdda 
								on #mbdda.alu_id = mtu.alu_id and #mbdda.mtu_id = mtu.mtu_id
						inner join GestaoPedagogica..MTR_MatriculasBoletim mb 
								on mb.alu_id = mtu.alu_id and mb.mtu_origemDados = mtu.mtu_id
							   and mb.mtu_id is not null
						inner join GestaoPedagogica..MTR_MatriculaTurmaDisciplina mtd 
								on mtd.alu_id = mb.alu_id and mtd.mtu_id = mb.mtu_id
						inner join GestaoPedagogica..TUR_TurmaDisciplina tud 
								on tud.tud_id = mtd.tud_id --and tud.tud_nome like 'Educ%'
						inner join GestaoPedagogica..TUR_TurmaDisciplinaRelDisciplina td 
								on td.tud_id = tud.tud_id
						inner join GestaoPedagogica..ACA_Disciplina dis
								on dis.dis_id = td.dis_id
				  where alc_situacao <> 3
					and mtu_situacao <> 3
					and mtd_situacao <> 3
					and tud_situacao <> 3
					and tud.tud_tipo <> 10 -- Recuperação paralela não funcionaria pois utilizam o mesmo tds_id
					and not exists (select mb.alu_id 
									  from GestaoPedagogica..MTR_MatriculasBoletimDisciplina mb 
									 where mb.alu_id = mtu.alu_id and mb.mtu_origemDados = mtu.mtu_id)
			 ) a
		where a.OrdemEntrada = 1
	
	
	 end
    
	 DROP TABLE #MatriculaBoletimDisciplinaDosAlunos
	 DROP TABLE #MatriculaBoletimDisciplinaDosAlunosASeremInseridos
     ------------------------------------FIM ATUALIZACAO MatriculasBoletimDisciplina ------------------------------------
	
	UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
	SELECT @SourceID = NEWID()
	
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'adiciona na fila de processamento', @SourceID, getdate())
    
    ------------------- INICIO - Adicionar alunos movimentadas na lista de processamento -------------------
    
    declare @tpc_id int, @tpc_idMinimo int
    
    select @tpc_id = MAX(tpc_id)
      from GestaoPedagogica..ACA_CalendarioPeriodo cap
     where GETDATE() between cap.cap_dataInicio and cap.cap_dataFim
    
    declare @AlunoFechamentoPendencia table (tud_id bigint, tpc_id int)
    
    insert into @AlunoFechamentoPendencia
    select mtd.tud_id, cap.tpc_id
      from (select alu_id, mtu_idAtual as mtu_id
              from GestaoPedagogica..MTR_Movimentacao mov
             where mov_situacao <> 3
               and mtu_idAtual is not null
               and DATEPART(YEAR,mov_dataRealizacao) = (select VALOR FROM _PARAMETROS WHERE CHAVE = 'ANO_BASE')
               and mov_dataAlteracao > (select VALOR FROM _PARAMETROS WHERE CHAVE = 'DATA_ULTIMA_MOVIMENTACAO')) mov
           inner join GestaoPedagogica..MTR_MatriculaTurmaDisciplina mtd
            on mov.alu_id = mtd.alu_id
           and mov.mtu_id = mtd.mtu_id
           inner join GestaoPedagogica..MTR_MatriculaTurma mtu
            on mov.alu_id = mtu.alu_id
           and mov.mtu_id = mtu.mtu_id
           inner join GestaoPedagogica..TUR_Turma tur
           on mtu.tur_id = tur.tur_id
           inner join GestaoPedagogica..ACA_CalendarioPeriodo cap
            on tur.cal_id = cap.cal_id
           and mtd.mtd_dataMatricula between cap.cap_dataInicio and cap.cap_dataFim
     where mtd.mtd_situacao <> 3
       and cap.cap_situacao <> 3
       and mtu_situacao <> 3
       and tur_situacao <> 3
     group by mtd.tud_id, cap.tpc_id
    
    select @tpc_idMinimo = MIN(tpc_id) from @AlunoFechamentoPendencia
    
    while @tpc_idMinimo < @tpc_id
    begin
       insert into @AlunoFechamentoPendencia
       select tud_id, @tpc_idMinimo + 1
         from @AlunoFechamentoPendencia afp
        where tpc_id = @tpc_idMinimo
          and tud_id not in (select tud_id from @AlunoFechamentoPendencia interno
                              where interno.tud_id = afp.tud_id
                                and interno.tpc_id = @tpc_idMinimo + 1)
       set @tpc_idMinimo = @tpc_idMinimo + 1
    end

    insert into GestaoPedagogica..CLS_AlunoFechamentoPendencia
           (tud_id, tpc_id, afp_frequencia, afp_nota, afp_processado, afp_dataCriacao, afp_dataAlteracao)
    select tud_id, tpc_id, 1 as afp_frequencia, 1 as afp_nota, 0 as afp_processado,
           GETDATE() as afp_dataCriacao, GETDATE() as afp_dataAlteracao
      from @AlunoFechamentoPendencia afp
     where tud_id not in
           (select tud_id from GestaoPedagogica..CLS_AlunoFechamentoPendencia interno
             where interno.tud_id = afp.tud_id
               and interno.tpc_id = afp.tpc_id)
    
    update _PARAMETROS
       set VALOR = convert(varchar(30),GETDATE(),121)
     where CHAVE = 'DATA_ULTIMA_MOVIMENTACAO'
    
	UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
	
    ------------------ TÉRMINO - Adicionar alunos movimentadas na lista de processamento -------------------
END

USE [Manutencao]
GO
/****** Object:  StoredProcedure [dbo].[STP_GestaoAvaliacao_Import]    Script Date: 20/01/2021 18:24:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[STP_GestaoAvaliacao_Import]
AS
BEGIN
    declare @ent_id uniqueidentifier, @cal_ano int, @SourceID UNIQUEIDENTIFIER, @PackageLogID INT
    
    select @cal_ano = VALOR from _PARAMETROS where CHAVE = 'ANO_BASE'
	--set @cal_ano = 2015
    select @ent_id = ent_id from CoreSSO..SYS_Entidade where ent_sigla = 'SMESP' and ent_situacao = 1
    
    if @ent_id is null
    begin
       print 'Entidade principal do cliente não encontrada. O processo não pode prosseguir.'
       return
    end
    
    BEGIN TRAN
    
    SELECT @PackageLogID = ISNULL(MAX(PackageLogID), 0) FROM PackageLog
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'ACA_CalendarioAnual', @SourceID, getdate())

    -- ACA_CalendarioAnual
    MERGE INTO GestaoAvaliacao_SGP..ACA_CalendarioAnual Destino
    USING (select cal_id, ent_id, cal_padrao, cal_ano, cal_descricao, cal_dataInicio, cal_dataFim,
                  cal_situacao, cal_dataCriacao, cal_dataAlteracao
             from GestaoPedagogica..ACA_CalendarioAnual with (nolock)
            where cal_ano = @cal_ano
              and ent_id = @ent_id
              and cal_situacao <> 3) Origem
    ON Destino.cal_id = Origem.cal_id
    WHEN MATCHED
         AND ((Destino.cal_padrao <> Origem.cal_padrao)
               OR
              (Destino.cal_descricao COLLATE DATABASE_DEFAULT <> Origem.cal_descricao COLLATE DATABASE_DEFAULT)
               OR
              (Destino.cal_dataInicio <> Origem.cal_dataInicio)
               OR
              (Destino.cal_dataFim <> Origem.cal_dataFim)
               OR
              (Destino.cal_situacao <> Origem.cal_situacao))
         THEN
         UPDATE SET cal_padrao = Origem.cal_padrao,
                    cal_descricao = Origem.cal_descricao,
                    cal_dataInicio = Origem.cal_dataInicio,
                    cal_dataFim = Origem.cal_dataFim,
                    cal_situacao = Origem.cal_situacao,
                    cal_dataAlteracao = Origem.cal_dataAlteracao
    WHEN NOT MATCHED THEN
         INSERT (cal_id, ent_id, cal_padrao, cal_ano, cal_descricao, cal_dataInicio,
                 cal_dataFim, cal_situacao, cal_dataCriacao, cal_dataAlteracao)
         VALUES (Origem.cal_id, Origem.ent_id, Origem.cal_padrao, Origem.cal_ano,
                 Origem.cal_descricao, Origem.cal_dataInicio, Origem.cal_dataFim,
                 Origem.cal_situacao, Origem.cal_dataCriacao, Origem.cal_dataAlteracao)
    WHEN NOT MATCHED BY SOURCE AND Destino.cal_situacao <> 3 THEN
         UPDATE SET cal_situacao = 3,
                    cal_dataAlteracao = GETDATE();
    
    IF @@ERROR <> 0
    BEGIN
       PRINT 'Erro na integração de dados na tabela ACA_CalendarioAnual'
       ROLLBACK
       RETURN
    END
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'ACA_TipoTurno', @SourceID, getdate())
    
    -- ACA_TipoTurno
    MERGE INTO GestaoAvaliacao_SGP..ACA_TipoTurno Destino
    USING (select ttn_id, ttn_nome, ttn_situacao, ttn_dataCriacao, ttn_dataAlteracao
             from GestaoPedagogica..ACA_TipoTurno with (nolock)
            where ttn_situacao <> 3) Origem
    ON Destino.ttn_id = Origem.ttn_id
    WHEN MATCHED
         AND ((Destino.ttn_nome COLLATE DATABASE_DEFAULT <> Origem.ttn_nome COLLATE DATABASE_DEFAULT)
               OR
              (Destino.ttn_situacao <> Origem.ttn_situacao))
         THEN
         UPDATE SET ttn_nome = Origem.ttn_nome,
                    ttn_situacao = Origem.ttn_situacao,
                    ttn_dataAlteracao = Origem.ttn_dataAlteracao
    WHEN NOT MATCHED THEN
         INSERT (ttn_id, ttn_nome, ttn_situacao, ttn_dataCriacao, ttn_dataAlteracao)
         VALUES (Origem.ttn_id, Origem.ttn_nome, Origem.ttn_situacao,
                 Origem.ttn_dataCriacao, Origem.ttn_dataAlteracao)
    WHEN NOT MATCHED BY SOURCE AND Destino.ttn_situacao <> 3 THEN
         UPDATE SET ttn_situacao = 3,
                    ttn_dataAlteracao = GETDATE();
         
    IF @@ERROR <> 0
    BEGIN
       PRINT 'Erro na integração de dados na tabela ACA_TipoTurno'
       ROLLBACK
       RETURN
    END
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'SYS_UnidadeAdministrativa', @SourceID, getdate())
    
    -- SYS_UnidadeAdministrativa
    MERGE INTO GestaoAvaliacao_SGP..SYS_UnidadeAdministrativa Destino
    USING (select ent_id, uad_id, uad_codigo, uad_nome, uad_sigla, uad_situacao, uad_dataCriacao, uad_dataAlteracao
             from CoreSSO..SYS_UnidadeAdministrativa with (nolock)
            where uad_situacao <> 3
              and ent_id = @ent_id
              and uad_id in 
                  (select uad_idSuperiorGestao
                     from GestaoPedagogica..ESC_Escola with (nolock)
                    where ent_id = @ent_id
                      and esc_situacao <> 3)) Origem
     ON Destino.ent_id = Origem.ent_id
    AND Destino.uad_id = Origem.uad_id
    WHEN MATCHED
         AND ((Destino.uad_codigo COLLATE DATABASE_DEFAULT <> Origem.uad_codigo COLLATE DATABASE_DEFAULT)
               OR
              (Destino.uad_nome COLLATE DATABASE_DEFAULT <> Origem.uad_nome COLLATE DATABASE_DEFAULT)
               OR
              (Destino.uad_sigla COLLATE DATABASE_DEFAULT <> Origem.uad_sigla COLLATE DATABASE_DEFAULT)
               OR
              (Destino.uad_situacao <> Origem.uad_situacao))
         THEN
         UPDATE SET uad_codigo = Origem.uad_codigo,
                    uad_nome = Origem.uad_nome,
                    uad_sigla = Origem.uad_sigla,
                    uad_situacao = Origem.uad_situacao,
                    uad_dataAlteracao = Origem.uad_dataAlteracao
    WHEN NOT MATCHED THEN
         INSERT (ent_id, uad_id, uad_codigo, uad_nome, uad_sigla, uad_situacao, uad_dataCriacao, uad_dataAlteracao)
         VALUES (Origem.ent_id, Origem.uad_id, Origem.uad_codigo, Origem.uad_nome, Origem.uad_sigla,
                 Origem.uad_situacao, Origem.uad_dataCriacao, Origem.uad_dataAlteracao)
    WHEN NOT MATCHED BY SOURCE AND Destino.uad_situacao <> 3 THEN
         UPDATE SET uad_situacao = 3,
                    uad_dataAlteracao = GETDATE();
    
    IF @@ERROR <> 0
    BEGIN
       PRINT 'Erro na integração de dados na tabela SYS_UnidadeAdministrativa'
       ROLLBACK
       RETURN
    END
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'ESC_Escola', @SourceID, getdate())
    
    -- ESC_Escola
    MERGE INTO GestaoAvaliacao_SGP..ESC_Escola Destino
    USING (select esc_id, ent_id, uad_id, esc_codigo, esc_nome, esc_situacao,
                  esc_dataCriacao, esc_dataAlteracao, uad_idSuperiorGestao
             from GestaoPedagogica..ESC_Escola with (nolock)
            where ent_id = @ent_id
              and esc_situacao <> 3) Origem
    ON Destino.esc_id = Origem.esc_id
    WHEN MATCHED
         AND ((Destino.esc_codigo COLLATE DATABASE_DEFAULT <> Origem.esc_codigo COLLATE DATABASE_DEFAULT)
               OR
              (REPLACE(Destino.esc_nome,'''','`') COLLATE DATABASE_DEFAULT <> REPLACE(Origem.esc_nome,'''','`') COLLATE DATABASE_DEFAULT)
               OR
              (Destino.uad_idSuperiorGestao <> Origem.uad_idSuperiorGestao)
               OR
              (Destino.esc_situacao <> Origem.esc_situacao))
         THEN
         UPDATE SET esc_codigo = Origem.esc_codigo,
                    esc_nome = REPLACE(Origem.esc_nome,'''','`'),
                    uad_idSuperiorGestao = Origem.uad_idSuperiorGestao,
                    esc_situacao = Origem.esc_situacao,
                    esc_dataAlteracao = Origem.esc_dataAlteracao
    WHEN NOT MATCHED THEN
         INSERT (esc_id, ent_id, uad_id, esc_codigo, esc_nome, esc_situacao,
                 esc_dataCriacao, esc_dataAlteracao, uad_idSuperiorGestao)
         VALUES (Origem.esc_id, Origem.ent_id, Origem.uad_id, Origem.esc_codigo, REPLACE(Origem.esc_nome,'''','`'),
                 Origem.esc_situacao, Origem.esc_dataCriacao, Origem.esc_dataAlteracao, Origem.uad_idSuperiorGestao)
    WHEN NOT MATCHED BY SOURCE AND Destino.esc_situacao <> 3 THEN
         UPDATE SET esc_situacao = 3,
                    esc_dataAlteracao = GETDATE();

    IF @@ERROR <> 0
    BEGIN
       PRINT 'Erro na integração de dados na tabela ESC_Escola'
       ROLLBACK
       RETURN
    END
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'TUR_Turma', @SourceID, getdate());

	PRINT 'TUR_TURMA';
	
	WITH CteDestinationTurma AS (
		Select * from GestaoAvaliacao_SGP..TUR_Turma
		WHERE tur_id IN ( 
			Select t.tur_id from GestaoAvaliacao_SGP..TUR_Turma t 
			INNER JOIN GestaoAvaliacao_SGP..TUR_TurmaCurriculo tc ON tc.tur_id = t.tur_id
			INNER JOIN GestaoAvaliacao_SGP..ACA_Curso c ON c.cur_id = tc.cur_id 
			where c.tme_id NOT IN (4,6,7,8)
		)
	)
		
	-- TUR_Turma
    MERGE INTO CteDestinationTurma Destino
    USING (select tur.tur_id, tur.esc_id, tur.tur_codigo, tur.tur_descricao, tur.cal_id, trn.ttn_id,
                  tur.tur_situacao, tur.tur_dataCriacao, tur.tur_dataAlteracao, tur.tur_tipo
             from GestaoPedagogica..TUR_Turma tur with (nolock)
                  inner join GestaoPedagogica..ACA_Turno trn with (nolock)
                  on tur.trn_id = trn.trn_id
                  inner join GestaoAvaliacao_SGP..ACA_TipoTurno ttn
                  on trn.ttn_id = ttn.ttn_id
                  inner join GestaoAvaliacao_SGP..ESC_Escola esc
                  on tur.esc_id = esc.esc_id
                  inner join GestaoAvaliacao_SGP..ACA_CalendarioAnual cal
                  on tur.cal_id = cal.cal_id
				  INNER JOIN GestaoAvaliacao_SGP..TUR_TurmaCurriculo tc ON tc.tur_id = tur.tur_id
			      INNER JOIN GestaoAvaliacao_SGP..ACA_Curso c ON c.cur_id = tc.cur_id
            where tur.tur_situacao <> 3
              and trn.trn_situacao <> 3
              and ttn.ttn_situacao <> 3
              and esc.ent_id = @ent_id
              and esc.esc_situacao <> 3
              and cal.cal_ano = @cal_ano
              and cal.ent_id = @ent_id
              and cal.cal_situacao <> 3
			  and tur_tipo = 1
			  and c.tme_id NOT IN (4,6,7,8)
            group by tur.tur_id, tur.esc_id, tur.tur_codigo, tur.tur_descricao, tur.cal_id, trn.ttn_id,
                  tur.tur_situacao, tur.tur_dataCriacao, tur.tur_dataAlteracao, tur.tur_tipo) Origem
    ON Destino.tur_id = Origem.tur_id
    WHEN MATCHED
         AND ((Destino.tur_codigo COLLATE DATABASE_DEFAULT <> Origem.tur_codigo COLLATE DATABASE_DEFAULT)
               OR
              (Destino.tur_descricao COLLATE DATABASE_DEFAULT <> Origem.tur_descricao COLLATE DATABASE_DEFAULT)
               OR
              (Destino.ttn_id <> Origem.ttn_id)
               OR
              (Destino.tur_situacao <> Origem.tur_situacao))
         THEN
         UPDATE SET tur_codigo = Origem.tur_codigo,
                    tur_descricao = Origem.tur_descricao,
                    ttn_id = Origem.ttn_id,
                    tur_situacao = Origem.tur_situacao,
                    tur_dataAlteracao = Origem.tur_dataAlteracao
    WHEN NOT MATCHED THEN
         INSERT (tur_id, esc_id, tur_codigo, tur_descricao, cal_id, ttn_id,
                 tur_situacao, tur_dataCriacao, tur_dataAlteracao, tur_tipo)
         VALUES (Origem.tur_id, Origem.esc_id, Origem.tur_codigo, Origem.tur_descricao, Origem.cal_id, Origem.ttn_id,
                 Origem.tur_situacao, Origem.tur_dataCriacao, Origem.tur_dataAlteracao, Origem.tur_tipo)
    WHEN NOT MATCHED BY SOURCE AND Destino.tur_situacao not in (2,3) THEN -- no caso do status 2, trata-se de turmas que terminaram o ano anterior ativas no SGP e ficaram inativas (situacao = 5 do SGP) e foram acertadas por script
         UPDATE SET tur_situacao = 3,
                    tur_dataAlteracao = GETDATE();
    
    IF @@ERROR <> 0
    BEGIN
       PRINT 'Erro na integração de dados na tabela TUR_Turma'
       ROLLBACK
       RETURN
    END
    
	--update pra INATIVAR turmas que foram excluídas indevidamente pelo merge acima.
	--Ele deve afetar turmas, apenas nas viradas de anos, já que depois de alterado, 
	--ele fica com a alteração 2 e não cai mais na clausula Destino.tur_situacao not in (2,3) do merge 
	UPDATE turSerap 
	   SET turSerap.tur_situacao = 2, turSerap.tur_DataAlteracao = GETDATE()
	  FROM GestaoAvaliacao_SGP..TUR_Turma turSerap
		   INNER JOIN GestaoAvaliacao_SGP..ACA_CalendarioAnual cal on cal.cal_id = turSerap.cal_id 
		   INNER JOIN Manutencao.._Parametros p on p.CHAVE = 'ANO_BASE' and cal.cal_ano < p.valor
		   INNER JOIN GestaoPedagogica..TUR_Turma turSGP on turSGP.tur_id = turSerap.tur_id
	 WHERE turSGP.tur_situacao in (5,7)
	   AND turSerap.tur_situacao = 3
	
	
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'ACA_Aluno', @SourceID, getdate())
    
	SELECT mt.alu_id INTO #CteIdDosAlunosDoEjaeCieja 
	FROM GestaoAvaliacao_SGP..MTR_MatriculaTurma mt WITH (NOLOCK)
		INNER JOIN GestaoAvaliacao_SGP..TUR_Turma t WITH (NOLOCK) ON mt.tur_id = t.tur_id
		INNER JOIN GestaoAvaliacao_SGP..TUR_TurmaCurriculo tc WITH (NOLOCK) ON tc.tur_id = t.tur_id
		INNER JOIN GestaoAvaliacao_SGP..ACA_Curso c WITH (NOLOCK) ON c.cur_id = tc.cur_id 
	WHERE c.tme_id IN (4,6,7,8)
	GROUP BY mt.alu_id;

	PRINT 'ACA_Aluno';

	WITH CteAlunoParaMerge AS 
	(
		SELECT aluno.*
			FROM GestaoAvaliacao_SGP..ACA_Aluno aluno WITH (NOLOCK)
		WHERE aluno.alu_id NOT IN ( SELECT alu_id FROM #CteIdDosAlunosDoEjaeCieja )
	)
	
    -- ACA_Aluno
    MERGE INTO CteAlunoParaMerge Destino
    USING (select alu.alu_id, alu.pes_id, pes.pes_nome, alu.ent_id, alc.alc_matricula,
                  alu.alu_dataCriacao, alu.alu_dataAlteracao, alu.alu_situacao
             from GestaoPedagogica..ACA_Aluno alu with (nolock)
                  inner join CoreSSO..PES_Pessoa pes with (nolock)
                  on alu.pes_id = pes.pes_id
                  inner join
                  (select alu_id, alc_matricula from GestaoPedagogica..ACA_AlunoCurriculo with (nolock)
                    where alc_situacao = 1
                    group by alu_id, alc_matricula) alc
                  on alu.alu_id = alc.alu_id
            where alu.ent_id = @ent_id
              and alu.alu_situacao <> 3
              and pes.pes_situacao <> 3
			  and alu.alu_id NOT IN ( SELECT alu_id FROM #CteIdDosAlunosDoEjaeCieja )
            group by alu.alu_id, alu.pes_id, pes.pes_nome, alu.ent_id, alc.alc_matricula,
                  alu.alu_dataCriacao, alu.alu_dataAlteracao, alu.alu_situacao) Origem
    ON Destino.alu_id = Origem.alu_id
    WHEN MATCHED
         AND ((Destino.alu_nome COLLATE DATABASE_DEFAULT <> Origem.pes_nome COLLATE DATABASE_DEFAULT)
               OR
              (Destino.alu_situacao <> Origem.alu_situacao))
         THEN
         UPDATE SET alu_nome = Origem.pes_nome,
                    pes_id = Origem.pes_id,
					alu_situacao = Origem.alu_situacao,
                    alu_dataAlteracao = Origem.alu_dataAlteracao
    WHEN NOT MATCHED THEN
         INSERT (alu_id, pes_id, alu_nome, ent_id, alu_matricula, alu_dataCriacao, alu_dataAlteracao, alu_situacao)
         VALUES (Origem.alu_id, Origem.pes_id, Origem.pes_nome, Origem.ent_id, Origem.alc_matricula,
                 Origem.alu_dataCriacao, Origem.alu_dataAlteracao, Origem.alu_situacao)
    WHEN NOT MATCHED BY SOURCE AND Destino.alu_situacao <> 3 THEN
         UPDATE SET alu_situacao = 3,
                    alu_dataAlteracao = GETDATE();

    IF @@ERROR <> 0
    BEGIN
       PRINT 'Erro na integração de dados na tabela ACA_Aluno'
       ROLLBACK
       RETURN
    END
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'ACA_TipoModalidadeEnsino', @SourceID, getdate())
    
    -- ACA_TipoModalidadeEnsino
    MERGE INTO GestaoAvaliacao_SGP..ACA_TipoModalidadeEnsino Destino
    USING (select tme_id, tme_nome, tme_situacao, tme_dataCriacao, tme_dataAlteracao
             from GestaoPedagogica..ACA_TipoModalidadeEnsino with (nolock)
            where tme_situacao <> 3) Origem
    ON Destino.tme_id = Origem.tme_id
    WHEN MATCHED
         AND ((Destino.tme_nome COLLATE DATABASE_DEFAULT <> Origem.tme_nome COLLATE DATABASE_DEFAULT)
               OR
              (Destino.tme_situacao <> Origem.tme_situacao))
         THEN
         UPDATE SET tme_nome = Origem.tme_nome,
                    tme_situacao = Origem.tme_situacao,
                    tme_dataAlteracao = Origem.tme_dataAlteracao
    WHEN NOT MATCHED THEN
         INSERT (tme_id, tme_nome, tme_situacao, tme_dataCriacao, tme_dataAlteracao)
         VALUES (Origem.tme_id, Origem.tme_nome, Origem.tme_situacao, Origem.tme_dataCriacao, Origem.tme_dataAlteracao)
    WHEN NOT MATCHED BY SOURCE AND Destino.tme_situacao <> 3 THEN
         UPDATE SET tme_situacao = 3,
                    tme_dataAlteracao = GETDATE();

    IF @@ERROR <> 0
    BEGIN
       PRINT 'Erro na integração de dados na tabela ACA_TipoModalidadeEnsino'
       ROLLBACK
       RETURN
    END
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'ACA_TipoNivelEnsino', @SourceID, getdate())
    
    -- ACA_TipoNivelEnsino
    MERGE INTO GestaoAvaliacao_SGP..ACA_TipoNivelEnsino Destino
    USING (select tne_id, tne_nome, tne_situacao, tne_dataCriacao, tne_dataAlteracao, tne_ordem
             from GestaoPedagogica..ACA_TipoNivelEnsino with (nolock)
            where tne_situacao <> 3) Origem
    ON Destino.tne_id = Origem.tne_id
    WHEN MATCHED
         AND ((Destino.tne_nome COLLATE DATABASE_DEFAULT <> Origem.tne_nome COLLATE DATABASE_DEFAULT)
               OR
              (Destino.tne_ordem <> Origem.tne_ordem)
               OR
              (Destino.tne_situacao <> Origem.tne_situacao))
         THEN
         UPDATE SET tne_nome = Origem.tne_nome,
                    tne_ordem = Origem.tne_ordem,
                    tne_situacao = Origem.tne_situacao,
                    tne_dataAlteracao = Origem.tne_dataAlteracao
    WHEN NOT MATCHED THEN
         INSERT (tne_id, tne_nome, tne_situacao, tne_dataCriacao, tne_dataAlteracao, tne_ordem)
         VALUES (Origem.tne_id, Origem.tne_nome, Origem.tne_situacao,
                 Origem.tne_dataCriacao, Origem.tne_dataAlteracao, Origem.tne_ordem)
    WHEN NOT MATCHED BY SOURCE AND Destino.tne_situacao <> 3 THEN
         UPDATE SET tne_situacao = 3,
                    tne_dataAlteracao = GETDATE();
    
    IF @@ERROR <> 0
    BEGIN
       PRINT 'Erro na integração de dados na tabela ACA_TipoNivelEnsino'
       ROLLBACK
       RETURN
    END
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'ACA_TipoCurriculoPeriodo', @SourceID, getdate())
    
    PRINT 'ACA_TipoCurriculoPeriodo'
    -- ACA_TipoCurriculoPeriodo
    MERGE INTO GestaoAvaliacao_SGP..ACA_TipoCurriculoPeriodo Destino
    USING (select tcp_id, tne_id, tme_id, tcp_descricao, tcp_ordem, tcp_situacao, tcp_dataCriacao, tcp_dataAlteracao
             from GestaoPedagogica..ACA_TipoCurriculoPeriodo with (nolock)
            where tcp_situacao <> 3) Origem
    ON Destino.tcp_id = Origem.tcp_id
    WHEN MATCHED
         AND ((Destino.tcp_descricao COLLATE DATABASE_DEFAULT <> Origem.tcp_descricao COLLATE DATABASE_DEFAULT)
               OR
              (Destino.tcp_ordem <> Origem.tcp_ordem)
               OR
              (Destino.tcp_situacao <> Origem.tcp_situacao))
         THEN
         UPDATE SET tcp_descricao = Origem.tcp_descricao,
                    tcp_ordem = Origem.tcp_ordem,
                    tcp_situacao = Origem.tcp_situacao,
                    tcp_dataAlteracao = Origem.tcp_dataAlteracao
    WHEN NOT MATCHED THEN
         INSERT (tcp_id, tne_id, tme_id, tcp_descricao, tcp_ordem, tcp_situacao, tcp_dataCriacao, tcp_dataAlteracao)
         VALUES (Origem.tcp_id, Origem.tne_id, Origem.tme_id, Origem.tcp_descricao, Origem.tcp_ordem,
                 Origem.tcp_situacao, Origem.tcp_dataCriacao, Origem.tcp_dataAlteracao)
    WHEN NOT MATCHED BY SOURCE AND Destino.tcp_situacao <> 3 AND tme_id NOT IN (4,6,7,8) THEN
         UPDATE SET tcp_situacao = 3,
                    tcp_dataAlteracao = GETDATE();
    
    IF @@ERROR <> 0
    BEGIN
       PRINT 'Erro na integração de dados na tabela ACA_TipoCurriculoPeriodo'
       ROLLBACK
       RETURN
    END
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'ACA_Curso', @SourceID, getdate())
    
    PRINT 'ACA_CURSO'
    -- ACA_Curso
    MERGE INTO GestaoAvaliacao_SGP..ACA_Curso Destino
    USING (select cur.cur_id, cur.ent_id, cur.tne_id, cur.tme_id, cur.cur_codigo, cur.cur_nome, cur.cur_nome_abreviado,
                  cur.cur_situacao, cur.cur_dataCriacao, cur.cur_dataAlteracao
             from GestaoPedagogica..ACA_Curso cur with (nolock)
                  inner join GestaoAvaliacao_SGP..ACA_TipoNivelEnsino tne
                  on cur.tne_id = tne.tne_id
                  inner join GestaoAvaliacao_SGP..ACA_TipoModalidadeEnsino tme
                  on cur.tme_id = tme.tme_id
            where ent_id = @ent_id
              and cur_situacao <> 3
              and tne_situacao <> 3
              and tme_situacao <> 3) Origem
    ON Destino.cur_id = Origem.cur_id
    WHEN MATCHED
         AND ((Destino.cur_codigo COLLATE DATABASE_DEFAULT <> Origem.cur_codigo COLLATE DATABASE_DEFAULT)
               OR
              (Destino.cur_nome COLLATE DATABASE_DEFAULT <> Origem.cur_nome COLLATE DATABASE_DEFAULT)
               OR
              (Destino.cur_nome_abreviado COLLATE DATABASE_DEFAULT <> Origem.cur_nome_abreviado COLLATE DATABASE_DEFAULT)
               OR
              (Destino.cur_situacao <> Origem.cur_situacao))
         THEN
         UPDATE SET cur_codigo = Origem.cur_codigo,
                    cur_nome = Origem.cur_nome,
                    cur_nome_abreviado = Origem.cur_nome_abreviado,
                    cur_situacao = Origem.cur_situacao,
                    cur_dataAlteracao = Origem.cur_dataAlteracao
    WHEN NOT MATCHED THEN
         INSERT (cur_id, ent_id, tne_id, tme_id, cur_codigo, cur_nome, cur_nome_abreviado,
                 cur_situacao, cur_dataCriacao, cur_dataAlteracao)
         VALUES (Origem.cur_id, Origem.ent_id, Origem.tne_id, Origem.tme_id, Origem.cur_codigo,
                 Origem.cur_nome, Origem.cur_nome_abreviado,
                 Origem.cur_situacao, Origem.cur_dataCriacao, Origem.cur_dataAlteracao)
    WHEN NOT MATCHED BY SOURCE AND Destino.cur_situacao <> 3 AND tme_id NOT IN (4,6,7,8) THEN
         UPDATE SET cur_situacao = 3,
                    cur_dataAlteracao = GETDATE();
    
    IF @@ERROR <> 0
    BEGIN
       PRINT 'Erro na integração de dados na tabela ACA_Curso'
       ROLLBACK
       RETURN
    END
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'ACA_Curriculo', @SourceID, getdate());
    
	PRINT 'Aca_CURRICULO';
    
	WITH CteCurriculo AS (
		SELECT ac.* from GestaoAvaliacao_SGP..ACA_Curriculo ac   
		INNER JOIN GestaoAvaliacao_SGP..ACA_Curso c WITH (NOLOCK) ON c.cur_id = ac.cur_id
		WHERE c.tme_id NOT IN (4,6,7,8)
    )
	
    -- ACA_Curriculo
    MERGE INTO CteCurriculo Destino
    USING (select crr.cur_id, crr.crr_id, crr.crr_nome, crr.crr_situacao, crr.crr_dataCriacao, crr.crr_dataAlteracao
             from GestaoPedagogica..ACA_Curriculo crr with (nolock)
                  inner join GestaoAvaliacao_SGP..ACA_Curso cur
                  on crr.cur_id = cur.cur_id
            where crr_situacao <> 3
              and ent_id = @ent_id
              and cur_situacao <> 3
			  and tme_id NOT IN (4,6,7,8)) Origem
     ON Destino.cur_id = Origem.cur_id
    AND Destino.crr_id = Origem.crr_id
    WHEN MATCHED
         AND ((Destino.crr_nome COLLATE DATABASE_DEFAULT <> Origem.crr_nome COLLATE DATABASE_DEFAULT)
               OR
              (Destino.crr_situacao <> Origem.crr_situacao))
         THEN
         UPDATE SET crr_nome = Origem.crr_nome,
                    crr_situacao = Origem.crr_situacao,
                    crr_dataAlteracao = Origem.crr_dataAlteracao
    WHEN NOT MATCHED THEN
         INSERT (cur_id, crr_id, crr_nome, crr_situacao, crr_dataCriacao, crr_dataAlteracao)
         VALUES (Origem.cur_id, Origem.crr_id, Origem.crr_nome, Origem.crr_situacao,
                 Origem.crr_dataCriacao, Origem.crr_dataAlteracao)
    WHEN NOT MATCHED BY SOURCE AND Destino.crr_situacao <> 3 THEN
         UPDATE SET crr_situacao = 3,
                    crr_dataAlteracao = GETDATE();
    
    IF @@ERROR <> 0
    BEGIN
       PRINT 'Erro na integração de dados na tabela ACA_Curriculo'
       ROLLBACK
       RETURN
    END
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'ACA_CurriculoPeriodo', @SourceID, getdate());
    
	PRINT 'ACA_CurriculoPeriodo';
    
	WITH CteCurriculoPeriodo AS (
		select crp.* from GestaoAvaliacao_SGP..ACA_CurriculoPeriodo crp
		inner join GestaoAvaliacao_SGP..ACA_Curriculo crr on crp.cur_id = crr.cur_id and crp.crr_id = crr.crr_id
		INNER JOIN GestaoAvaliacao_SGP..ACA_Curso c WITH (NOLOCK) ON c.cur_id = crr.cur_id
		WHERE c.tme_id NOT IN (4,6,7,8)
    )
	
    -- ACA_CurriculoPeriodo
    MERGE INTO CteCurriculoPeriodo Destino
    USING (select crp.cur_id, crp.crr_id, crp.crp_id, crp.crp_ordem, crp.crp_descricao, crp.crp_situacao,
                  crp.crp_dataCriacao, crp.crp_dataAlteracao, crp.tcp_id
             from GestaoPedagogica..ACA_CurriculoPeriodo crp with (nolock)
                  inner join GestaoAvaliacao_SGP..ACA_Curriculo crr
                   on crp.cur_id = crr.cur_id
                  and crp.crr_id = crr.crr_id
				  INNER JOIN GestaoAvaliacao_SGP..ACA_Curso c WITH (NOLOCK) ON c.cur_id = crr.cur_id
                  left join GestaoAvaliacao_SGP..ACA_TipoCurriculoPeriodo atcp
                   on crp.tcp_id = atcp.tcp_id
                  and 3 <> atcp.tcp_situacao
            where crp.crp_situacao <> 3
              and crr.crr_situacao <> 3
			  and c.tme_id NOT IN (4,6,7,8)) Origem
     ON Destino.cur_id = Origem.cur_id
    AND Destino.crr_id = Origem.crr_id
    AND Destino.crp_id = Origem.crp_id
    AND Destino.tcp_id = Origem.tcp_id
    WHEN MATCHED
         AND ((Destino.crp_descricao COLLATE DATABASE_DEFAULT <> Origem.crp_descricao COLLATE DATABASE_DEFAULT)
               OR
              (Destino.crp_situacao <> Origem.crp_situacao))
         THEN
         UPDATE SET crp_descricao = Origem.crp_descricao,
                    crp_situacao = Origem.crp_situacao,
                    crp_dataAlteracao = Origem.crp_dataAlteracao
    WHEN NOT MATCHED THEN
         INSERT (cur_id, crr_id, crp_id, crp_ordem, crp_descricao, crp_situacao,
                 crp_dataCriacao, crp_dataAlteracao, tcp_id)
         VALUES (Origem.cur_id, Origem.crr_id, Origem.crp_id, Origem.crp_ordem, Origem.crp_descricao,
                 Origem.crp_situacao, Origem.crp_dataCriacao, Origem.crp_dataAlteracao, Origem.tcp_id)
    WHEN NOT MATCHED BY SOURCE AND Destino.crp_situacao <> 3 THEN
         UPDATE SET crp_situacao = 3,
                    crp_dataAlteracao = GETDATE();
    
    IF @@ERROR <> 0
    BEGIN
       PRINT 'Erro na integração de dados na tabela ACA_CurriculoPeriodo'
       ROLLBACK
       RETURN
    END
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'ACA_TipoDisciplina', @SourceID, getdate())
    
    -- ACA_TipoDisciplina
    MERGE INTO GestaoAvaliacao_SGP..ACA_TipoDisciplina Destino
    USING (select tds.tds_id, tds.tne_id, tds.tds_nome, tds.tds_situacao, tds.tds_dataCriacao, tds.tds_dataAlteracao
             from GestaoPedagogica..ACA_TipoDisciplina tds with (nolock)
                  inner join GestaoAvaliacao_SGP..ACA_TipoNivelEnsino tne
                  on tds.tne_id = tne.tne_id
            where tds_situacao <> 3
              and tne_situacao <> 3) Origem
    ON Destino.tds_id = Origem.tds_id
    WHEN MATCHED
         AND ((Destino.tds_nome COLLATE DATABASE_DEFAULT <> Origem.tds_nome COLLATE DATABASE_DEFAULT)
               OR
              (Destino.tds_situacao <> Origem.tds_situacao))
         THEN
         UPDATE SET tds_nome = Origem.tds_nome,
                    tds_situacao = Origem.tds_situacao,
                    tds_dataAlteracao = Origem.tds_dataAlteracao
    WHEN NOT MATCHED THEN
         INSERT (tds_id, tne_id, tds_nome, tds_situacao, tds_dataCriacao, tds_dataAlteracao)
         VALUES (Origem.tds_id, Origem.tne_id, Origem.tds_nome, Origem.tds_situacao,
                 Origem.tds_dataCriacao, Origem.tds_dataAlteracao)
    WHEN NOT MATCHED BY SOURCE AND Destino.tds_situacao <> 3 THEN
         UPDATE SET tds_situacao = 3,
                    tds_dataAlteracao = GETDATE();
    
    IF @@ERROR <> 0
    BEGIN
       PRINT 'Erro na integração de dados na tabela ACA_TipoDisciplina'
       ROLLBACK
       RETURN
    END
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'ACA_CurriculoDisciplina', @SourceID, getdate())
    
    -- ACA_CurriculoDisciplina
    MERGE INTO GestaoAvaliacao_SGP..ACA_CurriculoDisciplina Destino
    USING (select crd.cur_id, crd.crr_id, crd.crp_id, tds.tds_id, crd.crd_situacao, min(crd.crd_tipo) as crd_tipo,
                  max(crd.crd_dataCriacao) as crd_dataCriacao, max(crd.crd_dataAlteracao) as crd_dataAlteracao
             from GestaoPedagogica..ACA_CurriculoDisciplina crd with (nolock)
                  inner join GestaoPedagogica..ACA_Disciplina dis with (nolock)
                  on crd.dis_id = dis.dis_id
                  inner join GestaoAvaliacao_SGP..ACA_TipoDisciplina tds
                  on dis.tds_id = tds.tds_id
                  inner join GestaoAvaliacao_SGP..ACA_CurriculoPeriodo crp
                   on crd.cur_id = crp.cur_id
                  and crd.crr_id = crp.crr_id
                  and crd.crp_id = crp.crp_id
            where crd.crd_situacao <> 3
              and dis.dis_situacao <> 3
              and tds.tds_situacao <> 3
              and crp.crp_situacao <> 3
            group by crd.cur_id, crd.crr_id, crd.crp_id, tds.tds_id, crd.crd_situacao) Origem
     ON Destino.cur_id = Origem.cur_id
    AND Destino.crr_id = Origem.crr_id
    AND Destino.crp_id = Origem.crp_id
    AND Destino.tds_id = Origem.tds_id
    WHEN MATCHED
         AND ((Destino.crd_tipo <> Origem.crd_tipo)
               OR
              (Destino.crd_situacao <> Origem.crd_situacao))
         THEN
         UPDATE SET crd_tipo = Origem.crd_tipo,
                    crd_situacao = Origem.crd_situacao,
                    crd_dataAlteracao = Origem.crd_dataAlteracao
    WHEN NOT MATCHED THEN
         INSERT (cur_id, crr_id, crp_id, tds_id, crd_tipo, crd_situacao, crd_dataCriacao, crd_dataAlteracao)
         VALUES (Origem.cur_id, Origem.crr_id, Origem.crp_id, Origem.tds_id, Origem.crd_tipo,
                 Origem.crd_situacao, Origem.crd_dataCriacao, Origem.crd_dataAlteracao)
    WHEN NOT MATCHED BY SOURCE AND Destino.crd_situacao <> 3 THEN
         UPDATE SET crd_situacao = 3,
                    crd_dataAlteracao = GETDATE();
    
    IF @@ERROR <> 0
    BEGIN
       PRINT 'Erro na integração de dados na tabela ACA_CurriculoDisciplina'
       ROLLBACK
       RETURN
    END
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'TUR_TurmaCurriculo', @SourceID, getdate());
    
	PRINT 'TUR_TurmaCurriculo';
    
	WITH CteTurmaCurriculo AS (
		Select tc.* from GestaoAvaliacao_SGP..TUR_TurmaCurriculo tc
		INNER JOIN GestaoAvaliacao_SGP..ACA_Curso c ON c.cur_id = tc.cur_id 
		where c.tme_id NOT IN (4,6,7,8)
	)
	
    -- TUR_TurmaCurriculo
    MERGE INTO CteTurmaCurriculo Destino
    USING (select tur.tur_id, tcr.cur_id, tcr.crr_id, tcr.crp_id, tcr.tcr_situacao,
                  tcr.tcr_dataCriacao, tcr.tcr_dataAlteracao, crp1.tcp_id
             from GestaoAvaliacao_SGP..TUR_Turma tur
              inner join GestaoPedagogica..TUR_TurmaCurriculo tcr with (nolock)
                  on tur.tur_id = tcr.tur_id
			  INNER JOIN GestaoAvaliacao_SGP..ACA_Curso c ON c.cur_id = tcr.cur_id
              inner join GestaoPedagogica..ACA_CurriculoPeriodo crp1
                    ON tcr.cur_id = crp1.cur_id
                      and tcr.crr_id = crp1.crr_id
                      and tcr.crp_id = crp1.crp_id
              inner join GestaoAvaliacao_SGP..ACA_CurriculoPeriodo crp
                    on tcr.cur_id = crp.cur_id
                      and tcr.crr_id = crp.crr_id
                      and tcr.crp_id = crp.crp_id
                      and crp1.tcp_id = crp.tcp_id
            where tur.tur_situacao <> 3
              and tcr.tcr_situacao <> 3
              and crp.crp_situacao <> 3
			  and c.tme_id NOT IN (4,6,7,8)
            group by tur.tur_id, tcr.cur_id, tcr.crr_id, tcr.crp_id, tcr.tcr_situacao,
                  tcr.tcr_dataCriacao, tcr.tcr_dataAlteracao, crp1.tcp_id) Origem
     ON Destino.tur_id = Origem.tur_id
    AND Destino.cur_id = Origem.cur_id
    AND Destino.crr_id = Origem.crr_id
    AND Destino.crp_id = Origem.crp_id
    AND Destino.tcp_id = Origem.tcp_id
    WHEN MATCHED AND (Destino.tcr_situacao <> Origem.tcr_situacao) THEN
         UPDATE SET tcr_situacao = Origem.tcr_situacao,
                    tcr_dataAlteracao = Origem.tcr_dataAlteracao
    WHEN NOT MATCHED THEN
         INSERT (tur_id, cur_id, crr_id, crp_id, tcr_situacao, tcr_dataCriacao, tcr_dataAlteracao, tcp_id)
         VALUES (Origem.tur_id, Origem.cur_id, Origem.crr_id, Origem.crp_id, Origem.tcr_situacao,
                 Origem.tcr_dataCriacao, Origem.tcr_dataAlteracao, Origem.tcp_id)
    WHEN NOT MATCHED BY SOURCE AND Destino.tcr_situacao <> 3 THEN
         UPDATE SET tcr_situacao = 3,
                    tcr_dataAlteracao = GETDATE();
    
    IF @@ERROR <> 0
    BEGIN
       PRINT 'Erro na integração de dados na tabela TUR_TurmaCurriculo'
       ROLLBACK
       RETURN
    END
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'TUR_TurmaDisciplina', @SourceID, getdate())
    
    -- TUR_TurmaDisciplina
    MERGE INTO GestaoAvaliacao_SGP..TUR_TurmaDisciplina Destino
    USING (select tud.tud_id, tur.tur_id, tds.tds_id, tud.tud_codigo, tud.tud_nome, tud.tud_tipo,
                  tud.tud_situacao, tud.tud_dataCriacao, tud.tud_dataAlteracao
             from GestaoPedagogica..TUR_TurmaDisciplina tud with (nolock)
                  inner join GestaoPedagogica.. TUR_TurmaRelTurmaDisciplina trtd with (nolock)
                  on tud.tud_id = trtd.tud_id
                  inner join GestaoAvaliacao_SGP..TUR_Turma tur
                  on trtd.tur_id = tur.tur_id
                  inner join GestaoPedagogica..TUR_TurmaDisciplinaRelDisciplina tdrd with (nolock)
                  on tud.tud_id = tdrd.tud_id
                  inner join GestaoPedagogica..ACA_Disciplina dis with (nolock)
                  on tdrd.dis_id = dis.dis_id
                  inner join GestaoAvaliacao_SGP..ACA_TipoDisciplina tds
                  on dis.tds_id = tds.tds_id
            where tud.tud_situacao <> 3
              and tur.tur_situacao <> 3
              and dis.dis_situacao <> 3
              and tds.tds_situacao <> 3
            group by tud.tud_id, tur.tur_id, tds.tds_id, tud.tud_codigo, tud.tud_nome, tud.tud_tipo,
                  tud.tud_situacao, tud.tud_dataCriacao, tud.tud_dataAlteracao) Origem
    ON Destino.tud_id = Origem.tud_id
    WHEN MATCHED AND(Destino.tud_situacao <> Origem.tud_situacao) THEN
         UPDATE SET tud_situacao = Origem.tud_situacao,
                    tud_dataAlteracao = Origem.tud_dataAlteracao
    WHEN NOT MATCHED THEN
         INSERT (tud_id, tur_id, tds_id, tud_codigo, tud_nome, tud_tipo,
                 tud_situacao, tud_dataCriacao, tud_dataAlteracao)
         VALUES (Origem.tud_id, Origem.tur_id, Origem.tds_id, Origem.tud_codigo, Origem.tud_nome, Origem.tud_tipo,
                 Origem.tud_situacao, Origem.tud_dataCriacao, Origem.tud_dataAlteracao)
    WHEN NOT MATCHED BY SOURCE AND Destino.tud_situacao <> 3 THEN
         UPDATE SET tud_situacao = 3,
                    tud_dataAlteracao = GETDATE();
    
    IF @@ERROR <> 0
    BEGIN
       PRINT 'Erro na integração de dados na tabela TUR_TurmaDisciplina'
       ROLLBACK
       RETURN
    END
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'MTR_MatriculaTurma', @SourceID, getdate());
    
	SELECT mtu.* INTO #TempMAtriculaTurma
	FROM GestaoAvaliacao_SGP..MTR_MatriculaTurma mtu
		INNER JOIN GestaoAvaliacao_SGP..ACA_Curso c ON c.cur_id = mtu.cur_id
	WHERE c.tme_id IN (4,6,7,8)
	
	DECLARE @DataAlteracaoMatriculaTurma DATETIME
	SET @DataAlteracaoMatriculaTurma = GETDATE()

	PRINT 'MTR_MatriculaTurma'
    -- MTR_MatriculaTurma
     MERGE INTO GestaoAvaliacao_SGP..MTR_MatriculaTurma Destino
    USING (select alu.alu_id, mtu.mtu_id, tur.esc_id, tur.tur_id, mtu.cur_id, mtu.crr_id, mtu.crp_id,
                  mtu.mtu_situacao, mtu.mtu_dataCriacao, mtu.mtu_dataAlteracao, mtu.mtu_numeroChamada
                 ,mtu.mtu_dataMatricula, mtu.mtu_dataSaida, crp.tcp_id -- Add 07-06/16
             from GestaoAvaliacao_SGP..ACA_Aluno alu
                  inner join GestaoPedagogica..MTR_MatriculaTurma mtu with (nolock)
                  on alu.alu_id = mtu.alu_id
                  inner join GestaoAvaliacao_SGP..TUR_Turma tur
                  on mtu.tur_id = tur.tur_id
                  inner join GestaoAvaliacao_SGP..ACA_CurriculoPeriodo crp
                   on mtu.cur_id = crp.cur_id
                  and mtu.crr_id = crp.crr_id
                  and mtu.crp_id = crp.crp_id
				  inner join GestaoAvaliacao_SGP..ACA_TipoCurriculoPeriodo tpcp
				  on crp.tcp_id = tpcp.tcp_id
            where alu.alu_situacao = 1
              and mtu.mtu_situacao <> 3 -- Alterado de 1 para 3 - 07-06/16
              and tur.tur_situacao <> 3
              and crp.crp_situacao <> 3
			  and tpcp.tcp_situacao <> 3
            group by alu.alu_id, mtu.mtu_id, tur.esc_id, tur.tur_id, mtu.cur_id, mtu.crr_id, mtu.crp_id,
                  mtu.mtu_situacao, mtu.mtu_dataCriacao, mtu.mtu_dataAlteracao, mtu.mtu_numeroChamada,mtu.mtu_dataMatricula, mtu.mtu_dataSaida, crp.tcp_id) Origem
     ON Destino.alu_id = Origem.alu_id
    AND Destino.mtu_id = Origem.mtu_id	
    WHEN MATCHED
         AND ((Destino.mtu_numeroChamada <> Origem.mtu_numeroChamada)
               OR
              (Destino.mtu_situacao <> Origem.mtu_situacao))
         THEN
         UPDATE SET mtu_numeroChamada = Origem.mtu_numeroChamada,
                    mtu_situacao = Origem.mtu_situacao,
                    mtu_dataAlteracao = Origem.mtu_dataAlteracao,
                    mtu_dataMatricula = Origem.mtu_dataMatricula, --Add 07-06/16
                    mtu_dataSaida	  = Origem.mtu_dataSaida	  --Add 07-06/16
    WHEN NOT MATCHED THEN
         INSERT (alu_id, mtu_id, esc_id, tur_id, cur_id, crr_id, crp_id,
                 mtu_situacao, mtu_dataCriacao, mtu_dataAlteracao, mtu_numeroChamada,  mtu_dataMatricula, mtu_dataSaida, tcp_id)
         VALUES (Origem.alu_id, Origem.mtu_id, Origem.esc_id, Origem.tur_id, Origem.cur_id,
                 Origem.crr_id, Origem.crp_id, Origem.mtu_situacao,
                 Origem.mtu_dataCriacao, Origem.mtu_dataAlteracao, Origem.mtu_numeroChamada,Origem.mtu_dataMatricula, Origem.mtu_dataSaida, Origem.tcp_id)
    WHEN NOT MATCHED BY SOURCE AND Destino.mtu_situacao <> 3 THEN
         UPDATE SET mtu_situacao = 3,
                    mtu_dataAlteracao = @DataAlteracaoMatriculaTurma;
    
	UPDATE mtu SET
		mtu.mtu_situacao = temp.mtu_situacao, 
		mtu.mtu_dataAlteracao = temp.mtu_dataAlteracao 
	FROM GestaoAvaliacao_SGP..MTR_MatriculaTurma mtu
	INNER JOIN #TempMAtriculaTurma temp ON mtu.alu_id = temp.alu_id AND  mtu.mtu_id = temp.mtu_id
	WHERE mtu.mtu_situacao = 3 and mtu.mtu_dataAlteracao = @DataAlteracaoMatriculaTurma
	
    IF @@ERROR <> 0
    BEGIN
       PRINT 'Erro na integração de dados na tabela MTR_MatriculaTurma'
       ROLLBACK
       RETURN
    END
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'MTR_MatriculaTurmaDisciplina', @SourceID, getdate())
    
    -- MTR_MatriculaTurmaDisciplina
    MERGE INTO GestaoAvaliacao_SGP..MTR_MatriculaTurmaDisciplina Destino
    USING (select mtu.alu_id, mtd.mtu_id, mtd.mtd_id, mtd.tud_id, mtd.mtd_numeroChamada,
                  mtd.mtd_situacao, mtd.mtd_dataCriacao, mtd.mtd_dataAlteracao
             from GestaoAvaliacao_SGP..MTR_MatriculaTurma mtu
                  inner join GestaoPedagogica..MTR_MatriculaTurmaDisciplina mtd with (nolock)
                   on mtu.alu_id = mtd.alu_id
                  and mtu.mtu_id = mtd.mtu_id
                  inner join GestaoAvaliacao_SGP..TUR_TurmaDisciplina tud
                  on mtd.tud_id = tud.tud_id
            where mtu.mtu_situacao = 1
              and mtd.mtd_situacao = 1
              and tud.tud_situacao = 1
            group by mtu.alu_id, mtd.mtu_id, mtd.mtd_id, mtd.tud_id, mtd.mtd_numeroChamada,
                  mtd.mtd_situacao, mtd.mtd_dataCriacao, mtd.mtd_dataAlteracao) Origem
     ON Destino.alu_id = Origem.alu_id
    AND Destino.mtu_id = Origem.mtu_id
    AND Destino.mtd_id = Origem.mtd_id
    WHEN MATCHED
         AND ((Destino.mtd_numeroChamada <> Origem.mtd_numeroChamada)
               OR
              (Destino.mtd_situacao <> Origem.mtd_situacao))
         THEN
         UPDATE SET mtd_numeroChamada = Origem.mtd_numeroChamada,
                    mtd_situacao = Origem.mtd_situacao,
                    mtd_dataAlteracao = Origem.mtd_dataAlteracao
    WHEN NOT MATCHED THEN
         INSERT (alu_id, mtu_id, mtd_id, tud_id, mtd_numeroChamada, mtd_situacao, mtd_dataCriacao, mtd_dataAlteracao)
         VALUES (Origem.alu_id, Origem.mtu_id, Origem.mtd_id, Origem.tud_id, Origem.mtd_numeroChamada,
                 Origem.mtd_situacao, Origem.mtd_dataCriacao, Origem.mtd_dataAlteracao)
    WHEN NOT MATCHED BY SOURCE AND Destino.mtd_situacao <> 3 THEN
         UPDATE SET mtd_situacao = 3,
                    mtd_dataAlteracao = GETDATE();
    
    IF @@ERROR <> 0
    BEGIN
       PRINT 'Erro na integração de dados na tabela MTR_MatriculaTurmaDisciplina'
       ROLLBACK
       RETURN
    END
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'ACA_Docente', @SourceID, getdate())
    
    -- ACA_Docente
    MERGE INTO GestaoAvaliacao_SGP..ACA_Docente Destino
    USING (select doc.doc_id, pes.pes_nome, doc.doc_situacao,
                  doc.doc_dataCriacao, doc.doc_dataAlteracao, col.pes_id, col.ent_id
             from GestaoPedagogica..ACA_Docente doc with (nolock)
                  inner join GestaoPedagogica..RHU_Colaborador col with (nolock)
                  on doc.col_id = col.col_id
                  inner join CoreSSO..PES_Pessoa pes with (nolock)
                  on col.pes_id = pes.pes_id
            where doc.doc_situacao <> 3
              and col.col_situacao <> 3
              and col.ent_id = @ent_id
              and pes.pes_situacao <> 3
            group by doc.doc_id, pes.pes_nome, doc.doc_situacao,
                  doc.doc_dataCriacao, doc.doc_dataAlteracao, col.pes_id, col.ent_id) Origem
    ON Destino.doc_id = Origem.doc_id
    WHEN MATCHED
         AND ((Destino.doc_nome COLLATE DATABASE_DEFAULT <> Origem.pes_nome COLLATE DATABASE_DEFAULT)
               OR
              (Destino.doc_situacao <> Origem.doc_situacao))
         THEN
         UPDATE SET doc_nome = Origem.pes_nome,
                    doc_situacao = Origem.doc_situacao,
                    doc_dataAlteracao = Origem.doc_dataAlteracao
    WHEN NOT MATCHED THEN
         INSERT (doc_id, doc_nome, doc_situacao, doc_dataCriacao, doc_dataAlteracao, pes_id, ent_id)
         VALUES (Origem.doc_id, Origem.pes_nome, Origem.doc_situacao,
                 Origem.doc_dataCriacao, Origem.doc_dataAlteracao, Origem.pes_id, Origem.ent_id)
    WHEN NOT MATCHED BY SOURCE AND Destino.doc_situacao <> 3 THEN
         UPDATE SET doc_situacao = 3,
                    doc_dataAlteracao = GETDATE();
    
    IF @@ERROR <> 0
    BEGIN
       PRINT 'Erro na integração de dados na tabela ACA_Docente'
       ROLLBACK
       RETURN
    END
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'TUR_TurmaDocente', @SourceID, getdate())
    
    -- TUR_TurmaDocente
    MERGE INTO GestaoAvaliacao_SGP..TUR_TurmaDocente Destino
    USING (select tdt.tud_id, doc.doc_id, tdt.tdt_situacao, tdt.tdt_posicao, MAX(tdt.tdt_id) tdt_id, 
                  max(tdt.tdt_dataCriacao) tdt_dataCriacao, max(tdt.tdt_dataAlteracao) tdt_dataAlteracao
             from GestaoAvaliacao_SGP..ACA_Docente doc
                  inner join GestaoPedagogica..TUR_TurmaDocente tdt with (nolock)
                  on doc.doc_id = tdt.doc_id
                  inner join GestaoAvaliacao_SGP..TUR_TurmaDisciplina tud
                  on tdt.tud_id = tud.tud_id
            where doc.doc_situacao <> 3
              and tdt.tdt_situacao = 1
              and tud.tud_situacao <> 3
            group by tdt.tud_id, doc.doc_id, tdt.tdt_situacao, tdt.tdt_posicao) Origem
     ON Destino.tud_id = Origem.tud_id
    AND Destino.tdt_id = Origem.tdt_id
    WHEN MATCHED
         AND ((Destino.tdt_posicao <> Origem.tdt_posicao)
               OR
              (Destino.tdt_situacao <> Origem.tdt_situacao))
         THEN
         UPDATE SET tdt_posicao = Origem.tdt_posicao,
                    tdt_situacao = Origem.tdt_situacao,
                    tdt_dataAlteracao = Origem.tdt_dataAlteracao
    WHEN NOT MATCHED THEN
         INSERT (tud_id, doc_id, tdt_situacao, tdt_posicao, tdt_id, tdt_dataCriacao, tdt_dataAlteracao)
         VALUES (Origem.tud_id, Origem.doc_id, Origem.tdt_situacao, Origem.tdt_posicao, Origem.tdt_id, 
                 Origem.tdt_dataCriacao, Origem.tdt_dataAlteracao)
    WHEN NOT MATCHED BY SOURCE AND Destino.tdt_situacao <> 3 THEN
         UPDATE SET tdt_situacao = 3,
                    tdt_dataAlteracao = GETDATE();

	PRINT 'TUR_TurmaTipoCurriculoPeriodo';
					
	WITH CteTurmaTipoCurriculoPeriodo AS (
		SELECT * FROM GestaoAvaliacao_SGP..TUR_TurmaTipoCurriculoPeriodo
		WHERE tme_id NOT IN (4,6,7,8)
	)
			
    -- TUR_TurmaTipoCurriculoPeriodo
    MERGE INTO CteTurmaTipoCurriculoPeriodo Destino
	USING (SELECT t.tur_id, cur.cur_id, cur.tme_id, cur.tne_id, crp.crp_ordem, t.esc_id, cur.cur_situacao, t.tur_situacao, crp.crp_situacao, tcr.tcr_situacao
		FROM GestaoAvaliacao_SGP..TUR_Turma t
		INNER JOIN GestaoAvaliacao_SGP..TUR_TurmaCurriculo tcr ON t.tur_id = tcr.tur_id AND tcr.tcr_situacao = 1
		INNER JOIN GestaoAvaliacao_SGP..ACA_CurriculoPeriodo crp ON crp.cur_id = tcr.cur_id AND crp.crr_id = tcr.crr_id AND crp.crp_id = tcr.crp_id AND crp.crp_situacao = 1
		INNER JOIN GestaoAvaliacao_SGP..ACA_Curso cur ON cur.cur_id = tcr.cur_id AND cur.cur_situacao = 1
		where t.tur_situacao = 1 AND cur.tme_id NOT IN (4,6,7,8)) Origem
	ON Destino.tur_id = Origem.tur_id 
		AND Destino.crp_ordem = Origem.crp_ordem
		AND Destino.tne_id = Origem.tne_id
		AND Destino.tme_id = Origem.tme_id
		AND Destino.cur_id = Origem.cur_id
		AND Destino.esc_id = Origem.esc_id
	WHEN MATCHED
		AND (Origem.cur_situacao <> 1 OR Origem.crp_situacao <> 1 OR Origem.tcr_situacao <> 1 OR Origem.tur_situacao <> 1)
		THEN
			UPDATE SET ttcr_situacao = 4
	WHEN NOT MATCHED		
		AND (Origem.cur_situacao = 1 AND Origem.crp_situacao = 1 AND Origem.tcr_situacao = 1 AND Origem.tur_situacao = 1)
		THEN
		INSERT (tur_id, cur_id, tme_id, tne_id, crp_ordem, ttcr_situacao, esc_id)
		VALUES(Origem.tur_id, Origem.cur_id, Origem.tme_id, Origem.tne_id, Origem.crp_ordem, 1, Origem.esc_id);
    
    IF @@ERROR <> 0
    BEGIN
       PRINT 'Erro na integração de dados na tabela TUR_TurmaDocente'
       ROLLBACK
       RETURN
    END
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
	--- Inativa as atribuições de docentes para que não acessem as turmas de CIEJA e/ou EJA modular no SGP ----
	update GestaoPedagogica..TUR_TurmaDocente
	   set tdt_situacao = 3
	  from GestaoPedagogica..TUR_TurmaDocente
		   inner join GestaoPedagogica..TUR_TurmaRelTurmaDisciplina trel on trel.tud_id = TUR_TurmaDocente.tud_id
		   inner join GestaoPedagogica..TUR_Turma tur on tur.tur_id = trel.tur_id and tur.tur_situacao <> 3
		   inner join GestaoPedagogica..ACA_CalendarioAnual cal on cal.cal_id = tur.cal_id and cal.cal_ano = (select valor from Manutencao.._parametros where chave = 'ANO_BASE')
		   inner join GestaoPedagogica..TUR_TurmaCurriculo tcr on tcr.tur_id = tur.tur_id and tcr.tcr_situacao <> 3
		   inner join GestaoPedagogica..ACA_Curso curEJA 
				   on curEja.cur_id = tcr.cur_id and curEja.cur_situacao <> 3
				   --and cur_nome_abreviado in ('ENS MED TC', 'ENS MED MG','CIEJA', 'EJA MOD') --aguardando a publicação do EJA do SGP
				   and cur_nome_abreviado in ('ENS MED TC', 'ENS MED MG', 'CIEJA', 'EJA MOD', 'EJA', 'EJA ESP') --aguardando a publicação do EJA
     where tdt_situacao <> 3
       and not exists (select tcr2.tur_id
						 from GestaoPedagogica..TUR_TurmaCurriculo tcr2
							   inner join GestaoPedagogica..ACA_Curso cur2 
									   on cur2.cur_id = tcr2.cur_id 
									  --and cur2.cur_nome_abreviado in ('CIEJA', 'EJA MOD') --aguardando a publicação do EJA do SGP
									  and cur2.cur_nome_abreviado in ('CIEJA', 'EJA MOD', 'EJA', 'EJA ESP') --aguardando a publicação do EJA do SGP
									  and cur2.cur_situacao <> 3
						where tcr2.tur_id = tur.tur_id and tcr2.tcr_situacao <> 3
					  )
    
	-- Só pra garantir que não teremos ACA_CurriculoEscola para os cursos que são só do serap
	update GestaoPedagogica..ACA_CurriculoEscola set ces_situacao = 3, ces_dataAlteracao = GETDATE() where cur_id in (123,124) and ces_situacao <> 3
	
    COMMIT

    -- Cadastramento de usuários
    DECLARE @sis_id INT, @gru_idProfessor UNIQUEIDENTIFIER, @gru_idDiretor UNIQUEIDENTIFIER, @gru_idCoordenador UNIQUEIDENTIFIER, @gru_idAssistenteDiretor UNIQUEIDENTIFIER, @gru_idSupervisor UNIQUEIDENTIFIER
    DECLARE @TipoUAD table (tua_id UNIQUEIDENTIFIER)
    
	INSERT INTO @TipoUAD
	SELECT tua_id FROM CoreSSO..SYS_TipoUnidadeAdministrativa
	 WHERE tua_nome in ('Diretoria Regional de Educação','Escola')
    
    -- Temporária para armazenar os usuários
    CREATE TABLE #tmp_Usuario
     (usu_id UNIQUEIDENTIFIER,
      gru_id UNIQUEIDENTIFIER,
      uad_id UNIQUEIDENTIFIER)
    
    -- ID do sistema
    SELECT @sis_id = sis_id FROM CoreSSO..SYS_Sistema WITH (NOLOCK) WHERE sis_nome = 'SERAp'--204

	SELECT @gru_idProfessor = gru.gru_idUsadoIntegracao FROM DEPARA_GRUPOS_INTEGRACAO gru
     WHERE gru.nomeUsadoIntegracao = 'Professor' and gru.sis_id = @sis_id

	SELECT @gru_idCoordenador = gru.gru_idUsadoIntegracao FROM DEPARA_GRUPOS_INTEGRACAO gru
     WHERE gru.nomeUsadoIntegracao = 'Coordenador Pedagógico' and gru.sis_id = @sis_id

	SELECT @gru_idDiretor = gru.gru_idUsadoIntegracao FROM DEPARA_GRUPOS_INTEGRACAO gru
     WHERE gru.nomeUsadoIntegracao = 'Diretor Escolar' and gru.sis_id = @sis_id

	SELECT  @gru_idAssistenteDiretor = gru.gru_idUsadoIntegracao FROM DEPARA_GRUPOS_INTEGRACAO gru
     WHERE gru.nomeUsadoIntegracao='Assistente de Diretor na UE' and gru.sis_id = @sis_id
    
	SELECT @gru_idSupervisor = gru.gru_idUsadoIntegracao FROM DEPARA_GRUPOS_INTEGRACAO gru
	 WHERE gru.nomeUsadoIntegracao = 'Supervisão Escolar' and gru.sis_id = @sis_id

    IF @gru_idProfessor IS NOT NULL
    BEGIN
        -- insere na tmp_usuario
        INSERT INTO #tmp_Usuario (usu_id, gru_id, uad_id)
        SELECT usu.usu_id, serv.gru_id, uad.uad_id
          FROM (SELECT rf, cd_escola, @gru_idProfessor AS gru_id
                  FROM tmp_cadastro_professor prof WITH (NOLOCK)
                 where rf not in 
                       (select rf
                          from (select srv.cd_registro_funcional as rf, cb.lotacao as cd_escola
                                  from bd_prodam..v_servidor_mstech srv
                                       inner join bd_prodam..v_cargobase_mstech cb
                                       on srv.cd_registro_funcional = cb.cd_registro_funcional 
                                       inner join GestaoPedagogica..RHU_Cargo 
                                        on cb.cd_cargo = RHU_Cargo.crg_codigo
                                       and isnull(cb.cd_situacao_funcional,1) = RHU_Cargo.tvi_id
                                 where crg_situacao <> 3-- and crg_cargoDocente = 1
                                   and dc_cargo = 'COORDENADOR PEDAGOGICO') cp
                         where cp.rf = prof.rf
                           and cp.cd_escola = prof.cd_escola)
                   and rf in 
                       (select rf
                          from (select prf.rf, gc.cd_escola
                                  from BD_PRODAM..v_cadastro_professor prf
                                       inner join BD_PRODAM..v_grade_curricular gc
                                       on prf.rf = gc.rf
                                       inner join tmp_DiarioClasse_turma tm on tm.cd_turma_escola = gc.cd_turma_escola
												  and tm.cd_tipo_turma = 1
									   inner join DEPARA_SERIE dep on dep.cd_serie_ensino = tm.cd_serie_ensino
											  and ((dep.cur_id in (115,117,118) and dep.crp_ordem > 2) --EF (menos o de 4 horas) a partir do terceiro ano (a pedido do Hygor por email em 05/05/2016)
												    or (dep.cur_id in (39,40,41,42,119,120,121) and dep.crp_ordem in (2,4,6,8))) --EJA apenas algumas séries (a pedido do Hygor por email em 05/05/2016)
                                       inner join BD_PRODAM..v_unidade_educacao_dados_gerais esc
                                       on gc.cd_escola = esc.cd_unidade_educacao
                                 where esc. dc_tipo_unidade_educacao = 'ESCOLA' 
                                   and esc.sg_tp_escola in ('EMEF','EMEFM','CEU EMEF','EMEBS','CIEJA',
									 'EMEI','CECI','CEMEI','CEI DIRET', 'CCI/CIPS', 'CEI INDIR', 'CEU CEI', 'CEU EMEI', 'CR.P.CONV')
                                 group by prf.rf, gc.cd_escola) doc
                           where doc.rf = prof.rf
                             and doc.cd_escola = prof.cd_escola)
                 group by rf, cd_escola                         
                UNION ALL
                SELECT ds.cd_registro_funcional AS rf, cb.lotacao, @gru_idProfessor AS gru_id
                  FROM tmp_DiarioSupervisor_Servidor ds
                       inner join bd_prodam..v_cargobase_mstech cb
                       on ds.cd_registro_funcional = cb.cd_registro_funcional 
                       inner join GestaoPedagogica..RHU_Cargo 
                        on cb.cd_cargo = RHU_Cargo.crg_codigo
                       and isnull(cb.cd_situacao_funcional,1) = RHU_Cargo.tvi_id
                 where crg_situacao <> 3 and crg_cargoDocente = 1
                   and dc_cargo <> 'COORDENADOR PEDAGOGICO'
                   and ds.cd_registro_funcional not in
                       (select rf
                          from (select prf.rf, gc.cd_escola
                                  from BD_PRODAM..v_cadastro_professor prf
                                       inner join BD_PRODAM..v_grade_curricular gc
                                       on prf.rf = gc.rf
                                       inner join BD_PRODAM..v_unidade_educacao_dados_gerais esc
                                       on gc.cd_escola = esc.cd_unidade_educacao
                                 where esc. dc_tipo_unidade_educacao = 'ESCOLA' 
                                   and esc.sg_tp_escola not in ('EMEF','EMEFM','CEU EMEF','EMEBS','CIEJA',
									 'EMEI','CECI','CEMEI','CEI DIRET', 'CCI/CIPS', 'CEI INDIR', 'CEU CEI', 'CEU EMEI', 'CR.P.CONV')
                                 group by prf.rf, gc.cd_escola) prof
                         where prof.rf = ds.cd_registro_funcional
                           and prof.cd_escola = cb.lotacao)
                  group by ds.cd_registro_funcional, cb.lotacao
				 
				 UNION ALL

				 --Servidores que possuem cargo base de diretor ou coordenador pedagógio e não possuem cargo sobreposto
					SELECT DISTINCT
						crg.cd_registro_funcional rf ,
						CRG.lotacao,
						CASE crg.cd_cargo 
							WHEN 3360 THEN @gru_idDiretor 
							WHEN 3379 THEN @gru_idCoordenador
							WHEN 3085 THEN @gru_idAssistenteDiretor
							WHEN 3352 THEN @gru_idSupervisor
						END AS gru_id
					FROM tmp_cargobase_mstech crg WITH (NOLOCK)
						LEFT JOIN tmp_cargosobreposto_mstech cgs WITH (NOLOCK) ON crg.cd_cargo_base_servidor = cgs.cd_cargo_base_servidor
						inner join GestaoPedagogica..RHU_Cargo WITH (NOLOCK) on crg.cd_cargo = RHU_Cargo.crg_codigo and isnull(crg.cd_situacao_funcional,1) = RHU_Cargo.tvi_id
					WHERE 
						cgs.cd_cargo IS NULL
						AND RHU_Cargo.crg_situacao <> 3
						AND crg.cd_cargo IN (3360, 3379, 3085, 3352) -- Diretor, Coordenador, 3182 Secretário, 3085 Assistente de Diretor, 3352  Supervisor
						AND CRG.lotacao IS NOT NULL
					GROUP BY crg.cd_registro_funcional, crg.cd_cargo, CRG.lotacao

					UNION ALL

				--Servidores que passaram a ser coordenadores pedagógicos ou diretores através do cargo sobreposto
					SELECT DISTINCT
						crg.cd_registro_funcional rf ,
						crs.cd_unidade_local_servico lotacao,
						CASE crs.cd_cargo
							WHEN 3360 THEN @gru_idDiretor 
							WHEN 3379 THEN @gru_idCoordenador
							WHEN 3085 THEN @gru_idAssistenteDiretor
							WHEN 3352 THEN @gru_idSupervisor
							END AS gru_id
					FROM tmp_cargosobreposto_mstech crs WITH (NOLOCK)
						INNER JOIN tmp_cargobase_mstech crg WITH (NOLOCK) ON crs.cd_cargo_base_servidor = crg.cd_cargo_base_servidor
					WHERE 
						crs.cd_cargo IN (3360, 3379, 3085, 3352) -- Diretor, Coordenador, 3182 Secretário, 3085 Assistente de Diretor, 3352  Supervisor
					GROUP BY crs.cd_cargo_base_servidor,crg.cd_registro_funcional, crs.cd_cargo, crs.cd_unidade_local_servico
                 ) serv
               INNER JOIN CoreSSO..SYS_Usuario usu WITH (NOLOCK)
               ON serv.rf = usu.usu_login
               INNER JOIN CoreSSO..SYS_UnidadeAdministrativa uad WITH (NOLOCK)
               ON serv.cd_escola = uad.uad_codigo
               INNER JOIN @TipoUAD tua
               ON uad.tua_id = tua.tua_id
         GROUP BY usu_id, gru_id, uad_id
        
        -- Manutenção da tabela SSIS_LoginImportado
        MERGE SSIS_LoginImportado AS _target
        USING (SELECT usu.usu_id, usu.usu_login, tmp.gru_id, tmp.uad_id
                 FROM #tmp_Usuario tmp
                      INNER JOIN CoreSSO..SYS_Usuario usu WITH (NOLOCK)
                      ON tmp.usu_id = usu.usu_id
                GROUP BY usu.usu_id, usu.usu_login, tmp.gru_id, tmp.uad_id) AS _source
         ON  _source.usu_login = _target.ssi_login
            AND _source.gru_id = _target.gru_id
            AND _source.uad_id = _target.uad_id
            AND _source.usu_id = _target.usu_id
        WHEN NOT MATCHED THEN
    	     INSERT (usu_id, ssi_login, gru_id, uad_id, ssi_situacao)
	         VALUES (_source.usu_id, _source.usu_login, _source.gru_id, _source.uad_id, 1)
        WHEN MATCHED AND (_target.ssi_situacao = 3
                     AND _target.gru_id IN (@gru_idProfessor, @gru_idDiretor, @gru_idCoordenador, @gru_idAssistenteDiretor, @gru_idSupervisor)
                     AND _target.uad_id = _source.uad_id) THEN
             UPDATE SET ssi_situacao = 1,
                        ssi_dataAlteracao = GETDATE()
        WHEN NOT MATCHED BY SOURCE AND (_target.ssi_situacao = 1 AND _target.gru_id IN (@gru_idProfessor, @gru_idDiretor, @gru_idCoordenador, @gru_idAssistenteDiretor, @gru_idSupervisor)) THEN
	         UPDATE SET ssi_situacao = 3,
                        ssi_dataAlteracao = GETDATE();
        
        -- UsuarioGrupo    
        -- Deleta a relação UsuarioGrupo para os registros que estão na tmp de servidores importados automaticamente
        DELETE ug
          FROM CoreSSO..SYS_UsuarioGrupo ug
               INNER JOIN SSIS_LoginImportado lo
                ON ug.usu_id = lo.usu_id
               AND ug.gru_id = lo.gru_id
         WHERE lo.gru_id IN (@gru_idProfessor, @gru_idDiretor, @gru_idCoordenador, @gru_idAssistenteDiretor, @gru_idSupervisor)
           AND lo.ssi_situacao = 3
        
		----Remove os UsarioGrupo que não possuem mais acesso
		DELETE ug
			FROM CoreSSO..SYS_UsuarioGrupo ug
            WHERE 
				ug.gru_id IN (@gru_idProfessor, @gru_idDiretor, @gru_idCoordenador, @gru_idAssistenteDiretor, @gru_idSupervisor)
			and NOT EXISTS (SELECT usu_id, gru_id
                FROM #tmp_Usuario us WHERE us.usu_id = ug.usu_id and ug.gru_id = us.gru_id)
		
        MERGE CoreSSO..SYS_UsuarioGrupo AS _target
        USING (SELECT usu_id, gru_id
                 FROM #tmp_Usuario
                GROUP BY  usu_id, gru_id) AS _source
         ON  _source.usu_id = _target.usu_id
        AND _source.gru_id = _target.gru_id
        WHEN NOT MATCHED THEN
             INSERT (usu_id, gru_id, usg_situacao)
             VALUES (_source.usu_id, _source.gru_id, 1)
        WHEN MATCHED THEN
             UPDATE SET usg_situacao = 1;
        
        -- UsuarioGrupoUA
        -- Apaga a relação UsuarioGrupoUA para os registros que estão na tmp de servidores importados automaticamente
        DELETE ugu
          FROM CoreSSO..SYS_UsuarioGrupoUA ugu
               INNER JOIN SSIS_LoginImportado lo
                ON ugu.usu_id = lo.usu_id
               AND ugu.gru_id = lo.gru_id
               AND ugu.uad_id = lo.uad_id
         WHERE lo.gru_id IN (@gru_idProfessor, @gru_idDiretor, @gru_idCoordenador, @gru_idAssistenteDiretor, @gru_idSupervisor)
           AND lo.ssi_situacao = 3

		--Remove os UsarioGrupoUA que não possuem mais acesso
		DELETE ug
			FROM CoreSSO..SYS_UsuarioGrupoUA ug
            WHERE 
				ug.gru_id IN (@gru_idProfessor, @gru_idDiretor, @gru_idCoordenador, @gru_idAssistenteDiretor, @gru_idSupervisor)
			and NOT EXISTS (SELECT usu_id, gru_id
                FROM #tmp_Usuario us WHERE us.usu_id = ug.usu_id and us.gru_id = ug.gru_id and us.uad_id =  ug.uad_id)
        
        -- Atualiza a tabela SSIS_RFImportado para inativar os registros que foram deletados em UsuarioGrupo
        MERGE CoreSSO..SYS_UsuarioGrupoUA AS _target
        USING (SELECT usu_id, gru_id, uad_id
                 FROM #tmp_Usuario
                GROUP BY usu_id, gru_id, uad_id) AS _source
         ON  _source.usu_id = _target.usu_id
        AND _source.gru_id = _target.gru_id
        AND _source.uad_id = _target.uad_id
        WHEN NOT MATCHED THEN
             INSERT (usu_id, gru_id, ent_id, uad_id)
             VALUES (_source.usu_id, _source.gru_id, @ent_id, _source.uad_id);
    END
END

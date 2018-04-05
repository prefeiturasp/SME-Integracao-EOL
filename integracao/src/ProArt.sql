-- Sinonimos
/****** Object:  Synonym [dbo].[PROART_Coordenador]    Script Date: 07/23/2013 11:28:35 ******/
IF EXISTS ( SELECT  *
            FROM    sys.synonyms
            WHERE   name = N'PROART_Coordenador' ) 
    DROP SYNONYM [dbo].[PROART_Coordenador]
GO

/****** Object:  Synonym [dbo].[PROART_Coordenador]    Script Date: 07/23/2013 11:28:35 ******/
CREATE SYNONYM [dbo].[PROART_Coordenador] FOR [ProArt].[dbo].[Coordenador]
GO


-- Procedures
/****** Object:  StoredProcedure [dbo].[STP_ProArt_PES_Pessoa_Import]    Script Date: 07/25/2013 14:32:28 ******/
IF EXISTS ( SELECT  *
            FROM    sys.objects
            WHERE   object_id = OBJECT_ID(N'[dbo].[STP_ProArt_PES_Pessoa_Import]')
                    AND type IN ( N'P', N'PC' ) ) 
    DROP PROCEDURE [dbo].[STP_ProArt_PES_Pessoa_Import]
GO

/****** Object:  StoredProcedure [dbo].[STP_ProArt_Coordenador_Import]    Script Date: 07/25/2013 16:29:24 ******/
IF EXISTS ( SELECT  *
            FROM    sys.objects
            WHERE   object_id = OBJECT_ID(N'[dbo].[STP_ProArt_Coordenador_Import]')
                    AND type IN ( N'P', N'PC' ) ) 
    DROP PROCEDURE [dbo].[STP_ProArt_Coordenador_Import]
GO


/****** Object:  StoredProcedure [dbo].[STP_ProArt_PES_Pessoa_Import]    Script Date: 07/25/2013 14:32:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_ProArt_PES_Pessoa_Import]
AS 
BEGIN
    DECLARE @ent_id UNIQUEIDENTIFIER, @tdo_id UNIQUEIDENTIFIER, @sis_id INT, @gru_id UNIQUEIDENTIFIER
    
    -- Recupera a entidade
    SET @ent_id = (SELECT TOP 1 ent_id FROM SSO_SYS_Entidade WHERE ent_sigla = 'SMESP')
    
    -- Recupera o tipo de documento
    SET @tdo_id = (SELECT TOP 1 tdo_id FROM SSO_SYS_TipoDocumentacao WHERE tdo_sigla = 'CPF')
    
    -- Recupera o id do sistema
    SET @sis_id = (SELECT TOP 1 sis_id FROM SSO_SYS_Sistema WHERE sis_nome = 'ProArt')
    
    -- Recupera o grupo de coordenadores de CEU 
    SET @gru_id = (SELECT TOP 1 gru_id FROM SSO_SYS_Grupo WHERE sis_id = @sis_id AND gru_nome = 'Coordenadores dos CEUs')
    
    -- Tabelas auxiliares
    IF OBJECT_ID('tempdb..#pessoaDoc_Table') > 0
       DROP TABLE #pessoaDoc_Table
    
    CREATE TABLE #pessoaDoc_Table
      (pes_id           UNIQUEIDENTIFIER,
       pes_cpf          VARCHAR(50) COLLATE Latin1_General_CI_AS,
       pes_dataCriacao  datetime)
    
    IF OBJECT_ID('tempdb..#usuario_table') > 0 
       DROP TABLE #usuario_table
    
    CREATE TABLE #usuario_table
      (usu_id UNIQUEIDENTIFIER,
       usu_login VARCHAR(500))
    
    IF OBJECT_ID('tempdb..#tmp_Usuario') > 0
       DROP TABLE #tmp_Usuario
    
    CREATE TABLE #tmp_Usuario
     (usu_id UNIQUEIDENTIFIER,
      gru_id UNIQUEIDENTIFIER,
      uad_id UNIQUEIDENTIFIER)
    
    -- Tabela PES_Pessoa
    MERGE SSO_PES_PESSOA _target
    USING (SELECT nm_pessoa, cd_cpf_pessoa, dt_nascimento_pessoa,
                  CASE cd_sexo_pessoa WHEN 'M' THEN 1 WHEN 'F' THEN 2 ELSE NULL END pes_sexo
             FROM tmp_ProArt_servidor_mstech_CEU) AS _source
     ON _source.nm_pessoa = _target.pes_nome
    AND _source.cd_cpf_pessoa = _target.pes_nome_abreviado
    AND _source.dt_nascimento_pessoa = _target.pes_dataNascimento
    WHEN MATCHED THEN
         UPDATE SET pes_dataAlteracao = GETDATE()
    WHEN NOT MATCHED THEN
         INSERT (pes_nome, pes_nome_abreviado, pes_dataNascimento, pes_sexo, pes_situacao,
                 pes_dataCriacao, pes_dataAlteracao, pes_integridade)
         VALUES (_source.nm_pessoa, _source.cd_cpf_pessoa, _source.dt_nascimento_pessoa,
                 _source.pes_sexo, 1, GETDATE(), GETDATE(), 1)
    OUTPUT ISNULL(INSERTED.pes_id, DELETED.pes_id),
           ISNULL(INSERTED.pes_nome_abreviado, DELETED.pes_nome_abreviado),
           INSERTED.pes_dataCriacao
      INTO #pessoaDoc_Table;
    
    -- Apaga os registros duplicados e fica apenas com o de data de criação mais antiga
    delete from #pessoaDoc_Table
     where pes_id in (
    select pes_id
      from #pessoaDoc_Table
     where pes_cpf not in 
           (select pes_cpf from (select pes_cpf, MIN(pes_dataCriacao) pes_dataCriacao
                                   from #pessoaDoc_Table
                                  group by pes_cpf) menor
             where menor.pes_cpf = #pessoaDoc_Table.pes_cpf
               and menor.pes_dataCriacao = #pessoaDoc_Table.pes_dataCriacao))
    
    -- Tabela PES_PessoaDocumento	
    MERGE INTO SSO_PES_PessoaDocumento _target
    USING (SELECT pes_id, pes_cpf FROM #pessoaDoc_Table) AS _source
     ON _source.pes_id = _target.pes_id
    AND _target.tdo_id = @tdo_id
    WHEN MATCHED THEN
         UPDATE SET psd_dataAlteracao = GETDATE()
    WHEN NOT MATCHED THEN
         INSERT (pes_id, tdo_id, psd_numero, psd_situacao, psd_dataCriacao, psd_dataAlteracao)
         VALUES (_source.pes_id, @tdo_id, _source.pes_cpf, 1, GETDATE(), GETDATE());
    
    -- Importa usuário
    MERGE INTO SSO_SYS_Usuario _target
    USING (SELECT cd_registro_funcional usu_login, senha usu_senha, doc.pes_id
             FROM tmp_ProArt_servidor_mstech_CEU srv
                  INNER JOIN #pessoaDoc_Table doc ON srv.cd_cpf_pessoa = doc.pes_cpf) AS _source
     ON _source.usu_login = _target.usu_login
    WHEN NOT MATCHED THEN
         INSERT (usu_login, usu_senha, pes_id, ent_id, usu_situacao,
                 usu_criptografia, usu_dataCriacao, usu_dataAlteracao)
         VALUES ( _source.usu_login, _source.usu_senha, _source.pes_id, @ent_id, 1, -- Usuario ativo
                 3, GETDATE(), GETDATE())
    WHEN MATCHED THEN
	     UPDATE SET _target.usu_situacao = 1,
                    _target.usu_dataAlteracao = GETDATE()
    -- Importou usuário novo, inclui na tabela NewUsers                        
    OUTPUT INSERTED.usu_id, INSERTED.usu_login INTO #usuario_table;
    
    INSERT INTO SSO_NewUsers (usu_id, usu_login, usu_status_sinc)
    SELECT u.usu_id, u.usu_login, 1
      FROM #usuario_table u LEFT JOIN SSO_NewUsers n ON n.usu_login = u.usu_login
     WHERE n.usu_login IS NULL
    
    -- insere na tmp_usuario select * from #tmp_Usuario
    INSERT INTO #tmp_Usuario (usu_id, gru_id, uad_id)
    SELECT usu.usu_id, serv.gru_id, uad.uad_id
      FROM (-- Coordenador de CEU
            SELECT DISTINCT cd_registro_funcional rf, @gru_id gru_id, lotacao cd_escola
              FROM tmp_ProArt_servidor_mstech_CEU ceu WITH ( NOLOCK )) serv
           INNER JOIN SSO_SYS_Usuario usu WITH ( NOLOCK ) ON serv.rf = usu.usu_login
           INNER JOIN SSO_SYS_UnidadeAdministrativa uad WITH ( NOLOCK ) ON serv.cd_escola = uad.uad_codigo
     GROUP BY usu_id, gru_id, uad_id
    
    -- Manutenção da tabela SSIS_LoginImportado
    MERGE SSIS_LoginImportado AS _target
    USING (SELECT usu.usu_id, usu.usu_login, tmp.gru_id
             FROM #tmp_Usuario tmp WITH ( NOLOCK )
                  INNER JOIN SSO_SYS_Usuario usu WITH ( NOLOCK ) ON tmp.usu_id = usu.usu_id
            GROUP BY  usu.usu_id, usu.usu_login, tmp.gru_id) AS _source
     ON _source.usu_login = _target.ssi_login
    AND _source.gru_id = _target.gru_id
    WHEN NOT MATCHED THEN
	     INSERT (usu_id, ssi_login, gru_id, ssi_situacao)
	     VALUES (_source.usu_id, _source.usu_login, _source.gru_id, 1)
    WHEN MATCHED AND _target.ssi_situacao = 3 AND _target.gru_id = @gru_id THEN
	     UPDATE SET ssi_situacao = 1, ssi_dataAlteracao = GETDATE()
    WHEN NOT MATCHED BY SOURCE AND _target.ssi_situacao = 1 AND _target.gru_id = @gru_id THEN
	     UPDATE SET ssi_situacao = 3, ssi_dataAlteracao = GETDATE();
    
    -- Importa UsuarioGrupo    
    -- Deleta a relação UsuarioGrupo para os registros que estão na tmp de servidores importados automaticamente
    DELETE ug FROM SSO_SYS_UsuarioGrupo ug INNER JOIN SSIS_LoginImportado lo
                    ON ug.usu_id = lo.usu_id
                   AND ug.gru_id = lo.gru_id
     WHERE lo.ssi_situacao = 3
    
    MERGE SSO_SYS_UsuarioGrupo AS _target
    USING (SELECT usu_id, gru_id
             FROM #tmp_Usuario
            GROUP BY  usu_id,gru_id) AS _source
     ON _source.usu_id = _target.usu_id
    AND _source.gru_id = _target.gru_id
    WHEN NOT MATCHED THEN
         INSERT (usu_id, gru_id, usg_situacao)
         VALUES (_source.usu_id, _source.gru_id, 1)
    WHEN MATCHED THEN
         UPDATE SET usg_situacao = 1;
    
    -- UsuarioGrupoUA
    -- Deleta a relação UsuarioGrupoUA para os registros que estão na tmp de servidores importados automaticamente
    DELETE ugu FROM SSO_SYS_UsuarioGrupoUA ugu INNER JOIN SSIS_LoginImportado lo
                     ON ugu.usu_id = lo.usu_id
                    AND ugu.gru_id = lo.gru_id
     WHERE lo.ssi_situacao = 3
    
    -- Atualiza a tabela SSIS_RFImportado para inativar os registros que foram deletados em UsuarioGrupo
    MERGE SSO_SYS_UsuarioGrupoUA AS _target
    USING (SELECT usu_id, gru_id, uad_id
             FROM #tmp_Usuario
            GROUP BY  usu_id, gru_id, uad_id) AS _source
     ON _source.usu_id = _target.usu_id
    AND _source.gru_id = _target.gru_id
    WHEN NOT MATCHED THEN
         INSERT (usu_id, gru_id, ent_id, uad_id)
         VALUES (_source.usu_id, _source.gru_id, @ent_id, _source.uad_id);       
END
GO


/****** Object:  StoredProcedure [dbo].[STP_ProArt_Coordenador_Import]    Script Date: 07/25/2013 16:29:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_ProArt_Coordenador_Import]
AS 
    BEGIN
        MERGE PROART_Coordenador _target
            USING 
                ( SELECT    usu.pes_id ,
                            uad.uad_id ,
                            cd_registro_funcional + '@prefeitura.sp.gov.br' coo_email
                  FROM      tmp_ProArt_servidor_mstech_CEU ceu WITH ( NOLOCK )
                            INNER JOIN SSO_SYS_Usuario usu WITH ( NOLOCK ) ON ceu.cd_registro_funcional = usu.usu_login
                            INNER JOIN SSO_SYS_UnidadeAdministrativa uad WITH ( NOLOCK ) ON ceu.lotacao = uad.uad_codigo
                  GROUP BY  usu.pes_id ,
                            uad.uad_id ,
                            cd_registro_funcional
                ) AS _source
            -- Dessa maneira assume-se que haverá apenas 1 coordenador por CEU, atualizando apenas a pessoa (coordenador)
            -- quando a uad (CEU) já existir
            ON ( _target.uad_id = _source.uad_id )
            WHEN MATCHED 
                THEN
            UPDATE  SET
                    pes_id = _source.pes_id ,
                    coo_email = _source.coo_email
            WHEN NOT MATCHED 
                THEN
		INSERT  (
                      pes_id ,
                      uad_id ,
                      coo_email
                    )
                    VALUES
                    ( _source.pes_id ,
                      _source.uad_id ,
                      _source.coo_email
                    ) ;
		
    END


GO


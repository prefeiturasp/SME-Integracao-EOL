/****** Object:  StoredProcedure [dbo].[STP_SMESP_CREATE_SINONIMO]    Script Date: 08/10/2012 17:07:39 ******/
IF EXISTS ( SELECT  *
            FROM    sys.objects
            WHERE   object_id = OBJECT_ID(N'[dbo].[STP_SMESP_CREATE_SINONIMO]')
                    AND type IN ( N'P', N'PC' ) ) 
    DROP PROCEDURE [dbo].[STP_SMESP_CREATE_SINONIMO]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_SMESP_CREATE_SINONIMO]
    @bdCoreSSO AS VARCHAR(100) ,
    @bdPortalInstitucional AS VARCHAR(100)
AS 
    BEGIN
        IF @bdCoreSSO IS NULL 
            SET @bdCoreSSO = 'CoreSSO'
        
        IF @bdPortalInstitucional IS NULL 
            SET @bdPortalInstitucional = 'PortalInstitucional'
	 
        DECLARE @SQL AS VARCHAR(MAX)
	
        IF EXISTS ( SELECT  *
                    FROM    sys.synonyms
                    WHERE   name = N'SSO_SYS_UsuarioGrupo' ) 
            DROP SYNONYM [dbo].[SSO_SYS_UsuarioGrupo]
	
        IF EXISTS ( SELECT  *
                    FROM    sys.synonyms
                    WHERE   name = N'SSO_SYS_Usuario' ) 
            DROP SYNONYM [dbo].[SSO_SYS_Usuario]
	
        IF EXISTS ( SELECT  *
                    FROM    sys.synonyms
                    WHERE   name = N'SSO_NewUsers' ) 
            DROP SYNONYM [dbo].[SSO_NewUsers]
	
        IF EXISTS ( SELECT  *
                    FROM    sys.synonyms
                    WHERE   name = N'SSO_SYS_SistemaEntidade' ) 
            DROP SYNONYM [dbo].[SSO_SYS_SistemaEntidade]
	
        IF EXISTS ( SELECT  *
                    FROM    sys.synonyms
                    WHERE   name = N'SSO_SYS_Sistema' ) 
            DROP SYNONYM [dbo].[SSO_SYS_Sistema]
	
        IF EXISTS ( SELECT  *
                    FROM    sys.synonyms
                    WHERE   name = N'SSO_SYS_Grupo' ) 
            DROP SYNONYM [dbo].[SSO_SYS_Grupo]
	
        IF EXISTS ( SELECT  *
                    FROM    sys.synonyms
                    WHERE   name = N'SSO_END_Cidade' ) 
            DROP SYNONYM [dbo].[SSO_END_Cidade]
	
        IF EXISTS ( SELECT  *
                    FROM    sys.synonyms
                    WHERE   name = N'SSO_END_Endereco' ) 
            DROP SYNONYM [dbo].[SSO_END_Endereco]
	
        IF EXISTS ( SELECT  *
                    FROM    sys.synonyms
                    WHERE   name = N'SSO_END_Pais' ) 
            DROP SYNONYM [dbo].[SSO_END_Pais]	
	
        IF EXISTS ( SELECT  *
                    FROM    sys.synonyms
                    WHERE   name = N'SSO_END_UnidadeFederativa' ) 
            DROP SYNONYM [dbo].[SSO_END_UnidadeFederativa]
	
        IF EXISTS ( SELECT  *
                    FROM    sys.synonyms
                    WHERE   name = N'SSO_PES_Pessoa' ) 
            DROP SYNONYM [dbo].[SSO_PES_Pessoa]
	
        IF EXISTS ( SELECT  *
                    FROM    sys.synonyms
                    WHERE   name = N'SSO_PES_PessoaDocumento' ) 
            DROP SYNONYM [dbo].[SSO_PES_PessoaDocumento]
	
        IF EXISTS ( SELECT  *
                    FROM    sys.synonyms
                    WHERE   name = N'SSO_SYS_Entidade' ) 
            DROP SYNONYM [dbo].[SSO_SYS_Entidade]
	
        IF EXISTS ( SELECT  *
                    FROM    sys.synonyms
                    WHERE   name = N'SSO_SYS_TipoEntidade' ) 
            DROP SYNONYM [dbo].[SSO_SYS_TipoEntidade]
	
        IF EXISTS ( SELECT  *
                    FROM    sys.synonyms
                    WHERE   name = N'SSO_SYS_TipoDocumentacao' ) 
            DROP SYNONYM [dbo].[SSO_SYS_TipoDocumentacao]
	
        IF EXISTS ( SELECT  *
                    FROM    sys.synonyms
                    WHERE   name = N'SSO_SYS_TipoUnidadeAdministrativa' ) 
            DROP SYNONYM [dbo].[SSO_SYS_TipoUnidadeAdministrativa]
	
        IF EXISTS ( SELECT  *
                    FROM    sys.synonyms
                    WHERE   name = N'SSO_SYS_UnidadeAdministrativa' ) 
            DROP SYNONYM [dbo].[SSO_SYS_UnidadeAdministrativa]
	
        IF EXISTS ( SELECT  *
                    FROM    sys.synonyms
                    WHERE   name = N'SSO_SYS_UnidadeAdministrativaEndereco' ) 
            DROP SYNONYM [dbo].[SSO_SYS_UnidadeAdministrativaEndereco]
	
        IF EXISTS ( SELECT  *
                    FROM    sys.synonyms
                    WHERE   name = N'SSO_LOG_Erros' ) 
            DROP SYNONYM [dbo].[SSO_LOG_Erros]
	
        IF EXISTS ( SELECT  *
                    FROM    sys.synonyms
                    WHERE   name = N'PI_AdministrativeUnitType' ) 
            DROP SYNONYM [dbo].[PI_AdministrativeUnitType]
	
        IF EXISTS ( SELECT  *
                    FROM    sys.synonyms
                    WHERE   name = N'PI_School' ) 
            DROP SYNONYM [dbo].[PI_School]
	
        IF EXISTS ( SELECT  *
                    FROM    sys.synonyms
                    WHERE   name = N'PI_AdministrativeUnitInfo' ) 
            DROP SYNONYM [dbo].[PI_AdministrativeUnitInfo]
	
        SET @SQL = 'CREATE SYNONYM [dbo].[SSO_SYS_UsuarioGrupo] FOR ['
            + @bdCoreSSO + '].[dbo].[SYS_UsuarioGrupo]
				CREATE SYNONYM [dbo].[SSO_SYS_Usuario] FOR ['
            + @bdCoreSSO + '].[dbo].[SYS_Usuario]
				CREATE SYNONYM [dbo].[SSO_NewUsers] FOR ['
            + @bdCoreSSO + '].[dbo].[NewUsers]
				CREATE SYNONYM [dbo].[SSO_SYS_SistemaEntidade] FOR ['
            + @bdCoreSSO + '].[dbo].[SYS_SistemaEntidade]
				CREATE SYNONYM [dbo].[SSO_SYS_Sistema] FOR ['
            + @bdCoreSSO + '].[dbo].[SYS_Sistema]
				CREATE SYNONYM [dbo].[SSO_SYS_Grupo] FOR ['
            + @bdCoreSSO + '].[dbo].[SYS_Grupo]
				CREATE SYNONYM [dbo].[SSO_END_Cidade] FOR ['
            + @bdCoreSSO + '].[dbo].[END_Cidade]
				CREATE SYNONYM [dbo].[SSO_END_Endereco] FOR ['
            + @bdCoreSSO + '].[dbo].[END_Endereco]
				CREATE SYNONYM [dbo].[SSO_END_Pais] FOR ['
            + @bdCoreSSO
            + '].[dbo].[END_Pais]
				CREATE SYNONYM [dbo].[SSO_END_UnidadeFederativa] FOR ['
            + @bdCoreSSO + '].[dbo].[END_UnidadeFederativa]
				CREATE SYNONYM [dbo].[SSO_PES_Pessoa] FOR ['
            + @bdCoreSSO + '].[dbo].[PES_Pessoa]
				CREATE SYNONYM [dbo].[SSO_PES_PessoaDocumento] FOR ['
            + @bdCoreSSO + '].[dbo].[PES_PessoaDocumento]
				CREATE SYNONYM [dbo].[SSO_SYS_Entidade] FOR ['
            + @bdCoreSSO + '].[dbo].[SYS_Entidade]
				CREATE SYNONYM [dbo].[SSO_SYS_TipoEntidade] FOR ['
            + @bdCoreSSO + '].[dbo].[SYS_TipoEntidade]
				CREATE SYNONYM [dbo].[SSO_SYS_TipoDocumentacao] FOR ['
            + @bdCoreSSO
            + '].[dbo].[SYS_TipoDocumentacao]
				CREATE SYNONYM [dbo].[SSO_SYS_TipoUnidadeAdministrativa] FOR ['
            + @bdCoreSSO
            + '].[dbo].[SYS_TipoUnidadeAdministrativa]
				CREATE SYNONYM [dbo].[SSO_SYS_UnidadeAdministrativa] FOR ['
            + @bdCoreSSO
            + '].[dbo].[SYS_UnidadeAdministrativa]
				CREATE SYNONYM [dbo].[SSO_SYS_UnidadeAdministrativaEndereco] FOR ['
            + @bdCoreSSO
            + '].[dbo].[SYS_UnidadeAdministrativaEndereco]
				CREATE SYNONYM [dbo].[PI_AdministrativeUnitType] FOR ['
            + @bdPortalInstitucional
            + '].[dbo].[AdministrativeUnitType]
				CREATE SYNONYM [dbo].[PI_AdministrativeUnitInfo] FOR ['
            + @bdPortalInstitucional + '].[dbo].[AdministrativeUnitInfo]
				CREATE SYNONYM [dbo].[PI_School] FOR ['
            + @bdPortalInstitucional + '].[dbo].[School]'
				
        EXEC(@SQL)
    END
GO
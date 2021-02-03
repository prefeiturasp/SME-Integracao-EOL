USE [Manutencao]
GO
/****** Object:  StoredProcedure [dbo].[STP_SMESP_Aluno_DadosCadastrais]    Script Date: 20/01/2021 18:49:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[STP_SMESP_Aluno_DadosCadastrais]
AS 
BEGIN
    DECLARE @SourceID UNIQUEIDENTIFIER, @PackageLogID INT
    SELECT @PackageLogID = MAX(PackageLogID) FROM PackageLog
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Alunos - Inicio do Processo', @SourceID, getdate())

    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    --SET XACT_ABORT ON
    --BEGIN TRAN
    
	SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Carregas variáveis e cria tabelas temporárias', @SourceID, getdate())
    
    DECLARE @ent_id UNIQUEIDENTIFIER, @gru_id UNIQUEIDENTIFIER, @gru_id_resp UNIQUEIDENTIFIER,
            @sis_idManutencao INT, @gru_idManutencao UNIQUEIDENTIFIER,
            @tdo_id_cpf UNIQUEIDENTIFIER, @tdo_id_rg UNIQUEIDENTIFIER,
            @pes_id_null UNIQUEIDENTIFIER = NULL, @gru_idBoletim UNIQUEIDENTIFIER,
            @gru_idAluno UNIQUEIDENTIFIER, @gru_idAlunoSerap UNIQUEIDENTIFIER, @gru_idResponsavel UNIQUEIDENTIFIER
    
    -- Armazena nas variáveis os tipos de documentação pra CPF e RG
    select @tdo_id_cpf = tdo_id from SSO_SYS_TipoDocumentacao where tdo_sigla = 'CPF'
    select @tdo_id_rg = tdo_id from SSO_SYS_TipoDocumentacao where tdo_sigla = 'RG'
    
    -- Seleciona a entidade ( 6CF424DC-8EC3-E011-9B36-00155D033206 ) 
    SELECT @ent_id = ent_id FROM SSO_SYS_Entidade WHERE ent_sigla = 'SMESP'
    
    -- Id do sistema de Manutenção
    SELECT @sis_idManutencao = sis_id FROM SSO_SYS_Sistema WHERE sis_nome = 'Manutenção'
    
    -- ID do Grupo Manutenção
	SELECT @gru_idManutencao = gru_idUsadoIntegracao FROM DEPARA_GRUPOS_INTEGRACAO 
     WHERE nomeUsadoIntegracao = 'Grupo Manutenção' and sis_id = @sis_idManutencao
    
    -- ID do Grupo Boletim Online
	SELECT @gru_idBoletim = gru_idUsadoIntegracao FROM DEPARA_GRUPOS_INTEGRACAO 
     WHERE nomeUsadoIntegracao = 'Boletim Online' and sis_id = 174
	
    -- ID do Grupo de alunos no boletimEscolar
	SELECT @gru_idAluno = gru_idUsadoIntegracao FROM DEPARA_GRUPOS_INTEGRACAO 
     WHERE nomeUsadoIntegracao = 'Aluno' and sis_id = 174
	
	-- ID do Grupo de alunos no serap
	SELECT @gru_idAlunoSerap = gru_idUsadoIntegracao FROM DEPARA_GRUPOS_INTEGRACAO 
     WHERE nomeUsadoIntegracao = 'Aluno' and sis_id = 204

    -- ID do Grupo de REsponsáveis
	SELECT @gru_idResponsavel = gru_idUsadoIntegracao FROM DEPARA_GRUPOS_INTEGRACAO 
     WHERE nomeUsadoIntegracao = 'Responsável' and sis_id = 174

    DECLARE @UsuarioTable TABLE
      (usu_id    UNIQUEIDENTIFIER,
       usu_login VARCHAR(500) COLLATE Latin1_General_CI_AS)
    
    -- Insere na tabela temporária os usuários que não poderão ser excluídos,
    -- pois esses não foram incluídos pela importação.
    INSERT INTO @UsuarioTable (usu_id, usu_login)
    SELECT usu.usu_id, usu.usu_login
      FROM SSO_SYS_Usuario usu
           INNER JOIN SSO_SYS_UsuarioGrupo usg ON usu.usu_id = usg.usu_id
           INNER JOIN SSO_SYS_Grupo gru ON usg.gru_id = gru.gru_id
     WHERE gru.sis_id = @sis_idManutencao
       AND usg.gru_id = @gru_idManutencao
    
    -- Seleciona o grupo do ALUNO	
    SELECT @gru_id = gru_idUsadoIntegracao FROM DEPARA_GRUPOS_INTEGRACAO 
     WHERE nomeUsadoIntegracao = 'Aluno' and sis_id = 46
	 
    -- Seleciona o grupo do RESPONSAVEL
	SELECT @gru_id_resp = gru_idUsadoIntegracao FROM DEPARA_GRUPOS_INTEGRACAO 
     WHERE nomeUsadoIntegracao = 'Responsável' and sis_id = 46
    
    -- Cria tabela temporária de output de RESPONSÁVEL.      
    IF OBJECT_ID('tempdb..#resp_table') > 0 
       DROP TABLE #resp_table
    
    CREATE TABLE #resp_table
      (cpf      VARCHAR(50),
       pes_id   UNIQUEIDENTIFIER,
       pes_nome VARCHAR(200),
       tipo     INT,
       tdo_id   UNIQUEIDENTIFIER)
    
    -- Cria tabela temporária de output de ALUNOS.  
    IF OBJECT_ID('tempdb..#aluno_table') > 0 
       DROP TABLE #aluno_table
    
    CREATE TABLE #aluno_table
      (pes_id        UNIQUEIDENTIFIER ,
       alu_matricula VARCHAR(50))
    
    -- Cria tabela temporária de output de ALUNOS no BlueCore.  
    IF OBJECT_ID('tempdb..#aluno_table_bc') > 0 
       DROP TABLE #aluno_table_bc
    
    CREATE TABLE #aluno_table_bc
      (pes_id        UNIQUEIDENTIFIER ,
       alu_matricula VARCHAR(50))	
    
    -- Cria tabela temporária de output de usuários de ALUNOS.
    IF OBJECT_ID('tempdb..#usuario_table') > 0 
       DROP TABLE #usuario_table
    
    CREATE TABLE #usuario_table
      (usu_id        UNIQUEIDENTIFIER,
       pes_id        UNIQUEIDENTIFIER,
       alu_matricula VARCHAR(50))
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Acertar Responsável que está com duplicidades de CPF', @SourceID, getdate())

		--Ações possíveis:
			--CPF_INVALIDO_CORRIGIR_NA_FONTE são quando todos os digitos do CPF estão com o mesmo digito, 
				--exemplo '99999999999', existem registros assim nas duas tabelas
			-- MESMA_PESSOA_USAR_NOME_DO_SERVIDOR: vou utilizar o nome do servidor ao invés do nome do responsável
			-- PESSOAS_DIFERENTES_NAO_IMPORTAR_RESPONSAVEL: vou limpar os campos de responsável e não importar até que seja acertado e não caia mais nessa categoria. Importante, essa categoria só é cadastrada pela importação
			-- PROVAVELMENTE_JA_ACERTADO_NA_FONTE: não vem mais na consulta de duplicidades
			-- ANALISAR: casos novos com nota abaixo de 98 e portanto precisam ser analisados pra ver em qual categoria se encaixam. Enquanto isso os responsáveis também serão ignorados.
		
		CREATE TABLE #DUPLICIDADES_CPF (cd_cpf_pessoa varchar(20), servidor varchar(200), responsavel varchar(200), rf varchar(10))
		INSERT INTO #DUPLICIDADES_CPF (cd_cpf_pessoa, servidor, responsavel, rf)
		SELECT sm.cd_cpf_pessoa, sm.nm_pessoa as Servidor, atm.nome_responsavel as Responsável, sm.cd_registro_funcional
		  FROM (SELECT nome_Responsavel, codigo_cpf_responsavel
				  FROM BD_PRODAM..v_alunos_da_turma_MSTECH --where codigo_cpf_responsavel = 10413361870
				 GROUP BY nome_Responsavel, codigo_cpf_responsavel) atm
			   INNER JOIN (SELECT cd_registro_funcional, nm_pessoa, dt_nascimento_pessoa, cd_sexo_pessoa, cd_cpf_pessoa
							 FROM BD_PRODAM..v_servidor_mstech 
							GROUP BY cd_registro_funcional, nm_pessoa, dt_nascimento_pessoa, cd_sexo_pessoa, cd_cpf_pessoa) sm 
					   ON sm.cd_cpf_pessoa = CAST(atm.codigo_cpf_responsavel AS VARCHAR(20))
					  AND sm.nm_pessoa <> atm.nome_responsavel 
			   INNER JOIN CoreSSO..SYS_Usuario usu 
					   ON usu.usu_login = sm.cd_registro_funcional AND usu.usu_situacao <> 3 
		ORDER BY 1,2

		--limpa da tabela do manutencao se o nome do responsável hoje, está diferente do nome que estava quando foi inserido
		--fazendo isso pois nesse caso, ou ele precisa ser inserido novamente no insert abaixo, ou já foi corrigido
		DELETE
		  FROM DUPLICIDADES_CPF_BDPRODAM
		 WHERE acao <> 'CPF_INVALIDO_CORRIGIR_NA_FONTE' 
		   AND NOT EXISTS (SELECT tmp.codigo_cpf_responsavel FROM tmp_DiarioClasse_aluno tmp 
							WHERE DUPLICIDADES_CPF_BDPRODAM.CPF = tmp.codigo_cpf_responsavel 
							  AND tmp.nome_responsavel = DUPLICIDADES_CPF_BDPRODAM.nomeResponsavel)

		--limpa da tabela do manutencao se o nome do servidor hoje, está diferente do nome que estava quando foi inserido
		--fazendo isso pois nesse caso, ou ele precisa ser inserido novamente no insert abaixo, ou já foi corrigido
		DELETE
		  FROM DUPLICIDADES_CPF_BDPRODAM
		 WHERE acao <> 'CPF_INVALIDO_CORRIGIR_NA_FONTE' 
		   AND NOT EXISTS (SELECT serv.cd_cpf_pessoa FROM BD_PRODAM..v_servidor_mstech serv
							WHERE DUPLICIDADES_CPF_BDPRODAM.CPF = serv.cd_cpf_pessoa 
							  AND serv.nm_pessoa = DUPLICIDADES_CPF_BDPRODAM.nomeServidor)

							  
		-- para duplicidades com nota acima de 98, iremos considerar que é a mesma pessoa, vou utilizar o nome do servidor ao invés do nome do responsável
		INSERT INTO DUPLICIDADES_CPF_BDPRODAM (CPF, nomeServidor, nomeResponsavel, rf, scoreFuzy, acao, dataPrimeiraAparicao, dataAlteracao)
		SELECT cd_cpf_pessoa as CPF, servidor as nomeServidor, responsavel as nomeResponsavel, 
			   rf, score as scoreFuzy, 'MESMA_PESSOA_USAR_NOME_DO_SERVIDOR' as acao, GETDATE(), GETDATE()
		  FROM #DUPLICIDADES_CPF AS c
			   CROSS APPLY [dbo].[ComparaStrings_FuzySearch](c.responsavel, c.servidor) AS f
		 WHERE f.score >= 98
		   AND NOT EXISTS (select * from Manutencao..DUPLICIDADES_CPF_BDPRODAM d where d.CPF = c.cd_cpf_pessoa)
		 ORDER BY score DESC

		--acertando para os casos que estavam abaixo de 98 e agora estão acima de 98
		--teoricamente não é pra ter nenhum caso, mas deixo o código aqui para casos que forem acertados na mão, ou alteração do nome do servidor, ou algo assim
		UPDATE DUPLICIDADES_CPF_BDPRODAM 
		   SET acao = 'MESMA_PESSOA_USAR_NOME_DO_SERVIDOR', dataAlteracao = GETDATE()
		  FROM DUPLICIDADES_CPF_BDPRODAM
			   INNER JOIN #DUPLICIDADES_CPF on #DUPLICIDADES_CPF.cd_cpf_pessoa = DUPLICIDADES_CPF_BDPRODAM.CPF
			   CROSS APPLY [dbo].[ComparaStrings_FuzySearch](#DUPLICIDADES_CPF.responsavel, #DUPLICIDADES_CPF.servidor) AS f
		 WHERE f.Score >= 98 AND acao <> 'MESMA_PESSOA_USAR_NOME_DO_SERVIDOR' 
		   AND DUPLICIDADES_CPF_BDPRODAM.CPF NOT IN (SELECT CPF FROM DUPLICIDADES_CPF_BDPRODAM_EXCECOES_ACIMA_98)
		 
		 -- para duplicidades com nota abaixo de 98, precisa ser analisado por uma pessoa, para ver se é a mesma pessoa ou não
		INSERT INTO DUPLICIDADES_CPF_BDPRODAM (CPF, nomeServidor, nomeResponsavel, rf, scoreFuzy, acao, dataPrimeiraAparicao, dataAlteracao)
		SELECT cd_cpf_pessoa as CPF, servidor as nomeServidor, responsavel as nomeResponsavel, 
			   rf, score as scoreFuzy, 'ANALISAR' as acao, GETDATE(), GETDATE()
		  FROM #DUPLICIDADES_CPF AS c
			   CROSS APPLY [dbo].[ComparaStrings_FuzySearch](c.responsavel, c.servidor) AS f
		 WHERE f.score < 98
		   AND NOT EXISTS (select * from Manutencao..DUPLICIDADES_CPF_BDPRODAM d where d.CPF = c.cd_cpf_pessoa)
		 ORDER BY score DESC
		
		UPDATE DUPLICIDADES_CPF_BDPRODAM 
		   SET acao = 'CPF_INVALIDO_CORRIGIR_NA_FONTE'
		 WHERE CPF IN ('00000000000','11111111111','22222222222','33333333333','44444444444',
					   '55555555555','66666666666','77777777777','88888888888','99999999999')
		
		UPDATE DUPLICIDADES_CPF_BDPRODAM
		   SET acao = 'PESSOAS_DIFERENTES_NAO_IMPORTAR_RESPONSAVEL'
		 WHERE CPF IN (SELECT CPF FROM DUPLICIDADES_CPF_BDPRODAM_EXCECOES_ACIMA_98)
 
		UPDATE DUPLICIDADES_CPF_BDPRODAM 
		   SET acao = 'PROVAVELMENTE_JA_ACERTADO_NA_FONTE', dataAlteracao = GETDATE()
		  FROM DUPLICIDADES_CPF_BDPRODAM
		 WHERE NOT EXISTS (SELECT * FROM #DUPLICIDADES_CPF WHERE #DUPLICIDADES_CPF.cd_cpf_pessoa = DUPLICIDADES_CPF_BDPRODAM.CPF)
		   AND acao <> 'PROVAVELMENTE_JA_ACERTADO_NA_FONTE'
		 
		CREATE TABLE #PES_ID_RESPONSAVEL_DUPLICADO (CPF varchar(20), pes_id uniqueidentifier)
		insert into #PES_ID_RESPONSAVEL_DUPLICADO
		select psd_numero as CPF, pes_id 
		  from (select psd_numero, psd.pes_id, usu.usu_login, d.nomeServidor, pes.pes_nome,
					   row_number() over(partition by psd_numero order by usu_login desc, psd.pes_id) as linha
				  from CoreSSO..PES_PessoaDocumento psd 
					   inner join CoreSSO..PES_Pessoa pes on pes.pes_id = psd.pes_id
					   inner join DUPLICIDADES_CPF_BDPRODAM d on d.CPF = psd.psd_numero and d.nomeServidor = pes.pes_nome
					   left join CoreSSO..SYS_Usuario usu on usu.usu_login = d.rf and usu.pes_id = psd.pes_id and usu.usu_situacao <> 3
				 where psd_situacao <> 3 and psd.tdo_id = '2CEEED03-63EB-E011-9B36-00155D033206'
				   and acao = 'MESMA_PESSOA_USAR_NOME_DO_SERVIDOR'
			   ) tab 
		 where tab.linha = 1
		 
		----------------------------------INICIO ACERTA RESPONSAVEL DUPLICADO MÃE----------------------------------------------
		-- altera o nome da mae nos dois lugares quando ela é a responsável para usar o nome do servidor
		update pes set pes_idFiliacaoMae = pesDupl.pes_id
		  from CoreSSO..PES_Pessoa pes
			   inner join IMP_alunos_pais tmp on tmp.pes_id = pes.pes_id
			   inner join DUPLICIDADES_CPF_BDPRODAM d on d.CPF = tmp.codigo_cpf_responsavel
													 and d.nomeResponsavel = tmp.nome_responsavel
			   left join #PES_ID_RESPONSAVEL_DUPLICADO pesDupl on pesDupl.CPF = d.CPF
		 where acao = 'MESMA_PESSOA_USAR_NOME_DO_SERVIDOR'
		   and tipo_responsavel = 1 

		update tmp 
		   set nome_responsavel = d.nomeServidor, alu_mae = d.nomeServidor
		  from tmp_DiarioClasse_aluno tmp 
			   inner join DUPLICIDADES_CPF_BDPRODAM d on d.CPF = tmp.codigo_cpf_responsavel
													 and d.nomeResponsavel = tmp.nome_responsavel
		 where acao = 'MESMA_PESSOA_USAR_NOME_DO_SERVIDOR'
		   and tipo_responsavel = 1 

		-- altera o nome da mae nos dois lugares quando ela é a responsável para usar o nome do servidor
		update tmp 
		   set nome_responsavel = d.nomeServidor, alu_mae = d.nomeServidor
		--select distinct alu_codigo, d.nomeServidor, d.nomeResponsavel, d.CPF, pes.pes_id
		  from IMP_alunos_pais tmp --1174
			   inner join DUPLICIDADES_CPF_BDPRODAM d on d.CPF = tmp.codigo_cpf_responsavel
													 and d.nomeResponsavel = tmp.nome_responsavel
		 where acao = 'MESMA_PESSOA_USAR_NOME_DO_SERVIDOR'
		   and tipo_responsavel = 1 
	----------------------------------INICIO ACERTA RESPONSAVEL DUPLICADO MÃE----------------------------------------------
	----------------------------------INICIO ACERTA RESPONSAVEL DUPLICADO PAI----------------------------------------------
		-- altera o nome do pai nos dois lugares quando ele é o responsável para usar o nome do servidor
		update pes set pes_idFiliacaoPai = pesDupl.pes_id
		  from CoreSSO..PES_Pessoa pes
			   inner join IMP_alunos_pais tmp on tmp.pes_id = pes.pes_id
			   inner join DUPLICIDADES_CPF_BDPRODAM d on d.CPF = tmp.codigo_cpf_responsavel
													 and d.nomeResponsavel = tmp.nome_responsavel
			   left join #PES_ID_RESPONSAVEL_DUPLICADO pesDupl on pesDupl.CPF = d.CPF
		 where acao = 'MESMA_PESSOA_USAR_NOME_DO_SERVIDOR'
		   and tipo_responsavel = 2 

		update tmp 
		   set nome_responsavel = d.nomeServidor, alu_pai = d.nomeServidor
		  from tmp_DiarioClasse_aluno tmp 
			   inner join DUPLICIDADES_CPF_BDPRODAM d on d.CPF = tmp.codigo_cpf_responsavel
													 and d.nomeResponsavel = tmp.nome_responsavel
		 where acao = 'MESMA_PESSOA_USAR_NOME_DO_SERVIDOR'
		   and tipo_responsavel = 2 

		-- altera o nome do pai nos dois lugares quando ele é o responsável para usar o nome do servidor
		update tmp 
		   set nome_responsavel = d.nomeServidor, alu_pai = d.nomeServidor
		--select *
		  from IMP_alunos_pais tmp
			   inner join DUPLICIDADES_CPF_BDPRODAM d on d.CPF = tmp.codigo_cpf_responsavel
													 and d.nomeResponsavel = tmp.nome_responsavel
		 where acao = 'MESMA_PESSOA_USAR_NOME_DO_SERVIDOR'
		   and tipo_responsavel = 2 
	----------------------------------INICIO ACERTA RESPONSAVEL DUPLICADO PAI----------------------------------------------
	----------------------------------INICIO ACERTA RESPONSAVEL DUPLICADO PRÓPRIO----------------------------------------------
		update tmp 
		   set nome_responsavel = d.nomeServidor, alu_nome = d.nomeServidor
		  from tmp_DiarioClasse_aluno tmp 
			   inner join DUPLICIDADES_CPF_BDPRODAM d on d.CPF = tmp.codigo_cpf_responsavel
													 and d.nomeResponsavel = tmp.nome_responsavel
		 where acao = 'MESMA_PESSOA_USAR_NOME_DO_SERVIDOR'
		   and tipo_responsavel = 3 

		-- altera o nome do aluno nos dois lugares quando ele é o responsável para usar o nome do servidor
		update tmp 
		   set nome_responsavel = d.nomeServidor, alu_nome = d.nomeServidor
		--select nome_responsavel, tipo_responsavel, d.nomeServidor, *
		  from IMP_alunos_pais tmp
			   inner join DUPLICIDADES_CPF_BDPRODAM d on d.CPF = tmp.codigo_cpf_responsavel
													 and d.nomeResponsavel = tmp.nome_responsavel
		 where acao = 'MESMA_PESSOA_USAR_NOME_DO_SERVIDOR'
		   and tipo_responsavel = 3 
	----------------------------------INICIO ACERTA RESPONSAVEL DUPLICADO PRÓPRIO----------------------------------------------
	----------------------------------INICIO ACERTA RESPONSAVEL DUPLICADO OUTRO----------------------------------------------
		update tmp 
		   set nome_responsavel = d.nomeServidor
		  from tmp_DiarioClasse_aluno tmp 
			   inner join DUPLICIDADES_CPF_BDPRODAM d on d.CPF = tmp.codigo_cpf_responsavel
													 and d.nomeResponsavel = tmp.nome_responsavel
		 where acao = 'MESMA_PESSOA_USAR_NOME_DO_SERVIDOR'
		   and tipo_responsavel = 4 

		-- altera o nome do responsável outro para usar o nome do servidor
		update tmp 
		   set nome_responsavel = d.nomeServidor
		--select *
		  from IMP_alunos_pais tmp
			   inner join DUPLICIDADES_CPF_BDPRODAM d on d.CPF = tmp.codigo_cpf_responsavel
													 and d.nomeResponsavel = tmp.nome_responsavel
		 where acao = 'MESMA_PESSOA_USAR_NOME_DO_SERVIDOR'
		   and tipo_responsavel = 4
	----------------------------------INICIO ACERTA RESPONSAVEL DUPLICADO OUTRO----------------------------------------------
	
		-- limpa o CPF de casos onde não são as mesmas pessoas ou aonde não temos certeza de se tratarem da mesma pessoa
		update tmp 
		   set codigo_cpf_responsavel = null
		  from tmp_DiarioClasse_aluno tmp 
			   inner join DUPLICIDADES_CPF_BDPRODAM d on d.CPF = tmp.codigo_cpf_responsavel
													 and d.nomeResponsavel = tmp.nome_responsavel
		 where acao <> 'MESMA_PESSOA_USAR_NOME_DO_SERVIDOR'

		update tmp
		   set codigo_cpf_responsavel = null
		--select d.*
		  from IMP_alunos_pais tmp
			   inner join DUPLICIDADES_CPF_BDPRODAM d on d.CPF = tmp.codigo_cpf_responsavel
													 and d.nomeResponsavel = tmp.nome_responsavel
		 where acao <> 'MESMA_PESSOA_USAR_NOME_DO_SERVIDOR'
		 
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Atualiza os dados da IMP_alunos_pais', @SourceID, getdate())
    IF  NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IMP_alunos_pais]') AND type in (N'U'))
        CREATE TABLE dbo.IMP_alunos_pais(
	      alu_codigo             int NOT NULL,
          alu_nome               varchar(70) NULL,
          alu_sex                char(1),
          alu_nasc               datetime,
	      pes_id                 uniqueidentifier NULL,
	      alu_id                 bigint NULL,
          alu_mae                varchar(70) NULL,
	      pes_idFiliacaoMae      uniqueidentifier NULL,
	      alu_pai                varchar(70) NULL,
	      pes_idFiliacaoPai      uniqueidentifier NULL,
	      tipo_responsavel       decimal(1, 0) NULL,
	      nome_responsavel       varchar(70) NULL,
	      numero_rg_responsavel  varchar(16) NULL,
	      codigo_cpf_responsavel decimal(11, 0) NULL,
	      pes_idFiliacaoRsp      uniqueidentifier NULL)
    
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[tmp_DiarioClasse_aluno]') AND name = N'IX_tmp_DiarioClasse_aluno_codigo')
       CREATE NONCLUSTERED INDEX IX_tmp_DiarioClasse_aluno_codigo ON tmp_DiarioClasse_aluno (cl_alu_codigo)
    
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IMP_alunos_pais]') AND name = N'IX_IMP_alunos_pais_codigo')
       CREATE NONCLUSTERED INDEX IX_IMP_alunos_pais_codigo ON IMP_alunos_pais (alu_codigo)
    
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IMP_alunos_pais]') AND name = N'IX_IMP_alunos_pais_pes_id')
       CREATE NONCLUSTERED INDEX IX_IMP_alunos_pais_pes_id ON IMP_alunos_pais (pes_id)
    
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IMP_alunos_pais]') AND name = N'IX_IMP_alunos_pais_presp_id')
       CREATE NONCLUSTERED INDEX IX_IMP_alunos_pais_presp_id ON IMP_alunos_pais (pes_idFiliacaoRsp)
    
    
    -- Atualiza os dados de Mãe que possam ter sido alterados
    update IMP_alunos_pais
       set alu_mae = mtr.alu_mae,
           pes_idFiliacaoMae = null
      from IMP_alunos_pais inner join tmp_DiarioClasse_aluno mtr
           on IMP_alunos_pais.alu_codigo = mtr.cl_alu_codigo
     where ISNULL(IMP_alunos_pais.alu_mae,'') <> ISNULL(mtr.alu_mae,'')
	
	--limpa pes_idFiliacao na CoreSSO..PES_PEssoa pros casos onde o nome da mae ta diferente do que ta vindo na imp_alunos_pais
	UPDATE pesAlu 
	   set pes_idFiliacaoMae = null
	  from IMP_alunos_pais inner join tmp_DiarioClasse_aluno mtr
           on IMP_alunos_pais.alu_codigo = mtr.cl_alu_codigo --and alu_codigo = '4871859'
		   inner join CoreSSO..PES_Pessoa pesAlu on pesAlu.pes_id = IMP_alunos_pais.pes_id
		   inner join CoreSSO..PES_Pessoa pesMae on pesMae.pes_id = IMP_alunos_pais.pes_idFiliacaoMae 
												and pesMae.pes_id = pesAlu.pes_idFiliacaoMae
     where ISNULL(pesMae.pes_nome,'') <> ISNULL(IMP_alunos_pais.alu_mae,'') 

	--limpa pes_idFiliacao na IMP_alunos_pais pros casos onde o nome da mae ta diferente do que ta vindo na imp_alunos_pais
	update IMP_alunos_pais 
	   set pes_idFiliacaoMae = null, pes_idFiliacaoRsp = CASE WHEN IMP_alunos_pais.tipo_responsavel = 1 THEN NULL ELSE pes_idFiliacaoRsp END
	  from IMP_alunos_pais inner join tmp_DiarioClasse_aluno mtr
           on IMP_alunos_pais.alu_codigo = mtr.cl_alu_codigo --and alu_codigo = '4871859'
		   inner join CoreSSO..PES_Pessoa pesAlu on pesAlu.pes_id = IMP_alunos_pais.pes_id
		   inner join CoreSSO..PES_Pessoa pesMae on pesMae.pes_id = IMP_alunos_pais.pes_idFiliacaoMae
     where ISNULL(pesMae.pes_nome,'') <> ISNULL(IMP_alunos_pais.alu_mae,'')

	 
    -- Atualiza os dados de Pai que possam ter sido alterados
    update IMP_alunos_pais
       set alu_pai = mtr.alu_pai,
           pes_idFiliacaoPai = null
      from IMP_alunos_pais inner join tmp_DiarioClasse_aluno mtr
           on IMP_alunos_pais.alu_codigo = mtr.cl_alu_codigo
     where ISNULL(IMP_alunos_pais.alu_pai,'') <> ISNULL(mtr.alu_pai,'')
	 
    --limpa pes_idFiliacao na CoreSSO..PES_PEssoa pros casos onde o nome do pai ta diferente do que ta vindo na imp_alunos_pais
	UPDATE pesAlu 
	   set pes_idFiliacaoPai = null
	  from IMP_alunos_pais inner join tmp_DiarioClasse_aluno mtr
           on IMP_alunos_pais.alu_codigo = mtr.cl_alu_codigo --and alu_codigo = '4871859'
		   inner join CoreSSO..PES_Pessoa pesAlu on pesAlu.pes_id = IMP_alunos_pais.pes_id
		   inner join CoreSSO..PES_Pessoa pesPai on pesPai.pes_id = IMP_alunos_pais.pes_idFiliacaoPai 
												and pesPai.pes_id = pesAlu.pes_idFiliacaoPai
     where ISNULL(pesPai.pes_nome,'') <> ISNULL(IMP_alunos_pais.alu_pai,'') 

	--limpa pes_idFiliacao na IMP_alunos_pais pros casos onde o nome do pai ta diferente do que ta vindo na imp_alunos_pais
	update IMP_alunos_pais 
	   set pes_idFiliacaoPai = null, pes_idFiliacaoRsp = CASE WHEN IMP_alunos_pais.tipo_responsavel = 2 THEN NULL ELSE pes_idFiliacaoRsp END
	  from IMP_alunos_pais inner join tmp_DiarioClasse_aluno mtr
           on IMP_alunos_pais.alu_codigo = mtr.cl_alu_codigo --and alu_codigo = '4871859'
		   inner join CoreSSO..PES_Pessoa pesAlu on pesAlu.pes_id = IMP_alunos_pais.pes_id
		   inner join CoreSSO..PES_Pessoa pesPai on pesPai.pes_id = IMP_alunos_pais.pes_idFiliacaoPai
     where ISNULL(pesPai.pes_nome,'') <> ISNULL(IMP_alunos_pais.alu_pai,'')
	 
    -- Atualiza os dados de Responsavel que possam ter sido alterados
    update IMP_alunos_pais
       set nome_responsavel = mtr.nome_responsavel,
           codigo_cpf_responsavel = mtr.codigo_cpf_responsavel,
           pes_idFiliacaoRsp = case when IMP_alunos_pais.tipo_responsavel <> mtr.tipo_responsavel
              or (mtr.tipo_responsavel = 4
                  and ISNULL(IMP_alunos_pais.nome_responsavel,'') <> ISNULL(mtr.nome_responsavel,''))
              then @pes_id_null end
      from IMP_alunos_pais inner join tmp_DiarioClasse_aluno mtr
           on IMP_alunos_pais.alu_codigo = mtr.cl_alu_codigo
     where ISNULL(IMP_alunos_pais.nome_responsavel,'') <> ISNULL(mtr.nome_responsavel,'')
        or ISNULL(IMP_alunos_pais.codigo_cpf_responsavel,0) <> ISNULL(mtr.codigo_cpf_responsavel,0)

    -- Atualiza o tipo de Responsavel que possam ter sido alterados
    update IMP_alunos_pais
       set tipo_responsavel = mtr.tipo_responsavel
      from IMP_alunos_pais inner join tmp_DiarioClasse_aluno mtr
           on IMP_alunos_pais.alu_codigo = mtr.cl_alu_codigo
     where IMP_alunos_pais.tipo_responsavel <> mtr.tipo_responsavel
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Carrega novos dados da IMP_alunos_pais', @SourceID, getdate())
    
    -- Insere na tabela de controle os novos alunos, pais e responsáveis
    MERGE INTO IMP_alunos_pais
    USING tmp_DiarioClasse_aluno
    ON IMP_alunos_pais.alu_codigo = tmp_DiarioClasse_aluno.cl_alu_codigo
    WHEN NOT MATCHED THEN
         INSERT (alu_codigo, alu_nome, alu_mae, alu_pai, tipo_responsavel, 
                 nome_responsavel, codigo_cpf_responsavel, alu_nasc, alu_sex)
         VALUES (cl_alu_codigo, alu_nome, alu_mae, alu_pai, tipo_responsavel,
                 nome_responsavel, codigo_cpf_responsavel, alu_nasc, alu_sex)
    WHEN MATCHED AND (IMP_alunos_pais.alu_nome <> tmp_DiarioClasse_aluno.alu_nome) THEN
         UPDATE SET alu_nome = tmp_DiarioClasse_aluno.alu_nome;
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Atualiza responsáveis NULOS', @SourceID, getdate())
    
    -- Atualiza os dados de responáveis que vieram NULO mas que o aluno possui Mãe
    update IMP_alunos_pais
       set nome_responsavel = alu_mae,
           tipo_responsavel = 1
     where nome_responsavel is null
	   and codigo_cpf_responsavel is null
       and alu_mae is not null
    
    -- Atualiza os dados de responáveis que vieram NULO mas que o aluno possui Pai
    update IMP_alunos_pais
       set nome_responsavel = alu_pai,
           tipo_responsavel = 2
     where nome_responsavel is null
	   and codigo_cpf_responsavel is null
       and alu_pai is not null
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Atualiza pes_id na IMP_alunos_pais (aluno)', @SourceID, getdate())
    
    
    create table #Pes_aluno
    (pes_id UNIQUEIDENTIFIER,
     alu_numeroMatricula INT)
    
    insert into #Pes_aluno
    select pes_id, alc_matricula
      from GestaoPedagogica..ACA_AlunoCurriculo alc
           inner join GestaoPedagogica..ACA_Aluno alu
           on alc.alu_id = alu.alu_id
     where alc_situacao = 1
       and alu_situacao = 1
     group by pes_id, alc_matricula           
    
    create index IX_PES_Aluno_01 on #Pes_aluno (alu_numeroMatricula)
    
    -- Verifica os alunos que já existem (caso a temporária tenha sido apagada ou para não precisar zerar a base)
    update IMP_alunos_pais
       set pes_id = alu.pes_id
      from IMP_alunos_pais inner join #Pes_aluno alu
           on IMP_alunos_pais.alu_codigo = alu.alu_numeroMatricula
     where IMP_alunos_pais.pes_id is null
    
	--Para casos onde o aluno é o próprio responsável e por isso também tem CPF, verifica se já existe uma pessoa com aquele nome e CPF para aproveitar
	--adicionado em 03/05/2017 para tentar evitar duplicidades novas de pessoas
	update IMP_alunos_pais 
	   set pes_id = pes.pes_id
	  from IMP_alunos_pais 
		   inner join SSO_PES_Pessoa pes on pes.pes_nome = IMP_alunos_pais.alu_nome and pes.pes_situacao = 1
		   inner join SSO_PES_PessoaDocumento psd on psd.pes_id = pes.pes_id and psd.psd_situacao = 1 and psd.tdo_id = @tdo_id_cpf
												 and psd.psd_numero = CAST(IMP_alunos_pais.codigo_cpf_responsavel as varchar(20))
	 where IMP_alunos_pais.pes_id is null
	   and IMP_alunos_pais.alu_nome = IMP_alunos_pais.nome_responsavel
	
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Atualiza pes_id na IMP_alunos_pais (mãe)', @SourceID, getdate())

    -- Atualiza os dados de mães de acordo com os registros já existente no CoreSSO
    update IMP_alunos_pais
       set pes_idFiliacaoMae = pes.pes_idFiliacaoMae
      from IMP_alunos_pais inner join SSO_Pes_Pessoa pes
           on IMP_alunos_pais.pes_id = pes.pes_id
     where IMP_alunos_pais.pes_idFiliacaoMae is null
       and pes.pes_idFiliacaoMae is not null
       and pes.pes_situacao <> 3
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Atualiza pes_id na IMP_alunos_pais (pai)', @SourceID, getdate())

    -- Atualiza os dados de pais de acordo com os registros já existente no CoreSSO
    update IMP_alunos_pais
       set pes_idFiliacaoPai = pes.pes_idFiliacaoPai
      from IMP_alunos_pais inner join SSO_Pes_Pessoa pes
           on IMP_alunos_pais.pes_id = pes.pes_id
     where IMP_alunos_pais.pes_idFiliacaoPai is null
       and pes.pes_idFiliacaoPai is not null
       and pes.pes_situacao <> 3
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Atualiza pes_id na IMP_alunos_pais (outro)', @SourceID, getdate())

    -- Atualiza o responsável de acordo com os dados já migrados
    -- EOL -> (1 - Mãe, 2 - Pai, 4 - Próprio, 3 - Outro)
    -- A tabela tmp_DiarioClasse_aluno já está com os dados do SGP
    -- SGP -> (1 - Mãe, 2 - Pai, 3 - Próprio, 4 - Outro)
    update IMP_alunos_pais
       set pes_idFiliacaoRsp = case tipo_responsavel
                                    when 1 then pes_idFiliacaoMae
                                    when 2 then pes_idFiliacaoPai
                                    when 3 then pes_id
                                    else pes_idFiliacaoRsp
                               end
     where pes_idFiliacaoRsp is null
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Verifica responsáveis por mais de um aluno', @SourceID, getdate())
    
    -- Cria tabela temporária para armazenar pais com mais de 1 filho, desde que seja o responsável
    IF OBJECT_ID('tempdb..#RespMaisDeUmAluno') > 0 
       DROP TABLE #RespMaisDeUmAluno
    
    CREATE TABLE #RespMaisDeUmAluno
      (cpf     decimal(11, 0) NOT NULL,
       nome    varchar(70) NOT NULL,
       tp_resp decimal(1, 0) NOT NULL,
       pes_id  UNIQUEIDENTIFIER NULL)
    
    -- Verifica quando é a mesma pessoa pelo tipo de responsável e documento (APENAS CPF, não verifica pelo RG)
    insert into #RespMaisDeUmAluno (cpf, tp_resp, nome)
    select codigo_cpf_responsavel, tipo_responsavel, nome_responsavel
      from IMP_alunos_pais
     where tipo_responsavel in (1, 2, 4) and codigo_cpf_responsavel is not null
     group by codigo_cpf_responsavel, tipo_responsavel, nome_responsavel
    having COUNT(alu_codigo) > 1
    
    -- Pega o ID de um responável que já tenha sido cadastrado (caso exista)
    update #RespMaisDeUmAluno
       set pes_id = IMP_alunos_pais.pes_idFiliacaoRsp
      from #RespMaisDeUmAluno inner join IMP_alunos_pais
            on #RespMaisDeUmAluno.cpf = IMP_alunos_pais.codigo_cpf_responsavel
           and #RespMaisDeUmAluno.tp_resp = IMP_alunos_pais.tipo_responsavel
           and #RespMaisDeUmAluno.nome = IMP_alunos_pais.nome_responsavel
     where pes_idFiliacaoRsp is not null
    
    -- Atualiza a tabela de controle com o mesmo id para os pais
    update IMP_alunos_pais
       set pes_idFiliacaoRsp = igual.pes_id,
           pes_idFiliacaoPai = case igual.tp_resp when 2 then igual.pes_id else pes_idFiliacaoPai end,
           pes_idFiliacaoMae = case igual.tp_resp when 1 then igual.pes_id else pes_idFiliacaoMae end
      from IMP_alunos_pais inner join #RespMaisDeUmAluno igual
            on IMP_alunos_pais.codigo_cpf_responsavel = igual.cpf
           and IMP_alunos_pais.tipo_responsavel = igual.tp_resp
           and IMP_alunos_pais.nome_responsavel = igual.nome
     where igual.pes_id is not null
    
    -- Apaga da temporárias os responsáveis que já estavam cadastrados
    delete from #RespMaisDeUmAluno where pes_id is not null
    
    -- Cria novos ID para os responsáveis
    update #RespMaisDeUmAluno set pes_id = NEWID()
    
    -- Atualiza a tabela de controle com o mesmo id para os responsáveis que ainda não existiam
    update IMP_alunos_pais
       set pes_idFiliacaoRsp = igual.pes_id,
           pes_idFiliacaoPai = case igual.tp_resp when 2 then igual.pes_id else pes_idFiliacaoPai end,
           pes_idFiliacaoMae = case igual.tp_resp when 1 then igual.pes_id else pes_idFiliacaoMae end
      from IMP_alunos_pais inner join #RespMaisDeUmAluno igual
            on IMP_alunos_pais.codigo_cpf_responsavel = igual.cpf
           and IMP_alunos_pais.tipo_responsavel = igual.tp_resp
           and IMP_alunos_pais.nome_responsavel = igual.nome
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Cadastra os responsáveis por mais de um aluno', @SourceID, getdate())
    
    -- Cadastra no CoreSSO os responsáveis por mais de um aluno que ainda não existirem
    INSERT INTO SSO_PES_Pessoa (pes_id, pes_nome, pes_situacao, pes_integridade)
    SELECT pes_id, nome, 1, 2
      FROM #RespMaisDeUmAluno
    
	UPDATE CoreSSO..PES_PessoaDocumento 
	   SET psd_numero = tab.cpf, psd_situacao = 1, psd_dataAlteracao = GETDATE()
	  FROM CoreSSO..PES_PessoaDocumento
		   INNER JOIN ( SELECT pes_id, cpf, @tdo_id_cpf as tdo_id
						  FROM #RespMaisDeUmAluno
						 WHERE #RespMaisDeUmAluno.pes_id NOT IN
							   (SELECT pes_id FROM SSO_PES_PessoaDocumento PSD
								 WHERE PSD.pes_id = #RespMaisDeUmAluno.pes_id
								   and PSD.psd_numero = CAST(#RespMaisDeUmAluno.cpf as varchar(50))
								   and PSD.tdo_id = @tdo_id_cpf
								   AND PSD.psd_situacao = 1) ) Tab
				   ON Tab.pes_id = PES_PessoaDocumento.pes_id
				  AND Tab.tdo_id = PES_PessoaDocumento.tdo_id
				  AND PES_PessoaDocumento.psd_situacao = 3
		
    -- Cadastra no CoreSSO o documento dos responsáveis por mais de um aluno que ainda não existirem
    INSERT INTO SSO_PES_PessoaDocumento (pes_id, psd_numero, tdo_id,  psd_situacao)
    SELECT pes_id, cpf, @tdo_id_cpf, 1
      FROM #RespMaisDeUmAluno
     WHERE #RespMaisDeUmAluno.pes_id NOT IN
           (SELECT pes_id FROM SSO_PES_PessoaDocumento PSD
             WHERE PSD.pes_id = #RespMaisDeUmAluno.pes_id
               and PSD.psd_numero = CAST(#RespMaisDeUmAluno.cpf as varchar(50))
               and PSD.tdo_id = @tdo_id_cpf
			   AND PSD.psd_situacao = 1)
    
    -- Cria tabela temporária para armazenar o ID da pessoal que está sendo inserida
    IF OBJECT_ID('tempdb..#ID_Pessoa') > 0 
       DROP TABLE #ID_Pessoa
    
    CREATE TABLE #ID_Pessoa
      (alu_codigo int NOT NULL,
       pes_id UNIQUEIDENTIFIER NOT NULL)
    
    INSERT INTO #ID_Pessoa
    SELECT alu_codigo, NEWID() as pes_id
      FROM IMP_alunos_pais
     WHERE tipo_responsavel = 4
       AND pes_idFiliacaoRsp IS NULL
       --AND codigo_cpf_responsavel IS NOT NULL
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Cadastra responsáveis por apenas um aluno - Outro', @SourceID, getdate())
    
    -- Cadastra no CoreSSO os responsáveis (tipo outro) por apenas um aluno que ainda não existirem
    INSERT INTO SSO_PES_Pessoa (pes_id, pes_nome, pes_situacao, pes_integridade)
    SELECT #ID_Pessoa.pes_id, nome_responsavel, 1, 2
      FROM IMP_alunos_pais inner join #ID_Pessoa
           on IMP_alunos_pais.alu_codigo = #ID_Pessoa.alu_codigo
    
	UPDATE CoreSSO..PES_PessoaDocumento 
	   SET psd_numero = tab.codigo_cpf_responsavel, psd_situacao = 1, psd_dataAlteracao = GETDATE()
	  FROM CoreSSO..PES_PessoaDocumento
		   INNER JOIN ( SELECT #ID_Pessoa.pes_id, codigo_cpf_responsavel, @tdo_id_cpf as tdo_id
						  FROM IMP_alunos_pais inner join #ID_Pessoa
							   on IMP_alunos_pais.alu_codigo = #ID_Pessoa.alu_codigo
						 WHERE codigo_cpf_responsavel IS NOT NULL
						   AND #ID_Pessoa.pes_id NOT IN
							   (SELECT pes_id FROM SSO_PES_PessoaDocumento PSD
								 WHERE PSD.pes_id = #ID_Pessoa.pes_id
								   and PSD.psd_numero = CAST(IMP_alunos_pais.codigo_cpf_responsavel as varchar(50))
								   and PSD.tdo_id = @tdo_id_cpf
								   AND PSD.psd_situacao = 1) ) Tab
				   ON Tab.pes_id = PES_PessoaDocumento.pes_id
				  AND Tab.tdo_id = PES_PessoaDocumento.tdo_id
				  AND PES_PessoaDocumento.psd_situacao = 3
				  
    -- Cadastra no CoreSSO o documento dos responsáveis (tipo outro) por apenas um aluno que ainda não existirem
    INSERT INTO SSO_PES_PessoaDocumento (pes_id, psd_numero, tdo_id,  psd_situacao)
    SELECT #ID_Pessoa.pes_id, codigo_cpf_responsavel, @tdo_id_cpf, 1
      FROM IMP_alunos_pais inner join #ID_Pessoa
           on IMP_alunos_pais.alu_codigo = #ID_Pessoa.alu_codigo
     WHERE codigo_cpf_responsavel IS NOT NULL
       AND #ID_Pessoa.pes_id NOT IN
           (SELECT pes_id FROM SSO_PES_PessoaDocumento PSD
             WHERE PSD.pes_id = #ID_Pessoa.pes_id
               and PSD.psd_numero = CAST(IMP_alunos_pais.codigo_cpf_responsavel as varchar(50))
               and PSD.tdo_id = @tdo_id_cpf
			   AND PSD.psd_situacao = 1)
    
    -- Atualiza a tabela de controle com o mesmo id para os responsáveis que ainda não existiam
    update IMP_alunos_pais
       set pes_idFiliacaoRsp = #ID_Pessoa.pes_id
      from IMP_alunos_pais inner join #ID_Pessoa
            on IMP_alunos_pais.alu_codigo = #ID_Pessoa.alu_codigo
    
    -- Os inserts abaixo só servem para verificar se um registro que já existia foi excluído no CoreSSO
    -- Cadastra no CoreSSO os responsáveis (tipo outro) por apenas um aluno que ainda não existirem
    INSERT INTO SSO_PES_Pessoa (pes_id, pes_nome, pes_situacao, pes_integridade)
    SELECT pes_idFiliacaoRsp, nome_responsavel, 1 AS pes_situacao, 2 AS pes_integridade
      FROM IMP_alunos_pais 
     WHERE pes_idFiliacaoRsp IS NOT NULL
       AND pes_idFiliacaoRsp NOT IN (SELECT pes_id FROM SSO_PES_Pessoa)
    GROUP BY pes_idFiliacaoRsp, nome_responsavel, alu_codigo 
    order BY pes_idFiliacaoRsp, nome_responsavel, alu_codigo
    
	UPDATE CoreSSO..PES_PessoaDocumento 
	   SET psd_numero = tab.codigo_cpf_responsavel, psd_situacao = 1, psd_dataAlteracao = GETDATE()
	  FROM CoreSSO..PES_PessoaDocumento
		   INNER JOIN ( SELECT pes_idFiliacaoRsp, codigo_cpf_responsavel, tdo_id, psd_situacao
						  FROM (SELECT pes_idFiliacaoRsp, codigo_cpf_responsavel, @tdo_id_cpf AS tdo_id, 1 AS psd_situacao
								  FROM IMP_alunos_pais
								 WHERE pes_idFiliacaoRsp IS NOT NULL 
								   and codigo_cpf_responsavel IS NOT NULL
								   AND pes_idFiliacaoRsp NOT IN
									   (SELECT pes_id FROM SSO_PES_PessoaDocumento PSD
										 WHERE PSD.pes_id = IMP_alunos_pais.pes_idFiliacaoRsp
										   --and PSD.psd_numero = CAST(IMP_alunos_pais.codigo_cpf_responsavel as varchar(50))
										   and PSD.tdo_id = @tdo_id_cpf
										   AND PSD.psd_situacao = 1)
								   AND pes_idFiliacaoRsp IN
									   (SELECT pes_id FROM SSO_PES_Pessoa PSD)) DOC
						GROUP BY pes_idFiliacaoRsp, codigo_cpf_responsavel, tdo_id, psd_situacao ) Tab
				   ON Tab.pes_idFiliacaoRsp = PES_PessoaDocumento.pes_id
				  AND Tab.tdo_id = PES_PessoaDocumento.tdo_id
				  AND PES_PessoaDocumento.psd_situacao = 3
	
    -- Cadastra no CoreSSO o documento dos responsáveis (tipo outro) por apenas um aluno que ainda não existirem
    INSERT INTO SSO_PES_PessoaDocumento (pes_id, psd_numero, tdo_id,  psd_situacao)
	SELECT pes_idFiliacaoRsp, codigo_cpf_responsavel, tdo_id, psd_situacao
	  FROM (SELECT pes_idFiliacaoRsp, codigo_cpf_responsavel, tdo_id, psd_situacao, 
				   ROW_NUMBER() OVER(PARTITION BY pes_idFiliacaoRsp ORDER BY codigo_cpf_responsavel) as linha
			  FROM (SELECT pes_idFiliacaoRsp, codigo_cpf_responsavel, '2CEEED03-63EB-E011-9B36-00155D033206' AS tdo_id, 1 AS psd_situacao
					  FROM IMP_alunos_pais
					 WHERE pes_idFiliacaoRsp IS NOT NULL 
					   and codigo_cpf_responsavel IS NOT NULL
					   AND pes_idFiliacaoRsp NOT IN
						   (SELECT pes_id FROM SSO_PES_PessoaDocumento PSD
							 WHERE PSD.pes_id = IMP_alunos_pais.pes_idFiliacaoRsp
							   --and PSD.psd_numero = CAST(IMP_alunos_pais.codigo_cpf_responsavel as varchar(50))
							   and PSD.tdo_id = '2CEEED03-63EB-E011-9B36-00155D033206'
							   AND PSD.psd_situacao = 1)
					   AND pes_idFiliacaoRsp IN
						   (SELECT pes_id FROM SSO_PES_Pessoa PSD)) DOC
			GROUP BY pes_idFiliacaoRsp, codigo_cpf_responsavel, tdo_id, psd_situacao) tab
	where tab.linha = 1
    
	UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Seta pes_idFiliacao para as pessoas de pais que já existirem', @SourceID, getdate())
	
		--buscando por CPF quando for o responsável e possuir CPF cadastrado
		UPDATE imp
		   SET pes_idFiliacaoMae = Tab.pes_idMae, pes_idFiliacaoRsp = Tab.pes_idMae
		  FROM IMP_alunos_pais imp
			   inner join CoreSSO..PES_Pessoa pes on pes.pes_id = imp.pes_id
			   inner join ( SELECT pesMae.pes_id as pes_idMae, pesMae.pes_nome as NomeMae, pesMae.pes_Sexo, psd.psd_numero as CPF,
								   ROW_NUMBER() over(PARTITION BY pesMae.pes_nome ORDER BY pesMae.pes_Sexo desc) as linha
							  FROM IMP_alunos_pais
								   inner join CoreSSO..PES_Pessoa pes on pes.pes_id = IMP_alunos_pais.pes_id
								   inner join CoreSSO..PES_Pessoa pesMae on pesMae.pes_nome = IMP_alunos_pais.alu_mae and pesMae.pes_situacao <> 3
								   inner join CoreSSO..PES_PessoaDocumento as psd on psd.pes_id = pesMae.pes_id 
																		  and psd.psd_numero = CAST(IMP_alunos_pais.codigo_cpf_responsavel as varchar(20))
																		  and psd.tdo_id = '2CEEED03-63EB-E011-9B36-00155D033206'
																		  and psd.psd_situacao <> 3
							 WHERE alu_mae IS NOT NULL and IMP_alunos_pais.tipo_responsavel = 1
							   AND IMP_alunos_pais.pes_idFiliacaoMae IS NULL and pes.pes_idFiliacaoMae IS NULL) Tab
					   on Tab.NomeMae = imp.alu_mae
					  and Tab.CPF = imp.codigo_cpf_responsavel
					  and Tab.linha = 1
		 WHERE imp.alu_mae IS NOT NULL and imp.tipo_responsavel = 1
		   AND imp.pes_idFiliacaoMae IS NULL and pes.pes_idFiliacaoMae IS NULL

		--buscando apenas por nome quando não for responsável - apenas busca de pes_ids sem cpf pra evitar duplicidades a frente
		UPDATE imp 
		   SET pes_idFiliacaoMae = Tab.pes_idMae, pes_idFiliacaoRsp = Tab.pes_idMae
		  from IMP_alunos_pais imp
			   inner join CoreSSO..PES_Pessoa pes on pes.pes_id = imp.pes_id
			   inner join ( SELECT pesMae.pes_id as pes_idMae, pesMae.pes_nome as NomeMae, pesMae.pes_sexo, 
								   ROW_NUMBER() over(PARTITION BY pesMae.pes_nome ORDER BY pesMae.pes_Sexo desc) as linha
							  FROM IMP_alunos_pais
								   inner join CoreSSO..PES_Pessoa pes on pes.pes_id = IMP_alunos_pais.pes_id
								   inner join CoreSSO..PES_Pessoa pesMae on pesMae.pes_nome = IMP_alunos_pais.alu_mae and pesMae.pes_situacao <> 3
							 WHERE alu_mae IS NOT NULL 
							   AND IMP_alunos_pais.pes_idFiliacaoMae IS NULL and pes.pes_idFiliacaoMae IS NULL
							   AND (IMP_alunos_pais.tipo_responsavel <> 1 OR 
								   (IMP_alunos_pais.tipo_responsavel = 1 and IMP_alunos_pais.codigo_cpf_responsavel IS NULL))
							   AND NOT EXISTS (select psd.pes_id from CoreSSO..PES_PessoaDocumento psd 
												where psd.pes_id = pes.pes_id and psd.tdo_id = @tdo_id_cpf
												  and psd.psd_situacao <> 3)
						   ) Tab
					  on Tab.NomeMae = imp.alu_mae
					 and Tab.linha = 1
		 WHERE imp.alu_mae IS NOT NULL 
		   AND imp.pes_idFiliacaoMae IS NULL and pes.pes_idFiliacaoMae IS NULL
	   
	  	--buscando por CPF quando for o responsável e possuir CPF cadastrado
		UPDATE imp
		   SET pes_idFiliacaoPAi = Tab.pes_idPai, pes_idFiliacaoRsp = Tab.pes_idPai
		  FROM IMP_alunos_pais imp
			   inner join CoreSSO..PES_Pessoa pes on pes.pes_id = imp.pes_id
			   inner join ( SELECT pesPai.pes_id as pes_idPai, pesPai.pes_nome as NomePai, pesPai.pes_Sexo, psd.psd_numero as CPF,
								   ROW_NUMBER() over(PARTITION BY pesPai.pes_nome ORDER BY pesPai.pes_Sexo desc) as linha
							  FROM IMP_alunos_pais
								   inner join CoreSSO..PES_Pessoa pes on pes.pes_id = IMP_alunos_pais.pes_id
								   inner join CoreSSO..PES_Pessoa pesPai on pesPai.pes_nome = IMP_alunos_pais.alu_Pai and pesPai.pes_situacao <> 3
								   inner join CoreSSO..PES_PessoaDocumento as psd on psd.pes_id = pesPai.pes_id 
																		  and psd.psd_numero = CAST(IMP_alunos_pais.codigo_cpf_responsavel as varchar(20))
																		  and psd.tdo_id = '2CEEED03-63EB-E011-9B36-00155D033206'
																		  and psd.psd_situacao <> 3
							 WHERE alu_Pai IS NOT NULL and IMP_alunos_pais.tipo_responsavel = 2
							   AND IMP_alunos_pais.pes_idFiliacaoPai IS NULL and pes.pes_idFiliacaoPai IS NULL) Tab
					   on Tab.NomePai = imp.alu_Pai
					  and Tab.CPF = imp.codigo_cpf_responsavel
					  and Tab.linha = 1
		 WHERE imp.alu_Pai IS NOT NULL and imp.tipo_responsavel = 2
		   AND imp.pes_idFiliacaoPai IS NULL and pes.pes_idFiliacaoPai IS NULL

		--buscando apenas por nome quando não for responsável - apenas busca de pes_ids sem cpf pra evitar duplicidades a frente
		UPDATE imp 
		   SET pes_idFiliacaoPai = Tab.pes_idPai, pes_idFiliacaoRsp = Tab.pes_idPai
		  from IMP_alunos_pais imp
			   inner join CoreSSO..PES_Pessoa pes on pes.pes_id = imp.pes_id
			   inner join ( SELECT pesPai.pes_id as pes_idPai, pesPai.pes_nome as NomePai, pesPai.pes_sexo, 
								   ROW_NUMBER() over(PARTITION BY pesPai.pes_nome ORDER BY pesPai.pes_Sexo desc) as linha
							  FROM IMP_alunos_pais
								   inner join CoreSSO..PES_Pessoa pes on pes.pes_id = IMP_alunos_pais.pes_id
								   inner join CoreSSO..PES_Pessoa pesPai on pesPai.pes_nome = IMP_alunos_pais.alu_Pai and pesPai.pes_situacao <> 3
							 WHERE alu_Pai IS NOT NULL 
							   AND IMP_alunos_pais.pes_idFiliacaoPai IS NULL and pes.pes_idFiliacaoPai IS NULL
							   AND (IMP_alunos_pais.tipo_responsavel <> 2 OR 
								   (IMP_alunos_pais.tipo_responsavel = 2 and IMP_alunos_pais.codigo_cpf_responsavel IS NULL))
							   AND NOT EXISTS (select psd.pes_id from CoreSSO..PES_PessoaDocumento psd 
												where psd.pes_id = pes.pes_id and psd.tdo_id = @tdo_id_cpf
												  and psd.psd_situacao <> 3)) Tab
					  on Tab.NomePai = imp.alu_Pai
					 and Tab.linha = 1
		 WHERE imp.alu_Pai IS NOT NULL 
		   AND imp.pes_idFiliacaoPai IS NULL and pes.pes_idFiliacaoPai IS NULL
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Cadastra responsáveis por aluno - Mãe', @SourceID, getdate())

    TRUNCATE TABLE #ID_Pessoa
    
    INSERT INTO #ID_Pessoa
    SELECT alu_codigo, NEWID() as pes_id
      FROM IMP_alunos_pais
     WHERE alu_mae IS NOT NULL
       AND pes_idFiliacaoMae IS NULL
	   
    -- Cadastra no CoreSSO A Mãe de alunos que ainda não existirem
    INSERT INTO SSO_PES_Pessoa (pes_id, pes_nome, pes_situacao, pes_integridade)
    SELECT #ID_Pessoa.pes_id, alu_mae, 1, case when tipo_responsavel = 1 and codigo_cpf_responsavel is not null then 2 else 1 end
      FROM IMP_alunos_pais inner join #ID_Pessoa
           on IMP_alunos_pais.alu_codigo = #ID_Pessoa.alu_codigo
    
	UPDATE CoreSSO..PES_PessoaDocumento 
	   SET psd_numero = tab.codigo_cpf_responsavel, psd_situacao = 1, psd_dataAlteracao = GETDATE()
	  FROM CoreSSO..PES_PessoaDocumento
		   INNER JOIN ( SELECT #ID_Pessoa.pes_id, codigo_cpf_responsavel, @tdo_id_cpf as tdo_id
						  FROM IMP_alunos_pais inner join #ID_Pessoa
							   on IMP_alunos_pais.alu_codigo = #ID_Pessoa.alu_codigo
						 WHERE codigo_cpf_responsavel IS NOT NULL
						   and tipo_responsavel = 1
						   AND #ID_Pessoa.pes_id NOT IN
							   (SELECT pes_id FROM SSO_PES_PessoaDocumento PSD
								 WHERE PSD.pes_id = #ID_Pessoa.pes_id
								   and PSD.psd_numero = CAST(IMP_alunos_pais.codigo_cpf_responsavel as varchar(50))
								   and PSD.tdo_id = @tdo_id_cpf
								   AND PSD.psd_situacao = 1) ) Tab
				   ON Tab.pes_id = PES_PessoaDocumento.pes_id
				  AND Tab.tdo_id = PES_PessoaDocumento.tdo_id
				  AND PES_PessoaDocumento.psd_situacao = 3
	
    -- Cadastra no CoreSSO o documento da Mãe que ainda não existirem
    INSERT INTO SSO_PES_PessoaDocumento (pes_id, psd_numero, tdo_id,  psd_situacao)
    SELECT #ID_Pessoa.pes_id, codigo_cpf_responsavel, @tdo_id_cpf, 1
      FROM IMP_alunos_pais inner join #ID_Pessoa
           on IMP_alunos_pais.alu_codigo = #ID_Pessoa.alu_codigo
     WHERE codigo_cpf_responsavel IS NOT NULL
       and tipo_responsavel = 1
       AND #ID_Pessoa.pes_id NOT IN
           (SELECT pes_id FROM SSO_PES_PessoaDocumento PSD
             WHERE PSD.pes_id = #ID_Pessoa.pes_id
               and PSD.psd_numero = CAST(IMP_alunos_pais.codigo_cpf_responsavel as varchar(50))
               and PSD.tdo_id = @tdo_id_cpf
			   AND PSD.psd_situacao = 1)
    
    -- Atualiza a tabela de controle com o mesmo id para os responsáveis que ainda não existiam
    update IMP_alunos_pais
       set pes_idFiliacaoMae = #ID_Pessoa.pes_id,
           pes_idFiliacaoRsp = case tipo_responsavel when 1 then #ID_Pessoa.pes_id else pes_idFiliacaoRsp end
      from IMP_alunos_pais inner join #ID_Pessoa
            on IMP_alunos_pais.alu_codigo = #ID_Pessoa.alu_codigo
    
    -- Os inserts abaixo só servem para verificar se um registro que já existia foi excluído no CoreSSO
    -- Cadastra no CoreSSO A Mãe de alunos que ainda não existirem
    INSERT INTO SSO_PES_Pessoa (pes_id, pes_nome, pes_situacao, pes_integridade)
    SELECT pes_idFiliacaoMae, nome_responsavel, 1 AS pes_situacao, 2 AS pes_integridade
      FROM IMP_alunos_pais 
     WHERE pes_idFiliacaoMae IS NOT NULL
       AND pes_idFiliacaoMae NOT IN (SELECT pes_id FROM SSO_PES_Pessoa)
    GROUP BY pes_idFiliacaoMae, nome_responsavel, alu_codigo
    
	UPDATE CoreSSO..PES_PessoaDocumento 
	   SET psd_numero = tab.codigo_cpf_responsavel, psd_situacao = 1, psd_dataAlteracao = GETDATE()
	  FROM CoreSSO..PES_PessoaDocumento
		   INNER JOIN ( SELECT pes_idFiliacaoMae, codigo_cpf_responsavel, tdo_id
						  FROM (SELECT pes_idFiliacaoMae, codigo_cpf_responsavel, @tdo_id_cpf AS tdo_id
								  FROM IMP_alunos_pais
								 WHERE codigo_cpf_responsavel IS NOT NULL
								   and tipo_responsavel = 1
								   and pes_idFiliacaoMae IS NOT NULL
								   AND pes_idFiliacaoMae NOT IN
									   (SELECT pes_id FROM SSO_PES_PessoaDocumento PSD
										 WHERE PSD.pes_id = IMP_alunos_pais.pes_idFiliacaoMae
										   and PSD.tdo_id = @tdo_id_cpf
										   AND PSD.psd_situacao = 1)) DOC
						GROUP BY pes_idFiliacaoMae, codigo_cpf_responsavel, tdo_id  ) Tab
				   ON Tab.pes_idFiliacaoMae = PES_PessoaDocumento.pes_id
				  AND Tab.tdo_id = PES_PessoaDocumento.tdo_id
				  AND PES_PessoaDocumento.psd_situacao = 3
				  
    -- Cadastra no CoreSSO o documento da Mãe que ainda não existirem
    INSERT INTO SSO_PES_PessoaDocumento (pes_id, psd_numero, tdo_id,  psd_situacao)
    SELECT pes_idFiliacaoMae, codigo_cpf_responsavel, tdo_id, psd_situacao
      FROM (SELECT pes_idFiliacaoMae, codigo_cpf_responsavel, @tdo_id_cpf AS tdo_id, 1 AS psd_situacao
              FROM IMP_alunos_pais
             WHERE codigo_cpf_responsavel IS NOT NULL
               and tipo_responsavel = 1
               and pes_idFiliacaoMae IS NOT NULL
               AND pes_idFiliacaoMae NOT IN
                   (SELECT pes_id FROM SSO_PES_PessoaDocumento PSD
                     WHERE PSD.pes_id = IMP_alunos_pais.pes_idFiliacaoMae
                       and PSD.tdo_id = @tdo_id_cpf
					   AND PSD.psd_situacao = 1)) DOC
    GROUP BY pes_idFiliacaoMae, codigo_cpf_responsavel, tdo_id, psd_situacao  
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Cadastra responsáveis por aluno - Pai', @SourceID, getdate())
    
	TRUNCATE TABLE #ID_Pessoa
    
    INSERT INTO #ID_Pessoa
    SELECT alu_codigo, NEWID() as pes_id
      FROM IMP_alunos_pais
     WHERE alu_pai IS NOT NULL
       AND pes_idFiliacaoPai IS NULL
	   
    -- Cadastra no CoreSSO O Pai de alunos que ainda não existirem
    INSERT INTO SSO_PES_Pessoa (pes_id, pes_nome, pes_situacao, pes_integridade)
    SELECT #ID_Pessoa.pes_id, alu_pai, 1, case when tipo_responsavel = 2 and codigo_cpf_responsavel is not null then 2 else 1 end
      FROM IMP_alunos_pais inner join #ID_Pessoa
           on IMP_alunos_pais.alu_codigo = #ID_Pessoa.alu_codigo
    
	UPDATE CoreSSO..PES_PessoaDocumento 
	   SET psd_numero = tab.codigo_cpf_responsavel, psd_situacao = 1, psd_dataAlteracao = GETDATE()
	  FROM CoreSSO..PES_PessoaDocumento
		   INNER JOIN ( SELECT #ID_Pessoa.pes_id, codigo_cpf_responsavel, @tdo_id_cpf as tdo_id
						  FROM IMP_alunos_pais inner join #ID_Pessoa
							   on IMP_alunos_pais.alu_codigo = #ID_Pessoa.alu_codigo
						 WHERE codigo_cpf_responsavel IS NOT NULL
						   and tipo_responsavel = 2
						   AND #ID_Pessoa.pes_id NOT IN
							   (SELECT pes_id FROM SSO_PES_PessoaDocumento PSD
								 WHERE PSD.pes_id = #ID_Pessoa.pes_id
								   and PSD.psd_numero = CAST(IMP_alunos_pais.codigo_cpf_responsavel as varchar(50))
								   and PSD.tdo_id = @tdo_id_cpf
								   AND PSD.psd_situacao = 1) ) Tab
				   ON Tab.pes_id = PES_PessoaDocumento.pes_id
				  AND Tab.tdo_id = PES_PessoaDocumento.tdo_id
				  AND PES_PessoaDocumento.psd_situacao = 3
				  
    -- Cadastra no CoreSSO o documento dos pais que ainda não existirem
    INSERT INTO SSO_PES_PessoaDocumento (pes_id, psd_numero, tdo_id,  psd_situacao)
    SELECT #ID_Pessoa.pes_id, codigo_cpf_responsavel, @tdo_id_cpf, 1
      FROM IMP_alunos_pais inner join #ID_Pessoa
           on IMP_alunos_pais.alu_codigo = #ID_Pessoa.alu_codigo
     WHERE codigo_cpf_responsavel IS NOT NULL
       and tipo_responsavel = 2
       AND #ID_Pessoa.pes_id NOT IN
           (SELECT pes_id FROM SSO_PES_PessoaDocumento PSD
             WHERE PSD.pes_id = #ID_Pessoa.pes_id
               and PSD.psd_numero = CAST(IMP_alunos_pais.codigo_cpf_responsavel as varchar(50))
               and PSD.tdo_id = @tdo_id_cpf
			   AND PSD.psd_situacao = 1)
    
    -- Atualiza a tabela de controle com o mesmo id para os responsáveis que ainda não existiam
    update IMP_alunos_pais
       set pes_idFiliacaoPai = #ID_Pessoa.pes_id,
           pes_idFiliacaoRsp = case tipo_responsavel when 2 then #ID_Pessoa.pes_id else pes_idFiliacaoRsp end
      from IMP_alunos_pais inner join #ID_Pessoa
            on IMP_alunos_pais.alu_codigo = #ID_Pessoa.alu_codigo
    
    -- Os inserts abaixo só servem para verificar se um registro que já existia foi excluído no CoreSSO
    -- Cadastra no CoreSSO o Pai de alunos que ainda não existirem
    INSERT INTO SSO_PES_Pessoa (pes_id, pes_nome, pes_situacao, pes_integridade)
    SELECT pes_idFiliacaoPai, nome_responsavel, 1 AS pes_situacao, 2 AS pes_integridade
      FROM IMP_alunos_pais 
     WHERE pes_idFiliacaoPai IS NOT NULL
       AND pes_idFiliacaoPai NOT IN (SELECT pes_id FROM SSO_PES_Pessoa)
    GROUP BY pes_idFiliacaoPai, nome_responsavel, alu_codigo
    
	UPDATE CoreSSO..PES_PessoaDocumento 
	   SET psd_numero = tab.codigo_cpf_responsavel, psd_situacao = 1, psd_dataAlteracao = GETDATE()
	  FROM CoreSSO..PES_PessoaDocumento
		   INNER JOIN ( SELECT pes_idFiliacaoPai, codigo_cpf_responsavel, tdo_id
						  FROM (SELECT pes_idFiliacaoPai, codigo_cpf_responsavel, @tdo_id_cpf AS tdo_id
								  FROM IMP_alunos_pais
								 WHERE codigo_cpf_responsavel IS NOT NULL
								   and tipo_responsavel = 2
								   and pes_idFiliacaoPai IS NOT NULL
								   AND pes_idFiliacaoPai NOT IN
									   (SELECT pes_id FROM SSO_PES_PessoaDocumento PSD
										 WHERE PSD.pes_id = IMP_alunos_pais.pes_idFiliacaoPai
										   and PSD.tdo_id = @tdo_id_cpf
										   AND PSD.psd_situacao = 1)) DOC
						GROUP BY pes_idFiliacaoPai, codigo_cpf_responsavel, tdo_id ) Tab
				   ON Tab.pes_idFiliacaoPai = PES_PessoaDocumento.pes_id
				  AND Tab.tdo_id = PES_PessoaDocumento.tdo_id
				  AND PES_PessoaDocumento.psd_situacao = 3
				  
    -- Cadastra no CoreSSO o documento do Pai que ainda não existirem
    INSERT INTO SSO_PES_PessoaDocumento (pes_id, psd_numero, tdo_id,  psd_situacao)
    SELECT pes_idFiliacaoPai, codigo_cpf_responsavel, tdo_id, psd_situacao
      FROM (SELECT pes_idFiliacaoPai, codigo_cpf_responsavel, @tdo_id_cpf AS tdo_id, 1 AS psd_situacao
              FROM IMP_alunos_pais
             WHERE codigo_cpf_responsavel IS NOT NULL
               and tipo_responsavel = 2
               and pes_idFiliacaoPai IS NOT NULL
               AND pes_idFiliacaoPai NOT IN
                   (SELECT pes_id FROM SSO_PES_PessoaDocumento PSD
                     WHERE PSD.pes_id = IMP_alunos_pais.pes_idFiliacaoPai
                       and PSD.tdo_id = @tdo_id_cpf
					   AND PSD.psd_situacao = 1)) DOC
    GROUP BY pes_idFiliacaoPai, codigo_cpf_responsavel, tdo_id, psd_situacao
    
    UPDATE IMP_alunos_pais
       SET pes_id = NEWID()
     WHERE pes_id is NULL
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Cadastra os alunos', @SourceID, getdate())
    
    -- Insere ALUNO na Pes_Pessoa
    MERGE INTO SSO_Pes_Pessoa
    USING IMP_alunos_pais
    ON SSO_Pes_Pessoa.pes_id = IMP_alunos_pais.pes_id
    WHEN NOT MATCHED THEN
         INSERT (pes_id, pes_nome, pes_idFiliacaoPai,
                 pes_idFiliacaoMae, pes_sexo, pes_dataNascimento, pes_integridade)
         VALUES (pes_id, alu_nome, pes_idFiliacaoPai,
                 pes_idFiliacaoMae, alu_sex , alu_nasc, 1);
    
    -- Atualiza no CoreSSO o documento do aluno quando for o próprio responsável e tiver sido alterado
    UPDATE SSO_PES_PessoaDocumento
       SET psd_numero = CAST(IMP_alunos_pais.codigo_cpf_responsavel as varchar(50))
		  , psd_dataAlteracao = GETDATE()
      FROM SSO_PES_PessoaDocumento INNER JOIN IMP_alunos_pais
            ON SSO_PES_PessoaDocumento.pes_id = IMP_alunos_pais.pes_id
     WHERE SSO_PES_PessoaDocumento.tdo_id = @tdo_id_cpf
       and SSO_PES_PessoaDocumento.psd_numero <> CAST(IMP_alunos_pais.codigo_cpf_responsavel as varchar(50))
    
	UPDATE CoreSSO..PES_PessoaDocumento 
	   SET psd_numero = tab.codigo_cpf_responsavel, psd_situacao = 1, psd_dataAlteracao = GETDATE()
	  FROM CoreSSO..PES_PessoaDocumento
		   INNER JOIN ( SELECT pes_id, codigo_cpf_responsavel, @tdo_id_cpf as tdo_id
						  FROM IMP_alunos_pais
						 WHERE codigo_cpf_responsavel IS NOT NULL
						   AND tipo_responsavel = 3
						   AND pes_id NOT IN
							   (SELECT pes_id FROM SSO_PES_PessoaDocumento PSD
								 WHERE PSD.pes_id = IMP_alunos_pais.pes_id
								   and PSD.psd_numero = CAST(IMP_alunos_pais.codigo_cpf_responsavel as varchar(50))
								   and PSD.tdo_id = @tdo_id_cpf
								   AND PSD.psd_situacao = 1)) Tab
				   ON Tab.pes_id = PES_PessoaDocumento.pes_id
				  AND Tab.tdo_id = PES_PessoaDocumento.tdo_id
				  AND PES_PessoaDocumento.psd_situacao = 3
	
    -- Cadastra no CoreSSO o documento do aluno quando for o próprio responsável e ainda não existir
    INSERT INTO SSO_PES_PessoaDocumento (pes_id, psd_numero, tdo_id,  psd_situacao)
    SELECT pes_id, codigo_cpf_responsavel, @tdo_id_cpf, 1
      FROM IMP_alunos_pais
     WHERE codigo_cpf_responsavel IS NOT NULL
       AND tipo_responsavel = 3
       AND pes_id NOT IN
           (SELECT pes_id FROM SSO_PES_PessoaDocumento PSD
             WHERE PSD.pes_id = IMP_alunos_pais.pes_id
               and PSD.psd_numero = CAST(IMP_alunos_pais.codigo_cpf_responsavel as varchar(50))
               and PSD.tdo_id = @tdo_id_cpf
			   AND PSD.psd_situacao = 1)
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Atualiza dados de alunos', @SourceID, getdate())
    
    -- Atualiza Aluno Pes_Pessoa
    UPDATE SSO_PES_Pessoa
       SET pes_situacao = 1,
           pes_dataNascimento = tmp.alu_nasc ,
           pes_sexo = tmp.alu_sex,
           pes_nome = tmp.alu_nome
      FROM SSO_PES_Pessoa inner join IMP_alunos_pais tmp
           ON SSO_PES_Pessoa.pes_id = tmp.pes_id
     WHERE SSO_PES_Pessoa.pes_dataNascimento <> tmp.alu_nasc
        OR (SSO_PES_Pessoa.pes_sexo IS NULL and tmp.alu_sex is not null)
        OR SSO_PES_Pessoa.pes_nome <> tmp.alu_nome
    
	UPDATE SSO_PES_Pessoa
      SET pes_nomeSocial = atm.nm_social_aluno,
		  pes_dataAlteracao = GETDATE()
     FROM SSO_PES_Pessoa 
		   inner join IMP_alunos_pais on IMP_alunos_pais.pes_id = SSO_PES_Pessoa.pes_id 
		   inner join BD_PRODAM..v_alunos_da_turma_MSTECH atm on atm.CL_ALU_CODIGO = IMP_alunos_pais.alu_codigo
    WHERE ((atm.nm_social_aluno is not null and isnull(pes_nomeSocial,'') <> atm.nm_social_aluno)
		  or (atm.nm_social_aluno is null and pes_nomeSocial is not null))
	
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Atualiza pes_idFiliacaoPai na pessoa do aluno', @SourceID, getdate())
    
    -- Atualiza Aluno Pes_Pessoa
    UPDATE SSO_PES_Pessoa
       SET pes_idFiliacaoPai = tmp.pes_idFiliacaoPai
      FROM SSO_PES_Pessoa inner join IMP_alunos_pais tmp
           ON SSO_PES_Pessoa.pes_id = tmp.pes_id
     WHERE (SSO_PES_Pessoa.pes_idFiliacaoPai IS NULL and tmp.pes_idFiliacaoPai is not null)
        OR (SSO_PES_Pessoa.pes_idFiliacaoPai IS not NULL and tmp.pes_idFiliacaoPai is not null
            AND SSO_PES_Pessoa.pes_idFiliacaoPai <> tmp.pes_idFiliacaoPai)
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Atualiza pes_idFiliacaoMae na pessoa do aluno', @SourceID, getdate())
    
    -- Atualiza Aluno Pes_Pessoa
    UPDATE SSO_PES_Pessoa
       SET pes_idFiliacaoMae = tmp.pes_idFiliacaoMae
      FROM SSO_PES_Pessoa inner join IMP_alunos_pais tmp
           ON SSO_PES_Pessoa.pes_id = tmp.pes_id
     WHERE (SSO_PES_Pessoa.pes_idFiliacaoMae IS NULL and tmp.pes_idFiliacaoMae is not null)
        OR (SSO_PES_Pessoa.pes_idFiliacaoMae IS not NULL and tmp.pes_idFiliacaoMae is not null
            AND SSO_PES_Pessoa.pes_idFiliacaoMae <> tmp.pes_idFiliacaoMae)
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Cria usuário de aluno', @SourceID, getdate())
    
    CREATE TABLE #USUARIO_UPD
      (usu_id   UNIQUEIDENTIFIER)
    
    CREATE TABLE #USER
      (pes_id           uniqueidentifier,
       senha            varchar(256),
       usu_login        varchar(12),
       usu_situacao     tinyint,
       usu_integridade  int,
       ent_id           uniqueidentifier,
       usu_criptografia tinyint)
    
    insert into #USER
    SELECT DISTINCT tmp.pes_id AS pes_id, mtr.senha AS senha,
           'RA' + CAST(tmp.alu_codigo AS VARCHAR(10)) AS usu_login, 1 as usu_situacao,
           1 as usu_integridade, @ent_id AS ent_id, 1 as usu_criptografia
      FROM IMP_alunos_pais tmp INNER JOIN tmp_DiarioClasse_aluno mtr
           ON tmp.alu_codigo = mtr.cl_alu_codigo
     where tmp.alu_codigo in (select alc_matricula from GE_ACA_AlunoCurriculo with (nolock)
                               where alc_situacao <> 3 group by alc_matricula)
    
    CREATE NONCLUSTERED INDEX IX_USER_01 ON #USER (usu_login) INCLUDE (pes_id)
    
    -- Insere Aluno na SSO_SYS_Usuario
    MERGE INTO SSO_SYS_Usuario AS target
    USING #USER AS source 
    ON target.usu_login = source.usu_login
    WHEN MATCHED and target.pes_id <> source.pes_id THEN 
         UPDATE SET target.pes_id = source.pes_id
    WHEN NOT MATCHED THEN
         INSERT (pes_id, usu_senha, usu_login, usu_situacao, 
                 usu_integridade, ent_id, usu_criptografia)
         VALUES (source.pes_id, source.senha, source.usu_login, source.usu_situacao,
                 source.usu_integridade, source.ent_id, source.usu_criptografia)
    OUTPUT (INSERTED.usu_id) INTO #USUARIO_UPD;
    
    INSERT INTO #USUARIO_UPD
    SELECT SSO_SYS_Usuario.usu_id
      FROM IMP_alunos_pais INNER JOIN SSO_SYS_Usuario
           ON IMP_alunos_pais.pes_id = SSO_SYS_Usuario.pes_id
     where usu_id not in (select usu_id from #USUARIO_UPD)
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Ativa usuário de aluno', @SourceID, getdate())
    
    UPDATE SSO_SYS_Usuario
       set usu_situacao = 1
      from SSO_SYS_Usuario inner join #USUARIO_UPD
           on SSO_SYS_Usuario.usu_id = #USUARIO_UPD.usu_id
     where usu_situacao not in (1,5)
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Cadastra os grupos de acesso de aluno', @SourceID, getdate())
    
    IF @gru_id IS NOT NULL
    BEGIN
       -- Inativa todos do grupo de ALUNO.
       DELETE FROM SSO_SYS_UsuarioGrupo
        WHERE gru_id = @gru_id
          AND usu_id in (select usu_id from SSO_SYS_Usuario where LEFT(usu_login,2) <> 'RA')

       -- Insere ALUNO na SYS_UsuarioGrupo.
       INSERT INTO SSO_SYS_UsuarioGrupo (usu_id, gru_id, usg_situacao)
       SELECT DISTINCT usu.usu_id, @gru_id AS gru_id, 1
         FROM IMP_alunos_pais INNER JOIN SSO_SYS_Usuario usu
              ON IMP_alunos_pais.pes_id = usu.pes_id
        WHERE usu.usu_login like 'RA%'
          AND NOT EXISTS (select alc_matricula from GestaoPedagogica..ACA_AlunoCurriculo
                           where alc_situacao <> 3 and alc_matricula = alu_codigo)
          AND NOT EXISTS (SELECT usu_id FROM CoreSSO..SYS_UsuarioGrupo ug2 
						   WHERE ug2.usu_id = usu.usu_id AND ug2.gru_id = @gru_id)
		GROUP BY usu.usu_id
    END
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Cadastra os grupos de acesso de aluno - Boletim Online', @SourceID, getdate())
    
    -- Esse grupo não existe mais. Foi dividido entre Aluno e Responsável
    IF @gru_idBoletim IS NOT NULL
       UPDATE SSO_SYS_UsuarioGrupo
          SET usg_situacao = 3
         FROM SSO_SYS_UsuarioGrupo ug
        WHERE ug.gru_id = @gru_idBoletim
    
    -- Cadastra as permissões dos alunos para o Boletim On Line
    IF @gru_idAluno IS NOT NULL
    BEGIN
       -- Apaga todos do grupo de ALUNO para o Boletim On Line.
       DELETE FROM SSO_SYS_UsuarioGrupo
        WHERE gru_id = @gru_idAluno
          --AND usu_id in (select usu_id from SSO_SYS_Usuario where LEFT(usu_login,2) <> 'RA')
       
       -- Insere ALUNO na SYS_UsuarioGrupo para o Boletim On Line.
       INSERT INTO SSO_SYS_UsuarioGrupo (usu_id, gru_id, usg_situacao)
       SELECT usu.usu_id, @gru_idAluno AS gru_id, 1
         FROM IMP_alunos_pais
              INNER JOIN GE_ACA_AlunoCurriculo alc with (nolock)
               on IMP_alunos_pais.alu_codigo = alc.alc_matricula
              and 3 <> alc.alc_situacao
              INNER JOIN GE_ACA_Aluno alu with (nolock)
              on alc.alu_id = alu.alu_id
              inner join SSO_PES_Pessoa pes with (nolock)
              on alu.pes_id = pes.pes_id
              INNER JOIN SSO_SYS_Usuario usu with (nolock)
              ON pes.pes_id = usu.pes_id
        WHERE NOT EXISTS (SELECT usu_id FROM SSO_SYS_UsuarioGrupo ug2  with (nolock) 
						   WHERE ug2.usu_id = usu.usu_id AND ug2.gru_id = @gru_idAluno)
        group by usu.usu_id
    END
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
	
	    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Cadastra os grupos de acesso de aluno - Serap', @SourceID, getdate())
    
    -- Cadastra as permissões dos alunos para o Serap
    IF @gru_idAlunoSerap IS NOT NULL
    BEGIN
       -- Apaga todos do grupo de ALUNO para o Serap.
       DELETE FROM SSO_SYS_UsuarioGrupo
        WHERE gru_id = @gru_idAlunoSerap
       
       -- Insere ALUNO na SYS_UsuarioGrupo para o Boletim On Line.
       INSERT INTO SSO_SYS_UsuarioGrupo (usu_id, gru_id, usg_situacao)
       SELECT usu.usu_id, @gru_idAlunoSerap AS gru_id, 1
         FROM IMP_alunos_pais
              INNER JOIN GE_ACA_AlunoCurriculo alc with (nolock)
               on IMP_alunos_pais.alu_codigo = alc.alc_matricula
              and 3 <> alc.alc_situacao
			  and cur_id not in (65,66,67,68) -- ensino infantil
              INNER JOIN GE_ACA_Aluno alu with (nolock)
              on alc.alu_id = alu.alu_id
              inner join SSO_PES_Pessoa pes with (nolock)
              on alu.pes_id = pes.pes_id
              INNER JOIN SSO_SYS_Usuario usu with (nolock)
              ON pes.pes_id = usu.pes_id
        WHERE NOT EXISTS (SELECT usu_id FROM SSO_SYS_UsuarioGrupo ug2  with (nolock) 
						   WHERE ug2.usu_id = usu.usu_id AND ug2.gru_id = @gru_idAlunoSerap)
        group by usu.usu_id
    END
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Cria usuário de Responsável', @SourceID, getdate())
    
    CREATE TABLE #USUARIO_RESP_UPD
      (usu_id   UNIQUEIDENTIFIER)
    
    -- Insere Responsável na SSO_SYS_Usuario
    MERGE INTO SSO_SYS_Usuario AS target
    USING (SELECT DISTINCT tmp.pes_idFiliacaoRsp AS pes_id, mtr.senha_resp AS senha,
                  'RESP' + CAST(tmp.alu_codigo AS VARCHAR(10)) AS usu_login, 1 as usu_situacao,
                  1 as usu_integridade, @ent_id AS ent_id, 1 as usu_criptografia
            FROM IMP_alunos_pais tmp INNER JOIN tmp_DiarioClasse_aluno mtr
              ON tmp.alu_codigo = mtr.cl_alu_codigo
           WHERE tmp.pes_idFiliacaoRsp IS NOT NULL
             and alu_codigo in (select alc_matricula from GE_ACA_AlunoCurriculo
                                 where alc_situacao <> 3 group by alc_matricula)
			 and tmp.pes_idFiliacaoRsp in (select pes_id from SSO_PES_Pessoa)
                                 ) AS source 
          (pes_id, senha, usu_login, usu_situacao, usu_integridade, ent_id, usu_criptografia)
    ON target.usu_login = source.usu_login
    WHEN MATCHED and target.pes_id <> source.pes_id THEN 
         UPDATE SET target.pes_id = source.pes_id
    WHEN NOT MATCHED THEN
         INSERT (pes_id, usu_senha, usu_login, usu_situacao,
                 usu_integridade, ent_id, usu_criptografia)
         VALUES (source.pes_id, source.senha, source.usu_login, source.usu_situacao,
                 source.usu_integridade, source.ent_id, source.usu_criptografia)
    OUTPUT (INSERTED.usu_id) INTO #USUARIO_RESP_UPD;
    
    INSERT INTO #USUARIO_RESP_UPD
    SELECT SSO_SYS_Usuario.usu_id
      FROM IMP_alunos_pais INNER JOIN SSO_SYS_Usuario
           ON IMP_alunos_pais.pes_idFiliacaoRsp = SSO_SYS_Usuario.pes_id
     where IMP_alunos_pais.pes_idFiliacaoRsp IS NOT NULL
       and LEFT(SSO_SYS_Usuario.usu_login,4) = 'RESP'
       and SSO_SYS_Usuario.usu_id not in (select usu_id from #USUARIO_RESP_UPD)
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Ativa usuário de responsável', @SourceID, getdate())
    
    UPDATE SSO_SYS_Usuario
       set usu_situacao = 1
      from SSO_SYS_Usuario inner join #USUARIO_RESP_UPD
           on SSO_SYS_Usuario.usu_id = #USUARIO_RESP_UPD.usu_id
     where usu_situacao not in (1,5)
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Cadastra os grupos de acesso de responsáveis', @SourceID, getdate())
    
    IF @gru_id_resp IS NOT NULL
    BEGIN
       -- Apaga todos os usuários de responsáveis.
       DELETE FROM SSO_SYS_UsuarioGrupo
        WHERE gru_id = @gru_id_resp
          --AND usu_id in (select usu_id from SSO_SYS_Usuario where LEFT(usu_login,4) <> 'RESP')
       
       -- Insere todos os responsáveis por Aluno na SYS_UsuarioGrupo.
       INSERT INTO SSO_SYS_UsuarioGrupo (usu_id, gru_id, usg_situacao)
       SELECT DISTINCT usu.usu_id, @gru_id_resp AS gru_id, 1
         FROM IMP_alunos_pais INNER JOIN SSO_SYS_Usuario usu
              ON IMP_alunos_pais.pes_idFiliacaoRsp = usu.pes_id
        WHERE pes_idFiliacaoRsp is not null
          AND LEFT(usu.usu_login,4) = 'RESP'
          and REPLACE(usu.usu_login,'RESP','') in
              (select alc_matricula from GE_ACA_AlunoCurriculo
                where alc_situacao <> 3 group by alc_matricula)
          AND usu.usu_id NOT IN
              (SELECT usu_id FROM SSO_SYS_UsuarioGrupo ug2
                WHERE ug2.usu_id = usu.usu_id AND ug2.gru_id = @gru_id_resp)
    END
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Cadastra os grupos de acesso de responsáveis - Boletim Online', @SourceID, getdate())
    
    -- Cadastra as permissões dos responsáveis para o Boletim On Line
    IF @gru_idResponsavel IS NOT NULL
    BEGIN
       -- Apaga todos os responsáveis do Boletim On Line.
       DELETE FROM SSO_SYS_UsuarioGrupo
        WHERE gru_id = @gru_idResponsavel
          --AND usu_id in (select usu_id from SSO_SYS_Usuario where LEFT(usu_login,4) <> 'RESP')
       
       -- Insere os responsáveis do Boletim On Line na SYS_UsuarioGrupo.
       INSERT INTO SSO_SYS_UsuarioGrupo (usu_id, gru_id, usg_situacao)
       SELECT DISTINCT usu.usu_id, @gru_idResponsavel AS gru_id, 1
         FROM IMP_alunos_pais INNER JOIN SSO_SYS_Usuario usu
              ON IMP_alunos_pais.pes_idFiliacaoRsp = usu.pes_id
        WHERE pes_idFiliacaoRsp is not null
          AND LEFT(usu.usu_login,4) = 'RESP'
          AND REPLACE(usu.usu_login,'RESP','') in
              (select alc_matricula from GE_ACA_AlunoCurriculo
                where alc_situacao <> 3 group by alc_matricula)
          AND usu.usu_id NOT IN
              (SELECT usu_id FROM SSO_SYS_UsuarioGrupo ug2
                WHERE ug2.usu_id = usu.usu_id AND ug2.gru_id = @gru_idResponsavel)
    END
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Insere alunos no BlueCore', @SourceID, getdate())
    
    -- Inserir ALUNO no BlueCore
    INSERT INTO BC_VD_Aluno (pes_id, ent_id, alu_numeroMatricula, alu_codigoIntegracao,
                             alu_ativo, alu_dataCriacao, alu_dataAlteracao)
         OUTPUT INSERTED.pes_id, INSERTED.alu_numeroMatricula
           INTO #aluno_table_bc
    SELECT tmp.pes_id, @ent_id AS ent_id, tmp.alu_codigo, 1 AS alu_codigoIntegracao,
           1 AS alu_ativo, GETDATE(), GETDATE()
      FROM IMP_alunos_pais tmp
     WHERE tmp.pes_id NOT IN
           (select pes_id from BC_VD_Aluno where alu_ativo = 1)
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Insere alunos no GestaoPedagogica', @SourceID, getdate())
    
    -- Inserir ALUNO no GestaoPedagogica
    INSERT INTO GE_ACA_Aluno
                (pes_id, ent_id, alu_dadosIncompletos, alu_historicoEscolaIncompleto,
                 alu_regressaSozinho, alu_situacao, alu_dataCriacao, alu_dataAlteracao)
    SELECT pes_id, @ent_id, 1, 1, 0, 1, GETDATE(), GETDATE()
      FROM IMP_alunos_pais
     WHERE pes_id NOT IN (SELECT pes_id FROM GE_ACA_Aluno where alu_situacao <> 3)
    
    -- Atualiza a temporária de controle com o código dos alunos
    update IMP_alunos_pais
       set alu_id = GE_ACA_Aluno.alu_id
      from IMP_alunos_pais inner join GE_ACA_Aluno
           on IMP_alunos_pais.pes_id = GE_ACA_Aluno.pes_id
     where GE_ACA_Aluno.alu_situacao <> 3
       AND IMP_alunos_pais.alu_id IS NULL
    
	update GE_ACA_Aluno set alu_possuiInformacaoSigilosa = 1, alu_dataAlteracao = GETDATE()
	  from GE_ACA_Aluno
		   inner join IMP_alunos_pais on IMP_alunos_pais.pes_id = GE_ACA_Aluno.pes_id 
		   inner join BD_PRODAM..v_alunos_da_turma_MSTECH atm on atm.CL_ALU_CODIGO = IMP_alunos_pais.alu_codigo
	 where GE_ACA_Aluno.alu_possuiInformacaoSigilosa is null and atm.cd_tipo_sigilo is not null

	update GE_ACA_Aluno set alu_possuiInformacaoSigilosa = null, alu_dataAlteracao = GETDATE()
	  from GE_ACA_Aluno
		   inner join IMP_alunos_pais on IMP_alunos_pais.pes_id = GE_ACA_Aluno.pes_id 
		   inner join BD_PRODAM..v_alunos_da_turma_MSTECH atm on atm.CL_ALU_CODIGO = IMP_alunos_pais.alu_codigo
	 where GE_ACA_Aluno.alu_possuiInformacaoSigilosa is not null and atm.cd_tipo_sigilo is null
	
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Insere responsáveis (PAI) no GestaoPedagogica', @SourceID, getdate())
    
    -- Insere o PAI na tabela de Responsáveis pelo aluno
    MERGE INTO GE_ACA_AlunoResponsavel AS _target
    USING (SELECT IMP_alunos_pais.alu_id, ISNULL(alr.alr_id,ISNULL(alu_rsp.alr_id,0) + 1) AS alr_id,
                  2 AS tra_id, pes_idFiliacaoPai AS pes_id,
                  alr_principal = case IMP_alunos_pais.tipo_responsavel when 2 THEN 1 ELSE 0 END,
                  1 AS alr_constaCertidaoNascimento, 1 AS alr_moraComAluno, 1 AS alr_situacao,
                  GETDATE() AS alr_dataCriacao, GETDATE() AS alr_dataAlteracao, 1 AS alr_omitidoFormaLei
             FROM IMP_alunos_pais INNER JOIN tmp_DiarioClasse_aluno 
                  ON IMP_alunos_pais.alu_codigo = tmp_DiarioClasse_aluno.cl_alu_codigo
                  LEFT JOIN GE_ACA_AlunoResponsavel alr
                   ON IMP_alunos_pais.alu_id = alr.alu_id
                  AND IMP_alunos_pais.pes_idFiliacaoPai = alr.pes_id
                  AND 2 = alr.tra_id
                  LEFT JOIN (SELECT alu_id, MAX(alr_id) alr_id
                               from GE_ACA_AlunoResponsavel
                              where alr_situacao <> 3
                              group by alu_id) alu_rsp
                  ON IMP_alunos_pais.alu_id = alu_rsp.alu_id
            WHERE pes_idFiliacaoPai IS NOT NULL) AS _source
     ON _target.alu_id = _source.alu_id
    AND _target.alr_id = _source.alr_id
    WHEN NOT MATCHED THEN 
         INSERT (alu_id, alr_id, tra_id, pes_id, alr_principal, alr_constaCertidaoNascimento,
                 alr_moraComAluno, alr_situacao, alr_dataCriacao, alr_dataAlteracao, alr_omitidoFormaLei)
         VALUES (_source.alu_id, _source.alr_id, _source.tra_id, _source.pes_id, _source.alr_principal,
                 _source.alr_constaCertidaoNascimento, _source.alr_moraComAluno, _source.alr_situacao,
                 _source.alr_dataCriacao, _source.alr_dataAlteracao, _source.alr_omitidoFormaLei)
    WHEN MATCHED AND ((_target.alr_principal <> _source.alr_principal)
                      OR (_target.alr_situacao <> _source.alr_situacao)) THEN
         UPDATE SET alr_principal = _source.alr_principal,
                    alr_situacao = _source.alr_situacao,
                    alr_dataAlteracao = getdate()
    WHEN NOT MATCHED BY SOURCE AND (_target.tra_id = 2) AND (_target.alr_situacao <> 3) THEN
         UPDATE SET alr_situacao = 3, alr_dataAlteracao = getdate();
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Insere responsáveis (MÃE) no GestaoPedagogica', @SourceID, getdate())
    
    -- Insere a MÃE na tabela de Responsáveis pelo aluno
    MERGE INTO GE_ACA_AlunoResponsavel AS _target
    USING (SELECT IMP_alunos_pais.alu_id, ISNULL(alr.alr_id,ISNULL(alu_rsp.alr_id,0) + 1) AS alr_id,
                  1 AS tra_id, pes_idFiliacaoMae AS pes_id,
                  alr_principal = case IMP_alunos_pais.tipo_responsavel when 1 THEN 1 ELSE 0 END,
                  1 AS alr_constaCertidaoNascimento, 1 AS alr_moraComAluno, 1 AS alr_situacao,
                  GETDATE() AS alr_dataCriacao, GETDATE() AS alr_dataAlteracao, 1 AS alr_omitidoFormaLei
             FROM IMP_alunos_pais INNER JOIN tmp_DiarioClasse_aluno 
                  ON IMP_alunos_pais.alu_codigo = tmp_DiarioClasse_aluno.cl_alu_codigo
                  LEFT JOIN GE_ACA_AlunoResponsavel alr
                   ON IMP_alunos_pais.alu_id = alr.alu_id
                  AND IMP_alunos_pais.pes_idFiliacaoMae = alr.pes_id
                  AND 1 = alr.tra_id
                  LEFT JOIN (SELECT alu_id, MAX(alr_id) alr_id
                               from GE_ACA_AlunoResponsavel
                              where alr_situacao <> 3
                              group by alu_id) alu_rsp
                  ON IMP_alunos_pais.alu_id = alu_rsp.alu_id
            WHERE pes_idFiliacaoMae IS NOT NULL) AS _source
     ON _target.alu_id = _source.alu_id
    AND _target.alr_id = _source.alr_id
    WHEN NOT MATCHED THEN 
         INSERT (alu_id, alr_id, tra_id, pes_id, alr_principal, alr_constaCertidaoNascimento,
                 alr_moraComAluno, alr_situacao, alr_dataCriacao, alr_dataAlteracao, alr_omitidoFormaLei)
         VALUES (_source.alu_id, _source.alr_id, _source.tra_id, _source.pes_id, _source.alr_principal,
                 _source.alr_constaCertidaoNascimento, _source.alr_moraComAluno, _source.alr_situacao,
                 _source.alr_dataCriacao, _source.alr_dataAlteracao, _source.alr_omitidoFormaLei)
    WHEN MATCHED AND ((_target.alr_principal <> _source.alr_principal)
                      OR (_target.alr_situacao <> _source.alr_situacao)) THEN
         UPDATE SET alr_principal = _source.alr_principal,
                    alr_situacao = _source.alr_situacao,
                    alr_dataAlteracao = getdate()
    WHEN NOT MATCHED BY SOURCE AND (_target.tra_id = 1) AND (_target.alr_situacao <> 3) THEN
         UPDATE SET alr_situacao = 3, alr_dataAlteracao = getdate();
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Insere responsáveis (OUTRO) no GestaoPedagogica', @SourceID, getdate())
    
    -- Insere tabela de Responsáveis pelo aluno quando for do tipo outro
    MERGE INTO GE_ACA_AlunoResponsavel AS _target
    USING (SELECT IMP_alunos_pais.alu_id, ISNULL(alr.alr_id,ISNULL(alu_rsp.alr_id,0) + 1) AS alr_id,
                  4 AS tra_id, pes_idFiliacaoRsp AS pes_id, 1 as alr_principal,
                  1 AS alr_constaCertidaoNascimento, 1 AS alr_moraComAluno, 1 AS alr_situacao,
                  GETDATE() AS alr_dataCriacao, GETDATE() AS alr_dataAlteracao, 1 AS alr_omitidoFormaLei
             FROM IMP_alunos_pais INNER JOIN tmp_DiarioClasse_aluno 
                  ON IMP_alunos_pais.alu_codigo = tmp_DiarioClasse_aluno.cl_alu_codigo
                  LEFT JOIN GE_ACA_AlunoResponsavel alr
                   ON IMP_alunos_pais.alu_id = alr.alu_id
                  AND IMP_alunos_pais.pes_idFiliacaoRsp = alr.pes_id
                  AND 4 = alr.tra_id
                  LEFT JOIN (SELECT alu_id, MAX(alr_id) alr_id
                               from GE_ACA_AlunoResponsavel
                              where alr_situacao <> 3
                              group by alu_id) alu_rsp
                  ON IMP_alunos_pais.alu_id = alu_rsp.alu_id
            WHERE IMP_alunos_pais.tipo_responsavel = 4
              and pes_idFiliacaoRsp IS NOT NULL) AS _source
     ON _target.alu_id = _source.alu_id
    AND _target.alr_id = _source.alr_id
    WHEN NOT MATCHED THEN 
         INSERT (alu_id, alr_id, tra_id, pes_id, alr_principal, alr_constaCertidaoNascimento,
                 alr_moraComAluno, alr_situacao, alr_dataCriacao, alr_dataAlteracao, alr_omitidoFormaLei)
         VALUES (_source.alu_id, _source.alr_id, _source.tra_id, _source.pes_id, _source.alr_principal,
                 _source.alr_constaCertidaoNascimento, _source.alr_moraComAluno, _source.alr_situacao,
                 _source.alr_dataCriacao, _source.alr_dataAlteracao, _source.alr_omitidoFormaLei)
    WHEN MATCHED AND ((_target.alr_principal <> _source.alr_principal)
                      OR (_target.alr_situacao <> _source.alr_situacao)) THEN
         UPDATE SET alr_principal = _source.alr_principal,
                    alr_situacao = _source.alr_situacao,
                    alr_dataAlteracao = getdate()
    WHEN NOT MATCHED BY SOURCE AND (_target.tra_id = 4) AND (_target.alr_situacao <> 3) THEN
         UPDATE SET alr_situacao = 3, alr_dataAlteracao = getdate();
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Insere responsáveis (PROPRIO) no GestaoPedagogica', @SourceID, getdate())
    
    -- Insere tabela de Responsáveis pelo aluno quando for o Próprio
    MERGE INTO GE_ACA_AlunoResponsavel AS _target
    USING (SELECT IMP_alunos_pais.alu_id, ISNULL(alr.alr_id,ISNULL(alu_rsp.alr_id,0) + 1) AS alr_id,
                  3 AS tra_id, IMP_alunos_pais.pes_id, 1 as alr_principal,
                  1 AS alr_constaCertidaoNascimento, 1 AS alr_moraComAluno, 1 AS alr_situacao,
                  GETDATE() AS alr_dataCriacao, GETDATE() AS alr_dataAlteracao, 1 AS alr_omitidoFormaLei
             FROM IMP_alunos_pais INNER JOIN tmp_DiarioClasse_aluno 
                  ON IMP_alunos_pais.alu_codigo = tmp_DiarioClasse_aluno.cl_alu_codigo
                  LEFT JOIN GE_ACA_AlunoResponsavel alr
                   ON IMP_alunos_pais.alu_id = alr.alu_id
                  AND IMP_alunos_pais.pes_id = alr.pes_id
                  AND 3 = alr.tra_id
                  LEFT JOIN (SELECT alu_id, MAX(alr_id) alr_id
                               from GE_ACA_AlunoResponsavel
                              where alr_situacao <> 3
                              group by alu_id) alu_rsp
                  ON IMP_alunos_pais.alu_id = alu_rsp.alu_id
            WHERE IMP_alunos_pais.tipo_responsavel = 3) AS _source
     ON _target.alu_id = _source.alu_id
    AND _target.alr_id = _source.alr_id
    WHEN NOT MATCHED THEN 
         INSERT (alu_id, alr_id, tra_id, pes_id, alr_principal, alr_constaCertidaoNascimento,
                 alr_moraComAluno, alr_situacao, alr_dataCriacao, alr_dataAlteracao, alr_omitidoFormaLei)
         VALUES (_source.alu_id, _source.alr_id, _source.tra_id, _source.pes_id, _source.alr_principal,
                 _source.alr_constaCertidaoNascimento, _source.alr_moraComAluno, _source.alr_situacao,
                 _source.alr_dataCriacao, _source.alr_dataAlteracao, _source.alr_omitidoFormaLei)
    WHEN MATCHED AND ((_target.alr_principal <> _source.alr_principal)
                      OR (_target.alr_situacao <> _source.alr_situacao)) THEN
         UPDATE SET alr_principal = _source.alr_principal,
                    alr_situacao = _source.alr_situacao,
                    alr_dataAlteracao = getdate()
    WHEN NOT MATCHED BY SOURCE AND (_target.tra_id = 3) AND (_target.alr_situacao <> 3) THEN
         UPDATE SET alr_situacao = 3, alr_dataAlteracao = getdate();
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
	-- SELECT @SourceID = NEWID()
	
    -- INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         -- VALUES (@PackageLogID, 'MERGE na Pes_pessoaDeficiencia', @SourceID, getdate())
    
    -- MERGE INTO SSO_PES_PessoaDeficiencia _target
	-- USING (select alu.pes_id, DEPARA_DEFICIENCIA.tde_id
			 -- from BD_PRODAM..v_alunos_da_turma_MSTECH nee 
				  -- inner join GE_ACA_AlunoCurriculo alc on nee.cl_alu_codigo = alc.alc_matricula and alc.alc_situacao <> 3
				  -- inner join GE_ACA_Aluno alu on alu.alu_id = alc.alu_id
				  -- inner join GE_MTR_MatriculaTurma mtu on mtu.alu_id = alc.alu_id and mtu.alc_id = alc.alc_id
				  -- inner join DEPARA_TURMA on mtu.tur_id = DEPARA_TURMA.tur_id and cast(DEPARA_TURMA.tur_codigo as int) = nee.cd_turma_escola
				  -- inner join BD_PRODAM..v_alunos_matriculados mat 
						  -- on nee.CL_ALU_CODIGO = mat.cl_alu_codigo and nee.cd_turma_escola = mat.cl_tur_codigo
						 -- and (SELECT CAST(VALOR as int) FROM _PARAMETROS WHERE CHAVE = 'ANO_BASE') = mat.an_letivo
				  -- inner join DEPARA_DEFICIENCIA on nee.id_nee = DEPARA_DEFICIENCIA.id_nee
			-- group by alu.pes_id, DEPARA_DEFICIENCIA.tde_id) _source
		-- ON _target.pes_id = _source.pes_id
	   -- AND _target.tde_id = _source.tde_id
	-- WHEN NOT MATCHED THEN
			-- INSERT (pes_id, tde_id)
			-- VALUES (_source.pes_id, _source.tde_id);
    
	-- CREATE TABLE #TEMPDEF (pes_id uniqueidentifier, tde_id uniqueidentifier)
	-- insert into #TEMPDEF
	-- select pd.pes_id, pd.tde_id 
	  -- from SSO_PES_PessoaDeficiencia pd
		   -- inner join GE_ACA_Aluno alu on alu.pes_id = pd.pes_id
		   -- inner join GE_ACA_AlunoCurriculo alc on alc.alu_id = alu.alu_id and alc.alc_situacao <> 3
		   -- inner join BD_PRODAM..v_alunos_da_turma_MSTECH nee on nee.cl_alu_codigo = alc.alc_matricula
	 -- where not exists (select t.CL_ALU_CODIGO
						-- from BD_PRODAM..v_alunos_da_turma_MSTECH t
								-- inner join DEPARA_DEFICIENCIA on t.id_nee = DEPARA_DEFICIENCIA.id_nee
						-- where t.CL_ALU_CODIGO = alc.alc_matricula and DEPARA_DEFICIENCIA.tde_id = pd.tde_id)
	-- group by pd.pes_id, pd.tde_id

	-- DELETE 
	  -- FROM SSO_PES_PessoaDeficiencia
	 -- where exists (select #TEMPDEF.pes_id from #TEMPDEF 
					-- where #TEMPDEF.pes_id = SSO_PES_PessoaDeficiencia.pes_id 
					  -- and #TEMPDEF.tde_id = SSO_PES_PessoaDeficiencia.tde_id)
				 
	-- UPDATE PackageTaskLog
       -- SET EndDateTime = getdate()
     -- WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
	 
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Atualiza alu_id e pes_id na temporária', @SourceID, getdate())
    
    update tmp_DiarioClasse_aluno
       set alu_id = IMP_alunos_pais.alu_id,
           pes_id = IMP_alunos_pais.pes_id
      from tmp_DiarioClasse_aluno inner join IMP_alunos_pais
           on tmp_DiarioClasse_aluno.cl_alu_codigo = IMP_alunos_pais.alu_codigo
     where tmp_DiarioClasse_aluno.pes_id is null
        or tmp_DiarioClasse_aluno.alu_id is null
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID

    --IF @@TRANCOUNT > 0 
    --   COMMIT TRANSACTION
    --ELSE 
    --   ROLLBACK TRANSACTION

    drop index IX_IMP_alunos_pais_codigo ON IMP_alunos_pais
    drop index IX_IMP_alunos_pais_pes_id ON IMP_alunos_pais
    drop index IX_IMP_alunos_pais_presp_id ON IMP_alunos_pais
    drop index IX_tmp_DiarioClasse_aluno_codigo ON tmp_DiarioClasse_aluno
END

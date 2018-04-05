USE [Manutencao]
GO
/****** Object:  StoredProcedure [dbo].[LogPackageEnd]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LogPackageEnd]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[LogPackageEnd]
GO
/****** Object:  StoredProcedure [dbo].[LogPackageError]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LogPackageError]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[LogPackageError]
GO
/****** Object:  StoredProcedure [dbo].[LogPackageStart]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LogPackageStart]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[LogPackageStart]
GO
/****** Object:  StoredProcedure [dbo].[LogTaskPostExecute]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LogTaskPostExecute]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[LogTaskPostExecute]
GO
/****** Object:  StoredProcedure [dbo].[LogTaskPreExecute]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LogTaskPreExecute]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[LogTaskPreExecute]
GO
/****** Object:  StoredProcedure [dbo].[STP_CentralProjetos_AdministrativeUnit]    Script Date: 06/22/2015 09:10:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_CentralProjetos_AdministrativeUnit]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_CentralProjetos_AdministrativeUnit]
GO
/****** Object:  StoredProcedure [dbo].[STP_CentralProjetos_CurriculumSubject]    Script Date: 06/22/2015 09:10:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_CentralProjetos_CurriculumSubject]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_CentralProjetos_CurriculumSubject]
GO
/****** Object:  StoredProcedure [dbo].[STP_CentralProjetos_Usuarios]    Script Date: 06/22/2015 09:11:10 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_CentralProjetos_Usuarios]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_CentralProjetos_Usuarios]
GO
/****** Object:  StoredProcedure [dbo].[STP_CentralProjetosGE_Aluno]    Script Date: 06/22/2015 09:11:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_CentralProjetosGE_Aluno]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_CentralProjetosGE_Aluno]
GO
/****** Object:  StoredProcedure [dbo].[STP_CentralProjetosGE_Calendario]    Script Date: 06/22/2015 09:11:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_CentralProjetosGE_Calendario]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_CentralProjetosGE_Calendario]
GO
/****** Object:  StoredProcedure [dbo].[STP_CentralProjetosGE_Docente]    Script Date: 06/22/2015 09:12:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_CentralProjetosGE_Docente]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_CentralProjetosGE_Docente]
GO
/****** Object:  StoredProcedure [dbo].[STP_CentralProjetosGE_Periodo]    Script Date: 06/22/2015 09:12:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_CentralProjetosGE_Periodo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_CentralProjetosGE_Periodo]
GO
/****** Object:  StoredProcedure [dbo].[STP_CentralProjetosGE_Turma]    Script Date: 06/22/2015 09:12:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_CentralProjetosGE_Turma]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_CentralProjetosGE_Turma]
GO
/****** Object:  StoredProcedure [dbo].[STP_CentralProjetosGE_TurmaDocente]    Script Date: 06/22/2015 09:12:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_CentralProjetosGE_TurmaDocente]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_CentralProjetosGE_TurmaDocente]
GO
/****** Object:  StoredProcedure [dbo].[STP_DiarioClasse_ACA_AlunoCurriculo_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_DiarioClasse_ACA_AlunoCurriculo_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_DiarioClasse_ACA_AlunoCurriculo_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_DiarioClasse_LimparTabelaTemporaria]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_DiarioClasse_LimparTabelaTemporaria]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_DiarioClasse_LimparTabelaTemporaria]
GO
/****** Object:  StoredProcedure [dbo].[STP_DiarioClasse_MTR_MatriculaTurma_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_DiarioClasse_MTR_MatriculaTurma_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_DiarioClasse_MTR_MatriculaTurma_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_DiarioClasse_MTR_MatriculaTurmaDisciplina_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_DiarioClasse_MTR_MatriculaTurmaDisciplina_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_DiarioClasse_MTR_MatriculaTurmaDisciplina_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_DiarioClasse_MTR_Movimentacao_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_DiarioClasse_MTR_Movimentacao_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_DiarioClasse_MTR_Movimentacao_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_DiarioClasse_PES_Pessoa_Cargos_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_DiarioClasse_PES_Pessoa_Cargos_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_DiarioClasse_PES_Pessoa_Cargos_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_DiarioClasse_PES_PessoaDocumento_Cargos_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_DiarioClasse_PES_PessoaDocumento_Cargos_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_DiarioClasse_PES_PessoaDocumento_Cargos_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_DiarioClasse_RHU_Cargo_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_DiarioClasse_RHU_Cargo_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_DiarioClasse_RHU_Cargo_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_DiarioClasse_RHU_Colaborador_Cargos_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_DiarioClasse_RHU_Colaborador_Cargos_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_DiarioClasse_RHU_Colaborador_Cargos_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_DiarioClasse_RHU_ColaboradorCargo_Cargos_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_DiarioClasse_RHU_ColaboradorCargo_Cargos_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_DiarioClasse_RHU_ColaboradorCargo_Cargos_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_DiarioClasse_RHU_TipoVinculo_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_DiarioClasse_RHU_TipoVinculo_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_DiarioClasse_RHU_TipoVinculo_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_DiarioClasse_SYS_Usuario_Cargos_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_DiarioClasse_SYS_Usuario_Cargos_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_DiarioClasse_SYS_Usuario_Cargos_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_DiarioClasse_SYS_UsuarioGrupo_Cargos_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_DiarioClasse_SYS_UsuarioGrupo_Cargos_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_DiarioClasse_SYS_UsuarioGrupo_Cargos_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_DiarioClasse_SYS_UsuarioGrupo_SYS_UsuarioGrupoUA_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_DiarioClasse_SYS_UsuarioGrupo_SYS_UsuarioGrupoUA_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_DiarioClasse_SYS_UsuarioGrupo_SYS_UsuarioGrupoUA_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_DiarioClasse_SYS_UsuarioGrupoUA_Cargos_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_DiarioClasse_SYS_UsuarioGrupoUA_Cargos_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_DiarioClasse_SYS_UsuarioGrupoUA_Cargos_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_GerenciamentoFrequencia_CREATE_SINONIMO]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_GerenciamentoFrequencia_CREATE_SINONIMO]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_GerenciamentoFrequencia_CREATE_SINONIMO]
GO
/****** Object:  StoredProcedure [dbo].[STP_GerenciamentoFrequencia_SYS_TipoUnidadeAdministrativa_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_GerenciamentoFrequencia_SYS_TipoUnidadeAdministrativa_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_GerenciamentoFrequencia_SYS_TipoUnidadeAdministrativa_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_GerenciamentoFrequencia_SYS_UnidadeAdministrativaTipoUA_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_GerenciamentoFrequencia_SYS_UnidadeAdministrativaTipoUA_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_GerenciamentoFrequencia_SYS_UnidadeAdministrativaTipoUA_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_GestaoAvaliacao_Import]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_GestaoAvaliacao_Import]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_GestaoAvaliacao_Import]
GO
/****** Object:  StoredProcedure [dbo].[STP_GestaoEscolarBiblioteca_Usuario_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_GestaoEscolarBiblioteca_Usuario_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_GestaoEscolarBiblioteca_Usuario_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_Gfreq_CORESME_ACA_TipoTurno_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_Gfreq_CORESME_ACA_TipoTurno_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_Gfreq_CORESME_ACA_TipoTurno_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_Gfreq_CORESME_ACA_Turno_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_Gfreq_CORESME_ACA_Turno_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_Gfreq_CORESME_ACA_Turno_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_Gfreq_CORESME_v_alunos_da_turma_historico_MSTECH]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_Gfreq_CORESME_v_alunos_da_turma_historico_MSTECH]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_Gfreq_CORESME_v_alunos_da_turma_historico_MSTECH]
GO
/****** Object:  StoredProcedure [dbo].[STP_Gfreq_CORESME_v_alunos_da_turma_MSTECH]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_Gfreq_CORESME_v_alunos_da_turma_MSTECH]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_Gfreq_CORESME_v_alunos_da_turma_MSTECH]
GO
/****** Object:  StoredProcedure [dbo].[STP_Gfreq_CORESME_v_alunos_matriculados]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_Gfreq_CORESME_v_alunos_matriculados]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_Gfreq_CORESME_v_alunos_matriculados]
GO
/****** Object:  StoredProcedure [dbo].[STP_Gfreq_CORESME_v_demanda_infantil_MSTECH]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_Gfreq_CORESME_v_demanda_infantil_MSTECH]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_Gfreq_CORESME_v_demanda_infantil_MSTECH]
GO
/****** Object:  StoredProcedure [dbo].[STP_Gfreq_CORESME_v_turma_escola_ano_letivo]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_Gfreq_CORESME_v_turma_escola_ano_letivo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_Gfreq_CORESME_v_turma_escola_ano_letivo]
GO
/****** Object:  StoredProcedure [dbo].[STP_Gfreq_CORESME_v_turma_MSTECH]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_Gfreq_CORESME_v_turma_MSTECH]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_Gfreq_CORESME_v_turma_MSTECH]
GO
/****** Object:  StoredProcedure [dbo].[STP_Gfreq_CORESME_v_unidade_educacao_dados_gerais]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_Gfreq_CORESME_v_unidade_educacao_dados_gerais]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_Gfreq_CORESME_v_unidade_educacao_dados_gerais]
GO
/****** Object:  StoredProcedure [dbo].[STP_Gfreq_CREATE_SINONIMO]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_Gfreq_CREATE_SINONIMO]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_Gfreq_CREATE_SINONIMO]
GO
/****** Object:  StoredProcedure [dbo].[STP_Gfreq_LimparTabelaTemporaria]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_Gfreq_LimparTabelaTemporaria]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_Gfreq_LimparTabelaTemporaria]
GO
/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_ACA_CalendarioPeriodo_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_QuadroHorario_ACA_CalendarioPeriodo_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_QuadroHorario_ACA_CalendarioPeriodo_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_ACA_Disciplina_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_QuadroHorario_ACA_Disciplina_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_QuadroHorario_ACA_Disciplina_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_ACA_Docente_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_QuadroHorario_ACA_Docente_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_QuadroHorario_ACA_Docente_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_ACA_FormatoAvaliacao_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_QuadroHorario_ACA_FormatoAvaliacao_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_QuadroHorario_ACA_FormatoAvaliacao_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_ACA_TipoPeriodoCalendario_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_QuadroHorario_ACA_TipoPeriodoCalendario_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_QuadroHorario_ACA_TipoPeriodoCalendario_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_ACA_TipoTurno_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_QuadroHorario_ACA_TipoTurno_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_QuadroHorario_ACA_TipoTurno_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_ACA_Turno_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_QuadroHorario_ACA_Turno_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_QuadroHorario_ACA_Turno_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_ACA_TurnoHorario_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_QuadroHorario_ACA_TurnoHorario_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_QuadroHorario_ACA_TurnoHorario_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_Carrega_DEPARAS]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_QuadroHorario_Carrega_DEPARAS]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_QuadroHorario_Carrega_DEPARAS]
GO
/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_CREATE_SINONIMO]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_QuadroHorario_CREATE_SINONIMO]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_QuadroHorario_CREATE_SINONIMO]
GO
/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_ESC_Escola_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_QuadroHorario_ESC_Escola_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_QuadroHorario_ESC_Escola_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_PES_Pessoa_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_QuadroHorario_PES_Pessoa_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_QuadroHorario_PES_Pessoa_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_RHU_CargaHoraria_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_QuadroHorario_RHU_CargaHoraria_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_QuadroHorario_RHU_CargaHoraria_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_RHU_Cargo_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_QuadroHorario_RHU_Cargo_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_QuadroHorario_RHU_Cargo_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_RHU_CargoDisciplina_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_QuadroHorario_RHU_CargoDisciplina_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_QuadroHorario_RHU_CargoDisciplina_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_RHU_Colaborador_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_QuadroHorario_RHU_Colaborador_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_QuadroHorario_RHU_Colaborador_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_RHU_ColaboradorCargo_Cargos_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_QuadroHorario_RHU_ColaboradorCargo_Cargos_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_QuadroHorario_RHU_ColaboradorCargo_Cargos_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_RHU_ColaboradorCargoDisciplina_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_QuadroHorario_RHU_ColaboradorCargoDisciplina_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_QuadroHorario_RHU_ColaboradorCargoDisciplina_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_TUR_Turma_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_QuadroHorario_TUR_Turma_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_QuadroHorario_TUR_Turma_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_TUR_TurmaCurriculo_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_QuadroHorario_TUR_TurmaCurriculo_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_QuadroHorario_TUR_TurmaCurriculo_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_TUR_TurmaDisciplina_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_QuadroHorario_TUR_TurmaDisciplina_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_QuadroHorario_TUR_TurmaDisciplina_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_TUR_TurmaDocente_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_QuadroHorario_TUR_TurmaDocente_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_QuadroHorario_TUR_TurmaDocente_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_SMESP_Aluno_DadosAlunoTurma]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_SMESP_Aluno_DadosAlunoTurma]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_SMESP_Aluno_DadosAlunoTurma]
GO
/****** Object:  StoredProcedure [dbo].[STP_SMESP_Aluno_DadosCadastrais]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_SMESP_Aluno_DadosCadastrais]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_SMESP_Aluno_DadosCadastrais]
GO
/****** Object:  StoredProcedure [dbo].[STP_SMESP_Aluno_PreparaDados]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_SMESP_Aluno_PreparaDados]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_SMESP_Aluno_PreparaDados]
GO
/****** Object:  StoredProcedure [dbo].[STP_SMESP_AnoSerie_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_SMESP_AnoSerie_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_SMESP_AnoSerie_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_SMESP_AVA_UsuarioGrupo_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_SMESP_AVA_UsuarioGrupo_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_SMESP_AVA_UsuarioGrupo_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_SMESP_BCW_CREATE_SINONIMO]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_SMESP_BCW_CREATE_SINONIMO]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_SMESP_BCW_CREATE_SINONIMO]
GO
/****** Object:  StoredProcedure [dbo].[STP_SMESP_BCW_Escola_Import]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_SMESP_BCW_Escola_Import]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_SMESP_BCW_Escola_Import]
GO
/****** Object:  StoredProcedure [dbo].[STP_SMESP_CORESSO_LOG_ERROS_DELETE]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_SMESP_CORESSO_LOG_ERROS_DELETE]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_SMESP_CORESSO_LOG_ERROS_DELETE]
GO
/****** Object:  StoredProcedure [dbo].[STP_SMESP_CREATE_SINONIMO]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_SMESP_CREATE_SINONIMO]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_SMESP_CREATE_SINONIMO]
GO
/****** Object:  StoredProcedure [dbo].[STP_SMESP_Curso_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_SMESP_Curso_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_SMESP_Curso_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_SMESP_DiretoriaRegionalEnsino_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_SMESP_DiretoriaRegionalEnsino_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_SMESP_DiretoriaRegionalEnsino_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_SMESP_Disciplina_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_SMESP_Disciplina_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_SMESP_Disciplina_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_SMESP_Disciplina_Turma_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_SMESP_Disciplina_Turma_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_SMESP_Disciplina_Turma_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_SMESP_Distrito_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_SMESP_Distrito_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_SMESP_Distrito_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_SMESP_Escola_Endereco_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_SMESP_Escola_Endereco_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_SMESP_Escola_Endereco_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_SMESP_ESCOLA_UAD_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_SMESP_ESCOLA_UAD_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_SMESP_ESCOLA_UAD_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_SMESP_GP_UsuarioGrupo_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_SMESP_GP_UsuarioGrupo_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_SMESP_GP_UsuarioGrupo_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_SMESP_LIMPA_TABELA]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_SMESP_LIMPA_TABELA]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_SMESP_LIMPA_TABELA]
GO
/****** Object:  StoredProcedure [dbo].[STP_SMESP_Periodo_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_SMESP_Periodo_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_SMESP_Periodo_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_SMESP_Professor_DadosCadastrais]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_SMESP_Professor_DadosCadastrais]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_SMESP_Professor_DadosCadastrais]
GO
/****** Object:  StoredProcedure [dbo].[STP_SMESP_Professor_DadosEscola]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_SMESP_Professor_DadosEscola]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_SMESP_Professor_DadosEscola]
GO
/****** Object:  StoredProcedure [dbo].[STP_SMESP_Professor_Disciplina_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_SMESP_Professor_Disciplina_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_SMESP_Professor_Disciplina_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_SMESP_Professor_Disciplina_Turma_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_SMESP_Professor_Disciplina_Turma_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_SMESP_Professor_Disciplina_Turma_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_SMESP_SAV_Avaliacao_Alunos_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_SMESP_SAV_Avaliacao_Alunos_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_SMESP_SAV_Avaliacao_Alunos_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_SMESP_SAV_Avaliacao_AnoSerie_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_SMESP_SAV_Avaliacao_AnoSerie_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_SMESP_SAV_Avaliacao_AnoSerie_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_SMESP_SAV_Avaliacao_Turma_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_SMESP_SAV_Avaliacao_Turma_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_SMESP_SAV_Avaliacao_Turma_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_SMESP_SAV_Avaliacao_TurmasAlunos_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_SMESP_SAV_Avaliacao_TurmasAlunos_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_SMESP_SAV_Avaliacao_TurmasAlunos_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_SMESP_SAV_Avaliacao_UsuarioGrupo_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_SMESP_SAV_Avaliacao_UsuarioGrupo_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_SMESP_SAV_Avaliacao_UsuarioGrupo_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_SMESP_Setor_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_SMESP_Setor_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_SMESP_Setor_IMPORT]
GO
/****** Object:  StoredProcedure [dbo].[STP_SMESP_TipoUnidadeAdm_CREATE]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_SMESP_TipoUnidadeAdm_CREATE]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_SMESP_TipoUnidadeAdm_CREATE]
GO
/****** Object:  StoredProcedure [dbo].[STP_SMESP_Turma_IMPORT]    Script Date: 06/17/2014 09:23:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STP_SMESP_Turma_IMPORT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[STP_SMESP_Turma_IMPORT]
GO

/****** Object:  StoredProcedure [dbo].[LogPackageEnd]    Script Date: 05/12/2014 10:35:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[LogPackageEnd]
(    @PackageLogID int
    ,@BatchLogID int
    ,@EndBatchAudit bit
)

AS
BEGIN
    SET NOCOUNT ON
    UPDATE dbo.PackageLog
        SET Status = 'S'
        , EndDatetime = getdate()
        WHERE PackageLogID = @PackageLogID

    IF @EndBatchAudit = 1
    Begin
        UPDATE dbo.BatchLog
        SET Status = 'S'
        , EndDatetime = getdate()
        WHERE BatchLogID = @BatchLogID
    End
END
GO

/****** Object:  StoredProcedure [dbo].[LogPackageError]    Script Date: 05/12/2014 10:35:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[LogPackageError]
(    @PackageLogID int
    ,@BatchLogID int
    ,@SourceName varchar(64)
    ,@SourceID uniqueidentifier
    ,@ErrorCode int
    ,@ErrorDescription varchar(2000)
    ,@EndBatchAudit bit
)

AS
BEGIN
    SET NOCOUNT ON
    INSERT INTO dbo.PackageErrorLog (PackageLogID, SourceName, SourceID, ErrorCode, ErrorDescription, LogDateTime)
    VALUES (@PackageLogID, @SourceName, @SourceID, @ErrorCode, @ErrorDescription, getdate())

    UPDATE dbo.PackageLog
        SET Status = 'F'
            , EndDatetime = getdate()
        WHERE PackageLogID = @PackageLogID

    IF @EndBatchAudit = 1
    Begin
    UPDATE dbo.BatchLog
        SET Status = 'F'
        , EndDatetime = getdate()
        WHERE BatchLogID = @BatchLogID
    End
END
GO

/****** Object:  StoredProcedure [dbo].[LogPackageStart]    Script Date: 05/12/2014 10:35:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[LogPackageStart]
(    @BatchLogID int
    ,@PackageName varchar(255) 
    ,@ExecutionInstanceID uniqueidentifier 
    ,@MachineName varchar(64) 
    ,@UserName varchar(64) 
    ,@StartDatetime datetime 
    ,@PackageVersionGUID uniqueidentifier 
    ,@VersionMajor int 
    ,@VersionMinor int 
    ,@VersionBuild int 
    ,@VersionComment varchar(1000) 
    ,@PackageGUID uniqueidentifier 
    ,@CreationDate datetime 
    ,@CreatedBy varchar(255) 
)

AS
BEGIN
SET NOCOUNT ON

DECLARE @PackageID int
,@PackageVersionID int 
,@PackageLogID int
,@EndBatchAudit bit

/* Initialize Variables */
SELECT @EndBatchAudit = 0

/* Get Package Metadata ID */
IF NOT EXISTS (SELECT 1 FROM dbo.Package WHERE PackageGUID = @PackageGUID AND PackageName = @PackageName)
Begin
    INSERT INTO dbo.Package (PackageGUID, PackageName, CreationDate, CreatedBy)
        VALUES (@PackageGUID, @PackageName, @CreationDate, @CreatedBy)
End

SELECT @PackageID = PackageID
    FROM dbo.Package 
    WHERE PackageGUID = @PackageGUID
    AND PackageName = @PackageName

/* Get Package Version MetaData ID */
IF NOT EXISTS (SELECT 1 FROM dbo.PackageVersion WHERE PackageVersionGUID = @PackageVersionGUID)
Begin
    INSERT INTO dbo.PackageVersion (PackageID, PackageVersionGUID, VersionMajor, VersionMinor, VersionBuild, VersionComment)
        VALUES (@PackageID, @PackageVersionGUID, @VersionMajor, @VersionMinor, @VersionBuild, @VersionComment)
End
SELECT @PackageVersionID = PackageVersionID
    FROM dbo.PackageVersion 
    WHERE PackageVersionGUID = @PackageVersionGUID

/* Get BatchLogID */
IF ISNULL(@BatchLogID,0) = 0
Begin
    INSERT INTO dbo.BatchLog (StartDatetime, [Status])
        VALUES (@StartDatetime, 'R')
    SELECT @BatchLogID = SCOPE_IDENTITY()
    SELECT @EndBatchAudit = 1
End

/* Create PackageLog Record */
INSERT INTO dbo.PackageLog (BatchLogID, PackageVersionID, ExecutionInstanceID, MachineName, UserName, StartDatetime, [Status])
    VALUES(@BatchLogID, @PackageVersionID, @ExecutionInstanceID, @MachineName, @UserName, @StartDatetime, 'R')

SELECT @PackageLogID = SCOPE_IDENTITY()

SELECT @BatchLogID as BatchLogID, @PackageLogID as PackageLogID, @EndBatchAudit as EndBatchAudit, GETDATE() as DataExecucao

END
GO

/****** Object:  StoredProcedure [dbo].[LogTaskPostExecute]    Script Date: 05/12/2014 10:35:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[LogTaskPostExecute]
( @PackageLogID int
 ,@SourceID uniqueidentifier
 ,@PackageID uniqueidentifier)
AS
BEGIN
   SET NOCOUNT ON
   IF @PackageID < > @SourceID
      UPDATE dbo.PackageTaskLog
         SET EndDateTime = getdate()
       WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
         AND EndDateTime is null
END
GO

/****** Object:  StoredProcedure [dbo].[LogTaskPreExecute]    Script Date: 05/12/2014 10:35:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[LogTaskPreExecute]
( @PackageLogID int
 ,@SourceName varchar(64)
 ,@SourceID uniqueidentifier
 ,@PackageID uniqueidentifier)
AS
BEGIN
SET NOCOUNT ON
IF @PackageID < > @SourceID
   AND @SourceName < > 'Grava info sobre inicio da exec'
   AND @SourceName < > 'Grava info sobre term da exec'
   INSERT INTO dbo.PackageTaskLog (PackageLogID, SourceName, SourceID,StartDateTime)
   VALUES (@PackageLogID, @SourceName, @SourceID, getdate())
END
GO
/****** Object:  StoredProcedure [dbo].[STP_CentralProjetos_AdministrativeUnit]    Script Date: 06/22/2015 09:07:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_CentralProjetos_AdministrativeUnit]
AS
BEGIN
    -- Inclusão das DREs
    INSERT INTO CentralProjects..AdministrativeUnit
    SELECT Id, Entity_Id, Code, Name, 1 as State, GETDATE() as CreateDate, GETDATE() as UpdateDate,
           AdministrativeUnitSuperior_Id
      FROM CP_AdministrativeUnit
     where AdministrativeUnitSuperior_Id is null
       and Id not in (select Id from CentralProjects..AdministrativeUnit)
    
    -- Inclusão das Escolas
    INSERT INTO CentralProjects..AdministrativeUnit
    SELECT Id, Entity_Id, Code, Name, 1 as State, GETDATE() as CreateDate, GETDATE() as UpdateDate,
           AdministrativeUnitSuperior_Id
      FROM CP_AdministrativeUnit
     where AdministrativeUnitSuperior_Id is not null
       and Id not in (select Id from CentralProjects..AdministrativeUnit)
    
    -- Atualização de dados modificados no SGP
    update destino
       set Entity_Id = origem.Entity_Id,
           Code = origem.Code,
           Name = origem.Name,
           AdministrativeUnitSuperior_Id = origem.AdministrativeUnitSuperior_Id,
           State = 1,
           UpdateDate = GETDATE()
      from CentralProjects..AdministrativeUnit destino
           inner join CP_AdministrativeUnit origem
           on destino.Id = origem.Id
     where ((destino.State = 3)
            or (destino.Entity_Id <> origem.Entity_Id)
            or (destino.Code <> origem.Code)
            or (destino.Name <> origem.Name)
            or (destino.AdministrativeUnitSuperior_Id <> origem.AdministrativeUnitSuperior_Id))
     
     -- Inativação dos registros que não estão mais vindo do SGP
     update destino
       set State = 3,
           UpdateDate = GETDATE()
      from CentralProjects..AdministrativeUnit destino
     where destino.State = 1
       and Id not in (select Id from CP_AdministrativeUnit)

END
GO
/****** Object:  StoredProcedure [dbo].[STP_CentralProjetos_CurriculumSubject]    Script Date: 06/22/2015 09:08:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_CentralProjetos_CurriculumSubject]
AS
BEGIN
    -- Inclusão das novas disciplinas
    INSERT INTO CentralProjects..CurriculumSubject
           (Entity_Id, External_Id, Description, State, CreateDate, UpdateDate)
    SELECT Entity_Id, External_Id, Description, 1 as State, GETDATE() as CreateDate, GETDATE() as UpdateDate
      FROM CP_CurriculumSubject
     where External_Id not in (select External_Id from CentralProjects..CurriculumSubject)
    
    -- Atualização de dados modificados no SGP
    update destino
       set Entity_Id = origem.Entity_Id,
           Description = origem.Description,
           State = 1,
           UpdateDate = GETDATE()
      from CentralProjects..CurriculumSubject destino
           inner join CP_CurriculumSubject origem
           on destino.External_Id = origem.External_Id
     where ((destino.State = 3)
            or (destino.Entity_Id <> origem.Entity_Id)
            or (destino.Description <> origem.Description))
     
     -- Inativação dos registros que não estão mais vindo do SGP
     update destino
       set State = 3,
           UpdateDate = GETDATE()
      from CentralProjects..CurriculumSubject destino
     where destino.State = 1
       and Entity_Id not in (select Entity_Id from CP_CurriculumSubject)

END
GO
/****** Object:  StoredProcedure [dbo].[STP_CentralProjetos_Usuarios]    Script Date: 06/22/2015 09:08:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_CentralProjetos_Usuarios]
AS
BEGIN
    DECLARE
    @gru_idDiretor UNIQUEIDENTIFIER, @gru_idDocente UNIQUEIDENTIFIER,
   	@gru_idAluno UNIQUEIDENTIFIER, @gru_idCoordPedag UNIQUEIDENTIFIER,
    @grp_supEscolar UNIQUEIDENTIFIER, @gru_id_DRE UNIQUEIDENTIFIER,
    @sis_id INT, @ent_id UNIQUEIDENTIFIER
    
    -- Id de sistema Central de Projetos
    select @sis_id = 207 -- sis_id FROM CoreSSO..SYS_Sistema WHERE sis_nome = 'Tá na Rede'
    
	--> Carrega valor para ID Entidade
    SET @ent_id = (SELECT TOP 1 ent_id FROM CoreSSO..SYS_Entidade WHERE ent_sigla = 'SMESP')
	
	--> Carrega ID do grupo Diretor Escolar
    SET @gru_idDiretor = (SELECT gru.gru_idUsadoIntegracao FROM DEPARA_GRUPOS_INTEGRACAO gru
                           WHERE gru.nomeUsadoIntegracao = 'Diretor Escolar' and gru.sis_id = @sis_id)
	
	--> Carrega ID do grupo Coordenador Pedagógico
    SET @gru_idCoordPedag = (SELECT gru.gru_idUsadoIntegracao FROM DEPARA_GRUPOS_INTEGRACAO gru
							  WHERE gru.nomeUsadoIntegracao = 'Coordenador Pedagógico' and gru.sis_id = @sis_id)
    
    --> Carrega ID do grupo Supervisor	
    SET @grp_supEscolar = (SELECT gru.gru_idUsadoIntegracao FROM DEPARA_GRUPOS_INTEGRACAO gru
							  WHERE gru.nomeUsadoIntegracao = 'Supervisor' and gru.sis_id = @sis_id)
	
	--> Carrega ID do grupo Professor	
    SET @gru_idDocente = (SELECT gru.gru_idUsadoIntegracao FROM DEPARA_GRUPOS_INTEGRACAO gru
						   WHERE gru.nomeUsadoIntegracao = 'Professor' and gru.sis_id = @sis_id)
	
    --> Carrega ID do grupo DOT-P da DRE
    SET @gru_id_DRE = (SELECT gru.gru_idUsadoIntegracao FROM DEPARA_GRUPOS_INTEGRACAO gru
						WHERE gru.nomeUsadoIntegracao = 'DOT-P da DRE' and gru.sis_id = @sis_id)
	
	--> Carrega ID do grupo Aluno
    SET @gru_idAluno = (SELECT gru.gru_idUsadoIntegracao FROM DEPARA_GRUPOS_INTEGRACAO gru
						 WHERE gru.nomeUsadoIntegracao = 'Aluno' and gru.sis_id = @sis_id)
    
	-- Cadastra as permissões para os docentes
    IF @gru_idDocente IS NOT NULL
    BEGIN
	   --> Tabela SYS_UsuarioGrupo
       CREATE TABLE #usuario_docente
         (usu_id UNIQUEIDENTIFIER,
          gru_id UNIQUEIDENTIFIER,
          pes_id UNIQUEIDENTIFIER)
       
       --> Grupo 'Coordenador Pedagógico'
       INSERT INTO #usuario_docente
       SELECT usu.usu_id, @gru_idDocente AS gru_id, usu.pes_id
         FROM (select distinct pes_id, ds.cd_registro_funcional
                 from tmp_DiarioSupervisor_Servidor ds
                      inner join bd_prodam..v_cargobase_mstech cb
                      on ds.cd_registro_funcional = cb.cd_registro_funcional 
                      inner join GestaoPedagogica..RHU_Cargo 
                       on cb.cd_cargo = RHU_Cargo.crg_codigo
                      and isnull(cb.cd_situacao_funcional,1) = RHU_Cargo.tvi_id
                      INNER JOIN GestaoPedagogica..RHU_ColaboradorCargo coc
                       ON ds.cd_registro_funcional = coc.coc_matricula
                      AND RHU_Cargo.crg_id = coc.crg_id
                      AND 1 = coc.coc_situacao
                where crg_situacao <> 3 and crg_cargoDocente = 1
                  and dc_cargo <> 'COORDENADOR PEDAGOGICO'
                  and ds.cd_registro_funcional not in
                      (select rf
                         from (select prf.rf, gc.cd_escola
                                 from BD_PRODAM..v_cadastro_professor prf
                                      inner join BD_PRODAM..v_grade_curricular gc
                                      on prf.rf = gc.rf
                                      inner join DEPARA_DISCIPLINAS dd
                                      on gc.Cod_Comp_Curr = dd.cd_componente_curricular
                                      inner join BD_PRODAM..v_unidade_educacao_dados_gerais esc
                                      on gc.cd_escola = esc.cd_unidade_educacao
                                where esc. dc_tipo_unidade_educacao = 'ESCOLA' 
                                  and esc.sg_tp_escola not in ('EMEF','EMEFM','CEU EMEF','EMEBS','CIEJA',
									 'EMEI','CECI','CEMEI','CEI DIRET', 'CCI/CIPS', 'CEI INDIR', 'CEU CEI', 'CEU EMEI', 'CR.P.CONV')
                                group by prf.rf, gc.cd_escola) prof
                        where prof.rf = ds.cd_registro_funcional
                          and prof.cd_escola = cb.lotacao)) tmp
              INNER JOIN CoreSSO..sys_usuario usu
               ON usu.usu_login COLLATE Latin1_General_CI_AI = tmp.cd_registro_funcional COLLATE Latin1_General_CI_AI
              AND tmp.pes_id = usu.pes_id
              AND usu.usu_situacao <> 3
        GROUP BY usu.usu_id, usu.pes_id

       INSERT INTO #usuario_docente
       SELECT usu.usu_id, @gru_idDocente AS gru_id, usu.pes_id
         FROM tmp_DiarioClasse_cadastro_professor tmp
              INNER JOIN CoreSSO..sys_usuario usu
               ON usu.usu_login COLLATE Latin1_General_CI_AI = tmp.rf COLLATE Latin1_General_CI_AI
              AND tmp.pes_id = usu.pes_id
              AND usu.usu_situacao <> 3
              INNER JOIN tmp_DiarioClasse_cargos crg
              ON tmp.rf = crg.cd_registro_funcional
              INNER JOIN GestaoPedagogica..RHU_TipoVinculo tvi
              ON tvi.tvi_codIntegracao = crg.cd_situacao_funcional
              INNER JOIN GestaoPedagogica..RHU_Cargo RHU_Cargo
               ON crg.cd_cargo = RHU_Cargo.crg_codigo
              AND tvi.tvi_id = RHU_Cargo.tvi_id
              AND 1 = RHU_Cargo.crg_cargoDocente
              INNER JOIN GestaoPedagogica..RHU_ColaboradorCargo coc
               ON tmp.rf = coc.coc_matricula
              AND RHU_Cargo.crg_id = coc.crg_id
              AND 1 = coc.coc_situacao
        where crg.cd_situacao_funcional is not null
          and rf in 
              (select rf
                 from (select prf.rf, gc.cd_escola
                         from BD_PRODAM..v_cadastro_professor prf
                              inner join BD_PRODAM..v_grade_curricular gc
                              on prf.rf = gc.rf
                              inner join BD_PRODAM..v_unidade_educacao_dados_gerais esc
                              on gc.cd_escola = esc.cd_unidade_educacao
                              inner join DEPARA_DISCIPLINAS dd
                              on gc.Cod_Comp_Curr = dd.cd_componente_curricular
                        where esc. dc_tipo_unidade_educacao = 'ESCOLA' 
                          and esc.sg_tp_escola in ('EMEF','EMEFM','CEU EMEF','EMEBS','CIEJA',
									 'EMEI','CECI','CEMEI','CEI DIRET', 'CCI/CIPS', 'CEI INDIR', 'CEU CEI', 'CEU EMEI', 'CR.P.CONV')
                        group by prf.rf, gc.cd_escola) doc
                  where doc.rf = tmp.rf
                    and doc.cd_escola = tmp.cd_escola)
          and usu.usu_id not in (select usu_id from #usuario_docente)
        GROUP BY usu.usu_id, usu.pes_id
	   
       MERGE INTO CoreSSO..SYS_UsuarioGrupo _target
       USING (SELECT usu_id, gru_id, pes_id
                FROM #usuario_docente
               GROUP BY usu_id, gru_id, pes_id) _source
        ON _source.usu_id = _target.usu_id
       AND _source.gru_id = _target.gru_id
       WHEN NOT MATCHED THEN
            INSERT (usu_id, gru_id, usg_situacao)
	        VALUES (_source.usu_id, _source.gru_id, 1) 
	   WHEN MATCHED THEN
            UPDATE SET usg_situacao = 1
	   WHEN NOT MATCHED BY SOURCE AND _target.gru_id = @gru_idDocente THEN
            UPDATE SET usg_situacao = 3;
       
       -- Manutenção da tabela SSIS_LoginImportado
       MERGE SSIS_LoginImportado AS _target
       USING  (SELECT usu.usu_id, usu.usu_login, tmp.gru_id
                 FROM #usuario_docente tmp WITH ( NOLOCK )
                      INNER JOIN CoreSSO..SYS_Usuario usu WITH ( NOLOCK )
                      ON tmp.usu_id = usu.usu_id
                GROUP BY usu.usu_id, usu.usu_login, tmp.gru_id) AS _source
        ON _source.usu_id = _target.usu_id
       AND _source.usu_login = _target.ssi_login
       AND _source.gru_id = _target.gru_id
       WHEN NOT MATCHED THEN
	        INSERT (usu_id, ssi_login, gru_id, ssi_situacao)
            VALUES (_source.usu_id, _source.usu_login, _source.gru_id, 1)
       WHEN MATCHED AND _target.ssi_situacao = 3 AND _target.gru_id = @gru_idDocente THEN
	        UPDATE SET ssi_situacao = 1 ,
                       ssi_dataAlteracao = GETDATE()
       WHEN NOT MATCHED BY SOURCE AND _target.ssi_situacao = 1 AND _target.gru_id = @gru_idDocente THEN
	        UPDATE SET ssi_situacao = 3, ssi_dataAlteracao = GETDATE();
	   
       -- UsuarioGrupo
       DELETE ug
         FROM CoreSSO..SYS_UsuarioGrupo ug
              INNER JOIN SSIS_LoginImportado lo
               ON ug.usu_id = lo.usu_id
              AND ug.gru_id = lo.gru_id
        WHERE lo.gru_id = @gru_idDocente
          AND lo.ssi_situacao = 3
    END
    
	--> Cadastra os grupos dos diretores	
    IF (@gru_idDiretor IS NOT NULL)
    BEGIN
	    --> Atribui para uma temp todos os diretores que serão importados para UsuarioGrupoUA
        CREATE TABLE #usuarioDiretor
          (usu_id UNIQUEIDENTIFIER,
           gru_id UNIQUEIDENTIFIER,
           uad_id UNIQUEIDENTIFIER,
           pes_id UNIQUEIDENTIFIER)
        
        INSERT INTO #usuarioDiretor
        SELECT usu.usu_id, @gru_idDiretor AS gru_id, esc.uad_id, usu.pes_id
          FROM tmp_DiarioSupervisor_servidor tmp
               INNER JOIN CoreSSO..sys_usuario usu
                ON usu.usu_login COLLATE Latin1_General_CI_AI = tmp.cd_registro_funcional COLLATE Latin1_General_CI_AI
               AND tmp.pes_id = usu.pes_id
               AND usu.usu_situacao <> 3
               INNER JOIN tmp_DiarioClasse_cargos crg
                ON tmp.cd_registro_funcional = crg.cd_registro_funcional
               AND crg.cd_cargo IN (3360, -- Cargo de Diretor
                                    3182, -- Cargo Secretário de Escola
                                    3085) -- Cargo Assistente de Diretor de Escola 
               INNER JOIN GestaoPedagogica..ESC_Escola esc ON crg.lotacao = esc.esc_codigo
         GROUP BY usu.usu_id, esc.uad_id, usu.pes_id
		
       MERGE INTO CoreSSO..SYS_UsuarioGrupo _target
       USING (SELECT usu_id, gru_id, pes_id
                FROM #usuarioDiretor
               GROUP BY usu_id, gru_id, pes_id) _source
        ON _source.usu_id = _target.usu_id
       AND _source.gru_id = _target.gru_id
       WHEN NOT MATCHED THEN
            INSERT (usu_id, gru_id, usg_situacao)
	        VALUES (_source.usu_id, _source.gru_id, 1) 
	   WHEN MATCHED THEN
            UPDATE SET usg_situacao = 1
	   WHEN NOT MATCHED BY SOURCE AND _target.gru_id = @gru_idDiretor THEN
            UPDATE SET usg_situacao = 3;
       
       -- Manutenção da tabela SSIS_LoginImportado
       MERGE SSIS_LoginImportado AS _target
       USING  (SELECT usu.usu_id, usu.usu_login, tmp.gru_id
                 FROM #usuarioDiretor tmp WITH ( NOLOCK )
                      INNER JOIN CoreSSO..SYS_Usuario usu WITH ( NOLOCK )
                      ON tmp.usu_id = usu.usu_id
                GROUP BY usu.usu_id, usu.usu_login, tmp.gru_id) AS _source
        ON _source.usu_id = _target.usu_id
       AND _source.usu_login = _target.ssi_login
       AND _source.gru_id = _target.gru_id
       WHEN NOT MATCHED THEN
	        INSERT (usu_id, ssi_login, gru_id, ssi_situacao)
            VALUES (_source.usu_id, _source.usu_login, _source.gru_id, 1)
       WHEN MATCHED AND _target.ssi_situacao = 3 AND _target.gru_id = @gru_idDiretor THEN
	        UPDATE SET ssi_situacao = 1 ,
                       ssi_dataAlteracao = GETDATE()
       WHEN NOT MATCHED BY SOURCE AND _target.ssi_situacao = 1 AND _target.gru_id = @gru_idDiretor THEN
	        UPDATE SET ssi_situacao = 3, ssi_dataAlteracao = GETDATE();
	   
       -- UsuarioGrupo
       DELETE ug
         FROM CoreSSO..SYS_UsuarioGrupo ug
              INNER JOIN SSIS_LoginImportado lo
               ON ug.usu_id = lo.usu_id
              AND ug.gru_id = lo.gru_id
        WHERE lo.gru_id = @gru_idDiretor
          AND lo.ssi_situacao = 3
	       
       --> Apaga todos os registros em SYS_UsuarioGrupoUA em que o usu_id e gru_id estejam vindo do BD_PRODAM
       DELETE ugu
         FROM CoreSSO..SYS_UsuarioGrupoUA ugu
              INNER JOIN #usuarioDiretor usd
               ON ugu.usu_id = usd.usu_id
              AND ugu.gru_id = usd.gru_id
            
       INSERT CoreSSO..SYS_UsuarioGrupoUA (usu_id, gru_id, uad_id, ent_id)
       SELECT usu.usu_id, usu.gru_id, usu.uad_id, @ent_id
         FROM #usuarioDiretor usu
        GROUP BY usu.usu_id, usu.gru_id, usu.uad_id
    END
    
	--> Cadastra os grupos dos Coord. Pedagogicos	
    IF @gru_idCoordPedag IS NOT NULL
    BEGIN
       CREATE TABLE #usuarioCoordPedag
         (usu_id UNIQUEIDENTIFIER,
          gru_id UNIQUEIDENTIFIER,
          uad_id UNIQUEIDENTIFIER,
          pes_id UNIQUEIDENTIFIER)
       
       --> Grupo 'Coordenador Pedagógico'
       INSERT INTO #usuarioCoordPedag
       SELECT usu.usu_id, @gru_idCoordPedag AS gru_id, esc.uad_id, usu.pes_id
         FROM tmp_DiarioSupervisor_servidor tmp
              INNER JOIN CoreSSO..sys_usuario usu
               ON usu.usu_login COLLATE Latin1_General_CI_AI = tmp.cd_registro_funcional COLLATE Latin1_General_CI_AI
              AND tmp.pes_id = usu.pes_id
              AND usu.usu_situacao <> 3
              INNER JOIN tmp_DiarioClasse_cargos crg
               ON tmp.cd_registro_funcional = crg.cd_registro_funcional
              AND crg.cd_cargo = 3379 -- Cargo de Coordenador Pedagógico
              INNER JOIN GestaoPedagogica..ESC_Escola esc ON crg.lotacao = esc.esc_codigo
        GROUP BY usu.usu_id, esc.uad_id, usu.pes_id
	   
       MERGE INTO CoreSSO..SYS_UsuarioGrupo _target
       USING (SELECT usu_id, gru_id, pes_id
              FROM #usuarioCoordPedag
             GROUP BY usu_id, gru_id, pes_id) _source
        ON _source.usu_id = _target.usu_id
       AND _source.gru_id = _target.gru_id
       WHEN NOT MATCHED THEN
            INSERT (usu_id, gru_id, usg_situacao)
	        VALUES (_source.usu_id, _source.gru_id, 1) 
	   WHEN MATCHED THEN
            UPDATE SET usg_situacao = 1;
       
       -- Manutenção da tabela SSIS_LoginImportado
       MERGE SSIS_LoginImportado AS _target
       USING  (SELECT usu.usu_id, usu.usu_login, tmp.gru_id
                 FROM #usuarioCoordPedag tmp WITH ( NOLOCK )
                      INNER JOIN CoreSSO..SYS_Usuario usu WITH ( NOLOCK )
                      ON tmp.usu_id = usu.usu_id
                GROUP BY usu.usu_id, usu.usu_login, tmp.gru_id) AS _source
        ON _source.usu_id = _target.usu_id
       AND _source.usu_login = _target.ssi_login
       AND _source.gru_id = _target.gru_id
       WHEN NOT MATCHED THEN
	        INSERT (usu_id, ssi_login, gru_id, ssi_situacao)
            VALUES (_source.usu_id, _source.usu_login, _source.gru_id, 1)
       WHEN MATCHED AND _target.ssi_situacao = 3 AND _target.gru_id = @gru_idCoordPedag THEN
	        UPDATE SET ssi_situacao = 1 ,
                       ssi_dataAlteracao = GETDATE()
       WHEN NOT MATCHED BY SOURCE AND _target.ssi_situacao = 1 AND _target.gru_id = @gru_idCoordPedag THEN
	        UPDATE SET ssi_situacao = 3, ssi_dataAlteracao = GETDATE();
	   
       -- UsuarioGrupo
       -- Deleta a relação UsuarioGrupo para os registros que estão na tmp de servidores importados automaticamente
       DELETE ug
         FROM CoreSSO..SYS_UsuarioGrupo ug
              INNER JOIN SSIS_LoginImportado lo
               ON ug.usu_id = lo.usu_id
              AND ug.gru_id = lo.gru_id
        WHERE lo.gru_id = @gru_idCoordPedag
          AND lo.ssi_situacao = 3
	   
	     --> Apaga todos os registros em SYS_UsuarioGrupoUA em que o usu_id e gru_id estejam vindo do BD_PRODAM
       DELETE ugu
         FROM CoreSSO..SYS_UsuarioGrupoUA ugu
              INNER JOIN #usuarioCoordPedag usd
               ON ugu.usu_id = usd.usu_id
              AND ugu.gru_id = usd.gru_id
            
       INSERT CoreSSO..SYS_UsuarioGrupoUA (usu_id, gru_id, uad_id, ent_id)
       SELECT usu.usu_id, usu.gru_id, usu.uad_id, @ent_id
         FROM #usuarioCoordPedag usu
        GROUP BY usu.usu_id, usu.gru_id, usu.uad_id
    END
    
	--> Cadastra os grupos de Supervisor Escolar	
    IF @grp_supEscolar IS NOT NULL
    BEGIN
       CREATE TABLE #usuariosupEscolar
         (usu_id UNIQUEIDENTIFIER,
          gru_id UNIQUEIDENTIFIER,
          uad_id UNIQUEIDENTIFIER,
          pes_id UNIQUEIDENTIFIER)
       
       --> Grupo 'Supervisor Escolar'
       -- pega direto a DRE
       INSERT INTO #usuariosupEscolar
       SELECT usu.usu_id, @grp_supEscolar AS gru_id, esc.uad_id, usu.pes_id
         FROM tmp_DiarioSupervisor_servidor tmp
              INNER JOIN CoreSSO..sys_usuario usu
               ON usu.usu_login COLLATE Latin1_General_CI_AI = tmp.cd_registro_funcional COLLATE Latin1_General_CI_AI
              AND tmp.pes_id = usu.pes_id
              AND usu.usu_situacao <> 3
              INNER JOIN tmp_DiarioClasse_cargos crg
               ON tmp.cd_registro_funcional = crg.cd_registro_funcional
              AND crg.cd_cargo = 3352 -- Supervisor Escolar
              INNER JOIN CoreSSO..SYS_UnidadeAdministrativa esc
               ON crg.lotacao = esc.uad_codigo
			  AND esc.tua_id = '52022558-8C00-4539-99FB-B647BC994D5E' --TIPO = DRE
        GROUP BY usu.usu_id, esc.uad_id, usu.pes_id
        
       -- quando for tipo de unidade errado (normalmente 'DIVISAO DE ORIENTACAO TECNICO-PEDAGOGICA-CE CS' ou 'SUPERVISAO ESCOLAR ....')
       -- neste caso tentar pegar a DRE
       INSERT INTO #usuariosupEscolar
       SELECT usu.usu_id, @grp_supEscolar AS gru_id, uadDRE.uad_id, usu.pes_id
         FROM tmp_DiarioSupervisor_servidor tmp
              INNER JOIN CoreSSO..sys_usuario usu
               ON usu.usu_login COLLATE Latin1_General_CI_AI = tmp.cd_registro_funcional COLLATE Latin1_General_CI_AI
              AND tmp.pes_id = usu.pes_id
              AND usu.usu_situacao <> 3
              INNER JOIN tmp_DiarioClasse_cargos crg
               ON tmp.cd_registro_funcional = crg.cd_registro_funcional
              AND crg.cd_cargo = 3352 -- Supervisor Escolar
              INNER JOIN CoreSSO..SYS_UnidadeAdministrativa uadErrado 
					  ON crg.lotacao = uadErrado.uad_codigo
					 AND uadErrado.tua_id = 'E33EF3BA-E4CA-479E-85F1-ED10FD2C0579' --Tipo = ESCOLA
			  INNER JOIN CoreSSO..SYS_UnidadeAdministrativa uadSetor on uadSetor.uad_id = uadErrado.uad_idSuperior
			  INNER JOIN CoreSSO..SYS_UnidadeAdministrativa uadDistrito on uadDistrito.uad_id = uadSetor.uad_idSuperior
			  INNER JOIN CoreSSO..SYS_UnidadeAdministrativa uadDRE on uadDRE.uad_id = uadDistrito.uad_idSuperior
        GROUP BY usu.usu_id, uadDRE.uad_id, usu.pes_id
	   
       MERGE INTO CoreSSO..SYS_UsuarioGrupo _target
       USING (SELECT usu_id, gru_id, pes_id
              FROM #usuariosupEscolar
             GROUP BY usu_id, gru_id, pes_id) _source
        ON _source.usu_id = _target.usu_id
       AND _source.gru_id = _target.gru_id
       WHEN NOT MATCHED THEN
            INSERT (usu_id, gru_id, usg_situacao)
	        VALUES (_source.usu_id, _source.gru_id, 1) 
	   WHEN MATCHED THEN
            UPDATE SET usg_situacao = 1;
       
       -- Manutenção da tabela SSIS_LoginImportado
       MERGE SSIS_LoginImportado AS _target
       USING  (SELECT usu.usu_id, usu.usu_login, tmp.gru_id
                 FROM #usuariosupEscolar tmp WITH ( NOLOCK )
                      INNER JOIN CoreSSO..SYS_Usuario usu WITH ( NOLOCK )
                      ON tmp.usu_id = usu.usu_id
                GROUP BY usu.usu_id, usu.usu_login, tmp.gru_id) AS _source
        ON _source.usu_id = _target.usu_id
       AND _source.usu_login = _target.ssi_login
       AND _source.gru_id = _target.gru_id
       WHEN NOT MATCHED THEN
	        INSERT (usu_id, ssi_login, gru_id, ssi_situacao)
            VALUES (_source.usu_id, _source.usu_login, _source.gru_id, 1)
       WHEN MATCHED AND _target.ssi_situacao = 3 AND _target.gru_id = @grp_supEscolar THEN
	        UPDATE SET ssi_situacao = 1 ,
                       ssi_dataAlteracao = GETDATE()
       WHEN NOT MATCHED BY SOURCE AND _target.ssi_situacao = 1 AND _target.gru_id = @grp_supEscolar THEN
	        UPDATE SET ssi_situacao = 3, ssi_dataAlteracao = GETDATE();
	   
       -- UsuarioGrupo
       -- Deleta a relação UsuarioGrupo para os registros que estão na tmp de servidores importados automaticamente
       DELETE ug
         FROM CoreSSO..SYS_UsuarioGrupo ug
              INNER JOIN SSIS_LoginImportado lo
               ON ug.usu_id = lo.usu_id
              AND ug.gru_id = lo.gru_id
        WHERE lo.gru_id = @grp_supEscolar
          AND lo.ssi_situacao = 3
	   
	     --> Apaga todos os registros em SYS_UsuarioGrupoUA em que o usu_id e gru_id estejam vindo do BD_PRODAM
         DELETE CoreSSO..SYS_UsuarioGrupoUA
           FROM CoreSSO..SYS_UsuarioGrupoUA ugu
                INNER JOIN #usuariosupEscolar usd
                 ON ugu.usu_id = usd.usu_id
                AND ugu.gru_id = usd.gru_id
	     
	     --> SYS_UsuarioGrupoUA
         INSERT CoreSSO..SYS_UsuarioGrupoUA (usu_id, gru_id, uad_id, ent_id)
         SELECT usu.usu_id, gru_id, usu.uad_id, @ent_id
           FROM #usuariosupEscolar usu
          where usu.gru_id = @grp_supEscolar
          GROUP BY usu.usu_id, usu.gru_id, usu.uad_id

         ----> Apaga os registro que não tiverem uma UA associada
         delete from CoreSSO..SYS_UsuarioGrupo
          where gru_id = @grp_supEscolar
            and usu_id not in (select usu_id from CoreSSO..SYS_UsuarioGrupoUA ugu
                                where ugu.gru_id = @grp_supEscolar
                                  and ugu.usu_id = CoreSSO..SYS_UsuarioGrupo.usu_id)
    END
    
    if @gru_id_DRE is not null
    begin
       CREATE TABLE #userDirRegional
          (usu_id UNIQUEIDENTIFIER,
           gru_id UNIQUEIDENTIFIER,
           pes_id UNIQUEIDENTIFIER,
           uad_id UNIQUEIDENTIFIER)
           
       --> Associa os Docentes ATIVOS ao grupo 'Secretário Escolar'
       INSERT INTO #userDirRegional
       select usu.usu_id, @gru_id_DRE as gru_id, SERV.pes_id, UAD.uad_id
         from tmp_DiarioSupervisor_servidor SERV
              INNER JOIN BD_PRODAM..v_cargobase_mstech CB
              on SERV.cd_registro_funcional = CB.cd_registro_funcional
              INNER JOIN BD_PRODAM..v_cargosobreposto_mstech SOBRE
              on CB.cd_cargo_base_servidor = SOBRE.cd_cargo_base_servidor
              inner join CoreSSO..SYS_UnidadeAdministrativa UAD
              on SOBRE.cd_unidade_local_servico = UAD.uad_codigo
              inner join CoreSSO..SYS_Usuario usu
              on SERV.pes_id = usu.pes_id 
			  and usu.usu_login not like 'RESP%' and usu.usu_login not like 'RA%'
        where SOBRE.cd_cargo = 3000
          and uad_situacao = 1 and usu_situacao <> 3
       
       MERGE INTO CoreSSO..SYS_UsuarioGrupo _target
       USING (SELECT usu_id, gru_id, pes_id
                FROM #userDirRegional
               GROUP BY usu_id, gru_id, pes_id) _source
        ON _source.usu_id = _target.usu_id
       AND _source.gru_id = _target.gru_id
       WHEN NOT MATCHED THEN
            INSERT (usu_id, gru_id, usg_situacao)
            VALUES (_source.usu_id, _source.gru_id, 1) 
       WHEN MATCHED THEN
            UPDATE SET usg_situacao = 1;
       
       -- Manutenção da tabela SSIS_LoginCoordPedag
       MERGE SSIS_LoginImportado AS _target
       USING (SELECT usu.usu_id, usu.usu_login, tmp.gru_id
                FROM #userDirRegional tmp WITH ( NOLOCK )
                     INNER JOIN CoreSSO..SYS_Usuario usu WITH ( NOLOCK ) ON tmp.usu_id = usu.usu_id
               GROUP BY usu.usu_id, usu.usu_login, tmp.gru_id) AS _source
        ON _source.usu_id = _target.usu_id
       AND _source.usu_login = _target.ssi_login
       AND _source.gru_id = _target.gru_id
       WHEN NOT MATCHED THEN
	        INSERT (usu_id, ssi_login, gru_id, ssi_situacao)
            VALUES (_source.usu_id, _source.usu_login, _source.gru_id, 1)
       WHEN MATCHED AND _target.ssi_situacao = 3 AND _target.gru_id = @gru_id_DRE THEN
            UPDATE SET ssi_situacao = 1, ssi_dataAlteracao = GETDATE()
       WHEN NOT MATCHED BY SOURCE AND _target.ssi_situacao = 1 AND _target.gru_id = @gru_id_DRE THEN
	        UPDATE SET ssi_situacao = 3,
                       ssi_dataAlteracao = GETDATE();	
	   
	   --> Apaga todos os registros em SYS_UsuarioGrupoUA em que o usu_id e gru_id estejam vindo do BD_PRODAM
       DELETE CoreSSO..SYS_UsuarioGrupoUA
         FROM CoreSSO..SYS_UsuarioGrupoUA ugu
              INNER JOIN #userDirRegional usd
               ON ugu.usu_id = usd.usu_id
              AND ugu.gru_id = usd.gru_id
       
       -- UsuarioGrupo
       -- Deleta a relação UsuarioGrupo para os registros que estão na tmp de servidores importados automaticamente
       DELETE ug
         FROM CoreSSO..SYS_UsuarioGrupo ug
              INNER JOIN SSIS_LoginImportado lo
               ON ug.usu_id = lo.usu_id
              AND ug.gru_id = lo.gru_id
        WHERE lo.gru_id = @gru_id_DRE  
          AND lo.ssi_situacao = 3
       
       MERGE CoreSSO..SYS_UsuarioGrupo AS _target
       USING (SELECT usu_id, gru_id
                FROM #userDirRegional
               GROUP BY usu_id, gru_id) AS _source
        ON _source.usu_id = _target.usu_id
       AND _source.gru_id = _target.gru_id
       WHEN NOT MATCHED THEN
            INSERT (usu_id, gru_id, usg_situacao)
            VALUES (_source.usu_id, _source.gru_id, 1)
       WHEN MATCHED THEN
            UPDATE SET usg_situacao = 1;

       MERGE CoreSSO..SYS_UsuarioGrupoUA AS _target
       USING (SELECT usu_id, gru_id, uad_id, @ent_id as ent_id
                FROM #userDirRegional
               GROUP BY usu_id, gru_id, uad_id) AS _source
        ON _source.usu_id = _target.usu_id
       AND _source.gru_id = _target.gru_id
       WHEN NOT MATCHED THEN
            INSERT (usu_id, gru_id, ent_id, uad_id)
            VALUES (_source.usu_id, _source.gru_id, _source.ent_id, _source.uad_id)
       WHEN MATCHED THEN
            UPDATE SET uad_id = _source.uad_id;
    END
    
    --> Alunos
    if @gru_idAluno is not null
    begin
	   --> Tabela SYS_UsuarioGrupo
       CREATE TABLE #usuario_aluno
         (usu_id UNIQUEIDENTIFIER,
          gru_id UNIQUEIDENTIFIER,
          pes_id UNIQUEIDENTIFIER)
       
       --> Grupo 'Aluno'
       INSERT INTO #usuario_aluno
       select usu.usu_id, @gru_idAluno AS gru_id, alu.pes_id
         from GestaoPedagogica..ACA_Aluno alu
              inner join GestaoPedagogica..ACA_AlunoCurriculo alc
              on alu.alu_id = alc.alu_id
              inner join GestaoPedagogica..MTR_MatriculaTurma mtu
               on alc.alu_id = mtu.alu_id
              and alc.alc_id = mtu.alc_id
              inner join GestaoPedagogica..TUR_Turma tur
              on mtu.tur_id = tur.tur_id
              inner join GestaoPedagogica..ESC_Escola esc
              on tur.esc_id = esc.esc_id
              inner join GestaoPedagogica..ACA_CurriculoPeriodo crp
               on alc.cur_id = crp.cur_id
              and alc.crr_id = crp.crr_id
              and alc.crp_id = crp.crp_id
              inner join GestaoPedagogica..ACA_TipoCiclo tci
              on crp.tci_id = tci.tci_id
              inner join CoreSSO..PES_Pessoa pes
              on alu.pes_id = pes.pes_id
              inner join CoreSSO..SYS_Usuario usu
              on pes.pes_id = usu.pes_id
              inner join GestaoPedagogica..ACA_CalendarioAnual cal
              on tur.cal_id = cal.cal_id
              inner join (select VALOR as cal_ano from _PARAMETROS where CHAVE = 'ANO_BASE') ano
              on cal.cal_ano = ano.cal_ano
        where alu_situacao = 1
          and alc_situacao = 1
          and mtu_situacao = 1
          and tur_situacao = 1
          and esc_situacao = 1
          and crp_situacao = 1
          and cal_situacao = 1
          and pes.pes_situacao = 1
          and tci.tci_situacao = 1
          and tci.tci_nome like '%autoral%'
        GROUP BY usu.usu_id, alu.pes_id

       MERGE INTO CoreSSO..SYS_UsuarioGrupo _target
       USING (SELECT usu_id, gru_id, pes_id
                FROM #usuario_aluno
               GROUP BY usu_id, gru_id, pes_id) _source
        ON _source.usu_id = _target.usu_id
       AND _source.gru_id = _target.gru_id
       WHEN NOT MATCHED THEN
            INSERT (usu_id, gru_id, usg_situacao)
	        VALUES (_source.usu_id, _source.gru_id, 1) 
	   WHEN MATCHED THEN
            UPDATE SET usg_situacao = 1
	   WHEN NOT MATCHED BY SOURCE AND _target.gru_id = @gru_idAluno THEN
            UPDATE SET usg_situacao = 3;
       
       -- Manutenção da tabela SSIS_LoginImportado
       MERGE SSIS_LoginImportado AS _target
       USING  (SELECT usu.usu_id, usu.usu_login, tmp.gru_id
                 FROM #usuario_aluno tmp WITH ( NOLOCK )
                      INNER JOIN CoreSSO..SYS_Usuario usu WITH ( NOLOCK )
                      ON tmp.usu_id = usu.usu_id
                GROUP BY usu.usu_id, usu.usu_login, tmp.gru_id) AS _source
        ON _source.usu_id = _target.usu_id
       AND _source.usu_login = _target.ssi_login
       AND _source.gru_id = _target.gru_id
       WHEN NOT MATCHED THEN
	        INSERT (usu_id, ssi_login, gru_id, ssi_situacao)
            VALUES (_source.usu_id, _source.usu_login, _source.gru_id, 1)
       WHEN MATCHED AND _target.ssi_situacao = 3 AND _target.gru_id = @gru_idAluno THEN
	        UPDATE SET ssi_situacao = 1 ,
                       ssi_dataAlteracao = GETDATE()
       WHEN NOT MATCHED BY SOURCE AND _target.ssi_situacao = 1 AND _target.gru_id = @gru_idAluno THEN
	        UPDATE SET ssi_situacao = 3, ssi_dataAlteracao = GETDATE();
	   
       -- UsuarioGrupo
       DELETE ug
         FROM CoreSSO..SYS_UsuarioGrupo ug
              INNER JOIN SSIS_LoginImportado lo
               ON ug.usu_id = lo.usu_id
              AND ug.gru_id = lo.gru_id
        WHERE lo.gru_id = @gru_idAluno
          AND lo.ssi_situacao = 3
    end
END
GO
/****** Object:  StoredProcedure [dbo].[STP_CentralProjetosGE_Aluno]    Script Date: 06/22/2015 09:08:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_CentralProjetosGE_Aluno]
AS
BEGIN
	--Insere os novos dados
	insert into CentralProjectsGE..Aluno
	       (alu_id, alc_matricula, pes_id, pes_nome, tur_codigo, uad_id, cal_id, tcp_id, tur_id)
	select alu_id, alc_matricula, pes_id, pes_nome, tur_codigo, uad_id, cal_id, tcp_id, tur_id
	  from CP_Aluno
	 where tur_id in (select tur_id from CP_Turma)
	 group by alu_id, alc_matricula, pes_id, pes_nome, tur_codigo, uad_id, cal_id, tcp_id, tur_id
END
GO
/****** Object:  StoredProcedure [dbo].[STP_CentralProjetosGE_Calendario]    Script Date: 06/22/2015 09:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_CentralProjetosGE_Calendario]
AS
BEGIN
	-- Apaga os dados da última integração (precisa apagar todos por causa da integridade referencial)
	DELETE FROM CentralProjectsGE..Aluno
	DELETE FROM CentralProjectsGE..TurmaDocente
	DELETE FROM CentralProjectsGE..Docente
	DELETE FROM CentralProjectsGE..Turma
	DELETE FROM CentralProjectsGE..Calendario
	DELETE FROM CentralProjectsGE..Periodo
	
	--Insere os novos dados
	insert into CentralProjectsGE..Calendario (cal_id, cal_ano, cal_descricao)
	select cal_id, cal_ano, cal_descricao
	  from CP_Calendario 
END
GO
/****** Object:  StoredProcedure [dbo].[STP_CentralProjetosGE_Docente]    Script Date: 06/22/2015 09:09:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_CentralProjetosGE_Docente]
AS
BEGIN
	
	--Insere os novos dados
	insert into CentralProjectsGE..Docente (doc_id, pes_id, pes_nome)
	select doc_id, pes_id, pes_nome
	  from CP_Docente 
END
GO
/****** Object:  StoredProcedure [dbo].[STP_CentralProjetosGE_Periodo]    Script Date: 06/22/2015 09:09:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_CentralProjetosGE_Periodo]
AS
BEGIN
	
	--Insere os novos dados
	insert into CentralProjectsGE..Periodo (tcp_id, tcp_ordem, tcp_descricao)
	select tcp_id, tcp_ordem, tcp_descricao
	  from CP_Periodo 
END
GO
/****** Object:  StoredProcedure [dbo].[STP_CentralProjetosGE_Turma]    Script Date: 06/22/2015 09:09:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_CentralProjetosGE_Turma]
AS
BEGIN
	
	--Insere os novos dados
	insert into CentralProjectsGE..Turma (tur_id, tur_codigo, uad_id, cal_id, tcp_id)
	select tur_id, tur_codigo, uad_id, cal_id, tcp_id
	  from CP_Turma 
END
GO
/****** Object:  StoredProcedure [dbo].[STP_CentralProjetosGE_TurmaDocente]    Script Date: 06/22/2015 09:09:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_CentralProjetosGE_TurmaDocente]
AS
BEGIN
	
	--Insere os novos dados
	insert into CentralProjectsGE..TurmaDocente (doc_id, tur_id)
	select doc_id, tur_id
	  from CP_TurmaDocente
END
GO

USE [GestaoPedagogica]
GO
DISABLE TRIGGER TRG_ACA_AlunoCurriculo_Identity ON ACA_AlunoCurriculo;
GO
USE [Manutencao]
GO
/****** Object:  StoredProcedure [dbo].[STP_DiarioClasse_ACA_AlunoCurriculo_IMPORT]    Script Date: 05/16/2014 09:17:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_DiarioClasse_ACA_AlunoCurriculo_IMPORT]
	@ent_id UNIQUEIDENTIFIER
AS
BEGIN

/*    ------------------------------- INÍCIO do tratamento de vínculo indevido -------------------------------
    IF NOT EXISTS (SELECT * FROM BD_PRODAM.sys.indexes WHERE object_id = OBJECT_ID(N'BD_PRODAM..v_alunos_turma_matriculados_historico_movimentacao') AND name = N'IX_HM_01')
       CREATE NONCLUSTERED INDEX IX_HM_01 ON BD_PRODAM..v_alunos_turma_matriculados_historico_movimentacao (cl_st)
       INCLUDE (cl_codigo,cl_alu_codigo,cl_tur_codigo)
    
    IF NOT EXISTS (SELECT * FROM BD_PRODAM.sys.indexes WHERE object_id = OBJECT_ID(N'BD_PRODAM..v_alunos_turma_matriculados_historico_movimentacao') AND name = N'IX_HM_02')
       CREATE NONCLUSTERED INDEX IX_HM_02 ON BD_PRODAM..v_alunos_turma_matriculados_historico_movimentacao (an_letivo,cl_st)
       INCLUDE (cl_codigo,cl_alu_codigo,cl_tur_codigo,cl_datst)
    
    IF NOT EXISTS (SELECT * FROM BD_PRODAM.sys.indexes WHERE object_id = OBJECT_ID(N'BD_PRODAM..v_alunos_turma_matriculados_historico_movimentacao') AND name = N'IX_HM_03')
       CREATE NONCLUSTERED INDEX IX_HM_03 ON BD_PRODAM..v_alunos_turma_matriculados_historico_movimentacao (cl_tur_codigo,an_letivo,cl_st)
       INCLUDE (cl_codigo,cl_alu_codigo,cl_datst)
    
    IF NOT EXISTS (SELECT * FROM BD_PRODAM.sys.indexes WHERE object_id = OBJECT_ID(N'BD_PRODAM..v_turma_MSTECH') AND name = N'IX_vTurma_01')
       CREATE NONCLUSTERED INDEX IX_vTurma_01 ON BD_PRODAM..v_turma_MSTECH (cd_tipo_turma,cd_etapa_ensino,cd_ciclo_ensino)
       INCLUDE (cd_turma_escola,cd_escola)
    
    IF NOT EXISTS (SELECT * FROM BD_PRODAM.sys.indexes WHERE object_id = OBJECT_ID(N'BD_PRODAM..v_turma_MSTECH') AND name = N'IX_vTurma_02')
       CREATE NONCLUSTERED INDEX IX_vTurma_02 ON BD_PRODAM..v_turma_MSTECH (cd_escola)
       INCLUDE (cd_turma_escola)
    
    create table #MovimentacaoVI
           (cl_alu_codigo int, cd_escola char(6), cd_turma_escola int, cl_datst datetime,
            alu_id bigint, alc_id int, mtu_id int, tur_id bigint)
    create table #MaiorEntradaAntesVI (cl_alu_codigo int, cd_escola char(6), cl_datst datetime)
    create table #TurmasDepoisDoVI (cl_alu_codigo int, cd_escola char(6), cd_turma_escola int, cl_datst date)
    create table #Arrumar (alu_id bigint, alc_id int, mtu_id int, tur_id bigint)
    
    -- pega todos os casos de VI no ano em curso, com as turmas onde o aluno passou em uma mesma escola
    insert into #MovimentacaoVI (cl_alu_codigo, cd_escola, cd_turma_escola, cl_datst)
    select hm.cl_alu_codigo, turma.cd_escola, cd_turma_escola, hm.cl_datst
      from BD_PRODAM..v_alunos_turma_matriculados_historico_movimentacao hm
           inner join BD_PRODAM..v_turma_MSTECH turma
           on hm.cl_tur_codigo = turma.cd_turma_escola
           inner join BD_PRODAM..v_unidade_educacao_dados_gerais escola
           on turma.cd_escola = escola.cd_unidade_educacao
           INNER JOIN
           (select cl_alu_codigo, cd_escola, cl_codigo, max(cl_datst) cl_datst
              from BD_PRODAM..v_alunos_turma_matriculados_historico_movimentacao mov
                   inner join BD_PRODAM..v_turma_MSTECH tur
                   on mov.cl_tur_codigo = tur.cd_turma_escola
                   inner join BD_PRODAM..v_unidade_educacao_dados_gerais esc
                   on tur.cd_escola = esc.cd_unidade_educacao
             where mov.an_letivo = (select VALOR from _PARAMETROS where CHAVE = 'ANO_BASE')
               and mov.cl_st = 'X'
               and mov.cl_datst > (select VALOR from _PARAMETROS where CHAVE = 'MAIOR_DATA_VI')
               and mov.cl_alu_codigo not in (select alc_matricula from ALUNOS_VI_COM_NOTA)
               and tur.cd_tipo_turma = 1
               AND tur.cd_etapa_ensino IN (2,3,4,5,11)
               AND tur.cd_ciclo_ensino IN (1,2,3,4,5,6,7,8,9,14,15,16,18,19,24,25,26,27)
               and esc.sg_tp_escola in ('CEU EMEF','EMEF','EMEFM','EMEBS','CIEJA')
             group by cl_alu_codigo, cd_escola, cl_codigo) dados
            on hm.cl_alu_codigo = dados.cl_alu_codigo
           and turma.cd_escola = dados.cd_escola
           and hm.cl_codigo <= dados.cl_codigo
           and hm.cl_datst <= dados.cl_datst
     where hm.an_letivo = (select VALOR from _PARAMETROS where CHAVE = 'ANO_BASE')
       and hm.cl_alu_codigo not in (select alc_matricula from ALUNOS_VI_COM_NOTA)
       and hm.cl_st in ('I', 'S', 'E')
       and turma.cd_tipo_turma = 1
       AND turma.cd_etapa_ensino IN (2,3,4,5,11)
       AND turma.cd_ciclo_ensino IN (1,2,3,4,5,6,7,8,9,14,15,16,18,19,24,25,26,27)
       and escola.sg_tp_escola in ('CEU EMEF','EMEF','EMEFM','EMEBS','CIEJA')
       and hm.cl_alu_codigo not in
           (select cl_alu_codigo
              from BD_PRODAM..v_alunos_turma_matriculados_historico_movimentacao saida
                   inner join BD_PRODAM..v_turma_MSTECH turexit
                   on saida.cl_tur_codigo = turexit.cd_turma_escola
                   inner join BD_PRODAM..v_unidade_educacao_dados_gerais escsaida
                   on turexit.cd_escola = escsaida.cd_unidade_educacao
             where saida.cl_alu_codigo = hm.cl_alu_codigo
               and turexit.cd_escola = turma.cd_escola
               and saida.cl_datst > hm.cl_datst
               and saida.cl_datst <= dados.cl_datst
               and saida.cl_st in ('D', 'N', 'T')
               and saida.an_letivo = (select VALOR from _PARAMETROS where CHAVE = 'ANO_BASE')
               and turexit.cd_tipo_turma = 1
               AND turexit.cd_etapa_ensino IN (2,3,4,5,11)
               AND turexit.cd_ciclo_ensino IN (1,2,3,4,5,6,7,8,9,14,15,16,18,19,24,25,26,27)
               and escsaida.sg_tp_escola in ('CEU EMEF','EMEF','EMEFM','EMEBS','CIEJA'))
     group by hm.cl_alu_codigo, turma.cd_escola, cd_turma_escola, hm.cl_datst
    
    IF EXISTS (SELECT cl_alu_codigo FROM #MovimentacaoVI)
    BEGIN
        -- pega a maior data de entrada nas turmas que tiveram VI
        insert into #MaiorEntradaAntesVI
        select cl_alu_codigo, cd_escola, max(cl_datst) cl_datst
          from #MovimentacaoVI
         group by cl_alu_codigo, cd_escola
        
        -- Verifica se existem turmas que tiveram VI e que o aluno depois foi matrículado nessa mesma turma
        insert into #TurmasDepoisDoVI
        select cl_alu_codigo, cd_escola, cd_turma_escola, cast(cl_datst as date) cl_datst
          from (select hm.cl_alu_codigo, turma.cd_escola, turma.cd_turma_escola, min(hm.cl_datst) cl_datst
                  from #MaiorEntradaAntesVI data
                       inner join #MovimentacaoVI mov
                        on data.cl_alu_codigo = mov.cl_alu_codigo
                       and data.cd_escola = mov.cd_escola
                       inner join BD_PRODAM..v_unidade_educacao_dados_gerais escola
                       on mov.cd_escola = escola.cd_unidade_educacao
                       inner join BD_PRODAM..v_turma_MSTECH turma
                       on mov.cd_turma_escola = turma.cd_turma_escola
                       inner join BD_PRODAM..v_alunos_turma_matriculados_historico_movimentacao hm
                        on mov.cl_alu_codigo = hm.cl_alu_codigo
                       and mov.cd_turma_escola = hm.cl_tur_codigo
                       and data.cl_datst < hm.cl_datst
                 where hm.an_letivo = (select VALOR from _PARAMETROS where CHAVE = 'ANO_BASE')
                   and hm.cl_st in ('I', 'S', 'E')
                   and turma.cd_tipo_turma = 1
                   AND turma.cd_etapa_ensino IN (2,3,4,5,11)
                   AND turma.cd_ciclo_ensino IN (1,2,3,4,5,6,7,8,9,14,15,16,18,19,24,25,26,27)
                   and escola.sg_tp_escola in ('CEU EMEF','EMEF','EMEFM','EMEBS','CIEJA') 
                 group by hm.cl_alu_codigo, turma.cd_escola, turma.cd_turma_escola) dados
        
        -- atualiza as datas para que não tenha nenhuma data antes do início das aulas
        update #TurmasDepoisDoVI
           set cl_datst = (select VALOR from _PARAMETROS where CHAVE = 'DATA_CORTE')
         where cl_datst < (select VALOR from _PARAMETROS where CHAVE = 'DATA_CORTE')
        
        -- apaga da temporária de VI as turmas onde o aluno foi matriculado novamente depois do VI 
        delete vi
          from #MovimentacaoVI vi
               inner join #TurmasDepoisDoVI mtr
                on vi.cl_alu_codigo = mtr.cl_alu_codigo
               and vi.cd_turma_escola = mtr.cd_turma_escola
               and vi.cd_escola = mtr.cd_escola
        
        update #MovimentacaoVI
           set cl_datst = (select VALOR + ' 00:00:00.000' from _PARAMETROS where CHAVE = 'DATA_CORTE')
         where cl_datst < (select VALOR + ' 00:00:00.000' from _PARAMETROS where CHAVE = 'DATA_CORTE')
        
        -- verifica se existem matriculas nas turmas que tiveram VI
        update vi
           set alu_id = alc.alu_id,
               mtu_id = mtu.mtu_id,
               alc_id = mtu.alc_id,
               tur_id = mtu.tur_id
          from #MovimentacaoVI vi
               inner join Manutencao..DEPARA_TURMA dpt
               on vi.cd_turma_escola = dpt.tur_codigo
               inner join
               (select alu_id, alc_matricula 
                  from GestaoPedagogica..ACA_AlunoCurriculo with (nolock)
                 where alc_situacao <> 3
                 group by alu_id, alc_matricula) alc
               on vi.cl_alu_codigo = alc.alc_matricula
               inner join GestaoPedagogica..MTR_MatriculaTurma mtu with (nolock)
                on alc.alu_id = mtu.alu_id
               and dpt.tur_id = mtu.tur_id
               and CAST(vi.cl_datst as DATE) = mtu_dataMatricula
         where mtu_situacao <> 3
        
        insert into #Arrumar (alu_id, alc_id, mtu_id, tur_id)
        select alu_id, alc_id, mtu_id, tur_id
          from #MovimentacaoVI
         where alu_id is not null
         group by alu_id, alc_id, mtu_id, tur_id
        
        begin tran
        -- Exclui logicamente o registro do vínculo indevido na ACA_AlunoCurriculo
        update alc
           set alc_situacao = 3, alc_dataAlteracao = GETDATE()
          from GestaoPedagogica..ACA_AlunoCurriculo alc
               inner join #Arrumar mov
                on alc.alu_id = mov.alu_id
               and alc.alc_id = mov.alc_id
        
        if @@ERROR <> 0
        begin
           print 'Erro na exclusão do registro indevido na ACA_AlunoCurriculo'
           rollback
           return
        end
        -- Exclui logicamente o registro do vínculo indevido na MTR_MatriculaTurma
        update mtu
           set mtu_situacao = 3, mtu_dataAlteracao = GETDATE()
          from GestaoPedagogica..MTR_MatriculaTurma mtu
               inner join #Arrumar mov
                on mtu.alu_id = mov.alu_id
               and mtu.mtu_id = mov.mtu_id
        
        if @@ERROR <> 0
        begin
           print 'Erro na exclusão do registro indevido na MTR_MatriculaTurma'
           rollback
           return
        end
        -- Exclui logicamente o registro do vínculo indevido na MTR_MatriculaTurmaDisciplina
        update mtd
           set mtd_situacao = 3, mtd_dataAlteracao = GETDATE()
          from GestaoPedagogica..MTR_MatriculaTurmaDisciplina mtd
               inner join #Arrumar mov
                on mtd.alu_id = mov.alu_id
               and mtd.mtu_id = mov.mtu_id
        
        if @@ERROR <> 0
        begin
           print 'Erro na exclusão do registro indevido na MTR_MatriculaTurmaDisciplina'
           rollback
           return
        end
        -- Exclui logicamente a movimentação de entrada do vínculo indevido, desde que não esteja em uma  
        -- movimentação de saída de deva permanecer
        update entrada
           set mov_situacao = 3, mov_dataAlteracao = GETDATE(), usu_id = '8D869FB9-F88C-E311-B1FE-782BCB3D2D76'
          from GestaoPedagogica..MTR_Movimentacao entrada
               inner join #Arrumar mov
                on entrada.alu_id = mov.alu_id
               and entrada.mtu_idAtual = mov.mtu_id
         where mov_situacao <> 3
           and isnull(entrada.mtu_idAnterior,mov.mtu_id) in
               (select mtu_id from #Arrumar aux
                 where aux.alu_id = entrada.alu_id
                   and aux.mtu_id = isnull(entrada.mtu_idAnterior,aux.mtu_id))
        
        if @@ERROR <> 0
        begin
           print 'Erro na exclusão do registro indevido na MTR_Movimentacao (entrada)'
           rollback
           return
        end
        -- Exclui logicamente a movimentação de saída do vínculo indevido, desde que não esteja em uma  
        -- movimentação de entrada de deva permanecer
        update saida
           set mov_situacao = 3, mov_dataAlteracao = GETDATE(), usu_id = '8D869FB9-F88C-E311-B1FE-782BCB3D2D76'
          from GestaoPedagogica..MTR_Movimentacao saida
               inner join #Arrumar mov
                on saida.alu_id = mov.alu_id
               and saida.mtu_idAnterior = mov.mtu_id
         where mov_situacao <> 3
           and isnull(saida.mtu_idAtual,mov.mtu_id) in
               (select mtu_id from #Arrumar aux
                 where aux.alu_id = saida.alu_id
                   and aux.mtu_id = isnull(saida.mtu_idAtual,aux.mtu_id))
        
        if @@ERROR <> 0
        begin
           print 'Erro na exclusão do registro indevido na MTR_Movimentacao (saída)'
           rollback
           return
        end
        
        -- Atualiza a movimentação de saída que esteja ligada a uma entrada com vínculo indevido
        update saida
           set tmv_idSaida = 13, tmv_idEntrada = null, tmo_id = 9, mtu_idAtual = null, alc_idAtual = null,
               mov_dataAlteracao = GETDATE(), usu_id = '8D869FB9-F88C-E311-B1FE-782BCB3D2D76'
          from GestaoPedagogica..MTR_Movimentacao saida
               inner join #Arrumar mov
                on saida.alu_id = mov.alu_id
               and saida.mtu_idAtual = mov.mtu_id
         where saida.mov_situacao <> 3
        
        if @@ERROR <> 0
        begin
           print 'Erro na atualização do registro indevido na MTR_Movimentacao (saída)'
           rollback
           return
        end
        
        -- Atualiza a movimentação de entrada que esteja ligada a uma saída com vínculo indevido
        update entrada
           set tmv_idEntrada = 3, tmv_idSaida = null, tmo_id = 3, mtu_idAnterior = null, alc_idAnterior = null,
               mov_dataAlteracao = GETDATE(), usu_id = '8D869FB9-F88C-E311-B1FE-782BCB3D2D76'
          from GestaoPedagogica..MTR_Movimentacao entrada
               inner join #Arrumar mov
                on entrada.alu_id = mov.alu_id
               and entrada.mtu_idAnterior = mov.mtu_id
         where entrada.mov_situacao <> 3
        
        if @@ERROR <> 0
        begin
           print 'Erro na atualização do registro indevido na MTR_Movimentacao (entrada)'
           rollback
           return
        end
        
        -- Exclui logicamente os alunos que só tinham a movimentação de vínculo indevido
        update alu
           set alu_situacao = 4
          from GestaoPedagogica..ACA_Aluno alu inner join
               #Arrumar mov
               on alu.alu_id = mov.alu_id
         where alu_situacao <> 3
           and alu.alu_id not in (select alu_id from GestaoPedagogica..MTR_MatriculaTurma where mtu_situacao <> 3)
        
        if @@ERROR <> 0
        begin
           print 'Erro na atualização de alunos'
           rollback
           return
        end
        
        -- Altera a MTR_MatriculasBoletim de acordo com os novos dados
        DELETE mtb
          FROM GestaoPedagogica..MTR_MatriculasBoletim mtb
         WHERE alu_id in (select alu_id from #Arrumar group by alu_id)
        
        CREATE TABLE #Inserir2 (alu_id int, mtu_id int, controle int)
        
        insert into #Inserir2
        select alu_id, mtu_id, 0
          from GestaoPedagogica..MTR_MatriculaTurma mtu
         where mtu_situacao <> 3
           and alu_id in (select alu_id from #Arrumar group by alu_id)
        
        insert into GestaoPedagogica..MTR_MatriculasBoletim
        select Mtr.alu_id,cal_ano,cal_id,cap_id,tpc_id,tpc_ordem,Mtr.mtu_id,tur_id,tur_codigo,fav_id,tpc_nome,
               PermiteConceitoGlobal,PermiteDisciplinas,PeriodosEquivalentes,MesmoCalendario,MesmoFormato,MesmaEscola,
               esc_id,mtu_numeroChamada,PossuiSaidaPeriodo,PossuiEntradaPeriodo,mov_id,mov_frequencia,registroExterno,
               EntradaImportacaoSCA,EntradaTransfOutrasRedes, #Inserir2.mtu_id
          from #Inserir2
               CROSS APPLY GestaoPedagogica.dbo.FN_MatriculasBoletim(#Inserir2.alu_id, #Inserir2.mtu_id) Mtr
        
        drop table #Inserir2
        
        DECLARE @MAIOR_DATA varchar(20)
        
        select @MAIOR_DATA = convert(varchar(20),max(cl_datst),120)
          from BD_PRODAM..v_alunos_turma_matriculados_historico_movimentacao mov
               inner join BD_PRODAM..v_turma_MSTECH turma
               on mov.cl_tur_codigo = turma.cd_turma_escola
               inner join BD_PRODAM..v_unidade_educacao_dados_gerais escola
               on turma.cd_escola = escola.cd_unidade_educacao
         where mov.an_letivo = (select VALOR from _PARAMETROS where CHAVE = 'ANO_BASE')
           and mov.cl_st = 'X'
           and mov.expr1 > (select VALOR from _PARAMETROS where CHAVE = 'DATA_CORTE')
           and turma.cd_tipo_turma = 1
           AND turma.cd_etapa_ensino IN (2,3,4,5,11)
           AND turma.cd_ciclo_ensino IN (1,2,3,4,5,6,7,8,9,14,15,16,18,19,24,25,26,27)
           and escola.sg_tp_escola in ('CEU EMEF','EMEF','EMEFM','EMEBS','CIEJA')
        
        IF EXISTS (select VALOR from _PARAMETROS where CHAVE = 'MAIOR_DATA_VI')
           update _PARAMETROS SET VALOR = @MAIOR_DATA where CHAVE = 'MAIOR_DATA_VI'
        ELSE
           INSERT INTO _PARAMETROS (CHAVE, VALOR)
           VALUES ('MAIOR_DATA_VI', @MAIOR_DATA)
        
        commit
    END
    drop table #MaiorEntradaAntesVI
    drop table #MovimentacaoVI
    drop table #TurmasDepoisDoVI
    drop table #Arrumar
    ------------------------------ TÉRMINO do tratamento de vínculo indevido ------------------------------- */

    IF (@ent_id IS NULL)
      SET @ent_id = (SELECT ent_id FROM SSO_SYS_Entidade WITH (NOLOCK) WHERE ent_sigla = 'smesp')
    
    /* cria tabela Temporária com a última movimentação do aluno */
    IF  NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_ult_mov]') AND type in (N'U'))
        CREATE TABLE dbo.tmp_ult_mov(
           alu_id                    bigint,
           alc_id                    int,
           mtu_id                    int,
           alc_matricula             varchar(50),
           cur_id                    int,
           crr_id                    int,
           crp_id                    int,
           tur_id                    bigint,
           alc_situacao              tinyint,
           alc_dataPrimeiraMatricula date,
           alc_dataSaida             date,
           mov_id                    int,
           cd_turma_escola           int,
           esc_codigo                varchar(20))
    
    truncate table tmp_ult_mov
    
    -- Pega a última movimentação e os respectivos ids
    insert into tmp_ult_mov
           (alu_id, alc_id, alc_matricula, cur_id, crr_id, crp_id, tur_id, alc_situacao,
           alc_dataPrimeiraMatricula, alc_dataSaida, mov_id, cd_turma_escola, esc_codigo, mtu_id)
    select alc.alu_id, alc.alc_id, alc_matricula, mtu.cur_id, mtu.crr_id, mtu.crp_id, mtu.tur_id, alc_situacao,
           alc_dataPrimeiraMatricula, alc_dataSaida, mov_id, cast(DEPARA_TURMA.tur_codigo as int) cd_turma_escola,
           esc_codigo, mtu.mtu_id
      from GE_ACA_AlunoCurriculo alc  WITH (NOLOCK) inner join GE_MTR_MatriculaTurma mtu WITH (NOLOCK)
            on alc.alu_id = mtu.alu_id
           and alc.alc_id = mtu.alc_id
           inner join 
           (select alu_id, ISNULL(mtu_idAtual, mtu_idAnterior) as mtu_id,
                   ISNULL(alc_idAtual, alc_idAnterior) as alc_id, mov_id
              from GE_MTR_Movimentacao WITH (NOLOCK) 
             where alu_id in
                   (select alu_id
                      from (select alu_id, MAX(mov_ordem) mov_ordem from GE_MTR_Movimentacao WITH (NOLOCK)
                             where mov_situacao = 1 group by alu_id) maior
                      where maior.alu_id =  GE_MTR_Movimentacao.alu_id
                        and maior.mov_ordem = GE_MTR_Movimentacao.mov_ordem)) mov
            on mtu.alu_id = mov.alu_id
           and mtu.mtu_id = mov.mtu_id
           and mtu.alc_id = mov.alc_id
           inner join DEPARA_TURMA WITH (NOLOCK)
           on mtu.tur_id = DEPARA_TURMA.tur_id
           inner join GE_ESC_Escola WITH (NOLOCK)
           on alc.esc_id = GE_ESC_Escola.esc_id
		   AND GE_ESC_Escola.esc_situacao <> 3
    
    MERGE INTO GE_ACA_AlunoCurriculo _target
    USING
    (SELECT ISNULL(_main.alc_id, isnull(PROX_ALC.alc_id,0) + 1) AS alc_id, _main.alu_id, _main.esc_id, _main.uni_id,
            _main.cur_id, _main.crr_id, _main.crp_id, _main.alc_matricula, _main.alc_situacao, _main.cl_dt_inclusao, _main.tur_id
       FROM (SELECT alc.alc_id, _row.alu_id, _row.esc_id, _row.uni_id, _row.cur_id, _row.crr_id,
                    _row.crp_id, _row.alc_matricula, _row.alc_situacao, _row.cl_dt_inclusao, _row.tur_id,
                    ROW_NUMBER() OVER(PARTITION BY _row.alu_id ORDER BY _row.cl_dt_inclusao) AS RowNum
               FROM (SELECT _out.alu_id, _out.esc_id, _out.uni_id, _out.cur_id, _out.crr_id, _out.cd_escola,
                            _out.crp_id, _out.alc_matricula, _out.alc_situacao, _out.cl_dt_inclusao, _out.tur_id
                       FROM (SELECT tmpal.alu_id, es.esc_id, uni.uni_id, tcr.cur_id, tmpal.cd_escola,
                                    tcr.crr_id, tcr.crp_id, tmpal.alu_numeroMatricula AS alc_matricula,
                                    1 as alc_situacao, cl_dt_inclusao, tcr.tur_id
                               FROM tmp_DiarioClasse_aluno tmpal WITH (NOLOCK)
                                    INNER JOIN GE_ESC_Escola es WITH (NOLOCK)
                                    ON es.esc_codigo = tmpal.esc_codigo 
                                    --and es.esc_controleSistema = 1 -- mas teve q ser comentado em 28/04/2016 por causa dos CIEJAS
                                    INNER JOIN GE_ESC_UnidadeEscola uni WITH (NOLOCK)
                                    ON uni.esc_id = es.esc_id
                                    INNER JOIN DEPARA_TURMA WITH (NOLOCK)
                                    ON tmpal.tur_codigo = DEPARA_TURMA.tur_codigo
                                    INNER JOIN GE_TUR_TurmaCurriculo tcr WITH (NOLOCK)
                                    ON DEPARA_TURMA.tur_id = tcr.tur_id
                              WHERE tmpal.cl_st in ('I','S')
                                and tcr_situacao <> 3
                                and esc_situacao <> 3) AS _out
                      WHERE _out.alu_id IS NOT NULL 
                      GROUP BY _out.alu_id, _out.esc_id, _out.uni_id, _out.cur_id, _out.crr_id, _out.cd_escola, 
                       _out.crp_id, _out.alc_matricula, _out.alc_situacao, _out.cl_dt_inclusao, _out.tur_id) AS _row
                    LEFT JOIN tmp_ult_mov alc
                     ON _row.alu_id = alc.alu_id
                    AND _row.cur_id = alc.cur_id
                    AND _row.crr_id = alc.crr_id
                    AND _row.crp_id = alc.crp_id
                    AND _row.tur_id = alc.tur_id
                    AND _row.cd_escola = alc.esc_codigo
                    AND _row.alc_situacao = alc.alc_situacao) AS _main
         LEFT JOIN (SELECT alu_id, max(alc_id) alc_id from GE_ACA_AlunoCurriculo WITH (NOLOCK) GROUP BY alu_id) as PROX_ALC
         ON _main.alu_id = PROX_ALC.alu_id
    where _main.RowNum = 1) AS _source
     ON _source.alu_id = _target.alu_id
    AND _source.alc_id = _target.alc_id
    WHEN MATCHED AND _source.cur_id <> _target.cur_id THEN
         UPDATE SET cur_id = _source.cur_id,
                    crr_id = _source.crr_id,
                    crp_id = _source.crp_id
    WHEN NOT MATCHED THEN
         INSERT (alc_id, alu_id, esc_id, uni_id, cur_id, crr_id, crp_id,
                 alc_matricula, alc_dataPrimeiraMatricula, alc_situacao)
         VALUES (_source.alc_id, _source.alu_id, _source.esc_id, _source.uni_id, _source.cur_id,
                 _source.crr_id, _source.crp_id, _source.alc_matricula,
                 _source.cl_dt_inclusao ,_source.alc_situacao);

	
END
GO
USE [GestaoPedagogica]
GO
ENABLE TRIGGER TRG_ACA_AlunoCurriculo_Identity ON ACA_AlunoCurriculo;
GO
USE [Manutencao]
GO

/****** Object:  StoredProcedure [dbo].[STP_DiarioClasse_LimparTabelaTemporaria]    Script Date: 05/12/2014 10:35:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[STP_DiarioClasse_LimparTabelaTemporaria]
	@tableName VARCHAR(100)
AS
BEGIN
	DECLARE @sqlStatement VARCHAR(MAX)
	
	SET @sqlStatement = 'TRUNCATE TABLE ' + @tableName
	EXEC(@sqlStatement)
END
GO

USE [GestaoPedagogica]
GO
DISABLE TRIGGER TRG_MTR_MatriculaTurma_Identity ON MTR_MatriculaTurma;
GO
USE [Manutencao]
GO
/****** Object:  StoredProcedure [dbo].[STP_DiarioClasse_MTR_MatriculaTurma_IMPORT]    Script Date: 05/16/2014 09:32:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_DiarioClasse_MTR_MatriculaTurma_IMPORT]
	@ent_id UNIQUEIDENTIFIER
AS
BEGIN
    IF (@ent_id IS NULL)
        SET @ent_id = (SELECT ent_id FROM SSO_SYS_Entidade WHERE ent_sigla = 'smesp')
    
    -- cria tabela temporária para os registros mais atuais na ACA_AlunoCurrículo para cada aluno
    IF (OBJECT_ID('tempdb.dbo.#ACA_AlunoCurriculo') > 0)
       DROP TABLE #ACA_AlunoCurriculo
    
    CREATE TABLE #ACA_AlunoCurriculo
       (alu_id bigint,
        alc_id int,
        esc_id int,
        uni_id int,
        cur_id int,
        crr_id int,
        crp_id int)
    
    insert into #ACA_AlunoCurriculo
    select alu_id, alc_id, esc_id, uni_id, cur_id, crr_id, crp_id
      from GE_ACA_AlunoCurriculo alc WITH (NOLOCK)
     where alc_situacao <> 3
       and alc_dataCriacao = (select MAX(alc_dataCriacao) from GE_ACA_AlunoCurriculo WITH (NOLOCK))
       and alu_id not in (select alu_id from tmp_ult_mov mov
                           where mov.alu_id = alc.alu_id
                             and mov.alc_id = alc.alc_id)
    
    insert into #ACA_AlunoCurriculo
    select alc.alu_id, alc.alc_id, esc_id, uni_id, alc.cur_id, alc.crr_id, alc.crp_id
      from GE_ACA_AlunoCurriculo alc WITH (NOLOCK)
           inner join tmp_ult_mov mov
            on mov.alu_id = alc.alu_id
           and mov.alc_id = alc.alc_id
     where alc.alu_id not in (select alu_id from #ACA_AlunoCurriculo)
    
    IF (OBJECT_ID('tempdb.dbo.#MTR_MatriculaTurma') > 0)
       DROP TABLE #MTR_MatriculaTurma
    
    CREATE TABLE #MTR_MatriculaTurma
      (alu_id            bigint NULL,
       mtu_id            int NULL,
       tur_id            bigint NULL,
       cur_id            int NULL,
       crr_id            int NULL,
       crp_id            int NULL,
       alc_id            int NULL,
       mtu_dataMatricula date NULL,
       mtu_avaliacao     varchar(20) NULL,
       mtu_frequencia    decimal(5, 2) NULL,
       mtu_relatorio     varchar(max) NULL,
       mtu_resultado     tinyint NULL,
       mtu_dataSaida     date NULL,
       mtu_numeroChamada int NULL,
       mtu_situacao      tinyint NULL,
       mtu_dataCriacao   datetime NULL,
       mtu_dataAlteracao datetime NULL,
       CONTADOR          int IDENTITY(1,1))
    
    INSERT INTO #MTR_MatriculaTurma 
           (alu_id, tur_id, cur_id, crr_id, crp_id, alc_id, mtu_dataMatricula,
            mtu_situacao, mtu_numeroChamada, mtu_avaliacao)
    SELECT _main.alu_id, _main.tur_id, _main.cur_id, _main.crr_id, _main.crp_id, _main.alc_id,
           _main.mtu_dataMatricula, _main.mtu_situacao, _main.mtu_numeroChamada, _main.cl_st
      FROM (SELECT _out.alu_id, _out.esc_id, _out.uni_id, _out.cur_id, _out.crr_id, _out.crp_id, _out.tur_id,
                   _out.alc_id, _out.cl_cham AS mtu_numeroChamada, _out.tur_codigo, _out.mtu_dataMatricula,
                   1 AS mtu_situacao, _out.cl_st, _out.mtu_id,
                   ROW_NUMBER() OVER(PARTITION BY _out.alu_id ORDER BY _out.mtu_dataMatricula DESC, _out.alc_id DESC) AS RowNum
              FROM (SELECT tmpal.alu_id, es.esc_id, uni.uni_id, tcr.cur_id, tcr.crr_id, tcr.crp_id, tcr.tur_id,
                           alc.alc_id, tmpal.alu_numeroMatricula AS alc_matricula,
                           ISNULL(tmpal.cl_cham, '') AS cl_cham, 1 AS alc_situacao, tmpal.tur_codigo,
                           tmpal.cl_dt_inclusao AS mtu_dataMatricula, tmpal.cl_st, mtu.mtu_id
                      FROM tmp_DiarioClasse_aluno tmpal
                           INNER JOIN GE_ESC_Escola es WITH (NOLOCK)
                           ON tmpal.esc_codigo = es.esc_codigo 
						   AND es.esc_situacao <> 3
                           --and es.esc_controleSistema = 1 -- mas teve q ser comentado em 28/04/2016 por causa dos CIEJAS
                           INNER JOIN GE_ESC_UnidadeEscola uni WITH (NOLOCK)
                           ON es.esc_id = uni.esc_id
                           INNER JOIN DEPARA_TURMA WITH (NOLOCK)
                           ON tmpal.tur_codigo = DEPARA_TURMA.tur_codigo
                           INNER JOIN GE_TUR_TurmaCurriculo tcr WITH (NOLOCK)
                            ON DEPARA_TURMA.tur_id = tcr.tur_id
                           and 3 <> tcr.tcr_situacao
                           INNER JOIN #ACA_AlunoCurriculo alc
                            ON tmpal.alu_id = alc.alu_id
                           AND es.esc_id = alc.esc_id
                           AND uni.uni_id = alc.uni_id
                           AND tcr.cur_id = alc.cur_id
                           AND tcr.crr_id = alc.crr_id
                           AND tcr.crp_id = alc.crp_id
                           LEFT JOIN GE_MTR_MatriculaTurma mtu WITH (NOLOCK)
                            ON alc.alu_id = mtu.alu_id
                           AND DEPARA_TURMA.tur_id = mtu.tur_id
                           AND alc.alc_id = mtu.alc_id
                     WHERE tmpal.cl_st in ('I','S')) AS _out) AS _main
             WHERE _main.RowNum = 1 and _main.mtu_id is null
    
    UPDATE #MTR_MatriculaTurma
       SET mtu_id = ISNULL(ar.mtu_id,0) + 1
      FROM #MTR_MatriculaTurma tar WITH (NOLOCK) LEFT JOIN 
           (SELECT alu_id, MAX(mtu_id) mtu_id 
              FROM GE_MTR_MatriculaTurma WITH (NOLOCK)
             GROUP BY alu_id ) ar
             ON tar.alu_id = ar.alu_id
    
    IF OBJECT_ID('tempdb..#AUX_MOV_CHAVE') > 0 
       DROP TABLE #AUX_MOV_CHAVE
    
    SELECT alu_id/*,tur_id,cur_id,crr_id,crp_id,alc_id*/, MIN(CONTADOR) DIFERENCA
      INTO #AUX_MOV_CHAVE
      FROM #MTR_MatriculaTurma
     GROUP BY alu_id--,tur_id,cur_id,crr_id,crp_id,alc_id
    
    UPDATE #MTR_MatriculaTurma
       SET mtu_id = CASE WHEN mtu_id > DIFERENCA
                         THEN mtu_id - DIFERENCA + CONTADOR
                         WHEN mtu_id = DIFERENCA
                         THEN CONTADOR
                         ELSE mtu_id + CONTADOR - DIFERENCA
                         END
      FROM #MTR_MatriculaTurma INNER JOIN #AUX_MOV_CHAVE AUX_MOV_CHAVE
           ON #MTR_MatriculaTurma.alu_id = AUX_MOV_CHAVE.alu_id
    
    /* Limpa a tabela temporária para gravar a movimentação dos novos alunos */
    TRUNCATE TABLE tmp_DiarioClasse_MTR_Movimentacao;
    
    MERGE INTO GE_MTR_MatriculaTurma _target
    USING (SELECT crp.mtu_id, crp.alu_id, crp.tur_id, crp.cur_id, crp.crr_id, crp.crp_id, crp.alc_id,
                  crp.mtu_dataMatricula, crp.mtu_situacao, crp.mtu_numeroChamada, crp.mtu_avaliacao
             FROM #MTR_MatriculaTurma crp) AS _source
     ON _source.alu_id = _target.alu_id
    AND _source.tur_id = _target.tur_id
    AND _source.alc_id = _target.alc_id
    WHEN MATCHED THEN
         UPDATE SET mtu_numeroChamada = _source.mtu_numeroChamada,
                    mtu_dataSaida = null,
                    mtu_dataAlteracao = GETDATE(),
                    mtu_situacao = 1,
                    cur_id = _source.cur_id,
                    crr_id = _source.crr_id,
                    crp_id = _source.crp_id
    WHEN NOT MATCHED THEN
         INSERT (alu_id, mtu_id, tur_id, cur_id, crr_id, crp_id, mtu_dataMatricula, mtu_situacao,
                 mtu_numeroChamada, alc_id)
         VALUES (_source.alu_id, _source.mtu_id, _source.tur_id, _source.cur_id, _source.crr_id,
                 _source.crp_id, _source.mtu_dataMatricula, _source.mtu_situacao, _source.mtu_numeroChamada,
                 _source.alc_id)
    OUTPUT INSERTED.alu_id, INSERTED.alc_id, INSERTED.mtu_id,
           LEFT(_source.mtu_avaliacao, 1), _source.mtu_dataMatricula
      INTO tmp_DiarioClasse_MTR_Movimentacao;
END
GO
USE [GestaoPedagogica]
GO
ENABLE TRIGGER TRG_MTR_MatriculaTurma_Identity ON MTR_MatriculaTurma;
GO
USE [Manutencao]
GO

USE [GestaoPedagogica]
GO
DISABLE TRIGGER TRG_MTR_MatriculaTurmaDisciplina_Identity ON MTR_MatriculaTurmaDisciplina;
GO
USE [Manutencao]
GO
/****** Object:  StoredProcedure [dbo].[STP_DiarioClasse_MTR_MatriculaTurmaDisciplina_IMPORT]    Script Date: 05/16/2014 09:36:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_DiarioClasse_MTR_MatriculaTurmaDisciplina_IMPORT]
@ent_id UNIQUEIDENTIFIER
AS
BEGIN
    IF (@ent_id IS NULL)
      SET @ent_id = (SELECT ent_id FROM SSO_SYS_Entidade WITH (NOLOCK) WHERE ent_sigla = 'smesp')
	
	CREATE TABLE #MTR_MatriculaTurmaDisciplina
		(alu_id bigint NULL,
		 mtu_id int NULL,
		 mtd_id int NULL,
		 tud_id bigint NULL,
		 tur_id bigint NULL,
		 mtd_dataMatricula date NULL,
		 mtd_numeroChamada int NULL,
		 mtd_situacao tinyint NULL,
		 row_num	INT,
		 max_id	INT)
    --drop TABLE #MTR_MatriculaTurmaDisciplina
    
	INSERT INTO #MTR_MatriculaTurmaDisciplina
          (alu_id, mtu_id, tud_id, tur_id, mtd_dataMatricula, mtd_numeroChamada, mtd_situacao)
    SELECT alu_id, mtu_id, tud_id, tur_id, mtd_dataMatricula, mtu_numeroChamada,  mtd_situacao
	  FROM (SELECT mtu.alu_id, mtu.tur_id, tur.tud_id, mtu.mtu_id, mtu.mtu_numeroChamada,
                   mtu.mtu_dataMatricula AS mtd_dataMatricula, 1 AS mtd_situacao
              FROM GE_MTR_MatriculaTurma mtu WITH (NOLOCK)
                   INNER JOIN GE_TUR_TurmaRelTurmaDisciplina tur WITH (NOLOCK)
                   ON mtu.tur_id = tur.tur_id
                   INNER JOIN GE_TUR_TurmaDisciplina tud WITH (NOLOCK)
                   ON tur.tud_id = tud.tud_id and tud.tud_situacao <> 3 
                   INNER JOIN GE_TUR_Turma trm WITH (NOLOCK)
                   ON mtu.tur_id = trm.tur_id
                   INNER JOIN GE_ACA_CalendarioAnual cal WITH (NOLOCK)
                   ON trm.cal_id = cal.cal_id
             WHERE mtu_situacao = 1
               AND tur_situacao <> 3
               and tud.tud_tipo <> 18 --Experiências (Id do Pai de Territorios do saber e q tem vigencia na TTE) -- vai ser inserido mais abaixo
               and cal_situacao = 1
               and cal_ano = (SELECT CAST(VALOR as int) FROM _PARAMETROS WHERE CHAVE = 'ANO_BASE')
             GROUP BY mtu.alu_id, mtu.tur_id, tur.tud_id, mtu.mtu_id, mtu.mtu_numeroChamada,
                   mtu.mtu_dataMatricula, tur.tur_id) AS DADOS
     GROUP BY alu_id, mtu_id, tud_id, tur_id, mtd_dataMatricula, mtu_numeroChamada, mtd_situacao
        
    -- Insere as disciplinas de projeto
	INSERT INTO #MTR_MatriculaTurmaDisciplina
          (alu_id, mtu_id, tud_id, tur_id, mtd_dataMatricula, mtd_numeroChamada, mtd_situacao)
    SELECT  alu_id, mtu_id, tud_id, tur_id, mtd_dataMatricula, mtd_numeroChamada,  mtd_situacao
	  FROM (SELECT mtd.alu_id, mtd.mtu_id, trtd.tud_id, trtd.tur_id,  alunos_programa.cl_datst AS 'mtd_dataMatricula' --add em 15/09 relacionado às duplicidades de RP
	               --mtd_dataMatricula = case when cast(alunos_programa.cl_datst AS DATE) > mtd.mtd_dataMatricula
	               -- then cast(alunos_programa.cl_datst AS DATE) else mtd.mtd_dataMatricula end, 
                   ,alunos_programa.cl_cham as mtd_numeroChamada, mtd.mtd_situacao
              FROM (select cd_turma_escola from tmp_DiarioClasse_turma
                     where cd_tipo_turma = 3) turma_programa
                   inner join
                   (select cl_alu_codigo, cl_tur_codigo, cl_cham, cl_datst, cl_st, 
                           ROW_NUMBER() OVER (PARTITION BY cl_alu_codigo, cl_tur_codigo
                                        ORDER BY expr1 desc) linha
                      from BD_PRODAM..v_alunos_matriculados WITH (NOLOCK)
                     where an_letivo = (SELECT CAST(VALOR as int) FROM _PARAMETROS WHERE CHAVE = 'ANO_BASE')
                   ) alunos_programa
                   ON turma_programa.cd_turma_escola = alunos_programa.cl_tur_codigo
                   INNER JOIN tmp_DiarioClasse_aluno WITH (NOLOCK)
                   ON alunos_programa.cl_alu_codigo = tmp_DiarioClasse_aluno.cl_alu_codigo
                   AND tmp_DiarioClasse_aluno.crp_ordem not in (35,39,43,47,212,213,210,211) --retirando CIEJA e EJA MODULAR pois eles não devem aparecer
													--no gestão em 2017, mas estavam aparecendo em outras turmas de RP junto com alunos de EF/EJA regular
                   INNER JOIN (select cd_turma_escola from tmp_DiarioClasse_turma
                                where cd_tipo_turma = 1) turma_regular
                   ON tmp_DiarioClasse_aluno.cd_turma_escola = turma_regular.cd_turma_escola
                   inner join
                   (SELECT alu_id, mtu_id, mtd_dataMatricula, mtd_numeroChamada, mtd_situacao
                      FROM #MTR_MatriculaTurmaDisciplina
                     GROUP BY alu_id, mtu_id, mtd_dataMatricula, mtd_numeroChamada, mtd_situacao) as mtd
                   ON tmp_DiarioClasse_aluno.alu_id = mtd.alu_id
                   inner join DEPARA_TURMA WITH (NOLOCK)
                   on cast(turma_programa.cd_turma_escola as varchar(10)) = DEPARA_TURMA.tur_codigo
                   inner join GE_TUR_TurmaRelTurmaDisciplina trtd WITH (NOLOCK)
                   on DEPARA_TURMA.tur_id = trtd.tur_id
                   inner join GE_TUR_TurmaDisciplina tud
                   on trtd.tud_id = tud.tud_id
             where alunos_programa.linha = 1
               and alunos_programa.cl_st in ('I', 'S')
               and tud.tud_situacao <> 3) AS DADOS
     GROUP BY alu_id, mtu_id, tud_id, tur_id, mtd_dataMatricula, mtd_numeroChamada, mtd_situacao    

    -- Insere as disciplinas de Ed. Física
	INSERT INTO #MTR_MatriculaTurmaDisciplina
          (alu_id, mtu_id, tud_id, tur_id, mtd_dataMatricula, mtd_numeroChamada, mtd_situacao)
    SELECT alu_id, mtu_id, tud_id, tur_id, mtd_dataMatricula, mtd_numeroChamada,  mtd_situacao
	  FROM (SELECT Tmtd.alu_id, Tmtd.mtu_id, trtd.tud_id, trtd.tur_id,
	               mtd_dataMatricula = case when cast(alunos_programa.cl_datst AS DATE) > Tmtd.mtd_dataMatricula
	                then cast(alunos_programa.cl_datst AS DATE) else Tmtd.mtd_dataMatricula end,
                   alunos_programa.cl_cham AS mtd_numeroChamada, isnull(mtd.mtd_situacao,1) mtd_situacao
              FROM (select cd_turma_escola, cd_escola from tmp_DiarioClasse_turma
                     where cd_tipo_turma = 2) turma_programa
				   INNER JOIN GE_ESC_Escola es
                   ON es.esc_codigo COLLATE DATABASE_DEFAULT = turma_programa.cd_escola COLLATE DATABASE_DEFAULT
				   AND es.esc_situacao <> 3
				   INNER JOIN
                   (select cl_alu_codigo, cl_tur_codigo, cl_cham, cl_datst, cl_st,
                           ROW_NUMBER() OVER (PARTITION BY cl_alu_codigo, cl_tur_codigo
                                        ORDER BY expr1 desc) AS linha
                      from BD_PRODAM..v_alunos_turma_matriculados_historico_movimentacao
                     where an_letivo = (SELECT CAST(VALOR as int)
                                          FROM _PARAMETROS WHERE CHAVE = 'ANO_BASE')) alunos_programa
                   ON turma_programa.cd_turma_escola = alunos_programa.cl_tur_codigo
                   INNER JOIN tmp_DiarioClasse_aluno
                   ON alunos_programa.cl_alu_codigo = tmp_DiarioClasse_aluno.cl_alu_codigo
                   AND tmp_DiarioClasse_aluno.crp_ordem not in (35,39,43,47,212,213,210,211) --retirando CIEJA e EJA MODULAR pois eles não devem aparecer
													--no gestão em 2017, mas estavam aparecendo em outras turmas de RP junto com alunos de EF/EJA regular
                   INNER JOIN (select cd_turma_escola from tmp_DiarioClasse_turma
                                where cd_tipo_turma = 1) turma_regular
                   ON tmp_DiarioClasse_aluno.cd_turma_escola = turma_regular.cd_turma_escola
                   inner join DEPARA_TURMA reg
                   on turma_regular.cd_turma_escola = reg.tur_codigo
                   inner join
                   (SELECT alu_id, mtu_id, mtd_dataMatricula, mtd_numeroChamada, mtd_situacao, tur_id
                      FROM #MTR_MatriculaTurmaDisciplina
                     GROUP BY alu_id, mtu_id, mtd_dataMatricula, mtd_numeroChamada, mtd_situacao, tur_id) as Tmtd
                    ON tmp_DiarioClasse_aluno.alu_id = Tmtd.alu_id
                   AND REG.tur_id = TMTD.tur_id
                   inner join DEPARA_TURMA
                   on cast(turma_programa.cd_turma_escola as varchar(10)) = DEPARA_TURMA.tur_codigo
                   inner join GE_TUR_TurmaRelTurmaDisciplina trtd WITH (NOLOCK)
                   on DEPARA_TURMA.tur_id = trtd.tur_id
                   LEFT JOIN _PARAMETROS_ESCOLA_EDUCACAO_FISICA
                   ON turma_programa.cd_escola = _PARAMETROS_ESCOLA_EDUCACAO_FISICA.esc_codigo
                   left join GE_MTR_MatriculaTurmaDisciplina mtd
                    on Tmtd.alu_id = mtd.alu_id
                   and Tmtd.mtu_id = mtd.mtu_id
                   and trtd.tud_id = mtd.tud_id
                   and 1 = mtd.mtd_situacao
				   LEFT JOIN EscolasComEJA eja on eja.esc_id = es.esc_id
             where alunos_programa.linha = 1
               and alunos_programa.cl_st in ('I', 'S')
               and (_PARAMETROS_ESCOLA_EDUCACAO_FISICA.esc_codigo is not null or es.esc_nome like 'EMEFM%' or eja.esc_id is not null)
			) AS DADOS
     GROUP BY alu_id, mtu_id, tud_id, tur_id, mtd_dataMatricula, mtd_numeroChamada, mtd_situacao
    

    UPDATE tc
       SET max_id = t.max_id
      FROM #MTR_MatriculaTurmaDisciplina tc INNER JOIN
           (SELECT alu_id, mtu_id, MAX(mtd_id) AS max_id
              FROM GE_MTR_MatriculaTurmaDisciplina m WITH (NOLOCK)
             GROUP BY alu_id, mtu_id) AS t
            ON t.alu_id = tc.alu_id
           AND t.mtu_id = tc.mtu_id
    
    UPDATE tc
       SET mtd_id = t.mtd_id
      FROM #MTR_MatriculaTurmaDisciplina tc
           INNER JOIN GE_MTR_MatriculaTurmaDisciplina t
            ON t.alu_id = tc.alu_id
           AND t.mtu_id = tc.mtu_id
           AND t.tud_id = tc.tud_id
     where t.mtd_situacao = 1
    
    UPDATE tc
       SET row_num = t.rowNum
      FROM #MTR_MatriculaTurmaDisciplina AS tc INNER JOIN
           (SELECT alu_id, mtu_id, tud_id,
                   ROW_NUMBER() OVER (PARTITION BY alu_id, mtu_id ORDER BY tud_id) AS rowNum
              FROM #MTR_MatriculaTurmaDisciplina
             WHERE mtd_id IS NULL) AS t
            ON t.alu_id = tc.alu_id
           AND t.mtu_id = tc.mtu_id
           AND t.tud_id = tc.tud_id
    
    UPDATE #MTR_MatriculaTurmaDisciplina
       SET mtd_id = ISNULL(max_id, 0) + row_num
     WHERE mtd_id IS NULL	
    
    MERGE INTO GE_MTR_MatriculaTurmaDisciplina _target
    USING (SELECT mtd_id, alu_id, tur_id, tud_id, mtu_id, mtd_dataMatricula,
                  mtd_numeroChamada, mtd_situacao
             FROM #MTR_MatriculaTurmaDisciplina) AS _source
     ON _source.alu_id = _target.alu_id
    AND _source.mtu_id = _target.mtu_id
    AND _source.mtd_id = _target.mtd_id
    WHEN MATCHED and (_target.mtd_situacao = 1) AND (_target.mtd_dataMatricula = _source.mtd_dataMatricula)
         AND (isnull(_target.mtd_numeroChamada, 999) <> isnull(_source.mtd_numeroChamada, 999)) THEN 
    UPDATE
       SET _target.mtd_numeroChamada = _source.mtd_numeroChamada,
           _target.mtd_dataAlteracao = GETDATE ()
    WHEN NOT MATCHED THEN
    INSERT (alu_id, mtd_id, mtu_id, tud_id, mtd_dataMatricula, mtd_numeroChamada, mtd_situacao)
    VALUES (_source.alu_id, _source.mtd_id, _source.mtu_id, _source.tud_id, _source.mtd_dataMatricula,
            _source.mtd_numeroChamada, _source.mtd_situacao);
    

/* TRATAMENTO EXCLUSIVO PARA OS MTDS DAS EXPERIÊNCIAS PEDAGÓGICAS DE TERRITÓRIOS DO SABER */
	
		CREATE TABLE #MTR_MatriculaTurmaDisciplina_expPedag(
		[alu_id] [bigint] NOT NULL,
		[mtu_id] [int] NOT NULL,
		[mtd_id] [int] NOT NULL,
		[tud_id] [bigint] NOT NULL,
		[mtd_dataMatricula] [date] NOT NULL,
		[mtd_numeroChamada] [int] NULL,
		[ordem] [int] NULL,
		[controle] [int] NULL,
	)
	--inserindo primeiro os MTDS para os ttes que estão sendo incluidos nesta execução
	insert into #MTR_MatriculaTurmaDisciplina_expPedag
	select alu_id, mtu_id, maxMtd_id + linha as mtd_id, tud_id, mtd_dataMatricula, mtu_numeroChamada as mtd_numeroChamada,
		   ROW_NUMBER() OVER(PARTITION BY 1 ORDER BY alu_id, mtu_id, linha) as ordem, 0 as controle
	  from (
			select MT.alu_id, MT.mtu_id, MT.tud_id, mtu_dataMatricula as mtd_dataMatricula, --É ISSO MESMO. MTU_DATAMATRICULA POIS PRECISA TER A MESMA DATA DE MATRÍCULA INDEPENDENTE PRA TODOS OS MTDS INDEPENDENTE DE QUANDO COMEÇOU O TTE
				   MT.mtu_numeroChamada,
				   ROW_NUMBER() OVER(PARTITION BY MT.alu_id, MT.mtu_id ORDER BY MT.tud_id) as linha,
				   isnull(maxMtd.maxMtd_id,0) as maxMtd_id
			  from (select mtd.alu_id, mtd.mtu_id, t.tud_id, mtu_numeroChamada, mtu_dataMatricula
					  from GestaoPedagogica..MTR_MatriculaTurmaDisciplina mtd
						   inner join GestaoPedagogica..MTR_MatriculaTurma mtu 
								   on mtu.alu_id = mtd.alu_id and mtu.mtu_id = mtd.mtu_id --and mtu.tur_id = 114040
						   inner join GestaoPedagogica..TUR_TurmaDisciplina tud 
								   on tud.tud_id = mtd.tud_id and tud.tud_tipo = 19 --tud_tipo=19=OBRIG==territorios
						   inner join GestaoPedagogica..TUR_TurmaDisciplinaTerritorio tte 
								   on tte.tud_idTerritorio = tud.tud_id 
								  and tte.tte_vigenciaInicio <= GETDATE() 
								  and tte.tte_vigenciaFim >= GETDATE() or tte.tte_vigenciaFim is null
						   inner join tmp_territorios_incluidosNestaExecucao t on t.tud_id = tte.tud_idExperiencia
					 where mtd_situacao <> 3
					   and mtd_dataMatricula <= GETDATE() and (mtd_dataSaida >= GETDATE() or mtd_dataSaida is null)
					 group by mtd.alu_id, mtd.mtu_id, t.tud_id, mtu_numeroChamada, mtu_dataMatricula
				   ) MT
			left join (select alu_id, mtu_id, MAX(mtd_id) as maxMtd_id
						 from GestaoPedagogica..MTR_MatriculaTurmaDisciplina 
						group by alu_id, mtu_id) as maxMtd on maxMtd.alu_id = MT.alu_id and maxMtd.mtu_id = MT.mtu_id
		   ) Tab
    
	declare @ordem int 
	
	while exists (select * from #MTR_MatriculaTurmaDisciplina_expPedag where controle = 0)
	begin
		select top 1 @ordem = ordem from #MTR_MatriculaTurmaDisciplina_expPedag where controle = 0 order by ordem
		
		insert into GestaoPedagogica..MTR_MatriculaTurmaDisciplina (alu_id, mtu_id, mtd_id, tud_id, mtd_dataMatricula, 
		mtd_numeroChamada, mtd_situacao, mtd_dataCriacao, mtd_dataAlteracao)
		select top 1 alu_id, mtu_id, mtd_id, tud_id, mtd_dataMatricula, 
			   mtd_numeroChamada, 1 as mtd_situacao, GETDATE() as mtd_dataCriacao, GETDATE() as mtd_dataAlteracao
		  from #MTR_MatriculaTurmaDisciplina_expPedag
		 where ordem = @ordem
   
		update #MTR_MatriculaTurmaDisciplina_expPedag set controle = 1 where ordem = @ordem
	end
	truncate table #MTR_MatriculaTurmaDisciplina_expPedag
	
	--inserindo para os mtds que tem data de matrícula em um dia posterior a entrada do tte
	insert into #MTR_MatriculaTurmaDisciplina_expPedag
	select alu_id, mtu_id, maxMtd_id + linha as mtd_id, tud_id, mtd_dataMatricula, mtu_numeroChamada as mtd_numeroChamada,
		   ROW_NUMBER() OVER(PARTITION BY 1 ORDER BY alu_id, mtu_id, linha) as ordem, 0 as controle
	  from (
			select MT.alu_id, MT.mtu_id, MT.tud_id, 
				   mtu_dataMatricula as mtd_dataMatricula, --NOVAMENTE MTU_DATAMATRICULA POIS TODOS OS MTDS DEVEM TER A MESMA DATA QUE O MTU INDEPENDENTE DE QUANDO COMEÇOU O MTD (dúvida falar com Jean/Juliano)
				   MT.mtu_numeroChamada,
				   ROW_NUMBER() OVER(PARTITION BY MT.alu_id, MT.mtu_id ORDER BY MT.tud_id) as linha,
				   isnull(maxMtd.maxMtd_id,0) as maxMtd_id
			  from (select mtd.alu_id, mtd.mtu_id, tte.tud_idExperiencia as tud_id, mtu_numeroChamada, mtu_dataMatricula
					  from GestaoPedagogica..MTR_MatriculaTurmaDisciplina mtd
						   inner join GestaoPedagogica..MTR_MatriculaTurma mtu 
								   on mtu.alu_id = mtd.alu_id and mtu.mtu_id = mtd.mtu_id --and mtu.tur_id = 114040
						   inner join GestaoPedagogica..TUR_TurmaDisciplina tud 
								   on tud.tud_id = mtd.tud_id and tud.tud_tipo = 19 --tud_tipo=19=OBRIG==territorios
						   inner join GestaoPedagogica..TUR_TurmaDisciplinaTerritorio tte 
								   on tte.tud_idTerritorio = tud.tud_id 
								  and tte.tte_vigenciaInicio <= GETDATE() 
								  and tte.tte_vigenciaFim >= GETDATE() or tte.tte_vigenciaFim is null
					 where mtd_situacao <> 3
					   and mtd_dataMatricula = GETDATE()
					   and not exists (select t.tud_id from tmp_territorios_incluidosNestaExecucao t where t.tud_id = tte.tud_idExperiencia)
					   and not exists (select mtd2.alu_id from GestaoPedagogica..MTR_MatriculaTurmaDisciplina mtd2
										where mtd2.alu_id = mtd.alu_id and mtd2.mtu_id = mtd.mtu_id 
										  and mtd2.tud_id = tte.tud_idExperiencia
										  and mtd2.mtd_situacao <> 3)
					 group by mtd.alu_id, mtd.mtu_id, tte.tud_idExperiencia, mtu_numeroChamada, mtu_dataMatricula
				   ) MT
				left join (select alu_id, mtu_id, MAX(mtd_id) as maxMtd_id
					 from GestaoPedagogica..MTR_MatriculaTurmaDisciplina 
					group by alu_id, mtu_id) as maxMtd on maxMtd.alu_id = MT.alu_id and maxMtd.mtu_id = MT.mtu_id
		  ) Tab
	
	while exists (select * from #MTR_MatriculaTurmaDisciplina_expPedag where controle = 0)
	begin
		select top 1 @ordem = ordem from #MTR_MatriculaTurmaDisciplina_expPedag where controle = 0 order by ordem
		
		insert into GestaoPedagogica..MTR_MatriculaTurmaDisciplina (alu_id, mtu_id, mtd_id, tud_id, mtd_dataMatricula, 
		mtd_numeroChamada, mtd_situacao, mtd_dataCriacao, mtd_dataAlteracao)
		select top 1 alu_id, mtu_id, mtd_id, tud_id, mtd_dataMatricula, 
			   mtd_numeroChamada, 1 as mtd_situacao, GETDATE() as mtd_dataCriacao, GETDATE() as mtd_dataAlteracao
		  from #MTR_MatriculaTurmaDisciplina_expPedag
		 where ordem = @ordem
    
		update #MTR_MatriculaTurmaDisciplina_expPedag set controle = 1 where ordem = @ordem
	end
	
	--acertando situacao = 5 pra quando o aluno realmente saiu da turma (baseando no mtu)
	update GestaoPedagogica..MTR_MatriculaTurmaDisciplina set mtd_situacao = 5, mtd_dataSaida = mtu.mtu_dataSaida, mtd_dataAlteracao = GETDATE()
	  from GestaoPedagogica..MTR_MatriculaTurmaDisciplina 
		   inner join GestaoPedagogica..TUR_TurmaDisciplina tudExp on tudExp.tud_id = MTR_MatriculaTurmaDisciplina.tud_id
																  and tudExp.tud_tipo = 18 --experiencia=pai
		   inner join GestaoPedagogica..MTR_MatriculaTurma mtu on mtu.alu_id = MTR_MatriculaTurmaDisciplina.alu_id
															  and mtu.mtu_id = MTR_MatriculaTurmaDisciplina.mtu_id
															  and mtu.mtu_situacao = 5
	 where mtd_situacao = 1
	 
	--IMPORTANTE: NÃO DEVEMOS COLOCAR mtd_situcao = 5 e mtd_dataSaida preenchida PRA EXPERIÊNCIAS PEDAGÓGICAS DE FORMA ALGUMA, 
	--			  A NÃO SER QUE O ALUNO TENHA SAÍDO DA TURMA (mtu_situacao = 5 que é o update de cima)
	
	/* FIM DO TRATAMENTO DE MTDS DAS EXPERIÊNCIAS */
	
	
    update mtd
       SET mtd_situacao = 3,
           mtd_dataAlteracao = GETDATE()
      from GE_MTR_MatriculaTurmaDisciplina mtd
		   inner join GE_MTR_MatriculaTurma mtu on mtu.alu_id = mtd.alu_id and mtu.mtu_id = mtd.mtu_id
		   inner join GE_TUR_Turma tur on tur.tur_id = mtu.tur_id
		   inner join GE_ACA_CalendarioAnual cal on cal.cal_id = tur.cal_id
		   inner join _PARAMETROS par ON par.CHAVE = 'ANO_BASE' and cal.cal_ano = par.VALOR
     where mtd_situacao = 1
       and mtd.alu_id in (SELECT alu_id FROM #MTR_MatriculaTurmaDisciplina)
       and mtd.alu_id not in (SELECT alu_id FROM #MTR_MatriculaTurmaDisciplina ativo
                               WHERE mtd.alu_id = ativo.alu_id
                                 and mtd.mtu_id = ativo.mtu_id)
    
    declare @datacorte date
    select @datacorte = VALOR from _PARAMETROS where CHAVE = 'DATA_CORTE'

	declare @inicio_recesso_meio_ano date
	declare @fim_recesso_meio_ano date
	declare @data_corte_meio_ano date

	select @inicio_recesso_meio_ano = VALOR from _PARAMETROS where CHAVE = 'INICIO_RECESSO_MEIO_ANO'
	select @fim_recesso_meio_ano = VALOR from _PARAMETROS where CHAVE = 'FIM_RECESSO_MEIO_ANO'
	select @data_corte_meio_ano = VALOR from _PARAMETROS where CHAVE = 'DATA_CORTE_MEIO_ANO'
    
    -- Inativa as matrículas de Recuperação Paralela e AEE que não estão mais vindo na view
    update mtd
       SET mtd_situacao = 5,
           mtd_dataSaida = GETDATE(),
           mtd_dataAlteracao = GETDATE()
      from GE_MTR_MatriculaTurmaDisciplina mtd
           inner join
           (select alu_id, mtu_id, mtd_id
              from GE_TUR_Turma tur
                   inner join GE_TUR_TurmaRelTurmaDisciplina trtd
                   on tur.tur_id = trtd.tur_id
                   inner join GE_MTR_MatriculaTurmaDisciplina mturd
                   on trtd.tud_id = mturd.tud_id
             where tur_tipo in (2,5) --RP e AEE
               and tur_situacao <> 3
               and mtd_situacao = 1 
               and alu_id not in
                   (select alu_id 
	                  from (SELECT alu_id, trtd.tud_id, trtd.tur_id
                              FROM tmp_DiarioClasse_turma turma_programa WITH (NOLOCK) inner join
                                   (select cl_alu_codigo, cl_tur_codigo, cl_st, cast(cl_datst as DATE) as cl_datst,
                                           ROW_NUMBER() OVER (PARTITION BY cl_alu_codigo, cl_tur_codigo
                                                        ORDER BY expr1 desc) AS linha
                                      from BD_PRODAM..v_alunos_turma_matriculados_historico_movimentacao WITH (NOLOCK)
                                     where an_letivo = (SELECT CAST(VALOR as int)
                                                          FROM _PARAMETROS WHERE CHAVE = 'ANO_BASE')) alunos_programa
                                   ON turma_programa.cd_turma_escola = alunos_programa.cl_tur_codigo
                                   INNER JOIN tmp_DiarioClasse_aluno WITH (NOLOCK)
                                   ON alunos_programa.cl_alu_codigo = tmp_DiarioClasse_aluno.cl_alu_codigo
                                   inner join DEPARA_TURMA WITH (NOLOCK)
                                   on cast(turma_programa.cd_turma_escola as varchar(10)) = DEPARA_TURMA.tur_codigo
                                   inner join GE_TUR_TurmaRelTurmaDisciplina trtd WITH (NOLOCK)
                                   on DEPARA_TURMA.tur_id = trtd.tur_id
                             where turma_programa.cd_tipo_turma = 3
                               and alunos_programa.linha = 1
                               and alunos_programa.cl_st in ('I', 'S')
                               and (alunos_programa.cl_datst = mturd.mtd_dataMatricula
									or (alunos_programa.cl_datst < @datacorte and mturd.mtd_dataMatricula = @datacorte) 
									or (alunos_programa.cl_datst between @inicio_recesso_meio_ano and @fim_recesso_meio_ano
										and mturd.mtd_dataMatricula = @data_corte_meio_ano) 
								   )
                           ) RP
                     where RP.alu_id = mturd.alu_id
                       AND RP.tud_id = mturd.tud_id)
                     group by alu_id, mtu_id, mtd_id) inativar
            on mtd.alu_id = inativar.alu_id
           and mtd.mtu_id = inativar.mtu_id
           and mtd.mtd_id = inativar.mtd_id
     where mtd_situacao = 1
    
    
    -- Inativa as matrículas de Educação física em turmas específicas já encerradas
    update mtd
       set mtd_situacao = 5, mtd_dataSaida = GETDATE(), mtd_dataAlteracao = GETDATE()
      FROM GE_MTR_MatriculaTurmaDisciplina mtd WITH(NOLOCK)
           inner join GE_MTR_MatriculaTurma mtu with (nolock)
            on mtd.alu_id = mtu.alu_id
           and mtd.mtu_id = mtu.mtu_id
           inner join GE_TUR_TurmaRelTurmaDisciplina trtd with (nolock)
           on mtd.tud_id = trtd.tud_id
           inner join GE_TUR_Turma tur WITH(NOLOCK)
           on trtd.tur_id = tur.tur_id
           inner join DEPARA_TURMA dpt
           on tur.tur_id = dpt.tur_id
     where tur.tur_tipo = 3
       and mtu_situacao = 1
       and mtd_situacao = 1
       and tur_situacao = 5
 

    create table #matricula
      (cl_alu_codigo int,
       cl_tur_codigo int)
    
    --truncate table #matricula
    insert into #matricula
    select CL_ALU_CODIGO, cl_tur_codigo
      from BD_PRODAM..v_alunos_turma_matriculados_historico_movimentacao mat
           inner join BD_PRODAM..v_turma_MSTECH tur
           on mat.cl_tur_codigo = tur.cd_turma_escola
     where cd_tipo_turma = 2
       and tur.an_letivo = (SELECT CAST(VALOR as int) FROM _PARAMETROS WHERE CHAVE = 'ANO_BASE')
    
    -- Inativa as matrículas em turmas específicas de Ed. física que não estão mais vindo na view
    update mtd
       set mtd_situacao = 5, mtd_dataSaida = GETDATE(), mtd_dataAlteracao = GETDATE()
      FROM GE_MTR_MatriculaTurmaDisciplina mtd WITH(NOLOCK)
           inner join GE_MTR_MatriculaTurma mtu with (nolock)
            on mtd.alu_id = mtu.alu_id
           and mtd.mtu_id = mtu.mtu_id
           inner join GE_ACA_AlunoCurriculo alc with (nolock)
            on mtu.alu_id = alc.alu_id
           and mtu.alc_id = alc.alc_id
           inner join GE_TUR_TurmaRelTurmaDisciplina trtd with (nolock)
           on mtd.tud_id = trtd.tud_id
           inner join GE_TUR_Turma tur WITH(NOLOCK)
           on trtd.tur_id = tur.tur_id
           inner join GE_ESC_Escola es WITH(NOLOCK)
           ON es.esc_id = tur.esc_id
		   AND es.esc_situacao <> 3
           inner join DEPARA_TURMA dpt
           on tur.tur_id = dpt.tur_id
           left join _PARAMETROS_ESCOLA_EDUCACAO_FISICA efe
           on tur.esc_id = efe.esc_id
		   LEFT JOIN EscolasComEJA eja on eja.esc_id = es.esc_id
     where tur.tur_tipo = 3
       and mtu.mtu_situacao = 1
       and mtd.mtd_situacao = 1
       and (efe.esc_codigo is not null or es.esc_nome like 'EMEFM%' or eja.esc_id is not null)
       and alc.alc_matricula not in 
           (select CL_ALU_CODIGO from #matricula mat
             where mat.CL_ALU_CODIGO = alc.alc_matricula
               and mat.cl_tur_codigo = dpt.tur_codigo)

    -- Exclui logicamente as matrículas de Educação Física que estiverem inativas
    update mtd
       set mtd_situacao = 3, mtd_dataAlteracao = GETDATE()
      from GE_MTR_MatriculaTurmaDisciplina mtd
           inner join GE_MTR_MatriculaTurma mtu with (nolock)
            on mtd.alu_id = mtu.alu_id
           and mtd.mtu_id = mtu.mtu_id
           inner join GE_TUR_TurmaRelTurmaDisciplina trtd WITH(NOLOCK)
           on mtd.tud_id = trtd.tud_id
           inner join GE_TUR_Turma tur with (nolock)
           on trtd.tur_id = tur.tur_id
     where mtd.mtd_situacao = 5
       and mtu.mtu_situacao = 1
       and tur.tur_tipo = 3

    -- arruma as datas de saida de disciplinas inativas quando estiverem maior que a data de matrícula ativa
    update mtd
        set mtd_dataSaida = ativo.mtd_dataMatricula
       from GE_MTR_MatriculaTurmaDisciplina mtd
            inner join 
            (select mtd1.alu_id, mtd1.mtu_id, mtd1.mtd_id, mtd1.tud_id, mtd1.mtd_dataSaida
               from GE_MTR_MatriculaTurma mtu1 with (nolock)
                    inner join GE_MTR_MatriculaTurmaDisciplina mtd1 with (nolock)
                    on mtu1.alu_id = mtd1.alu_id
                    and mtu1.mtu_id = mtd1.mtu_id
              where mtu1.mtu_situacao = 1
                and mtd1.mtd_situacao = 5) inativo
             on mtd.alu_id = inativo.alu_id
            and mtd.mtu_id = inativo.mtu_id
            and mtd.mtd_id = inativo.mtd_id
            inner join
            (select mtd2.alu_id, mtd2.mtu_id, mtd2.mtd_id, mtd2.tud_id, mtd2.mtd_dataMatricula
               from GE_MTR_MatriculaTurma mtu2 with (nolock)
                    inner join GE_MTR_MatriculaTurmaDisciplina mtd2 with (nolock)
                     on mtu2.alu_id = mtd2.alu_id
                    and mtu2.mtu_id = mtd2.mtu_id
              where mtu2.mtu_situacao = 1
                and mtd2.mtd_situacao = 1) ativo
             on inativo.alu_id = ativo.alu_id
            and inativo.mtu_id = ativo.mtu_id
            and inativo.tud_id = ativo.tud_id
            and inativo.mtd_dataSaida > ativo.mtd_dataMatricula
END
GO
USE [GestaoPedagogica]
GO
ENABLE TRIGGER TRG_MTR_MatriculaTurmaDisciplina_Identity ON MTR_MatriculaTurmaDisciplina;
GO
USE [Manutencao]
GO

USE [GestaoPedagogica]
GO
DISABLE TRIGGER TRG_MTR_Movimentacao_Identity ON MTR_Movimentacao;
GO
USE [Manutencao]
GO
/****** Object:  StoredProcedure [dbo].[STP_DiarioClasse_MTR_Movimentacao_IMPORT]    Script Date: 05/16/2014 09:41:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_DiarioClasse_MTR_Movimentacao_IMPORT] 
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

	 CREATE TABLE #INSERIR2 (alu_id int, mtu_id int, controle int)

	 while exists (select mtu.alu_id, mtu.mtu_id
					 from GestaoPedagogica..ACA_AlunoCurriculo alc
						  inner join GestaoPedagogica..MTR_MatriculaTurma mtu on mtu.alu_id = alc.alu_id and mtu.alc_id = alc.alc_id
						  inner join GestaoPedagogica..TUR_Turma tur on tur.tur_id = mtu.tur_id 
						  inner join GE_ACA_CalendarioAnual cal on cal.cal_id = tur.cal_id and cal.cal_ano = (select valor from Manutencao.._parametros where chave = 'ANO_BASE')
						  inner join GestaoPedagogica..MTR_MatriculasBoletim mb 
								  on mb.alu_id = mtu.alu_id and mb.mtu_origemDados = mtu.mtu_id
							     and mb.mtu_id is not null
						  INNER JOIN GestaoPedagogica..MTR_MatriculaTurma mtu2 on mtu2.alu_id = alc.alu_id and mtu2.mtu_id = mb.mtu_id
																			  and mtu2.cur_id not in (83,84) --cursos sem TUD E MTD
				    where alc.alc_situacao <> 3
					  and mtu.mtu_situacao <> 3 --and alc.esc_id between 500 and 600
					  and not exists (select mb.alu_id from GestaoPedagogica..MTR_MatriculasBoletimDisciplina mb 
						   	  		   where mb.alu_id = mtu.alu_id
						   	  		     and mb.mtu_origemDados = mtu.mtu_id)
					 group by mtu.alu_id, mtu.mtu_id)
	 begin
	 truncate table #INSERIR2

	 insert into #INSERIR2
	 select top 10000 alu_id, mtu_id, 0
	   from (select mtu.alu_id, mtu.mtu_id 
			   from GestaoPedagogica..ACA_AlunoCurriculo alc
				    inner join GestaoPedagogica..MTR_MatriculaTurma mtu on mtu.alu_id = alc.alu_id and mtu.alc_id = alc.alc_id
				    inner join GestaoPedagogica..TUR_Turma tur on tur.tur_id = mtu.tur_id 
					inner join GE_ACA_CalendarioAnual cal on cal.cal_id = tur.cal_id and cal.cal_ano = (select valor from Manutencao.._parametros where chave = 'ANO_BASE')
				    inner join GestaoPedagogica..MTR_MatriculasBoletim mb 
							on mb.alu_id = mtu.alu_id and mb.mtu_origemDados = mtu.mtu_id
						   and mb.mtu_id is not null
					INNER JOIN GestaoPedagogica..MTR_MatriculaTurma mtu2 on mtu2.alu_id = alc.alu_id and mtu2.mtu_id = mb.mtu_id
																			  and mtu2.cur_id not in (83,84) --cursos sem TUD E MTD
			  where alc.alc_situacao <> 3
				and mtu.mtu_situacao <> 3 --and alc.esc_id between 500 and 600
			    and not exists (select mb.alu_id from GestaoPedagogica..MTR_MatriculasBoletimDisciplina mb 
								 where mb.alu_id = mtu.alu_id
								   and mb.mtu_origemDados = mtu.mtu_id)
			  group by mtu.alu_id, mtu.mtu_id) a 
			  
	 --select * from #INSERIR order by alu_id, mtu_id
	 
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
						inner join #INSERIR2 
								on #INSERIR2.alu_id = mtu.alu_id and #INSERIR2.mtu_id = mtu.mtu_id
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
    
	 drop table #INSERIR2
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
GO
USE [GestaoPedagogica]
GO
ENABLE TRIGGER TRG_MTR_Movimentacao_Identity ON MTR_Movimentacao;
GO
USE [Manutencao]
GO

/****** Object:  StoredProcedure [dbo].[STP_DiarioClasse_PES_Pessoa_Cargos_IMPORT]    Script Date: 05/12/2014 10:35:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[STP_DiarioClasse_PES_Pessoa_Cargos_IMPORT]
AS
BEGIN
	DECLARE
		@ent_id_smesp UNIQUEIDENTIFIER
		, @tdo_id_cpf UNIQUEIDENTIFIER
		
	SET	@ent_id_smesp = (SELECT ent_id FROM SSO_SYS_Entidade WHERE ent_sigla = 'smesp')
	SET @tdo_id_cpf = (SELECT tdo_id FROM SSO_SYS_TipoDocumentacao WHERE tdo_sigla = 'cpf')
	
	UPDATE dbo.tmp_DiarioClasse_cargos SET
		pes_id = usu.pes_id
	FROM
		dbo.tmp_DiarioClasse_cargos car
		INNER JOIN
		(
			SELECT
				u.pes_id
				, pes.pes_nome
				, u.usu_login
			FROM
				SSO_SYS_Usuario u WITH(READUNCOMMITTED)
				INNER JOIN SSO_PES_Pessoa pes
					ON (pes.pes_id = u.pes_id)
			WHERE
				u.ent_id = @ent_id_smesp
				AND u.usu_situacao <> 3
				AND pes.pes_situacao = 1
		) AS usu
			ON (usu.usu_login = car.cd_registro_funcional
				AND usu.pes_nome = car.nm_pessoa)
	
	CREATE TABLE #pessoa_inserir (pes_id UNIQUEIDENTIFIER, psd_numero VARCHAR(11), pes_nome VARCHAR(200), pes_dataNascimento date, pes_sexo tinyint)
	INSERT INTO #pessoa_inserir (pes_id, psd_numero, pes_nome, pes_dataNascimento, pes_sexo)
	SELECT crg.pes_id, crg.cd_cpf_pessoa AS cpf, crg.nm_pessoa AS pes_nome, crg.dt_nascimento_pessoa AS pes_dataNascimento,
		   CASE crg.cd_sexo_pessoa
				WHEN 'M' THEN 1
				WHEN 'F' THEN 2
				ELSE NULL
			END AS pes_sexo
	  FROM dbo.tmp_DiarioClasse_cargos crg
	 WHERE NOT EXISTS (SELECT pes.pes_id FROM SSO_PES_Pessoa pes --adicionados para resolver problema de possível erro ao tentar duplciar pessoas que ocorreu em dezembro de 2017
					    WHERE pes.pes_id = crg.pes_id)
	   AND NOT EXISTS (SELECT pes.pes_id FROM SSO_PES_Pessoa pes 
						WHERE pes.pes_nome = crg.nm_pessoa and pes.pes_situacao = 1
						  and pes.pes_dataNascimento = crg.dt_nascimento_pessoa
						  and pes.pes_sexo = CASE crg.cd_sexo_pessoa WHEN 'M' THEN 1 WHEN 'F' THEN 2 ELSE NULL END)
	 GROUP BY crg.nm_pessoa, crg.cd_cpf_pessoa, crg.pes_id, crg.dt_nascimento_pessoa, crg.cd_sexo_pessoa

	UPDATE #pessoa_inserir SET pes_id = NEWID() WHERE pes_id IS NULL
	
	INSERT INTO SSO_PES_Pessoa (pes_nome, pes_dataNascimento, pes_sexo, pes_situacao, pes_integridade)
	SELECT pes_nome, pes_dataNascimento, pes_sexo, 1, 1
	  FROM #pessoa_inserir _source
	 WHERE NOT EXISTS (SELECT pes.pes_id FROM SSO_PES_Pessoa pes 
					    WHERE pes.pes_id = _source.pes_id)
	
	UPDATE dbo.tmp_DiarioClasse_cargos 
	   SET pes_id = tmp.pes_id
	  FROM dbo.tmp_DiarioClasse_cargos crg
		   INNER JOIN #pessoa_inserir tmp
				   ON (tmp.psd_numero = crg.cd_cpf_pessoa)
	 WHERE crg.pes_id IS NULL

END
GO

/****** Object:  StoredProcedure [dbo].[STP_DiarioClasse_PES_PessoaDocumento_Cargos_IMPORT]    Script Date: 05/12/2014 10:35:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[STP_DiarioClasse_PES_PessoaDocumento_Cargos_IMPORT]
AS
BEGIN
	DECLARE
		@ent_id_smesp UNIQUEIDENTIFIER
		, @tdo_id_cpf UNIQUEIDENTIFIER
		
	SET	@ent_id_smesp = (SELECT ent_id FROM SSO_SYS_Entidade WHERE ent_sigla = 'smesp')
	SET @tdo_id_cpf = (SELECT tdo_id FROM SSO_SYS_TipoDocumentacao WHERE tdo_sigla = 'cpf')
	
	/*
		Tenta "contornar" o problema dos usuários duplicados
		pegando o usuário que está vinculado a mais grupos ou
		que já esteja vinculado a um dos grupos do sistema da intranet
	*/
	UPDATE tmp_DiarioClasse_cargos SET
		pes_id = usu.pes_id
	FROM
		tmp_DiarioClasse_cargos tmp
		INNER JOIN
		(
			SELECT
				_u.usu_id
				, _u.pes_id
				, _u.usu_login
			FROM
				(
					SELECT
						t.usu_id
						, t.usu_login
						, t.pes_id
						, ROW_NUMBER() OVER (PARTITION BY t.usu_id ORDER BY t.qtd DESC) AS rowNum
					FROM
						(
							SELECT
								ut.usu_id
								, ut.usu_login
								, ut.pes_id
								, CASE
									WHEN EXISTS(SELECT us.usu_id FROM SSO_SYS_UsuarioGrupo us INNER JOIN SSO_SYS_Grupo gru ON (gru.gru_id = us.gru_id) WHERE gru.sis_id = 55 AND us.usu_id = ut.usu_id) THEN 1000
									ELSE ut.qtd
								END AS qtd
							FROM
								(
									SELECT
										u.usu_id
										, u.usu_login
										, u.pes_id
										, COUNT(u.usu_id) AS qtd
									FROM
										SSO_SYS_Usuario u
										LEFT JOIN SSO_SYS_UsuarioGrupo ug
											ON (ug.usu_id = u.usu_id)
										INNER JOIN dbo.tmp_DiarioClasse_cargos c
											ON (c.cd_registro_funcional = u.usu_login)
									WHERE
										ent_id = @ent_id_smesp
									GROUP BY
										u.usu_id
										, u.usu_login
										, u.pes_id
								) AS ut
						) AS t
				) AS _u	
		) AS usu
			ON (usu.usu_login = tmp.cd_registro_funcional)
	
	MERGE INTO SSO_PES_PessoaDocumento _target
	USING
	(
		SELECT
			crg.cd_cpf_pessoa AS psd_numero
			, @tdo_id_cpf AS tdo_id
			, crg.pes_id
			, 1 AS psd_situacao
		FROM
			dbo.tmp_DiarioClasse_cargos crg
			LEFT JOIN SSO_PES_PessoaDocumento psd
				ON (psd.tdo_id = @tdo_id_cpf
					AND psd.psd_numero = crg.cd_cpf_pessoa)
		WHERE crg.pes_id is not null
		GROUP BY
			cd_cpf_pessoa
			, crg.pes_id
	) AS _source
	ON (_source.pes_id = _target.pes_id
		AND _source.tdo_id = _target.tdo_id)
	WHEN MATCHED THEN
		UPDATE SET
			psd_dataAlteracao = GETDATE()
			, psd_numero = _source.psd_numero
	WHEN NOT MATCHED THEN
		INSERT
		(
			pes_id
			, tdo_id
			, psd_numero
			, psd_situacao			
		)
		VALUES
		(
			_source.pes_id
			, _source.tdo_id
			, _source.psd_numero
			, _source.psd_situacao
		)
	;
	
END
GO

/****** Object:  StoredProcedure [dbo].[STP_DiarioClasse_RHU_Cargo_IMPORT]    Script Date: 05/12/2014 10:35:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[STP_DiarioClasse_RHU_Cargo_IMPORT]
--DECLARE
	@ent_id UNIQUEIDENTIFIER
AS
BEGIN
	--> Carrega valor para ID Entidade
	IF (@ent_id IS NULL)
	BEGIN
		SET @ent_id = (SELECT ent_id FROM SSO_SYS_Entidade WHERE ent_sigla = 'SMESP')
	END
	----------------------------------/
	
	--> Atualiza RHU_Cargo
	MERGE INTO GE_RHU_Cargo _target
	USING
	(
		SELECT tmp.cd_cargo, tmp.dc_cargo, tvi.tvi_id
		  FROM tmp_DiarioClasse_cadastro_professor tmp
			   INNER JOIN GE_RHU_TipoVinculo tvi
					   ON tvi.tvi_codIntegracao = CAST(tmp.cd_vinculo AS VARCHAR(20))
		 GROUP BY tmp.cd_cargo, tmp.dc_cargo, tvi.tvi_id
			
		 UNION
		 
		 --adicionando essa parte de baixo do union, para colocar os cargos de professores que estão com lotações nulas
		 --se faz necessário por causa da parte de atribuição esporádica
		 SELECT tmp.cd_cargo, tmp.dc_cargo, tvi.tvi_id
		   FROM ( SELECT DISTINCT CASE WHEN c2.cd_cargo_base_servidor is null then (c1.cd_cargo)
									   ELSE c2.cd_cargo
								   END AS cd_cargo
						 , cast(CASE WHEN c2.cd_cargo_base_servidor is null then (c1.dc_cargo)
									ELSE c2.dc_cargo
								END as varchar(50)) AS dc_cargo
						 , cd_situacao_funcional
						 , cast(dc_situacao_funcional as varchar(40)) as dc_situacao_funcional 
					FROM BD_PRODAM..v_cargobase_mstech c1
						 LEFT JOIN BD_PRODAM..v_cargosobreposto_mstech c2
								ON c1.cd_cargo_base_servidor = c2.cd_cargo_base_servidor
				   WHERE lotacao is null and c1.dc_cargo like 'PROF%' 
				   --ORDER BY cd_cargo, cd_situacao_funcional
				   ) tmp
			   INNER JOIN GE_RHU_TipoVinculo tvi
					   ON tvi.tvi_codIntegracao = CAST(tmp.cd_situacao_funcional AS VARCHAR(20))
		 GROUP BY tmp.cd_cargo, tmp.dc_cargo, tvi.tvi_id
		 
	) AS _source
	ON (_source.cd_cargo = _target.crg_codigo
		AND _source.tvi_id = _target.tvi_id)
	WHEN NOT MATCHED THEN
		INSERT
		(
			crg_codigo
			, crg_nome
			, crg_descricao
			, tvi_id
			, crg_cargoDocente
			, crg_codIntegracao
			, ent_id
			, crg_tipo
		)
		VALUES
		(
			_source.cd_cargo
			, _source.dc_cargo
			, _source.dc_cargo
			, _source.tvi_id
			, 1
			, _source.cd_cargo
			, @ent_id
			, 1
		);
	-----------------------------------/
END
GO

/****** Object:  StoredProcedure [dbo].[STP_DiarioClasse_RHU_Colaborador_Cargos_IMPORT]    Script Date: 05/12/2014 10:35:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[STP_DiarioClasse_RHU_Colaborador_Cargos_IMPORT]
AS
BEGIN
	DECLARE @ent_id_smesp UNIQUEIDENTIFIER
	DECLARE @tipo_cpf UNIQUEIDENTIFIER
	
		--> Carrega ID do Tipo Documento CPF
	SET @tipo_cpf = (SELECT tdo_id FROM SSO_SYS_TipoDocumentacao WHERE tdo_sigla = 'CPF')
	
	SET	@ent_id_smesp = (SELECT ent_id FROM SSO_SYS_Entidade WHERE ent_sigla = 'smesp')
	
	MERGE INTO GE_RHU_Colaborador _target
	USING (SELECT cpf.pes_id, @ent_id_smesp AS ent_id, 1 AS col_situacao
		     FROM tmp_DiarioClasse_cargos tmp 
                  INNER JOIN SSO_PES_PessoaDocumento cpf
                   ON cpf.psd_numero COLLATE DATABASE_DEFAULT = tmp.cd_cpf_pessoa COLLATE DATABASE_DEFAULT 
                  AND cpf.tdo_id = @tipo_cpf
                  INNER JOIN SSO_SYS_USUARIO usu 
				   ON cpf.pes_id = usu.pes_id and tmp.cd_registro_funcional = usu.usu_login
            WHERE cpf.psd_situacao = 1
            GROUP BY cpf.pes_id) AS _source
	 ON _source.pes_id = _target.pes_id
	AND _source.ent_id = _target.ent_id
	WHEN NOT MATCHED THEN
	     INSERT (pes_id, ent_id, col_situacao)
		 VALUES (_source.pes_id, _source.ent_id, _source.col_situacao)
    WHEN MATCHED AND ((_target.col_situacao = 3 )
         AND (_target.pes_id not in (select pes_id from GE_RHU_Colaborador where col_situacao = 1)))
         THEN
         UPDATE SET col_situacao = 1,
                    col_dataAlteracao = getdate();
END
GO

USE [GestaoPedagogica]
GO
DISABLE TRIGGER TRG_RHU_ColaboradorCargo_Identity ON RHU_ColaboradorCargo;
GO
USE [Manutencao]
GO
/****** Object:  StoredProcedure [dbo].[STP_DiarioClasse_RHU_ColaboradorCargo_Cargos_IMPORT]    Script Date: 05/16/2014 09:55:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_DiarioClasse_RHU_ColaboradorCargo_Cargos_IMPORT]
AS
BEGIN
	/* Corrige as escolas dos Coordenadores pedagógicos que estão vinculados a diretoria */
	DECLARE @tua_id_dre UNIQUEIDENTIFIER
	SET @tua_id_dre = (SELECT tua_id FROM CoreSSO..SYS_TipoUnidadeAdministrativa WHERE tua_nome = 'DIRETORIA REGIONAL DE EDUCAÇÃO')
	
	DECLARE @TipoUAD table (tua_id UNIQUEIDENTIFIER)
	
	insert into @TipoUAD
	SELECT tua_id FROM CoreSSO..SYS_TipoUnidadeAdministrativa
	 WHERE tua_nome in ('Diretoria Regional de Educação','Escola')
	
	/* Busca o código das DREs */
	DECLARE @dre AS TABLE
	  (cd_unidade_educacao VARCHAR(6))

	DECLARE @ent_id_smesp UNIQUEIDENTIFIER, @tdo_id_cpf UNIQUEIDENTIFIER
		
	SET	@ent_id_smesp = (SELECT ent_id FROM CoreSSO..SYS_Entidade WHERE ent_sigla = 'smesp')
	
	INSERT INTO @dre( cd_unidade_educacao )
	SELECT uad_codigo
	  FROM CoreSSO..SYS_UnidadeAdministrativa
	 WHERE tua_id = @tua_id_dre
	   AND ent_id = @ent_id_smesp
    
    -- Atualiza a carga horária que não está sendo carregada pelo processo
    UPDATE DC
       SET carga_horaria = PROF.carga_horaria
      FROM tmp_DiarioClasse_cargos DC
           INNER JOIN BD_PRODAM..v_cadastro_professor PROF
            ON DC.cd_registro_funcional = PROF.rf
           AND DC.cd_cargo_base_servidor = PROF.cd_cargo_base_servidor
     WHERE DC.carga_horaria IS NULL
       AND PROF.carga_horaria IS NOT NULL
    
    insert into tmp_DiarioClasse_cargos
    select nm_pessoa, dt_nascimento_pessoa, cd_sexo_pessoa, cd_cpf_pessoa, carga_horaria,
           hora_atividade = CASE WHEN carga_horaria < 24 THEN 1
                                 WHEN carga_horaria > = 24 AND carga_horaria <= 26 THEN 3
                                 WHEN carga_horaria > 25 THEN 11 END,
           cd_registro_funcional, cd_cargo_base_servidor, lotacao,
           origem, pwd, cd_cargo, dc_cargo, cd_situacao_funcional,
           dc_situacao_funcional, pes_id, dt_inicio
      from (SELECT dcc.nm_pessoa, dcc.dt_nascimento_pessoa, dcc.cd_sexo_pessoa, dcc.cd_cpf_pessoa,
                   prof.carga_horaria, dcc.cd_registro_funcional, prof.cd_cargo_base_servidor,
                   prof.cd_escola as lotacao, dcc.origem, dcc.pwd, prof.cd_cargo, prof.dc_cargo,
                   dcc.cd_situacao_funcional, dcc.dc_situacao_funcional, dcc.pes_id,
                   ISNULL(dcc.dt_inicio, GETDATE()) AS dt_inicio
              FROM BD_PRODAM..v_cadastro_professor prof
                   inner join tmp_DiarioClasse_cargos dcc
                    on prof.rf = dcc.cd_registro_funcional
                   and prof.cd_cargo_base_servidor = dcc.cd_cargo_base_servidor
                   inner join BD_PRODAM..v_unidade_educacao_dados_gerais esc
                   on prof.cd_escola = esc.cd_unidade_educacao    
             where dcc.lotacao not in (select cd_unidade_educacao from @dre)
               and prof.rf not in
                   (select cd_registro_funcional from tmp_DiarioClasse_cargos aux
                     where prof.rf = aux.cd_registro_funcional
                       and prof.cd_cargo_base_servidor = aux.cd_cargo_base_servidor
                       and prof.cd_escola = aux.lotacao)
               and prof.cd_cargo_base_servidor not in
                   (select cd_cargo_base_servidor from BD_PRODAM..v_cargosobreposto_mstech)
               and esc. dc_tipo_unidade_educacao = 'ESCOLA' 
               and esc.sg_tp_escola in ('EMEF','EMEFM','CEU EMEF','EMEBS','CIEJA',
									    'EMEI','CECI','CEMEI','CEI DIRET', 'CCI/CIPS', 'CEI INDIR', 'CEU CEI', 'CEU EMEI', 'CR.P.CONV')
             group by dcc.nm_pessoa, dcc.dt_nascimento_pessoa, dcc.cd_sexo_pessoa, dcc.cd_cpf_pessoa,
                   prof.carga_horaria, dcc.cd_registro_funcional, prof.cd_cargo_base_servidor,
                   prof.cd_escola, dcc.origem, dcc.pwd, prof.cd_cargo, prof.dc_cargo,
                   dcc.cd_situacao_funcional, dcc.dc_situacao_funcional, dcc.pes_id,
                   ISNULL(dcc.dt_inicio, GETDATE())) dados
    
	MERGE INTO GE_RHU_ColaboradorCargo _target
	USING (SELECT ISNULL(_main.coc_id, isnull((select MAX(coc_id) from GestaoPedagogica..RHU_ColaboradorCargo rcc
                                                where rcc.col_id = _main.col_id
                                                  and rcc.crg_id = _main.crg_id), 0) + _main.rowNum) AS coc_id,
                  _main.pes_id, _main.col_id, _main.crg_id, _main.cd_lotacao_cl, _main.chr_id,
	              _main.uad_id, _main.ent_id, _main.coc_situacao, _main.coc_matricula,
	              cast(_main.coc_vigenciaInicio as date) as coc_vigenciaInicio
		     FROM (SELECT pes_id, col_id, crg_id, uad_id, ent_id, coc_situacao, chr_id, coc_matricula, lotacao,
                          coc_id = CASE rowNum WHEN 1 THEN coc_id ELSE NULL END, coc_vigenciaInicio, cd_lotacao_cl,
                          ROW_NUMBER() OVER(PARTITION BY col_id, crg_id, CASE rowNum WHEN 1 THEN coc_id ELSE NULL END
                                       ORDER BY coc_dataCriacao) AS rowNum 
                     FROM (SELECT tmp.pes_id, tmp.col_id, tmp.crg_id, tmp.uad_id, tmp.ent_id, tmp.coc_situacao,
                                  tmp.chr_id, tmp.coc_matricula, tmp.lotacao, coc.coc_id, tmp.coc_vigenciaInicio,
                                  tmp.cd_lotacao_cl, coc.coc_dataCriacao,
		                          ROW_NUMBER() OVER(PARTITION BY tmp.col_id, tmp.crg_id, coc.coc_id
		                                       ORDER BY coc.coc_dataCriacao) AS rowNum
                             FROM (SELECT crg.pes_id, car.crg_id, uad.uad_id, uad.ent_id, col.col_id,
                                          crg.coc_situacao, crg.coc_matricula, crg.lotacao, crg.coc_vigenciaInicio,
                                          cd_lotacao_cl, chr_id
						             FROM (SELECT pes_id, cd_registro_funcional AS coc_matricula, cd_cargo,
						                          dc_cargo, lotacao, 1 AS coc_situacao,
						                          dt_inicio AS coc_vigenciaInicio, cd_lotacao_cl,
						                          isnull(cd_situacao_funcional,1) as cd_situacao_funcional,
						                          carga_horaria,
						                          ROW_NUMBER() OVER (PARTITION BY pes_id, cd_cargo, lotacao, cd_lotacao_cl
						                                       ORDER BY origem DESC) AS rowNum
								             FROM (select pes_id, DCcrg.cd_registro_funcional, DCcrg.cd_cargo,
								                          DCcrg.dc_cargo, DCcrg.lotacao, DCcrg.dt_inicio,
								                          DCcrg.cd_situacao_funcional, origem,
						                                  cd_lotacao_cl, DCcrg.carga_horaria
								                     from dbo.tmp_DiarioClasse_cargos DCcrg
								                          inner join BD_PRODAM..v_cargobase_mstech cb
								                           on DCcrg.cd_registro_funcional = cb.cd_registro_funcional
								                          and DCcrg.cd_cargo_base_servidor = cb.cd_cargo_base_servidor
								                    group by pes_id, DCcrg.cd_registro_funcional, DCcrg.cd_cargo,
								                          DCcrg.dc_cargo, DCcrg.lotacao, DCcrg.dt_inicio,
								                          DCcrg.cd_situacao_funcional, origem,
						                                  cd_lotacao_cl, DCcrg.carga_horaria
								                   union all
								                   select pes_id, dc.cd_registro_funcional, dc.cd_cargo, dc.dc_cargo,
								                          esc_codigo as lotacao, dc.dt_inicio,
								                          dc.cd_situacao_funcional, origem, cd_lotacao_cl,
								                          null as carga_horaria
                                                     from dbo.tmp_DiarioClasse_cargos dc
                                                          inner join BD_PRODAM..v_cargobase_mstech cb
                                                           on dc.cd_registro_funcional = cb.cd_registro_funcional
                                                          AND dc.cd_cargo_base_servidor = cb.cd_cargo_base_servidor
                                                          --and dc.cd_cargo = cb.cd_cargo
                                                          inner join GestaoPedagogica..RHU_Cargo RHU_Cargo
                                                           on cb.cd_cargo = RHU_Cargo.crg_codigo 
                                                          and cb.cd_situacao_funcional = RHU_Cargo.tvi_id
                                                          inner join CoreSSO..SYS_UnidadeAdministrativa uad
                                                          on dc.lotacao = uad.uad_codigo
                                                          inner join GestaoPedagogica..ESC_Escola ESC_Escola
                                                          on uad.uad_id = ESC_Escola.uad_idSuperiorGestao
                                                    where cb.dc_cargo <> 'COORDENADOR PEDAGOGICO'
                                                      and crg_situacao <> 3 and crg_cargoDocente = 1
                                                      and esc_situacao = 1
                                                      and dc.lotacao not in 
                                                          (select cd_escola
                                                             from BD_PRODAM..v_cadastro_professor prof
                                                            where prof.rf = dc.cd_registro_funcional
                                                              and prof.cd_cargo_base_servidor = dc.cd_cargo_base_servidor)
                                                              and dc.lotacao in
                                                                  (select cd_unidade_educacao
                                                                     from BD_PRODAM..v_unidade_educacao_dados_gerais
                                                                    where LEFT(nm_unidade_educacao,30) = 'DIRETORIA REGIONAL DE EDUCACAO')
                                                    group by pes_id, dc.cd_registro_funcional, dc.cd_cargo, dc.dc_cargo,
                                                          esc_codigo, dc.dt_inicio, dc.cd_situacao_funcional, origem,
                                                          cd_lotacao_cl, dc.carga_horaria
                                                  ) dados
                                         ) crg
                                         INNER JOIN GestaoPedagogica..RHU_TipoVinculo tvi
                                         ON tvi.tvi_codIntegracao = crg.cd_situacao_funcional
							             INNER JOIN GestaoPedagogica..RHU_Cargo car
								          ON crg.cd_cargo = car.crg_codigo
								         and tvi.tvi_id = car.tvi_id
							             INNER JOIN CoreSSO..SYS_UnidadeAdministrativa uad
								          ON uad.uad_codigo = crg.lotacao
								         AND uad.ent_id = @ent_id_smesp
							             INNER JOIN GestaoPedagogica..RHU_Colaborador col
								         ON col.pes_id = crg.pes_id
								         INNER JOIN @TipoUAD tua
								         on uad.tua_id = tua.tua_id
								         LEFT JOIN GestaoPedagogica..RHU_CargaHoraria chr
                                          ON crg.carga_horaria * 60 = chr.chr_horasAula
                                         AND car.crg_id = chr.crg_id
						           WHERE crg.rowNum = 1
						             AND col.col_situacao = 1
							         AND uad.uad_situacao = 1
							     ) AS tmp
					             LEFT JOIN GestaoPedagogica..RHU_ColaboradorCargo coc
						          ON tmp.col_id = coc.col_id
						         AND tmp.crg_id = coc.crg_id 
						         AND tmp.uad_id = coc.uad_id
						         AND (tmp.cd_lotacao_cl = coc.coc_observacao or coc.coc_observacao is null)
						         --AND tmp.coc_vigenciaInicio = coc.coc_vigenciaInicio
						         AND 3 <> coc.coc_situacao
					             LEFT JOIN @dre dre
						         ON dre.cd_unidade_educacao = tmp.lotacao
						 ) AS DADOS
                  ) AS _main
         ) AS _source
	 ON _source.col_id = _target.col_id
	AND _source.crg_id = _target.crg_id
	AND _source.coc_id = _target.coc_id
    WHEN MATCHED AND _target.coc_controladoIntegracao = 1 and
         ((_target.uad_id <> _source.uad_id) or
          (isnull(_target.coc_observacao,'XX') <> _source.cd_lotacao_cl) or
          (_target.coc_vigenciaInicio <> _source.coc_vigenciaInicio) or
          ((isnull(_target.chr_id,0) <> _source.chr_id) AND (_source.chr_id IS NOT NULL)) or
          (_target.coc_situacao <> _source.coc_situacao)) THEN
         UPDATE SET coc_situacao = 1,
                    uad_id = _source.uad_id,
                    coc_observacao = _source.cd_lotacao_cl,
                    coc_controladoIntegracao = 1,
                    coc_vigenciaInicio = _source.coc_vigenciaInicio,
                    coc_vigenciaFim = null,
                    chr_id = case when _source.chr_id is not null then _source.chr_id else _target.chr_id end,
                    coc_dataAlteracao = getdate()
	WHEN NOT MATCHED THEN
		INSERT (col_id, crg_id, coc_id, coc_matricula, coc_observacao, coc_vigenciaInicio, ent_id, uad_id, chr_id, coc_situacao, coc_controladoIntegracao)
		VALUES (_source.col_id, _source.crg_id, _source.coc_id, _source.coc_matricula, _source.cd_lotacao_cl,
		        _source.coc_vigenciaInicio, _source.ent_id, _source.uad_id, _source.chr_id, _source.coc_situacao, 1);
    
    -- Retira os cargos sobrepostos que o docente não possui mais
    update coc
       set coc_situacao = 6, coc_vigenciaFim = GETDATE(), coc_dataAlteracao = GETDATE()
      from GestaoPedagogica..RHU_ColaboradorCargo coc
           inner join 
           (select crg_id, crg_codigo
              from GestaoPedagogica..RHU_Cargo crg
                   inner join (select cd_cargo from BD_PRODAM..v_cargosobreposto_mstech group by cd_cargo) sobre
                   on crg.crg_codigo = sobre.cd_cargo
             where crg_situacao <> 3
             group by crg_id, crg_codigo) cargo
           on coc.crg_id = cargo.crg_id
     where coc_situacao = 1
       and coc_matricula not in
           (select cb.cd_registro_funcional
              from BD_PRODAM..v_cargobase_mstech cb
                   inner join BD_PRODAM..v_cargosobreposto_mstech cs
                   on cb.cd_cargo_base_servidor = cs.cd_cargo_base_servidor
             where cb.cd_registro_funcional = coc.coc_matricula
               and cs.cd_cargo = cargo.crg_codigo)
       and coc_matricula not in
           (select cd_registro_funcional
              from BD_PRODAM..v_cargobase_mstech base
             where base.cd_registro_funcional = coc.coc_matricula
               and base.cd_cargo = cargo.crg_codigo)
END
GO
USE [GestaoPedagogica]
GO
ENABLE TRIGGER TRG_RHU_ColaboradorCargo_Identity ON RHU_ColaboradorCargo;
GO
USE [Manutencao]
GO

/****** Object:  StoredProcedure [dbo].[STP_DiarioClasse_RHU_TipoVinculo_IMPORT]    Script Date: 05/12/2014 10:35:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_DiarioClasse_RHU_TipoVinculo_IMPORT]
	@ent_id UNIQUEIDENTIFIER
AS
BEGIN
	--> Carrega valor para ID Entidade
	IF (@ent_id IS NULL)
	BEGIN
		SET @ent_id = (SELECT ent_id FROM SSO_SYS_Entidade WHERE ent_sigla = 'SMESP')
	END
	----------------------------------/

	--> Atualiza RHU_TipoVinculo
	MERGE INTO GE_RHU_TipoVinculo _target
	USING
	(
		SELECT
			tmp.cd_vinculo
			, tmp.dc_vinculo
		FROM
			tmp_DiarioClasse_cadastro_professor tmp
		GROUP BY
			tmp.cd_vinculo
			, tmp.dc_vinculo
	) AS _source
	ON (_source.cd_vinculo = _target.tvi_codIntegracao
		AND _target.ent_id = @ent_id)
	WHEN NOT MATCHED THEN
		INSERT
		(
			tvi_nome
			, tvi_descricao
			, tvi_codIntegracao
			, ent_id
		)
		VALUES
		(
			_source.dc_vinculo
			, _source.dc_vinculo
			, _source.cd_vinculo
			, @ent_id
		);
	----------------------------------/
END
GO

/****** Object:  StoredProcedure [dbo].[STP_DiarioClasse_SYS_Usuario_Cargos_IMPORT]    Script Date: 05/12/2014 10:35:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_DiarioClasse_SYS_Usuario_Cargos_IMPORT]
AS
BEGIN
	DECLARE @ent_id_smesp UNIQUEIDENTIFIER

	SET	@ent_id_smesp = (SELECT ent_id FROM SSO_SYS_Entidade WHERE ent_sigla = 'smesp')
	
	IF OBJECT_ID('tempdb..#usuario_table') > 0 
       DROP TABLE #usuario_table
   
    CREATE TABLE #usuario_table (usu_id UNIQUEIDENTIFIER , usu_login VARCHAR(50))
            
	MERGE INTO SSO_SYS_Usuario _target
	USING (SELECT cd_registro_funcional AS usu_login, '.' AS usu_email, --conforme solicitado pela carla em 27/06/2017, precisa colocar algo ao invés de null no email senao da erro ao reenviar senha de usuarios bloqueados
	              pwd AS usu_senha, dcc.pes_id, @ent_id_smesp AS ent_id, 5 AS usu_situacao,
	              3 AS usu_criptografia, 1 AS usu_integridade, isnull(usu_id, newid()) usu_id
             FROM (select cd_registro_funcional, pwd, pes_id
                     from tmp_DiarioClasse_cargos
                    group by cd_registro_funcional, pwd, pes_id) dcc
                  LEFT JOIN CoreSSO..SYS_Usuario usu
                   ON dcc.pes_id = usu.pes_id
                  AND dcc.cd_registro_funcional = usu.usu_login
                  AND usu.usu_situacao <> 3) AS _source
	ON _source.usu_id = _target.usu_id
	WHEN NOT MATCHED THEN
         INSERT (usu_id, usu_login, usu_email, usu_senha, usu_criptografia, usu_situacao,
                 pes_id, ent_id, usu_integridade)
         VALUES (_source.usu_id, _source.usu_login, _source.usu_email, _source.usu_senha,
                 _source.usu_criptografia, _source.usu_situacao, _source.pes_id,
                 _source.ent_id, _source.usu_integridade)
    OUTPUT INSERTED.usu_id, INSERTED.usu_login INTO #usuario_table;

	INSERT INTO SSO_NewUsers (usu_id, usu_login, usu_status_sinc)
	SELECT u.usu_id, u.usu_login, 1 
	  FROM #usuario_table u
           LEFT JOIN SSO_NewUsers n
           ON n.usu_login = u.usu_login
     WHERE n.usu_login IS NULL
END
GO

/****** Object:  StoredProcedure [dbo].[STP_DiarioClasse_SYS_UsuarioGrupo_Cargos_IMPORT]    Script Date: 05/12/2014 10:35:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_DiarioClasse_SYS_UsuarioGrupo_Cargos_IMPORT]
AS
BEGIN
	DECLARE
		@ent_id_smesp						UNIQUEIDENTIFIER
		, @gru_id_coordenador_pedagogico	UNIQUEIDENTIFIER
		, @gru_id_diretor_escolar			UNIQUEIDENTIFIER

	SET	@ent_id_smesp = (SELECT ent_id FROM SSO_SYS_Entidade WHERE ent_sigla = 'smesp')
	SET @gru_id_coordenador_pedagogico = (SELECT gru_idUsadoIntegracao FROM DEPARA_GRUPOS_INTEGRACAO 
										   WHERE nomeUsadoIntegracao = 'coordenadores pedagógicos' and sis_id = 144)
	SET @gru_id_diretor_escolar = (SELECT gru_idUsadoIntegracao FROM DEPARA_GRUPOS_INTEGRACAO 
									WHERE nomeUsadoIntegracao = 'diretores escolares' and sis_id = 144)

	MERGE INTO SSO_SYS_UsuarioGrupo _target
	USING
	(
		SELECT
			crg.usg_situacao
			, crg.usu_login
			, crg.gru_id
			, usu.usu_id
		FROM
			(
				SELECT
					pes_id
					, cd_registro_funcional AS usu_login
					, CASE cd_cargo
						WHEN 3360 THEN @gru_id_diretor_escolar
						WHEN 3379 THEN @gru_id_coordenador_pedagogico
						ELSE NULL
					END AS gru_id
					, 1 AS usg_situacao
					, ROW_NUMBER() OVER (PARTITION BY pes_id, cd_cargo ORDER BY origem DESC) AS rowNum
				FROM
					dbo.tmp_DiarioClasse_cargos
			) crg
			LEFT JOIN SSO_SYS_Usuario usu
				ON (usu.pes_id = crg.pes_id
					AND usu.usu_login = crg.usu_login)
		WHERE
			crg.rowNum = 1
			AND usu.ent_id = @ent_id_smesp
		GROUP BY
			crg.usg_situacao
			, crg.usu_login
			, crg.gru_id
			, usu.usu_id
	) AS _source
	ON (_source.usu_id = _target.usu_id
		AND _source.gru_id = _target.gru_id)
	WHEN NOT MATCHED AND _source.gru_id is not null THEN
		INSERT
		(
			usu_id
			, gru_id
			, usg_situacao
		)
		VALUES
		(
			_source.usu_id
			, _source.gru_id
			, _source.usg_situacao
		)
	;
END
GO

/****** Object:  StoredProcedure [dbo].[STP_DiarioClasse_SYS_UsuarioGrupo_SYS_UsuarioGrupoUA_IMPORT]    Script Date: 05/12/2014 10:35:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_DiarioClasse_SYS_UsuarioGrupo_SYS_UsuarioGrupoUA_IMPORT]	
AS
BEGIN
DECLARE
	@ent_id UNIQUEIDENTIFIER ,
    @sis_id INT ,
    @gru_id UNIQUEIDENTIFIER ,
    @sis_idManutencao INT ,
	@gru_idManutencao UNIQUEIDENTIFIER
		
	DECLARE @UsuarioTable TABLE
	(
		usu_id UNIQUEIDENTIFIER ,
		usu_login VARCHAR(500) COLLATE Latin1_General_CI_AS
	)

	-- Id do sistema de Manutenção
		SELECT  @sis_idManutencao = sis_id
		FROM    SSO_SYS_Sistema
		WHERE   sis_nome = 'Manutenção'

	-- ID do Grupo Manutenção
		SELECT @gru_idManutencao = gru_idUsadoIntegracao FROM DEPARA_GRUPOS_INTEGRACAO
        WHERE nomeUsadoIntegracao = 'Grupo Manutenção' and sis_id = @sis_idManutencao
		
	-- Insere na tabela temporária os usuários que não poderão ser excluídos, pois esses não foram incluídos pela importação.
		INSERT  INTO @UsuarioTable
        ( usu_id ,
          usu_login 
        )
        SELECT  usu.usu_id ,
                usu.usu_login
        FROM    SSO_SYS_Usuario usu
                INNER JOIN SSO_SYS_UsuarioGrupo usg ON usu.usu_id = usg.usu_id
                INNER JOIN SSO_SYS_Grupo gru ON usg.gru_id = gru.gru_id
        WHERE   gru.sis_id = @sis_idManutencao
                AND usg.gru_id = @gru_idManutencao
    
	--> Carrega valor para ID Entidade
        IF ( @ent_id IS NULL ) 
            BEGIN
                SET @ent_id = ( SELECT TOP 1
                                        ent_id
                                FROM    SSO_SYS_Entidade
                                WHERE   ent_sigla = 'SMESP'
                              )
            END
	----------------------------------/
	/*
		Id do sistema Diário de classe
	*/	
    SET @sis_id = 144
	
	--> Carrega ID do grupo Professores
        IF ( @gru_id IS NULL ) 
            BEGIN
                SET @gru_id = ( SELECT gru_idUsadoIntegracao FROM DEPARA_GRUPOS_INTEGRACAO
								WHERE nomeUsadoIntegracao = 'Professores' and sis_id = @sis_id
                              )
            END
	----------------------------------/	
			
	IF (@gru_id IS NOT NULL)
	BEGIN
	--> Tabela SYS_UsuarioGrupo
		--	Inativa todos do grupo de PROFESSOR. 
        UPDATE  SSO_SYS_UsuarioGrupo        
        SET     usg_situacao = 3
        FROM    SSO_SYS_UsuarioGrupo ug
        LEFT JOIN @UsuarioTable ust ON ug.usu_id = ust.usu_id
        WHERE   ug.gru_id = @gru_id
                AND @gru_id IS NOT NULL 
                AND ust.usu_id IS NULL
                
        MERGE INTO SSO_SYS_UsuarioGrupo _target
            USING 
                ( SELECT    usu.usu_id ,
                            @gru_id AS gru_id ,
                            usu.pes_id
                  FROM      tmp_DiarioClasse_cadastro_professor tmp
                            INNER JOIN sso_sys_usuario usu ON usu.usu_login COLLATE Latin1_General_CI_AI = tmp.rf COLLATE Latin1_General_CI_AI
                                                              AND tmp.pes_id = usu.pes_id
															  AND usu.usu_situacao <> 3
                  GROUP BY  usu.usu_id ,
                            usu.pes_id
                ) _source
            ON ( _source.usu_id = _target.usu_id
                 AND _source.gru_id = _target.gru_id
               )
            WHEN NOT MATCHED 
                THEN
		INSERT  (
                      usu_id ,
                      gru_id ,
                      usg_situacao
		        )
                    VALUES
                    ( _source.usu_id ,
                      _source.gru_id ,
                      1
		        ) 
		    WHEN MATCHED THEN
				UPDATE SET usg_situacao = 1    
		        ;
	
	--> Fim Tabela Sys_Usuario_Grupo
	----------------------------------/
	/*
		Limpa os vínculos antigos existentes entre grupo e unidade administrativa dos
		professores do diário de classe
	*/
	DELETE uga FROM SSO_SYS_UsuarioGrupoUA AS uga
	INNER JOIN
	(
		SELECT
			usu.usu_id
			, @gru_id AS gru_id
		FROM
			dbo.tmp_DiarioClasse_cadastro_professor tmp
			INNER JOIN SSO_SYS_Usuario usu
				ON (usu.usu_login COLLATE Latin1_General_CI_AI = tmp.rf COLLATE Latin1_General_CI_AI)
	) AS tmp
		ON (tmp.usu_id = uga.usu_id
			AND tmp.gru_id = uga.gru_id)
	LEFT JOIN @UsuarioTable u
		ON u.usu_id = uga.usu_id
		AND @gru_idManutencao = uga.gru_id
	WHERE u.usu_id IS NULL
	
	--> SYS_UsuarioGrupoUA
	
        MERGE INTO SSO_SYS_UsuarioGrupoUA _target
            USING 
                ( SELECT    usu.usu_id ,
                            esc.uad_id ,
                            usu.pes_id
                  FROM      tmp_DiarioClasse_cadastro_professor tmp
                            INNER JOIN sso_sys_usuario usu ON usu.usu_login COLLATE Latin1_General_CI_AI = tmp.rf COLLATE Latin1_General_CI_AI
                                                              AND tmp.pes_id = usu.pes_id
															  AND usu.usu_situacao <> 3
                            INNER JOIN GE_ESC_Escola esc ON esc.ent_id = @ent_id
                                                            AND esc_codigo COLLATE Latin1_General_CI_AS = tmp.cd_escola COLLATE Latin1_General_CI_AS
															AND esc.esc_situacao <> 3
                  GROUP BY  usu.usu_id ,
                            esc.uad_id ,
                            usu.pes_id
                ) _source
            ON ( _source.usu_id = _target.usu_id
                 AND @gru_id = _target.gru_id
               )
            WHEN NOT MATCHED 
                THEN
		INSERT  (
                      usu_id ,
                      gru_id ,
                      ent_id ,
                      uad_id
		        )
                    VALUES
                    ( _source.usu_id ,
                      @gru_id ,
                      @ent_id ,
                      _source.uad_id
		        ) ;
	
	--> Fim Tabela Sys_Usuario_GrupoUA
	----------------------------------/
	END
	

END
GO

/****** Object:  StoredProcedure [dbo].[STP_DiarioClasse_SYS_UsuarioGrupoUA_Cargos_IMPORT]    Script Date: 05/12/2014 10:35:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_DiarioClasse_SYS_UsuarioGrupoUA_Cargos_IMPORT]
AS
BEGIN
	DECLARE
		@ent_id_smesp						UNIQUEIDENTIFIER
		, @gru_id_coordenador_pedagogico	UNIQUEIDENTIFIER
		, @gru_id_diretor_escolar			UNIQUEIDENTIFIER
		, @tua_id_dre						UNIQUEIDENTIFIER

	SET	@ent_id_smesp = (SELECT ent_id FROM SSO_SYS_Entidade WHERE ent_sigla = 'smesp')
	SET @gru_id_coordenador_pedagogico = (SELECT gru_idUsadoIntegracao FROM DEPARA_GRUPOS_INTEGRACAO 
										   WHERE nomeUsadoIntegracao = 'coordenadores pedagógicos' and sis_id = 144)
	SET @gru_id_diretor_escolar = (SELECT gru_idUsadoIntegracao FROM DEPARA_GRUPOS_INTEGRACAO 
									WHERE nomeUsadoIntegracao = 'diretores escolares' and sis_id = 144)
	SET @tua_id_dre = (SELECT tua_id FROM SSO_SYS_TipoUnidadeAdministrativa WHERE LOWER(tua_nome) = 'diretoria regional de educação')
	
	IF OBJECT_ID('tempdb..#usuarioUA') > 0 
       DROP TABLE #usuarioUA
       
    CREATE TABLE #usuarioUA
        (
          usu_id UNIQUEIDENTIFIER ,
          gru_id UNIQUEIDENTIFIER ,
          uad_id UNIQUEIDENTIFIER ,
          pes_id UNIQUEIDENTIFIER
        );
                
                
	INSERT  INTO #usuarioUA
	 SELECT tabela.usu_id ,
			tabela.gru_id ,
			tabela.uad_id ,
			tabela.pes_id
	 FROM   ( SELECT    crg.usg_situacao ,
						crg.usu_login ,
						crg.gru_id ,
						usu.usu_id ,
						crg.uad_id ,
						crg.pes_id, 
						@ent_id_smesp AS ent_id
			  FROM      ( SELECT    pes_id ,
									cd_registro_funcional AS usu_login ,
									CASE cd_cargo
									  WHEN 3360 THEN @gru_id_diretor_escolar
									  WHEN 3379
									  THEN @gru_id_coordenador_pedagogico
									  ELSE NULL
									END AS gru_id ,
									1 AS usg_situacao ,
									uad.uad_id ,
									ROW_NUMBER() OVER ( PARTITION BY pes_id,
														cd_cargo ORDER BY origem DESC ) AS rowNum
						  FROM      dbo.tmp_DiarioClasse_cargos c
									INNER JOIN SSO_SYS_UnidadeAdministrativa uad ON ( uad.uad_codigo = c.lotacao
																  AND uad.ent_id = @ent_id_smesp
																  )
						  WHERE     uad.uad_situacao = 1
									AND uad.tua_id != @tua_id_dre
						) crg
						LEFT JOIN SSO_SYS_Usuario usu ON ( usu.pes_id = crg.pes_id
														   AND usu.usu_login = crg.usu_login
														 )
			  WHERE     crg.rowNum = 1
						AND usu.ent_id = @ent_id_smesp
			  GROUP BY  crg.usg_situacao ,
						crg.usu_login ,
						crg.gru_id ,
						usu.usu_id ,
						crg.pes_id, 
						crg.uad_id
			) AS TABELA
			WHERE usu_id IS NOT NULL AND gru_id IS NOT NULL

	--> Apaga todos os registros em SYS_UsuarioGrupoUA em que o usu_id e gru_id estejam vindo do BD_PRODAM
            DELETE  SSO_SYS_UsuarioGrupoUA
            FROM    SSO_SYS_UsuarioGrupoUA ugu
                    INNER JOIN #usuarioUA usd ON ugu.usu_id = usd.usu_id
                                             AND ugu.gru_id = usd.gru_id
	
	--> SYS_UsuarioGrupoUA
	 -- Apenas inserção pois o Delete já é feito acima, garantindo assim qualquer atualização.	
            INSERT  SSO_SYS_UsuarioGrupoUA
                    ( usu_id ,
                      gru_id ,
                      ent_id ,
                      uad_id
		        )
                    SELECT  usu.usu_id ,
                            gru_id ,
                            @ent_id_smesp ,
                            usu.uad_id
                    FROM    #usuarioUA usu
                    GROUP BY usu.usu_id ,
                            gru_id ,
                            usu.uad_id ,
                            usu.pes_id

	/* OffLine               
	MERGE INTO SSO_SYS_UsuarioGrupoUA _target
	USING
	(
		SELECT
			crg.usg_situacao
			, crg.usu_login
			, crg.gru_id
			, usu.usu_id
			, crg.uad_id
			, @ent_id_smesp AS ent_id
		FROM
			(
				SELECT
					pes_id
					, cd_registro_funcional AS usu_login
					, CASE cd_cargo
						WHEN 3360 THEN @gru_id_diretor_escolar
						WHEN 3379 THEN @gru_id_coordenador_pedagogico
						ELSE NULL
					END AS gru_id
					, 1 AS usg_situacao
					, uad.uad_id
					, ROW_NUMBER() OVER (PARTITION BY pes_id, cd_cargo ORDER BY origem DESC) AS rowNum
				FROM
					dbo.tmp_DiarioClasse_cargos c
					INNER JOIN SSO_SYS_UnidadeAdministrativa uad
						ON (uad.uad_codigo = c.lotacao
							AND uad.ent_id = @ent_id_smesp)
				WHERE
					uad.uad_situacao = 1
					AND uad.tua_id != @tua_id_dre
			) crg
			LEFT JOIN SSO_SYS_Usuario usu
				ON (usu.pes_id = crg.pes_id
					AND usu.usu_login = crg.usu_login)
		WHERE
			crg.rowNum = 1
			AND usu.ent_id = @ent_id_smesp
		GROUP BY
			crg.usg_situacao
			, crg.usu_login
			, crg.gru_id
			, usu.usu_id
			, crg.uad_id
	) AS _source
	ON (_source.usu_id = _target.usu_id
		AND _source.gru_id = _target.gru_id
		AND _source.uad_id = _target.uad_id
		AND _source.ent_id = _target.ent_id)
	WHEN NOT MATCHED THEN
		INSERT
		(
			usu_id
			, gru_id
			, ent_id
			, uad_id
		)
		VALUES
		(
			_source.usu_id
			, _source.gru_id
			, _source.ent_id
			, _source.uad_id
		)
	; OffLine */
END
GO

/****** Object:  StoredProcedure [dbo].[STP_GerenciamentoFrequencia_CREATE_SINONIMO]    Script Date: 05/12/2014 10:35:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_GerenciamentoFrequencia_CREATE_SINONIMO]
--DECLARE
	@bdCoreSSO AS VARCHAR(100)
	, @bdCoreSME AS VARCHAR(100)
AS
BEGIN
	DECLARE @SQL AS VARCHAR(MAX)
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'DS_SSO_SYS_UsuarioGrupo')
	DROP SYNONYM [dbo].[DS_SSO_SYS_UsuarioGrupo]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'DS_SSO_SYS_UsuarioGrupoUA')
	DROP SYNONYM [dbo].[DS_SSO_SYS_UsuarioGrupoUA]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'DS_SSO_SYS_Usuario')
	DROP SYNONYM [dbo].[DS_SSO_SYS_Usuario]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'DS_SSO_SYS_SistemaEntidade')
	DROP SYNONYM [dbo].[DS_SSO_SYS_SistemaEntidade]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'DS_SSO_SYS_Sistema')
	DROP SYNONYM [dbo].[DS_SSO_SYS_Sistema]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'DS_SSO_SYS_Grupo')
	DROP SYNONYM [dbo].[DS_SSO_SYS_Grupo]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'DS_SSO_END_Cidade')
	DROP SYNONYM [dbo].[DS_SSO_END_Cidade]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'DS_SSO_END_Endereco')
	DROP SYNONYM [dbo].[DS_SSO_END_Endereco]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'DS_SSO_END_Pais')
	DROP SYNONYM [dbo].[DS_SSO_END_Pais]	
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'DS_SSO_END_UnidadeFederativa')
	DROP SYNONYM [dbo].[DS_SSO_END_UnidadeFederativa]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'DS_SSO_PES_Pessoa')
	DROP SYNONYM [dbo].[DS_SSO_PES_Pessoa]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'DS_SSO_SYS_Entidade')
	DROP SYNONYM [dbo].[DS_SSO_SYS_Entidade]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'DS_SSO_SYS_TipoEntidade')
	DROP SYNONYM [dbo].[DS_SSO_SYS_TipoEntidade]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'DS_SSO_SYS_TipoUnidadeAdministrativa')
	DROP SYNONYM [dbo].[DS_SSO_SYS_TipoUnidadeAdministrativa]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'DS_SSO_SYS_UnidadeAdministrativa')
	DROP SYNONYM [dbo].[DS_SSO_SYS_UnidadeAdministrativa]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'DS_SSO_Clone_SYS_UnidadeAdministrativa')
	DROP SYNONYM [dbo].[DS_SSO_Clone_SYS_UnidadeAdministrativa]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'DS_SSO_SYS_TipoDocumentacao')
	DROP SYNONYM [dbo].[DS_SSO_SYS_TipoDocumentacao]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'DS_SSO_PES_PessoaDocumento')
	DROP SYNONYM [dbo].[DS_SSO_PES_PessoaDocumento]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'DS_SSO_SYS_UnidadeAdministrativaEndereco')
	DROP SYNONYM [dbo].[DS_SSO_SYS_UnidadeAdministrativaEndereco]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'DS_RHU_TipoVinculo')
	DROP SYNONYM [dbo].[DS_RHU_TipoVinculo]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'DS_RHU_Cargo')
	DROP SYNONYM [dbo].[DS_RHU_Cargo]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'DS_RHU_ColaboradorCargo')
	DROP SYNONYM [dbo].[DS_RHU_ColaboradorCargo]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'DS_RHU_Colaborador')
	DROP SYNONYM [dbo].[DS_RHU_Colaborador]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'DS_SYS_UnidadeAdministrativaTipoUA')
	DROP SYNONYM [dbo].[DS_SYS_UnidadeAdministrativaTipoUA]
	
	SET @SQL = 'CREATE SYNONYM [dbo].[DS_SSO_SYS_UsuarioGrupo] FOR [' + @bdCoreSSO + '].[dbo].[SYS_UsuarioGrupo]
				CREATE SYNONYM [dbo].[DS_SSO_SYS_UsuarioGrupoUA] FOR [' + @bdCoreSSO + '].[dbo].[SYS_UsuarioGrupoUA]
				CREATE SYNONYM [dbo].[DS_SSO_SYS_Usuario] FOR [' + @bdCoreSSO + '].[dbo].[SYS_Usuario]
				CREATE SYNONYM [dbo].[DS_SSO_SYS_SistemaEntidade] FOR [' + @bdCoreSSO + '].[dbo].[SYS_SistemaEntidade]
				CREATE SYNONYM [dbo].[DS_SSO_SYS_Sistema] FOR [' + @bdCoreSSO + '].[dbo].[SYS_Sistema]
				CREATE SYNONYM [dbo].[DS_SSO_SYS_Grupo] FOR [' + @bdCoreSSO + '].[dbo].[SYS_Grupo]
				CREATE SYNONYM [dbo].[DS_SSO_END_Cidade] FOR [' + @bdCoreSSO + '].[dbo].[END_Cidade]
				CREATE SYNONYM [dbo].[DS_SSO_END_Endereco] FOR [' + @bdCoreSSO + '].[dbo].[END_Endereco]
				CREATE SYNONYM [dbo].[DS_SSO_END_Pais] FOR [' + @bdCoreSSO + '].[dbo].[END_Pais]
				CREATE SYNONYM [dbo].[DS_SSO_END_UnidadeFederativa] FOR [' + @bdCoreSSO + '].[dbo].[END_UnidadeFederativa]
				CREATE SYNONYM [dbo].[DS_SSO_PES_Pessoa] FOR [' + @bdCoreSSO + '].[dbo].[PES_Pessoa]
				CREATE SYNONYM [dbo].[DS_SSO_SYS_Entidade] FOR [' + @bdCoreSSO + '].[dbo].[SYS_Entidade]
				CREATE SYNONYM [dbo].[DS_SSO_SYS_TipoEntidade] FOR [' + @bdCoreSSO + '].[dbo].[SYS_TipoEntidade]
				CREATE SYNONYM [dbo].[DS_SSO_SYS_TipoUnidadeAdministrativa] FOR [' + @bdCoreSSO + '].[dbo].[SYS_TipoUnidadeAdministrativa]
				CREATE SYNONYM [dbo].[DS_SSO_SYS_UnidadeAdministrativa] FOR [' + @bdCoreSSO + '].[dbo].[SYS_UnidadeAdministrativa]
				CREATE SYNONYM [dbo].[DS_SSO_Clone_SYS_UnidadeAdministrativa] FOR [' + @bdCoreSSO + '_Clone].[dbo].[SYS_UnidadeAdministrativa]
				CREATE SYNONYM [dbo].[DS_SSO_SYS_TipoDocumentacao] FOR [' + @bdCoreSSO + '].[dbo].[SYS_TipoDocumentacao]
				CREATE SYNONYM [dbo].[DS_SSO_PES_PessoaDocumento] FOR [' + @bdCoreSSO + '].[dbo].[PES_PessoaDocumento]
				CREATE SYNONYM [dbo].[DS_SSO_SYS_UnidadeAdministrativaEndereco] FOR [' + @bdCoreSSO + '].[dbo].[SYS_UnidadeAdministrativaEndereco]
				' + 
				'
				CREATE SYNONYM [dbo].[DS_SYS_UnidadeAdministrativaTipoUA] FOR [' + @bdCoreSME + '].[dbo].[SYS_UnidadeAdministrativaTipoUA]
				'
	EXEC(@SQL)
	
	/*
		Exemplo chamada da procedure
		
		EXEC STP_GerenciamentoFrequencia_CREATE_SINONIMO 'CoreSSO', 'GerenciamentoFrequencia'
	*/
END
GO

/****** Object:  StoredProcedure [dbo].[STP_GerenciamentoFrequencia_SYS_TipoUnidadeAdministrativa_IMPORT]    Script Date: 05/12/2014 10:35:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_GerenciamentoFrequencia_SYS_TipoUnidadeAdministrativa_IMPORT]
AS
BEGIN
	UPDATE dbo.tmp_GerenciamentoFrequencia_escola SET
		sg_tp_escola = RTRIM(LTRIM(sg_tp_escola));
		
	MERGE INTO DS_SSO_SYS_TipoUnidadeAdministrativa _target
	USING
	(
		SELECT
			sg_tp_escola AS tua_nome
		FROM
			dbo.tmp_GerenciamentoFrequencia_escola
		GROUP BY
			sg_tp_escola
	) AS _source
	ON (_source.tua_nome = _target.tua_nome)
	WHEN NOT MATCHED THEN
		INSERT
		(
			tua_nome
			, tua_situacao
			, tua_integridade
		)
		VALUES
		(
			_source.tua_nome
			, 1
			, 1
		)
	;
END
GO

/****** Object:  StoredProcedure [dbo].[STP_GerenciamentoFrequencia_SYS_UnidadeAdministrativaTipoUA_IMPORT]    Script Date: 05/12/2014 10:35:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_GerenciamentoFrequencia_SYS_UnidadeAdministrativaTipoUA_IMPORT]
AS
BEGIN
DECLARE
	@ent_id UNIQUEIDENTIFIER
	
	SET @ent_id = (SELECT ent_id FROM DS_SSO_SYS_Entidade WHERE ent_sigla = 'smesp')

	MERGE INTO DS_SYS_UnidadeAdministrativaTipoUA _target
	USING
	(
		SELECT
			es.cd_unidade_educacao
			, es.nm_unidade_educacao
			, tua.tua_id
			, tua.tua_nome
			, uad.uad_id
			, @ent_id AS ent_id
		FROM
			dbo.tmp_GerenciamentoFrequencia_escola es
			INNER JOIN
			(
				SELECT
					ent_id
					, uad_id
					, uad_codigo
				FROM
					DS_SSO_SYS_UnidadeAdministrativa
				WHERE
					ent_id = @ent_id
					AND uad_situacao = 1
			) AS uad
				ON (uad.uad_codigo = es.cd_unidade_educacao
					AND uad.ent_id = @ent_id)
			INNER JOIN DS_SSO_SYS_TipoUnidadeAdministrativa tua
				ON (tua.tua_nome = es.sg_tp_escola)
		GROUP BY
			es.cd_unidade_educacao
			, es.nm_unidade_educacao
			, tua.tua_id
			, tua.tua_nome
			, uad.uad_id
	) AS _source
	ON (_source.ent_id = _target.ent_id
		AND _source.uad_id = _target.uad_id
		AND _source.tua_id = _target.tua_id)
	WHEN NOT MATCHED THEN
		INSERT
		(
			ent_id
			, uad_id
			, tua_id
		)
		VALUES
		(
			_source.ent_id
			, _source.uad_id
			, _source.tua_id
		)
	;
END
GO

/****** Object:  StoredProcedure [dbo].[STP_GestaoAvaliacao_Import]    Script Date: 20/11/2015 14:22:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_GestaoAvaliacao_Import]
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
         VALUES (@PackageLogID, 'TUR_Turma', @SourceID, getdate())
    
	-- TUR_Turma
    MERGE INTO GestaoAvaliacao_SGP..TUR_Turma Destino
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
            where tur.tur_situacao <> 3
              and trn.trn_situacao <> 3
              and ttn.ttn_situacao <> 3
              and esc.ent_id = @ent_id
              and esc.esc_situacao <> 3
              and cal.cal_ano = @cal_ano
              and cal.ent_id = @ent_id
              and cal.cal_situacao <> 3
			  and tur_tipo = 1
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
    
    -- ACA_Aluno
    MERGE INTO GestaoAvaliacao_SGP..ACA_Aluno Destino
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
    WHEN NOT MATCHED BY SOURCE AND Destino.tcp_situacao <> 3 THEN
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
    WHEN NOT MATCHED BY SOURCE AND Destino.cur_situacao <> 3 THEN
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
         VALUES (@PackageLogID, 'ACA_Curriculo', @SourceID, getdate())
    
    -- ACA_Curriculo
    MERGE INTO GestaoAvaliacao_SGP..ACA_Curriculo Destino
    USING (select crr.cur_id, crr.crr_id, crr.crr_nome, crr.crr_situacao, crr.crr_dataCriacao, crr.crr_dataAlteracao
             from GestaoPedagogica..ACA_Curriculo crr with (nolock)
                  inner join GestaoAvaliacao_SGP..ACA_Curso cur
                  on crr.cur_id = cur.cur_id
            where crr_situacao <> 3
              and ent_id = @ent_id
              and cur_situacao <> 3) Origem
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
         VALUES (@PackageLogID, 'ACA_CurriculoPeriodo', @SourceID, getdate())
    
    -- ACA_CurriculoPeriodo
    MERGE INTO GestaoAvaliacao_SGP..ACA_CurriculoPeriodo Destino
    USING (select crp.cur_id, crp.crr_id, crp.crp_id, crp.crp_ordem, crp.crp_descricao, crp.crp_situacao,
                  crp.crp_dataCriacao, crp.crp_dataAlteracao, crp.tcp_id
             from GestaoPedagogica..ACA_CurriculoPeriodo crp with (nolock)
                  inner join GestaoAvaliacao_SGP..ACA_Curriculo crr
                   on crp.cur_id = crr.cur_id
                  and crp.crr_id = crr.crr_id
                  left join GestaoAvaliacao_SGP..ACA_TipoCurriculoPeriodo atcp
                   on crp.tcp_id = atcp.tcp_id
                  and 3 <> atcp.tcp_situacao
            where crp.crp_situacao <> 3
              and crr.crr_situacao <> 3) Origem
     ON Destino.cur_id = Origem.cur_id
    AND Destino.crr_id = Origem.crr_id
    AND Destino.crp_id = Origem.crp_id
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
         VALUES (@PackageLogID, 'TUR_TurmaCurriculo', @SourceID, getdate())
    
    -- TUR_TurmaCurriculo
    MERGE INTO GestaoAvaliacao_SGP..TUR_TurmaCurriculo Destino
    USING (select tur.tur_id, tcr.cur_id, tcr.crr_id, tcr.crp_id, tcr.tcr_situacao,
                  tcr.tcr_dataCriacao, tcr.tcr_dataAlteracao
             from GestaoAvaliacao_SGP..TUR_Turma tur
                  inner join GestaoPedagogica..TUR_TurmaCurriculo tcr with (nolock)
                  on tur.tur_id = tcr.tur_id
                  inner join GestaoAvaliacao_SGP..ACA_CurriculoPeriodo crp
                   on tcr.cur_id = crp.cur_id
                  and tcr.crr_id = crp.crr_id
                  and tcr.crp_id = crp.crp_id
            where tur.tur_situacao <> 3
              and tcr.tcr_situacao <> 3
              and crp.crp_situacao <> 3
            group by tur.tur_id, tcr.cur_id, tcr.crr_id, tcr.crp_id, tcr.tcr_situacao,
                  tcr.tcr_dataCriacao, tcr.tcr_dataAlteracao) Origem
     ON Destino.tur_id = Origem.tur_id
    AND Destino.cur_id = Origem.cur_id
    AND Destino.crr_id = Origem.crr_id
    AND Destino.crp_id = Origem.crp_id
    WHEN MATCHED AND (Destino.tcr_situacao <> Origem.tcr_situacao) THEN
         UPDATE SET tcr_situacao = Origem.tcr_situacao,
                    tcr_dataAlteracao = Origem.tcr_dataAlteracao
    WHEN NOT MATCHED THEN
         INSERT (tur_id, cur_id, crr_id, crp_id, tcr_situacao, tcr_dataCriacao, tcr_dataAlteracao)
         VALUES (Origem.tur_id, Origem.cur_id, Origem.crr_id, Origem.crp_id, Origem.tcr_situacao,
                 Origem.tcr_dataCriacao, Origem.tcr_dataAlteracao)
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
         VALUES (@PackageLogID, 'MTR_MatriculaTurma', @SourceID, getdate())
    
    -- MTR_MatriculaTurma
    MERGE INTO GestaoAvaliacao_SGP..MTR_MatriculaTurma Destino
    USING (select alu.alu_id, mtu.mtu_id, tur.esc_id, tur.tur_id, mtu.cur_id, mtu.crr_id, mtu.crp_id,
                  mtu.mtu_situacao, mtu.mtu_dataCriacao, mtu.mtu_dataAlteracao, mtu.mtu_numeroChamada
                 ,mtu.mtu_dataMatricula, mtu.mtu_dataSaida -- Add 07-06/16
             from GestaoAvaliacao_SGP..ACA_Aluno alu
                  inner join GestaoPedagogica..MTR_MatriculaTurma mtu with (nolock)
                  on alu.alu_id = mtu.alu_id
                  inner join GestaoAvaliacao_SGP..TUR_Turma tur
                  on mtu.tur_id = tur.tur_id
                  inner join GestaoAvaliacao_SGP..ACA_CurriculoPeriodo crp
                   on mtu.cur_id = crp.cur_id
                  and mtu.crr_id = crp.crr_id
                  and mtu.crp_id = crp.crp_id
            where alu.alu_situacao = 1
              and mtu.mtu_situacao <> 3 -- Alterado de 1 para 3 - 07-06/16
              and tur.tur_situacao <> 3
              and crp.crp_situacao <> 3
            group by alu.alu_id, mtu.mtu_id, tur.esc_id, tur.tur_id, mtu.cur_id, mtu.crr_id, mtu.crp_id,
                  mtu.mtu_situacao, mtu.mtu_dataCriacao, mtu.mtu_dataAlteracao, mtu.mtu_numeroChamada,mtu.mtu_dataMatricula, mtu.mtu_dataSaida) Origem
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
                 mtu_situacao, mtu_dataCriacao, mtu_dataAlteracao, mtu_numeroChamada,  mtu_dataMatricula, mtu_dataSaida)
         VALUES (Origem.alu_id, Origem.mtu_id, Origem.esc_id, Origem.tur_id, Origem.cur_id,
                 Origem.crr_id, Origem.crp_id, Origem.mtu_situacao,
                 Origem.mtu_dataCriacao, Origem.mtu_dataAlteracao, Origem.mtu_numeroChamada,Origem.mtu_dataMatricula, Origem.mtu_dataSaida)
    WHEN NOT MATCHED BY SOURCE AND Destino.mtu_situacao <> 3 THEN
         UPDATE SET mtu_situacao = 3,
                    mtu_dataAlteracao = GETDATE();
    
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

    -- TUR_TurmaTipoCurriculoPeriodo
    MERGE INTO GestaoAvaliacao_SGP..TUR_TurmaTipoCurriculoPeriodo Destino
	USING (SELECT t.tur_id, cur.cur_id, cur.tme_id, cur.tne_id, crp.crp_ordem, t.esc_id, cur.cur_situacao, t.tur_situacao, crp.crp_situacao, tcr.tcr_situacao
		FROM GestaoAvaliacao_SGP..TUR_Turma t
		INNER JOIN GestaoAvaliacao_SGP..TUR_TurmaCurriculo tcr ON t.tur_id = tcr.tur_id AND tcr.tcr_situacao = 1
		INNER JOIN GestaoAvaliacao_SGP..ACA_CurriculoPeriodo crp ON crp.cur_id = tcr.cur_id AND crp.crr_id = tcr.crr_id AND crp.crp_id = tcr.crp_id AND crp.crp_situacao = 1
		INNER JOIN GestaoAvaliacao_SGP..ACA_Curso cur ON cur.cur_id = tcr.cur_id AND cur.cur_situacao = 1
		where t.tur_situacao = 1) Origem
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
	update GestaoPedagogica..ACA_CurriculoEscola set ces_situacao = 3, ces_dataAlteracao = GETDATE() where cur_id in (83,84) and ces_situacao <> 3
	
    COMMIT

    -- Cadastramento de usuários
    DECLARE @sis_id INT, @gru_idProfessor UNIQUEIDENTIFIER
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
    SELECT @sis_id = sis_id FROM CoreSSO..SYS_Sistema WITH (NOLOCK) WHERE sis_nome = 'SERAp'

	SELECT @gru_idProfessor = gru.gru_idUsadoIntegracao FROM DEPARA_GRUPOS_INTEGRACAO gru
     WHERE gru.nomeUsadoIntegracao = 'Professor' and gru.sis_id = @sis_id
    
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
											  and ((dep.cur_id in (75,77,78) and dep.crp_ordem > 2) --EF (menos o de 4 horas) a partir do terceiro ano (a pedido do Hygor por email em 05/05/2016)
												    or (dep.cur_id in (39,40,41,42,79,80,81) and dep.crp_ordem in (2,4,6,8))) --EJA apenas algumas séries (a pedido do Hygor por email em 05/05/2016)
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
                 group by ds.cd_registro_funcional, cb.lotacao) serv
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
                     AND _target.gru_id = @gru_idProfessor
                     AND _target.uad_id = _source.uad_id) THEN
             UPDATE SET ssi_situacao = 1,
                        ssi_dataAlteracao = GETDATE()
        WHEN NOT MATCHED BY SOURCE AND (_target.ssi_situacao = 1 AND _target.gru_id = @gru_idProfessor) THEN
	         UPDATE SET ssi_situacao = 3,
                        ssi_dataAlteracao = GETDATE();
        
        -- UsuarioGrupo    
        -- Deleta a relação UsuarioGrupo para os registros que estão na tmp de servidores importados automaticamente
        DELETE ug
          FROM CoreSSO..SYS_UsuarioGrupo ug
               INNER JOIN SSIS_LoginImportado lo
                ON ug.usu_id = lo.usu_id
               AND ug.gru_id = lo.gru_id
         WHERE lo.gru_id = @gru_idProfessor
           AND lo.ssi_situacao = 3
        
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
         WHERE lo.gru_id = @gru_idProfessor
           AND lo.ssi_situacao = 3
        
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
GO

/****** Object:  StoredProcedure [dbo].[STP_GestaoEscolarBiblioteca_Usuario_IMPORT]    Script Date: 05/12/2014 10:35:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_GestaoEscolarBiblioteca_Usuario_IMPORT]
AS 
BEGIN
    -- Declara variáveis
    DECLARE @ent_id UNIQUEIDENTIFIER, @gru_id UNIQUEIDENTIFIER, @tdo_id UNIQUEIDENTIFIER,
            @sis_id INT, @gru_idPub UNIQUEIDENTIFIER, @gru_idSL UNIQUEIDENTIFIER
    
	-- Seleciona o código do tipo do documento do CPF
    SELECT @tdo_id = tdo_id FROM SSO_SYS_TipoDocumentacao WHERE tdo_sigla = 'CPF'
	
	-- Seleciona a entidade do cliente e o grupo de usuário
    SELECT @ent_id = ent_id FROM SSO_SYS_Entidade WHERE ent_sigla = 'SMESP'
	
	-- Seleciona o sistema
	set @sis_id = 104
    --SELECT @sis_id = sis_id FROM SSO_SYS_Sistema
    -- WHERE sis_nome = 'Gestão de Acervo' and sis_situacao <> 3
    
	-- Seleciona o grupo individual
	SELECT @gru_id = gru.gru_idUsadoIntegracao FROM DEPARA_GRUPOS_INTEGRACAO gru
	 WHERE gru.nomeUsadoIntegracao = 'Pesquisa na Escola' and gru.sis_id = @sis_id

	-- Seleciona o grupo Público
	SELECT @gru_idPub = gru.gru_idUsadoIntegracao FROM DEPARA_GRUPOS_INTEGRACAO gru
	 WHERE gru.nomeUsadoIntegracao = 'Pesquisa na Rede' and gru.sis_id = @sis_id
    
	-- Seleciona o grupo Sala de Leitura
	SELECT @gru_idSL = gru.gru_idUsadoIntegracao FROM DEPARA_GRUPOS_INTEGRACAO gru
	 WHERE gru.nomeUsadoIntegracao = 'POSL' and gru.sis_id = @sis_id
   
    --Cria as tabelas temporárias
    IF OBJECT_ID('tempdb..#usuario_table') > 0 
       DROP TABLE #usuario_table
    CREATE TABLE #usuario_table
      (usu_id    UNIQUEIDENTIFIER ,
       usu_login VARCHAR(50))
    
    -- Cria a tabela de controle de de usuário com permissão no grupo Sala de Leitura
    IF  NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SSIS_SMESP_Controle_Grupo_SL]') AND type in (N'U'))
        CREATE TABLE dbo.SSIS_SMESP_Controle_Grupo_SL(
	      pes_id uniqueidentifier NULL,
	      ent_id uniqueidentifier NULL,
	      usu_id uniqueidentifier NULL,
	      uad_id uniqueidentifier NULL,
	      usu_situacao bit NULL,
	      usu_dataCriacao datetime NULL,
	      usu_dataAlteracao datetime NULL)
    
    -- Atualiza usu_id e pes_id de servidores já existentes
    UPDATE tmp
       SET usu_id = u.usu_id
      FROM dbo.tmp_DiarioSupervisor_servidor tmp
           INNER JOIN SSO_SYS_Usuario u ON tmp.cd_registro_funcional = u.usu_login
           INNER JOIN SSO_PES_Pessoa p ON u.pes_id = p.pes_id
     WHERE u.usu_situacao = 1 --primeiro faz só pros ativos
       AND p.pes_situacao <> 3
    
    UPDATE tmp
       SET usu_id = u.usu_id
      FROM dbo.tmp_DiarioSupervisor_servidor tmp
           INNER JOIN SSO_SYS_Usuario u ON tmp.cd_registro_funcional = u.usu_login
           INNER JOIN SSO_PES_Pessoa p ON u.pes_id = p.pes_id
     WHERE tmp.usu_id is null --depois faz pras outras situações, pra quando não existir um usuario ativo
       AND u.usu_situacao <> 3
       AND p.pes_situacao <> 3
    
    UPDATE tmp
       SET pes_id = p.pes_id
      FROM dbo.tmp_DiarioSupervisor_servidor tmp
           INNER JOIN SSO_PES_PessoaDocumento doc ON tmp.cd_cpf_pessoa = doc.psd_numero
           INNER JOIN SSO_PES_Pessoa p ON doc.pes_id = p.pes_id
     WHERE doc.psd_situacao <> 3
       AND p.pes_situacao <> 3
       AND doc.tdo_id = @tdo_id
    
	CREATE TABLE #pessoa_inserir (pes_nome varchar(200), pes_dataNascimento date, pes_sexo tinyint, pes_cpf varchar(50), pes_id uniqueidentifier)
	INSERT INTO #pessoa_inserir (pes_nome, pes_dataNascimento, pes_sexo, pes_cpf)
	SELECT sm.nm_pessoa AS pes_nome,
           sm.dt_nascimento_pessoa AS pes_dataNascimento,
           CASE WHEN cd_sexo_pessoa = 'F' THEN 2 ELSE 1 END AS pes_sexo, 
		   sm.cd_cpf_pessoa AS pes_cpf
      FROM dbo.tmp_DiarioSupervisor_servidor sm
           LEFT JOIN (SELECT pd.*
                        FROM SSO_PES_PessoaDocumento pd
                             INNER JOIN SSO_PES_Pessoa pes ON pd.pes_id = pes.pes_id
                       WHERE pd.psd_situacao = 1
                         AND pes.pes_situacao = 1) AS pd
            ON sm.cd_cpf_pessoa = pd.psd_numero
           AND pd.tdo_id = @tdo_id
     WHERE pd.pes_id IS NULL 
	
	UPDATE #pessoa_inserir set pes_id = newid()
	
	-- Inclui na tabela Pes_Pessoa
    INSERT INTO SSO_PES_Pessoa
          (pes_id, pes_nome, pes_dataNascimento, pes_sexo, pes_situacao,
           pes_dataCriacao, pes_dataAlteracao, pes_integridade)
    SELECT pes_id, pes_nome, pes_dataNascimento, pes_sexo, 1 as pes_situacao,
           GETDATE() as pes_dataCriacao, GETDATE() as pes_dataAlteracao, 1 as pes_integridade
      FROM #pessoa_inserir
    
	-- Inclui na tabela PessoaDocumento
    INSERT INTO SSO_Pes_PessoaDocumento
           (pes_id, tdo_id, psd_numero, psd_situacao, psd_dataCriacao, psd_dataAlteracao)
    SELECT p.pes_id, @tdo_id as tdo_id, pes_cpf AS psd_numero, 1 AS psd_situacao,
           GETDATE() AS psd_dataCriacao, GETDATE() AS psd_dataAlteracao
      FROM #pessoa_inserir p
           LEFT JOIN SSO_PES_PessoaDocumento d
            ON p.pes_id = d.pes_id
           AND p.pes_cpf = d.psd_numero
           AND d.tdo_id = @tdo_id
     WHERE d.pes_id IS NULL AND p.pes_cpf IS NOT NULL 
    		   
	-- Inclui na tabela Usuario
    INSERT INTO SSO_SYS_Usuario
           (usu_login, usu_senha, pes_id, ent_id, usu_situacao, usu_criptografia,
            usu_dataCriacao, usu_dataAlteracao)
    OUTPUT INSERTED.usu_id, INSERTED.usu_login
      INTO #usuario_table
    SELECT DISTINCT tmp.cd_registro_funcional AS usu_login, tmp.senha AS usu_senha,
           ISNULL(tmp.pes_id, p.pes_id) AS pes_id, @ent_id, 5 AS usu_situacao,
           3 AS usu_criptografia, GETDATE() AS usu_dataCriacao, GETDATE() AS usu_dataAlteracao
      FROM dbo.tmp_DiarioSupervisor_servidor tmp
           LEFT JOIN #pessoa_inserir p ON tmp.cd_cpf_pessoa = p.pes_cpf
           LEFT JOIN (SELECT u.*, ROW_NUMBER() OVER(PARTITION BY u.usu_login ORDER BY u.usu_situacao, u.usu_dataCriacao) as linha
                        FROM SSO_sys_usuario u
                             INNER JOIN SSO_pes_Pessoa p ON p.pes_id = u.pes_id
                       WHERE p.pes_situacao = 1 
                         AND u.usu_situacao <> 3) AS usu
           ON usu.usu_login = tmp.cd_registro_funcional
		  AND usu.linha = 1
     WHERE usu.usu_id IS NULL
	   AND ISNULL(tmp.pes_id, p.pes_id) IS NOT NULL
    
	-- Atualiza usu_id dos servidores inseridos
    UPDATE tmp
       SET usu_id = u.usu_id,
           pes_id = usu.pes_id
      FROM dbo.tmp_DiarioSupervisor_servidor tmp
           INNER JOIN #usuario_table u ON tmp.cd_registro_funcional = u.usu_login
           INNER JOIN SSO_SYS_Usuario usu ON u.usu_id = usu.usu_id
     WHERE u.usu_id IS NOT NULL 
	
    IF @gru_id IS NOT NULL
	   -- Desabilita todos registros vinculados aos usuários vindos da importação do grupo Individual
       UPDATE ug
          SET usg_situacao = 3
         FROM SSO_SYS_UsuarioGrupo ug
              INNER JOIN dbo.SSIS_SMESP_Controle_Grupo_Individual cont ON ug.usu_id = cont.usu_id
        WHERE cont.usu_id IS NOT NULL 
          AND ug.gru_id = @gru_id
	
    IF @gru_idPub IS NOT NULL
	   -- Desabilita todos registros vinculados aos usuários vindos da importação do grupo Público
       UPDATE ug
          SET usg_situacao = 3
         FROM SSO_SYS_UsuarioGrupo ug
              INNER JOIN dbo.SSIS_SMESP_Controle_Grupo_Individual cont ON ug.usu_id = cont.usu_id
        WHERE cont.usu_id IS NOT NULL 
          AND ug.gru_id = @gru_idPub
	
    -- Inclui na tabela de controle
    MERGE dbo.SSIS_SMESP_Controle_Grupo_Individual AS _target
    USING (SELECT usu.pes_id, usu.ent_id, usu.usu_id, usu.usu_situacao
             FROM dbo.tmp_DiarioSupervisor_servidor ds
                  INNER JOIN SSO_SYS_Usuario usu
                  ON ds.usu_id = usu.usu_id
            WHERE usu.ent_id = @ent_id
              AND ds.usu_id is not null
            GROUP BY usu.pes_id, usu.ent_id, usu.usu_id, usu.usu_situacao ) AS _source
     ON _source.ent_id = _target.ent_id
    AND _source.pes_id = _target.pes_id
    AND _source.usu_id = _target.usu_id
    WHEN NOT MATCHED THEN
         INSERT (ent_id, pes_id, usu_id, usu_situacao, usu_dataCriacao, usu_dataAlteracao)
         VALUES (ent_id, pes_id, usu_id, usu_situacao, GETDATE(), GETDATE())
    WHEN MATCHED AND _target.usu_situacao = 0 THEN
         UPDATE
            SET _target.usu_situacao = 1 ,
                _target.usu_dataAlteracao = GETDATE()
    WHEN NOT MATCHED BY SOURCE AND _target.usu_situacao = 1 THEN
         UPDATE
            SET _target.usu_situacao = 0 ,
                _target.usu_dataAlteracao = GETDATE() ;	
    
	IF @gru_id IS NOT NULL
	BEGIN
	   -- Inclui na tabela de UsuárioGrupo do Core o grupo Individual
	   INSERT INTO SSO_SYS_UsuarioGrupo
              (usu_id, gru_id, usg_situacao)
       SELECT DISTINCT ds.usu_id, @gru_id, 1
         FROM SSIS_SMESP_Controle_Grupo_Individual ds
              INNER JOIN SSO_SYS_Usuario usu ON ds.usu_id = usu.usu_id
        WHERE ds.usu_situacao <> 3
          AND ds.usu_id IS NOT NULL
          AND ds.usu_id NOT IN (SELECT usu_id
                                  FROM SSO_SYS_UsuarioGrupo ug
                                 WHERE ds.usu_id = ug.usu_id
                                   AND ug.gru_id = @gru_id)
    
       -- Atualiza ativos vindos da importação e ativos do Grupos Individual
       UPDATE ug
          SET usg_situacao = 1
         FROM SSO_SYS_UsuarioGrupo ug
              INNER JOIN dbo.SSIS_SMESP_Controle_Grupo_Individual cont
               ON ug.usu_id = cont.usu_id
        WHERE cont.usu_situacao <> 3
          AND ug.gru_id = @gru_id
    END
    
    IF @gru_idPub IS NOT NULL
	BEGIN
	   -- Inclui na tabela de UsuárioGrupo do Core o grupo Público
       INSERT INTO SSO_SYS_UsuarioGrupo
              (usu_id, gru_id, usg_situacao)
       SELECT DISTINCT ds.usu_id, @gru_idPub, 1
         FROM SSIS_SMESP_Controle_Grupo_Individual ds
              INNER JOIN SSO_SYS_Usuario usu ON ds.usu_id = usu.usu_id
        WHERE ds.usu_situacao <> 3
          AND ds.usu_id IS NOT NULL
          AND ds.usu_id NOT IN (SELECT usu_id
                                  FROM SSO_SYS_UsuarioGrupo ug
                                 WHERE ds.usu_id = ug.usu_id
                                   AND ug.gru_id = @gru_idPub)
    
       -- Atualiza ativos vindos da importação e ativos do Grupo Público
       UPDATE ug
          SET usg_situacao = 1
         FROM SSO_SYS_UsuarioGrupo ug
              INNER JOIN dbo.SSIS_SMESP_Controle_Grupo_Individual cont
               ON ug.usu_id = cont.usu_id
        WHERE cont.usu_situacao <> 3
          AND ug.gru_id = @gru_idPub
    END
    
    IF @gru_idSL IS NOT NULL
    BEGIN
    
       declare @tua_id UNIQUEIDENTIFIER
       
       select @tua_id = tua_id from SSO_SYS_tipoUnidadeAdministrativa where tua_nome = 'Biblioteca' and tua_situacao = 1
       
	   DECLARE @BIBLIO TABLE
         (uad_id uniqueidentifier,
          uad_idSuperior uniqueidentifier,
          uad_nome varchar(200))
       
       INSERT INTO @BIBLIO
       SELECT uad_id, uad_idSuperior, uad_nome
	     FROM CoreSSO..SYS_UnidadeAdministrativa uad
	    WHERE uad.tua_id = @tua_id
	      and uad_situacao = 1
	    group by uad_id, uad_idSuperior, uad_nome
       
       WHILE EXISTS (SELECT uad.uad_id
	                   from CoreSSO..SYS_UnidadeAdministrativa uad
	                        inner join @BIBLIO bib
	                        on uad.uad_id = bib.uad_idSuperior
	                  where uad.uad_idSuperior is not null
	                    and uad.uad_situacao = 1)
	      update bib
	         set uad_idSuperior = uad.uad_idSuperior
 	        from @BIBLIO bib
	             inner join CoreSSO..SYS_UnidadeAdministrativa uad
	             on bib.uad_idSuperior = uad.uad_id
	       where uad.uad_situacao = 1
       
       
	   -- Desabilita todos registros vinculados aos usuários vindos da importação do grupo Sala de Leitura - UA
       UPDATE ug
          SET usg_situacao = 3
         FROM SSO_SYS_UsuarioGrupo ug
              INNER JOIN dbo.SSIS_SMESP_Controle_Grupo_SL cont ON ug.usu_id = cont.usu_id
        WHERE cont.usu_id IS NOT NULL 
          AND ug.gru_id = @gru_idSL
	   
	   /**************************************************************************************/
       /*                                                                                    */
       /* Colocar na tabela tmp_DRE_SalaLeitura as outras DREs conforme solicitação do Hygor */
       /*                                                                                    */
       /**************************************************************************************/
       
	   -- Inclui na tabela de controle
       MERGE dbo.SSIS_SMESP_Controle_Grupo_SL AS _target
       USING (SELECT usu.pes_id, usu.ent_id, usu.usu_id, usu.usu_situacao, bib.uad_id
                FROM dbo.tmp_DiarioSupervisor_servidor ds INNER JOIN 
                     (SELECT rf, cd_escola FROM BD_PRODAM..v_grade_curricular
                       WHERE Cod_Comp_Curr IN
                            (SELECT cd_componente_curricular
                               FROM BD_PRODAM..v_cadastro_disciplina
                              WHERE dc_componente_curricular like '%LEITURA%'
                              GROUP BY cd_componente_curricular)
                        group by rf, cd_escola) SL
                      ON ds.cd_registro_funcional = SL.rf
                     INNER JOIN CoreSSO..SYS_Usuario usu
                     ON ds.usu_id = usu.usu_id
                     INNER JOIN GestaoPedagogica..ESC_Escola esc
                     ON SL.cd_escola = esc.esc_codigo
                     INNER JOIN CoreSSO..SYS_UnidadeAdministrativa uad
                     ON esc.uad_id = uad.uad_id
                     INNER JOIN CoreSSO..SYS_UnidadeAdministrativa uadSup
                     ON esc.uad_idSuperiorGestao = uadSup.uad_id
                     INNER JOIN tmp_DRE_SalaLeitura DRE
                     ON uadSup.uad_id = DRE.uad_id
                     INNER JOIN @BIBLIO bib
                      on uad.uad_nome = bib.uad_nome
               WHERE usu.ent_id = @ent_id
                 AND ds.usu_id is not null
                 AND esc.esc_situacao = 1
                 AND uad.uad_situacao <> 3
				 AND usu.usu_situacao <> 3
               GROUP BY usu.pes_id, usu.ent_id, usu.usu_id, usu.usu_situacao, bib.uad_id) AS _source
        ON _source.ent_id = _target.ent_id
       AND _source.pes_id = _target.pes_id
       AND _source.usu_id = _target.usu_id
       AND _source.uad_id = _target.uad_id
       WHEN NOT MATCHED THEN
            INSERT (ent_id, pes_id, usu_id, uad_id, usu_situacao, usu_dataCriacao, usu_dataAlteracao)
            VALUES (ent_id, pes_id, usu_id, uad_id, usu_situacao, GETDATE(), GETDATE())
       WHEN MATCHED AND ((_target.usu_situacao = 0) or (_target.uad_id <> _source.uad_id)) THEN
            UPDATE
               SET _target.usu_situacao = 1,
                   _target.uad_id = _source.uad_id,
                   _target.usu_dataAlteracao = GETDATE()
       WHEN NOT MATCHED BY SOURCE AND _target.usu_situacao = 1 THEN
            UPDATE
               SET _target.usu_situacao = 0 ,
                   _target.usu_dataAlteracao = GETDATE() ;	
       
	   -- Inclui na tabela de UsuárioGrupo do Core
       INSERT INTO SSO_SYS_UsuarioGrupo
              (usu_id, gru_id, usg_situacao)
       SELECT DISTINCT ds.usu_id, @gru_idSL, 1
         FROM SSIS_SMESP_Controle_Grupo_SL ds
              INNER JOIN SSO_SYS_Usuario usu ON ds.usu_id = usu.usu_id
        WHERE ds.usu_situacao <> 3
          AND ds.usu_id IS NOT NULL
          AND ds.usu_id NOT IN (SELECT usu_id
                                  FROM SSO_SYS_UsuarioGrupo ug
                                 WHERE ds.usu_id = ug.usu_id
                                   AND ug.gru_id = @gru_idSL)
       
       -- Atualiza ativos vindos da importação e ativos
       UPDATE ug
          SET usg_situacao = 1
         FROM SSO_SYS_UsuarioGrupo ug
              INNER JOIN dbo.SSIS_SMESP_Controle_Grupo_SL cont
               ON ug.usu_id = cont.usu_id
        WHERE cont.usu_situacao <> 3
          AND ug.gru_id = @gru_idSL
       
       -- Apaga todos os registros na UsuarioGrupoUA para os usuários vindos da importação
       DELETE FROM CoreSSO..SYS_UsuarioGrupoUA
        WHERE usu_id IN (SELECT usu_id from SSIS_SMESP_Controle_Grupo_SL)
          AND gru_id = @gru_idSL
       
       -- Inclui na tabela de UsuarioGrupoUA do Core
       INSERT INTO CoreSSO..SYS_UsuarioGrupoUA
              (usu_id, gru_id, ugu_id, ent_id, uad_id)
       SELECT usu_id, @gru_idSL, NEWID(), ent_id, uad_id
         from (SELECT ds.usu_id, ds.ent_id, ds.uad_id
                 FROM SSIS_SMESP_Controle_Grupo_SL ds
                      INNER JOIN CoreSSO..SYS_Usuario usu
                      ON ds.usu_id = usu.usu_id
                      inner join CoreSSO..SYS_UsuarioGrupo usg
                       on usu.usu_id = usg.usu_id
                      and @gru_idSL = usg.gru_id
                      INNER JOIN @BIBLIO bib
                      on ds.uad_id = bib.uad_id
                      INNER JOIN tmp_DRE_SalaLeitura DRE
                      ON bib.uad_idSuperior = DRE.uad_id
                WHERE ds.usu_situacao <> 3
                  AND ds.usu_id IS NOT NULL
                  AND ds.uad_id IS NOT NULL
                group by ds.usu_id, ds.ent_id, ds.uad_id) dados
    END
END
GO

/****** Object:  StoredProcedure [dbo].[STP_Gfreq_CORESME_ACA_TipoTurno_IMPORT]    Script Date: 05/12/2014 10:35:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_Gfreq_CORESME_ACA_TipoTurno_IMPORT]
AS
BEGIN
	UPDATE tmp_Gfreq_turma SET
		dc_tipo_turno = LTRIM(RTRIM(dc_tipo_turno));

	MERGE INTO CORESME_ACA_TipoTurno _target
	USING
	(
		SELECT
			cd_tipo_turno AS ttn_codigo
			, dc_tipo_turno AS ttn_nome
			, 1 AS ttn_situacao
		FROM
			tmp_Gfreq_turma
		GROUP BY
			cd_tipo_turno
			, dc_tipo_turno
	) AS _source
	ON (_source.ttn_nome COLLATE DATABASE_DEFAULT = _target.ttn_nome COLLATE DATABASE_DEFAULT)
	WHEN NOT MATCHED THEN
		INSERT
		(
			ttn_nome
			, ttn_situacao
		)
		VALUES
		(
			_source.ttn_nome
			, _source.ttn_situacao
		);
END
GO

/****** Object:  StoredProcedure [dbo].[STP_Gfreq_CORESME_ACA_Turno_IMPORT]    Script Date: 05/12/2014 10:35:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_Gfreq_CORESME_ACA_Turno_IMPORT]
	@ent_id UNIQUEIDENTIFIER
AS
BEGIN
    IF (@ent_id IS NULL)
       SET @ent_id = (SELECT ent_id FROM SSO_SYS_Entidade WHERE ent_sigla = 'smesp')
	
	
	DECLARE @tua_id UNIQUEIDENTIFIER
	SET @tua_id = (SELECT tua_id FROM SSO_SYS_TipoUnidadeAdministrativa WHERE tua_nome = 'Escola')
	
	UPDATE tmp_Gfreq_turma SET
		hr_entrada = CONVERT(TIME, CONVERT(VARCHAR(4), (CASE WHEN CONVERT(INT, LEFT('0' + ho_entrada, 3)) > 23 THEN 23 ELSE CONVERT(INT, LEFT('0' + ho_entrada, 3)) END)) + ':' + CASE WHEN CONVERT(INT, RIGHT('0000' + ho_entrada, 2)) > 59 THEN '59' ELSE RIGHT('0000' + ho_entrada, 2) END)
		, hr_saida = CONVERT(TIME, CONVERT(VARCHAR(4), (CASE WHEN CONVERT(INT, LEFT('0' + ho_saida, 3)) > 23 THEN 23 ELSE CONVERT(INT, LEFT('0' + ho_saida, 3)) END)) + ':' + CASE WHEN CONVERT(INT, RIGHT('0000' + ho_saida, 2)) > 59 THEN '59' ELSE RIGHT('0000' + ho_saida, 2) END)
	
	UPDATE tmp_Gfreq_turma SET
		tur_descricao = RTRIM(LTRIM(dc_tipo_turno)) + ' - ' + CONVERT(VARCHAR(5), hr_entrada) + ' as ' + CONVERT(VARCHAR(5), hr_saida)
	
	MERGE INTO CORESME_ACA_Turno _target
	USING
	(
		SELECT
			_out.hr_entrada
			, _out.hr_saida
			, _out.ent_id
			, _out.ttn_nome
			, ttn.ttn_id
			, _out.trn_controleTempo
			, _out.trn_padrao
			, _out.tnr_situacao
			, RTRIM(LTRIM(_out.ttn_nome)) + ' - ' + CONVERT(VARCHAR(5), _out.hr_entrada) + ' as ' + CONVERT(VARCHAR(5), _out.hr_saida) AS trn_descricao
		FROM
			(
			SELECT
				cd_tipo_turno
				, dc_tipo_turno AS ttn_nome
				, ho_entrada
				, ho_saida
				, @ent_id AS ent_id
				, 1 /* 1 – Tempo de aula */ AS trn_controleTempo
				, 0 AS trn_padrao
				, 1 AS tnr_situacao
				, CONVERT(TIME, CONVERT(VARCHAR(4), (CASE WHEN CONVERT(INT, LEFT('0' + ho_entrada, 3)) > 23 THEN 23 ELSE CONVERT(INT, LEFT('0' + ho_entrada, 3)) END)) + ':' + CASE WHEN CONVERT(INT, RIGHT('0000' + ho_entrada, 2)) > 59 THEN '59' ELSE RIGHT('0000' + ho_entrada, 2) END) AS hr_entrada
				, CONVERT(TIME, CONVERT(VARCHAR(4), (CASE WHEN CONVERT(INT, LEFT('0' + ho_saida, 3)) > 23 THEN 23 ELSE CONVERT(INT, LEFT('0' + ho_saida, 3)) END)) + ':' + CASE WHEN CONVERT(INT, RIGHT('0000' + ho_saida, 2)) > 59 THEN '59' ELSE RIGHT('0000' + ho_saida, 2) END) AS hr_saida
			FROM
				tmp_Gfreq_turma
			GROUP BY
				cd_tipo_turno
				, dc_tipo_turno
				, ho_entrada
				, ho_saida
			) AS _out
			INNER JOIN CORESME_ACA_TipoTurno ttn
				ON (ttn.ttn_nome COLLATE DATABASE_DEFAULT = _out.ttn_nome COLLATE DATABASE_DEFAULT)
		GROUP BY
			_out.hr_entrada
			, _out.hr_saida
			, _out.ent_id
			, _out.ttn_nome
			, ttn.ttn_id
			, _out.trn_padrao
			, _out.tnr_situacao
			, _out.trn_controleTempo
	) AS _source
	ON (_source.trn_descricao COLLATE DATABASE_DEFAULT = _target.trn_descricao COLLATE DATABASE_DEFAULT
		AND _source.ttn_id = _target.ttn_id
		AND _source.ent_id = _target.ent_id)
	WHEN NOT MATCHED THEN
		INSERT
		(
			ttn_id
			, trn_descricao
			, trn_situacao
			, trn_padrao
			, ent_id
			, trn_controleTempo
			, trn_horainicio
			, trn_horafim
		)
		VALUES
		(
			_source.ttn_id
			, _source.trn_descricao
			, _source.tnr_situacao
			, _source.trn_padrao
			, _source.ent_id
			, _source.trn_controleTempo
			, _source.hr_entrada
			, _source.hr_saida
		);
		
	MERGE INTO CORESME_SYS_TurnoTurma _target
	USING
	(
		SELECT
			trn_id
			, tur_id
		FROM
			(
			SELECT
				turma.tur_id
				, dc_tipo_turno AS ttn_nome
				,  tur.tur_descricao
			FROM
				tmp_Gfreq_turma tur
				
			INNER JOIN BC_VD_Curso curso
				ON curso.cur_nome COLLATE DATABASE_DEFAULT = tur.dc_etapa_ensino COLLATE DATABASE_DEFAULT
			INNER JOIN BC_VD_AnoSerie serie
				ON curso.cur_id = serie.cur_id AND
				   serie.ase_nome COLLATE DATABASE_DEFAULT = tur.dc_serie_ensino COLLATE DATABASE_DEFAULT
			INNER JOIN  BC_VD_Turma turma
				ON --serie.ase_id = turma.ase_id AND
				   turma.tur_salaAula COLLATE DATABASE_DEFAULT = cast(tur.cd_turma_escola  as varchar(20))
			INNER JOIN SSO_SYS_UnidadeAdministrativa uad
				ON turma.ent_id = uad.ent_id AND
				   turma.uad_id = uad.uad_id AND
				   uad.uad_codigo COLLATE DATABASE_DEFAULT = tur.cd_escola COLLATE DATABASE_DEFAULT AND
				   uad.tua_id = @tua_id
		--	where tur.an_letivo = 2013
			GROUP BY
				turma.tur_id
				, dc_tipo_turno
				,tur.tur_descricao
			) AS _out
			INNER JOIN CORESME_ACA_TipoTurno ttn
				ON (ttn.ttn_nome COLLATE DATABASE_DEFAULT = _out.ttn_nome COLLATE DATABASE_DEFAULT)
			inner JOIN CORESME_ACA_Turno trn
				ON (trn.trn_descricao COLLATE DATABASE_DEFAULT = _out.tur_descricao COLLATE DATABASE_DEFAULT)
		GROUP BY
			trn_id
			, tur_id
	) AS _source
	ON (_source.tur_id = _target.tur_id)
	WHEN NOT MATCHED THEN
		INSERT
		(
			trn_id
			, tur_id
		)
		VALUES
		(
			_source.trn_id
			, _source.tur_id
		);
		
END
GO

/****** Object:  StoredProcedure [dbo].[STP_Gfreq_CORESME_v_alunos_da_turma_historico_MSTECH]    Script Date: 05/12/2014 10:35:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_Gfreq_CORESME_v_alunos_da_turma_historico_MSTECH]
AS 
    BEGIN
        INSERT  INTO CORESME_v_alunos_da_turma_historico_MSTECH
                ( cd_turma_escola ,
                  cl_codigo ,
                  cl_alu_codigo ,
                  cl_status ,
                  cl_datst ,
                  cl_dt_inclusao ,
                  cl_nota ,
                  alu_nome ,
                  alu_sex ,
                  alu_nasc ,
                  alu_mae ,
                  id_raca ,
                  id_nee ,
                  cd_tipo_turma ,
                  st_turma_escola
                )
                SELECT  cd_turma_escola ,
                        cl_codigo ,
                        cl_alu_codigo ,
                        cl_status ,
                        cl_datst ,
                        cl_dt_inclusao ,
                        cl_nota ,
                        alu_nome ,
                        alu_sex ,
                        alu_nasc ,
                        alu_mae ,
                        id_raca ,
                        id_nee ,
                        cd_tipo_turma ,
                        st_turma_escola
                FROM    tmp_CoreSME_alunos_da_turma_historico_MSTECH       
    END
GO

/****** Object:  StoredProcedure [dbo].[STP_Gfreq_CORESME_v_alunos_da_turma_MSTECH]    Script Date: 05/12/2014 10:35:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_Gfreq_CORESME_v_alunos_da_turma_MSTECH]
AS 
    BEGIN     
        INSERT  INTO CORESME_v_alunos_da_turma_MSTECH
                ( cd_turma_escola ,
                  cl_codigo ,
                  cl_alu_codigo ,
                  cl_st ,
                  cl_datst ,
                  cl_dt_inclusao ,
                  cl_nota ,
                  alu_nome ,
                  alu_sex ,
                  alu_nasc ,
                  alu_mae ,
                  id_raca ,
                  id_nee ,
                  cd_tipo_turma ,
                  st_turma_escola
                )
                SELECT  cd_turma_escola ,
                        cl_codigo ,
                        cl_alu_codigo ,
                        cl_st ,
                        cl_datst ,
                        cl_dt_inclusao ,
                        cl_nota ,
                        alu_nome ,
                        alu_sex ,
                        alu_nasc ,
                        alu_mae ,
                        id_raca ,
                        id_nee ,
                        cd_tipo_turma ,
                        st_turma_escola
                FROM    [tmp_CoreSME_alunos_da_turma_MSTECH]
    END
GO

/****** Object:  StoredProcedure [dbo].[STP_Gfreq_CORESME_v_alunos_matriculados]    Script Date: 05/12/2014 10:35:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_Gfreq_CORESME_v_alunos_matriculados]
AS 
    BEGIN
        INSERT  CORESME_v_alunos_matriculados
                ( [cl_codigo] ,
                  [cl_alu_codigo] ,
                  [cl_tur_codigo] ,
                  [cl_datst] ,
                  [cl_cham] ,
                  [cl_st] ,
                  [des_status] ,
                  [expr1] ,
                  [cl_nota] ,
                  [cl_dt_inclusao] ,
                  [flag_matr_antecipada] ,
                  [expr2] ,
                  [an_letivo]
                )
                SELECT  [cl_codigo] ,
                        [cl_alu_codigo] ,
                        [cl_tur_codigo] ,
                        [cl_datst] ,
                        [cl_cham] ,
                        [cl_st] ,
                        [des_status] ,
                        [expr1] ,
                        [cl_nota] ,
                        [cl_dt_inclusao] ,
                        [flag_matr_antecipada] ,
                        [expr2] ,
                        [an_letivo]
                FROM    [tmp_CoreSME_alunos_matriculados]              

    END
GO

/****** Object:  StoredProcedure [dbo].[STP_Gfreq_CORESME_v_demanda_infantil_MSTECH]    Script Date: 05/12/2014 10:35:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_Gfreq_CORESME_v_demanda_infantil_MSTECH]
AS 
    BEGIN    
        INSERT  INTO [CORESME_v_demanda_infantil_MSTECH]
                ( protocolo ,
                  ALU_NOME ,
                  ALU_SEX ,
                  ALU_NASC ,
                  ALU_MAE ,
                  ALU_PAI ,
                  id_nee ,
                  data_inclusao ,
                  data_alteracao ,
                  data_reativacao ,
                  codesc_inscricao ,
                  codesc_preferencial ,
                  cd_tipo_prioridade ,
                  ALU_CID ,
                  cd_municipio_endereco ,
                  micro_regiao_de_encaminhamento ,
                  in_desbloqueio ,
                  in_rg_confere ,
                  in_certidao_nascimento_confere ,
                  in_rne_confere ,
                  in_endereco_candidato_confere ,
                  in_cpf_responsavel_confere
                )
                SELECT  protocolo ,
                        ALU_NOME ,
                        ALU_SEX ,
                        ALU_NASC ,
                        ALU_MAE ,
                        ALU_PAI ,
                        id_nee ,
                        data_inclusao ,
                        data_alteracao ,
                        data_reativacao ,
                        codesc_inscricao ,
                        codesc_preferencial ,
                        cd_tipo_prioridade ,
                        ALU_CID ,
                        cd_municipio_endereco ,
                        micro_regiao_de_encaminhamento ,
                        in_desbloqueio ,
                        in_rg_confere ,
                        in_certidao_nascimento_confere ,
                        in_rne_confere ,
                        in_endereco_candidato_confere ,
                        in_cpf_responsavel_confere
                FROM    [tmp_CoreSME_demanda_infantil_MSTECH]  
    END
GO

/****** Object:  StoredProcedure [dbo].[STP_Gfreq_CORESME_v_turma_escola_ano_letivo]    Script Date: 05/12/2014 10:35:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_Gfreq_CORESME_v_turma_escola_ano_letivo]
AS 
    BEGIN
        INSERT  INTO [CORESME_v_turma_escola_ano_letivo]
                ( cd_turma_escola ,
                  dc_tipo_periodicidade ,
                  an_letivo ,
                  cd_escola ,
                  cd_serie_ensino ,
                  dc_serie_ensino ,
                  cd_modalidade_ensino ,
                  dc_modalidade_ensino ,
                  cd_etapa_ensino ,
                  dc_etapa_ensino ,
                  cd_ciclo_ensino ,
                  dc_ciclo_ensino ,
                  cd_tipo_projeto ,
                  dc_tipo_projeto ,
                  cd_tipo_habilitacao_profissional ,
                  dc_tipo_habilitacao_profissional ,
                  dc_turma_escola ,
                  cd_ambiente_escola ,
                  cd_tipo_atendimento ,
                  dc_tipo_atendimento ,
                  cd_tipo_turma ,
                  dc_tipo_turma ,
                  cd_tipo_programa ,
                  dc_tipo_programa ,
                  qt_vaga_oferecida ,
                  st_turma_escola ,
                  cd_tipo_turno ,
                  dc_tipo_turno ,
                  cd_duracao ,
                  qt_hora_duracao ,
                  qt_minuto_duracao ,
                  ho_entrada ,
                  ho_saida ,
                  dt_inicio_turma ,
                  dt_fim_turma ,
                  dt_inicio ,
                  dt_fim ,
                  cd_serie_eol98 ,
                  cd_serie_eol2007 ,
                  sg_serie_eol98 ,
                  cd_serie_eol98_texto
                )
                SELECT  cd_turma_escola ,
                        dc_tipo_periodicidade ,
                        an_letivo ,
                        cd_escola ,
                        cd_serie_ensino ,
                        dc_serie_ensino ,
                        cd_modalidade_ensino ,
                        dc_modalidade_ensino ,
                        cd_etapa_ensino ,
                        dc_etapa_ensino ,
                        cd_ciclo_ensino ,
                        dc_ciclo_ensino ,
                        cd_tipo_projeto ,
                        dc_tipo_projeto ,
                        cd_tipo_habilitacao_profissional ,
                        dc_tipo_habilitacao_profissional ,
                        dc_turma_escola ,
                        cd_ambiente_escola ,
                        cd_tipo_atendimento ,
                        dc_tipo_atendimento ,
                        cd_tipo_turma ,
                        dc_tipo_turma ,
                        cd_tipo_programa ,
                        dc_tipo_programa ,
                        qt_vaga_oferecida ,
                        st_turma_escola ,
                        cd_tipo_turno ,
                        dc_tipo_turno ,
                        cd_duracao ,
                        qt_hora_duracao ,
                        qt_minuto_duracao ,
                        ho_entrada ,
                        ho_saida ,
                        dt_inicio_turma ,
                        dt_fim_turma ,
                        dt_inicio ,
                        dt_fim ,
                        cd_serie_eol98 ,
                        cd_serie_eol2007 ,
                        sg_serie_eol98 ,
                        cd_serie_eol98_texto
                FROM    [tmp_CoreSME_turma_escola_ano_letivo]     
    END
GO

/****** Object:  StoredProcedure [dbo].[STP_Gfreq_CORESME_v_turma_MSTECH]    Script Date: 05/12/2014 10:35:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_Gfreq_CORESME_v_turma_MSTECH]
AS 
    BEGIN        
        INSERT  INTO [CORESME_v_turma_MSTECH]
                ( cd_turma_escola ,
                  dc_tipo_periodicidade ,
                  an_letivo ,
                  cd_escola ,
                  cd_serie_ensino ,
                  dc_serie_ensino ,
                  cd_modalidade_ensino ,
                  dc_modalidade_ensino ,
                  cd_etapa_ensino ,
                  dc_etapa_ensino ,
                  cd_ciclo_ensino ,
                  dc_ciclo_ensino ,
                  cd_tipo_projeto ,
                  dc_tipo_projeto ,
                  cd_tipo_habilitacao_profissional ,
                  dc_tipo_habilitacao_profissional ,
                  dc_turma_escola ,
                  cd_ambiente_escola ,
                  cd_tipo_atendimento ,
                  dc_tipo_atendimento ,
                  cd_tipo_turma ,
                  dc_tipo_turma ,
                  cd_tipo_programa ,
                  dc_tipo_programa ,
                  qt_vaga_oferecida ,
                  st_turma_escola ,
                  cd_tipo_turno ,
                  dc_tipo_turno ,
                  cd_duracao ,
                  qt_hora_duracao ,
                  qt_minuto_duracao ,
                  ho_entrada ,
                  ho_saida ,
                  dt_inicio_turma ,
                  dt_fim_turma ,
                  dt_inicio ,
                  dt_fim ,
                  cd_serie_eol98 ,
                  cd_serie_eol2007 ,
                  sg_serie_eol98 ,
                  cd_serie_eol98_texto
                )
                SELECT  cd_turma_escola ,
                        dc_tipo_periodicidade ,
                        an_letivo ,
                        cd_escola ,
                        cd_serie_ensino ,
                        dc_serie_ensino ,
                        cd_modalidade_ensino ,
                        dc_modalidade_ensino ,
                        cd_etapa_ensino ,
                        dc_etapa_ensino ,
                        cd_ciclo_ensino ,
                        dc_ciclo_ensino ,
                        cd_tipo_projeto ,
                        dc_tipo_projeto ,
                        cd_tipo_habilitacao_profissional ,
                        dc_tipo_habilitacao_profissional ,
                        dc_turma_escola ,
                        cd_ambiente_escola ,
                        cd_tipo_atendimento ,
                        dc_tipo_atendimento ,
                        cd_tipo_turma ,
                        dc_tipo_turma ,
                        cd_tipo_programa ,
                        dc_tipo_programa ,
                        qt_vaga_oferecida ,
                        st_turma_escola ,
                        cd_tipo_turno ,
                        dc_tipo_turno ,
                        cd_duracao ,
                        qt_hora_duracao ,
                        qt_minuto_duracao ,
                        ho_entrada ,
                        ho_saida ,
                        dt_inicio_turma ,
                        dt_fim_turma ,
                        dt_inicio ,
                        dt_fim ,
                        cd_serie_eol98 ,
                        cd_serie_eol2007 ,
                        sg_serie_eol98 ,
                        cd_serie_eol98_texto
                FROM    [tmp_CoreSME_turma_MSTECH]
    END
GO

/****** Object:  StoredProcedure [dbo].[STP_Gfreq_CORESME_v_unidade_educacao_dados_gerais]    Script Date: 05/12/2014 10:35:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_Gfreq_CORESME_v_unidade_educacao_dados_gerais]
AS 
    BEGIN
        INSERT  INTO [CORESME_v_unidade_educacao_dados_gerais]
                ( [cd_unidade_educacao] ,
                  [tp_unidade_administrativa] ,
                  [dc_tipo_unidade_educacao] ,
                  [sg_tp_escola] ,
                  [nm_unidade_educacao] ,
                  [tp_situacao_unidade] ,
                  [sg_tipo_situacao_unidade] ,
                  [cd_unidade_administrativa_referencia] ,
                  [sg_unidade_administrativa] ,
                  [cd_cie_unidade_educacao] ,
                  [cd_endereco_grh] ,
                  [tp_logradouro] ,
                  [dc_tp_logradouro] ,
                  [nm_logradouro] ,
                  [cd_nr_endereco] ,
                  [dc_complemento_endereco] ,
                  [nm_bairro] ,
                  [cd_cep] ,
                  [nm_distrito_mec] ,
                  [nm_micro_regiao] ,
                  [cd_setor_distrito] ,
                  [tp_localizacao_endereco] ,
                  [dc_sub_prefeitura] ,
                  [cd_coordenada_geo_x] ,
                  [cd_coordenada_geo_y] ,
                  [tp_local_funcionamento_escola] ,
                  [dc_tipo_local_funcionamento_escola] ,
                  [tp_dependencia_administrativa] ,
                  [dc_tipo_dependencia_administrativa] ,
                  [tp_forma_ocupacao_predio] ,
                  [dc_tipo_forma_ocupacao_predio] ,
                  [tp_proprietario] ,
                  [dc_tipo_proprietario]
                )
                SELECT  [cd_unidade_educacao] ,
                        [tp_unidade_administrativa] ,
                        [dc_tipo_unidade_educacao] ,
                        [sg_tp_escola] ,
                        [nm_unidade_educacao] ,
                        [tp_situacao_unidade] ,
                        [sg_tipo_situacao_unidade] ,
                        [cd_unidade_administrativa_referencia] ,
                        [sg_unidade_administrativa] ,
                        [cd_cie_unidade_educacao] ,
                        [cd_endereco_grh] ,
                        [tp_logradouro] ,
                        [dc_tp_logradouro] ,
                        [nm_logradouro] ,
                        [cd_nr_endereco] ,
                        [dc_complemento_endereco] ,
                        [nm_bairro] ,
                        [cd_cep] ,
                        [nm_distrito_mec] ,
                        [nm_micro_regiao] ,
                        [cd_setor_distrito] ,
                        [tp_localizacao_endereco] ,
                        [dc_sub_prefeitura] ,
                        [cd_coordenada_geo_x] ,
                        [cd_coordenada_geo_y] ,
                        [tp_local_funcionamento_escola] ,
                        [dc_tipo_local_funcionamento_escola] ,
                        [tp_dependencia_administrativa] ,
                        [dc_tipo_dependencia_administrativa] ,
                        [tp_forma_ocupacao_predio] ,
                        [dc_tipo_forma_ocupacao_predio] ,
                        [tp_proprietario] ,
                        [dc_tipo_proprietario]
                FROM    [tmp_CoreSME_unidade_educacao_dados_gerais]
    END
GO

/****** Object:  StoredProcedure [dbo].[STP_Gfreq_CREATE_SINONIMO]    Script Date: 05/12/2014 10:35:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_Gfreq_CREATE_SINONIMO]
--DECLARE
	@bdCoreSSO AS VARCHAR(100)
	, @bdGestaoEscolar AS VARCHAR(100)
	, @bdBlueCore	AS VARCHAR(100)
	, @bdCoreSME	AS VARCHAR(100)
AS
BEGIN
	DECLARE @SQL AS VARCHAR(MAX)
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_SYS_UsuarioGrupo')
	DROP SYNONYM [dbo].[SSO_SYS_UsuarioGrupo]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_SYS_UsuarioGrupoUA')
	DROP SYNONYM [dbo].[SSO_SYS_UsuarioGrupoUA]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_SYS_Usuario')
	DROP SYNONYM [dbo].[SSO_SYS_Usuario]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_SYS_SistemaEntidade')
	DROP SYNONYM [dbo].[SSO_SYS_SistemaEntidade]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_SYS_Sistema')
	DROP SYNONYM [dbo].[SSO_SYS_Sistema]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_SYS_Grupo')
	DROP SYNONYM [dbo].[SSO_SYS_Grupo]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_END_Cidade')
	DROP SYNONYM [dbo].[SSO_END_Cidade]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_END_Endereco')
	DROP SYNONYM [dbo].[SSO_END_Endereco]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_END_Pais')
	DROP SYNONYM [dbo].[SSO_END_Pais]	
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_END_UnidadeFederativa')
	DROP SYNONYM [dbo].[SSO_END_UnidadeFederativa]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_PES_Pessoa')
	DROP SYNONYM [dbo].[SSO_PES_Pessoa]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_SYS_Entidade')
	DROP SYNONYM [dbo].[SSO_SYS_Entidade]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_SYS_TipoEntidade')
	DROP SYNONYM [dbo].[SSO_SYS_TipoEntidade]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_SYS_TipoUnidadeAdministrativa')
	DROP SYNONYM [dbo].[SSO_SYS_TipoUnidadeAdministrativa]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_SYS_UnidadeAdministrativa')
	DROP SYNONYM [dbo].[SSO_SYS_UnidadeAdministrativa]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_SYS_UnidadeAdministrativaEndereco')
	DROP SYNONYM [dbo].[SSO_SYS_UnidadeAdministrativaEndereco]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_TipoModalidadeEnsino')
	DROP SYNONYM [dbo].[GE_ACA_TipoModalidadeEnsino]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_TipoNivelEnsino')
	DROP SYNONYM [dbo].[GE_ACA_TipoNivelEnsino]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_Curso')
	DROP SYNONYM [dbo].[GE_ACA_Curso]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_Curriculo')
	DROP SYNONYM [dbo].[GE_ACA_Curriculo]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_CurriculoPeriodo')
	DROP SYNONYM [dbo].[GE_ACA_CurriculoPeriodo]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_TipoDisciplina')
	DROP SYNONYM [dbo].[GE_ACA_TipoDisciplina]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_Disciplina')
	DROP SYNONYM [dbo].[GE_ACA_Disciplina]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_CalendarioAnual')
	DROP SYNONYM [dbo].[GE_ACA_CalendarioAnual]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_TUR_Turma')
	DROP SYNONYM [dbo].[GE_TUR_Turma]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_TipoTurno')
	DROP SYNONYM [dbo].[GE_ACA_TipoTurno]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_Turno')
	DROP SYNONYM [dbo].[GE_ACA_Turno]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ESC_Escola')
	DROP SYNONYM [dbo].[GE_ESC_Escola]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_ParametroAcademico')
	DROP SYNONYM [dbo].[GE_ACA_ParametroAcademico]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ESC_UnidadeEscola')
	DROP SYNONYM [dbo].[GE_ESC_UnidadeEscola]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ESC_Predio')
	DROP SYNONYM [dbo].[GE_ESC_Predio]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ESC_UnidadeEscolaPredio')
	DROP SYNONYM [dbo].[GE_ESC_UnidadeEscolaPredio]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ESC_PredioEndereco')
	DROP SYNONYM [dbo].[GE_ESC_PredioEndereco]
		
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ESC_TipoRedeEnsino')
	DROP SYNONYM [dbo].[GE_ESC_TipoRedeEnsino]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_RHU_TipoVinculo')
	DROP SYNONYM [dbo].[GE_RHU_TipoVinculo]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_RHU_Cargo')
	DROP SYNONYM [dbo].[GE_RHU_Cargo]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_RHU_ColaboradorCargo')
	DROP SYNONYM [dbo].[GE_RHU_ColaboradorCargo]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_RHU_ColaboradorCargoDisciplina')
	DROP SYNONYM [dbo].[GE_RHU_ColaboradorCargoDisciplina]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_RHU_Colaborador')
	DROP SYNONYM [dbo].[GE_RHU_Colaborador]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_Docente')
	DROP SYNONYM [dbo].[GE_ACA_Docente]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_SYS_TipoDocumentacao')
	DROP SYNONYM [dbo].[SSO_SYS_TipoDocumentacao]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_PES_PessoaDocumento')
	DROP SYNONYM [dbo].[SSO_PES_PessoaDocumento]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_TUR_TurmaCurriculo')
	DROP SYNONYM [dbo].[GE_TUR_TurmaCurriculo]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_TUR_TurmaDisciplina')
	DROP SYNONYM [dbo].[GE_TUR_TurmaDisciplina]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_TUR_TurmaDisciplinaRelDisciplina')
	DROP SYNONYM [dbo].[GE_TUR_TurmaDisciplinaRelDisciplina]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_TUR_TurmaDocente')
	DROP SYNONYM [dbo].[GE_TUR_TurmaDocente]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_Aluno')
	DROP SYNONYM [dbo].[GE_ACA_Aluno]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_AlunoCurriculo')
	DROP SYNONYM [dbo].[GE_ACA_AlunoCurriculo]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_TUR_TurmaRelTurmaDisciplina')
	DROP SYNONYM [dbo].[GE_TUR_TurmaRelTurmaDisciplina]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_MTR_MatriculaTurma')
	DROP SYNONYM [dbo].[GE_MTR_MatriculaTurma]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_MTR_MatriculaTurmaDisciplina')
	DROP SYNONYM [dbo].[GE_MTR_MatriculaTurmaDisciplina]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_FormatoAvaliacao')
	DROP SYNONYM [dbo].[GE_ACA_FormatoAvaliacao]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_TipoPeriodoCalendario')
	DROP SYNONYM [dbo].[GE_ACA_TipoPeriodoCalendario]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_CalendarioPeriodo')
	DROP SYNONYM [dbo].[GE_ACA_CalendarioPeriodo]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_CurriculoEscola')
	DROP SYNONYM [dbo].[GE_ACA_CurriculoEscola]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_TipoMovimentacao')
	DROP SYNONYM [dbo].[GE_ACA_TipoMovimentacao]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_MTR_TipoMovimentacao')
	DROP SYNONYM [dbo].[GE_MTR_TipoMovimentacao]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_MTR_Movimentacao')
	DROP SYNONYM [dbo].[GE_MTR_Movimentacao]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_CalendarioEscola')
	DROP SYNONYM [dbo].[GE_ACA_CalendarioEscola]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_TipoEvento')
	DROP SYNONYM [dbo].[GE_ACA_TipoEvento]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_Evento')
	DROP SYNONYM [dbo].[GE_ACA_Evento]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_CalendarioEvento')
	DROP SYNONYM [dbo].[GE_ACA_CalendarioEvento]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_CurriculoEscolaPeriodo')
	DROP SYNONYM [dbo].[GE_ACA_CurriculoEscolaPeriodo]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'BC_VD_Aluno')
	DROP SYNONYM [dbo].[BC_VD_Aluno]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'BC_VD_Professor')
	DROP SYNONYM [dbo].[BC_VD_Professor]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'BC_VD_Turma')
	DROP SYNONYM [dbo].[BC_VD_Turma]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'CORESME_ACA_TipoTurno')
	DROP SYNONYM [dbo].[CORESME_ACA_TipoTurno]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'CORESME_ACA_Turno')
	DROP SYNONYM [dbo].[CORESME_ACA_Turno]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'CORESME_SYS_TurnoTurma')
	DROP SYNONYM [dbo].[CORESME_SYS_TurnoTurma]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'CORESME_v_alunos_da_turma_historico_MSTECH')
	DROP SYNONYM [dbo].[CORESME_v_alunos_da_turma_historico_MSTECH]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'CORESME_v_alunos_da_turma_MSTECH')
	DROP SYNONYM [dbo].[CORESME_v_alunos_da_turma_MSTECH]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'CORESME_v_alunos_matriculados')
	DROP SYNONYM [dbo].[CORESME_v_alunos_matriculados]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'CORESME_v_demanda_infantil_MSTECH')
	DROP SYNONYM [dbo].[CORESME_v_demanda_infantil_MSTECH]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'CORESME_v_turma_escola_ano_letivo')
	DROP SYNONYM [dbo].[CORESME_v_turma_escola_ano_letivo]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'CORESME_v_turma_MSTECH')
	DROP SYNONYM [dbo].[CORESME_v_turma_MSTECH]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'CORESME_v_unidade_educacao_dados_gerais')
	DROP SYNONYM [dbo].[CORESME_v_unidade_educacao_dados_gerais]
	
	SET @SQL = 'CREATE SYNONYM [dbo].[SSO_SYS_UsuarioGrupo] FOR [' + @bdCoreSSO + '].[dbo].[SYS_UsuarioGrupo]
				CREATE SYNONYM [dbo].[SSO_SYS_UsuarioGrupoUA] FOR [' + @bdCoreSSO + '].[dbo].[SYS_UsuarioGrupoUA]
				CREATE SYNONYM [dbo].[SSO_SYS_Usuario] FOR [' + @bdCoreSSO + '].[dbo].[SYS_Usuario]
				CREATE SYNONYM [dbo].[SSO_SYS_SistemaEntidade] FOR [' + @bdCoreSSO + '].[dbo].[SYS_SistemaEntidade]
				CREATE SYNONYM [dbo].[SSO_SYS_Sistema] FOR [' + @bdCoreSSO + '].[dbo].[SYS_Sistema]
				CREATE SYNONYM [dbo].[SSO_SYS_Grupo] FOR [' + @bdCoreSSO + '].[dbo].[SYS_Grupo]
				CREATE SYNONYM [dbo].[SSO_END_Cidade] FOR [' + @bdCoreSSO + '].[dbo].[END_Cidade]
				CREATE SYNONYM [dbo].[SSO_END_Endereco] FOR [' + @bdCoreSSO + '].[dbo].[END_Endereco]
				CREATE SYNONYM [dbo].[SSO_END_Pais] FOR [' + @bdCoreSSO + '].[dbo].[END_Pais]
				CREATE SYNONYM [dbo].[SSO_END_UnidadeFederativa] FOR [' + @bdCoreSSO + '].[dbo].[END_UnidadeFederativa]
				CREATE SYNONYM [dbo].[SSO_PES_Pessoa] FOR [' + @bdCoreSSO + '].[dbo].[PES_Pessoa]
				CREATE SYNONYM [dbo].[SSO_SYS_Entidade] FOR [' + @bdCoreSSO + '].[dbo].[SYS_Entidade]
				CREATE SYNONYM [dbo].[SSO_SYS_TipoEntidade] FOR [' + @bdCoreSSO + '].[dbo].[SYS_TipoEntidade]
				CREATE SYNONYM [dbo].[SSO_SYS_TipoUnidadeAdministrativa] FOR [' + @bdCoreSSO + '].[dbo].[SYS_TipoUnidadeAdministrativa]
				CREATE SYNONYM [dbo].[SSO_SYS_UnidadeAdministrativa] FOR [' + @bdCoreSSO + '].[dbo].[SYS_UnidadeAdministrativa]
				CREATE SYNONYM [dbo].[SSO_SYS_UnidadeAdministrativaEndereco] FOR [' + @bdCoreSSO + '].[dbo].[SYS_UnidadeAdministrativaEndereco]
				CREATE SYNONYM [dbo].[SSO_SYS_TipoDocumentacao] FOR [' + @bdCoreSSO + '].[dbo].[SYS_TipoDocumentacao]
				CREATE SYNONYM [dbo].[SSO_PES_PessoaDocumento] FOR [' + @bdCoreSSO + '].[dbo].[PES_PessoaDocumento]
				
				CREATE SYNONYM [dbo].[GE_ACA_TipoModalidadeEnsino] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_TipoModalidadeEnsino]
				CREATE SYNONYM [dbo].[GE_ACA_TipoNivelEnsino] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_TipoNivelEnsino]
				CREATE SYNONYM [dbo].[GE_ACA_Curso] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_Curso]
				CREATE SYNONYM [dbo].[GE_ACA_Curriculo] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_Curriculo]
				CREATE SYNONYM [dbo].[GE_ACA_CurriculoPeriodo] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_CurriculoPeriodo]
				CREATE SYNONYM [dbo].[GE_ACA_TipoDisciplina] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_TipoDisciplina]
				CREATE SYNONYM [dbo].[GE_ACA_Disciplina] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_Disciplina]
				CREATE SYNONYM [dbo].[GE_ACA_CalendarioAnual] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_CalendarioAnual]
				CREATE SYNONYM [dbo].[GE_TUR_Turma] FOR [' + @bdGestaoEscolar + '].[dbo].[TUR_Turma]
				CREATE SYNONYM [dbo].[GE_ACA_TipoTurno] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_TipoTurno]
				CREATE SYNONYM [dbo].[GE_ACA_Turno] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_Turno]
				CREATE SYNONYM [dbo].[GE_ESC_Escola] FOR [' + @bdGestaoEscolar + '].[dbo].[ESC_Escola]
				CREATE SYNONYM [dbo].[GE_ACA_ParametroAcademico] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_ParametroAcademico]
				CREATE SYNONYM [dbo].[GE_ESC_UnidadeEscola] FOR [' + @bdGestaoEscolar + '].[dbo].[ESC_UnidadeEscola]
				CREATE SYNONYM [dbo].[GE_ESC_Predio] FOR [' + @bdGestaoEscolar + '].[dbo].[ESC_Predio]
				CREATE SYNONYM [dbo].[GE_ESC_UnidadeEscolaPredio] FOR [' + @bdGestaoEscolar + '].[dbo].[ESC_UnidadeEscolaPredio]
				CREATE SYNONYM [dbo].[GE_ESC_PredioEndereco] FOR [' + @bdGestaoEscolar + '].[dbo].[ESC_PredioEndereco]	
				CREATE SYNONYM [dbo].[GE_ESC_TipoRedeEnsino] FOR [' + @bdGestaoEscolar + '].[dbo].[ESC_TipoRedeEnsino]
				CREATE SYNONYM [dbo].[GE_RHU_TipoVinculo] FOR [' + @bdGestaoEscolar + '].[dbo].[RHU_TipoVinculo]
				CREATE SYNONYM [dbo].[GE_RHU_Cargo] FOR [' + @bdGestaoEscolar + '].[dbo].[RHU_Cargo]
				CREATE SYNONYM [dbo].[GE_RHU_ColaboradorCargo] FOR [' + @bdGestaoEscolar + '].[dbo].[RHU_ColaboradorCargo]
				CREATE SYNONYM [dbo].[GE_RHU_ColaboradorCargoDisciplina] FOR [' + @bdGestaoEscolar + '].[dbo].[RHU_ColaboradorCargoDisciplina]
				CREATE SYNONYM [dbo].[GE_RHU_Colaborador] FOR [' + @bdGestaoEscolar + '].[dbo].[RHU_Colaborador]
				CREATE SYNONYM [dbo].[GE_ACA_Docente] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_Docente]
				CREATE SYNONYM [dbo].[GE_TUR_TurmaCurriculo] FOR [' + @bdGestaoEscolar + '].[dbo].[TUR_TurmaCurriculo]
				CREATE SYNONYM [dbo].[GE_TUR_TurmaDisciplina] FOR [' + @bdGestaoEscolar + '].[dbo].[TUR_TurmaDisciplina]
				CREATE SYNONYM [dbo].[GE_TUR_TurmaDisciplinaRelDisciplina] FOR [' + @bdGestaoEscolar + '].[dbo].[TUR_TurmaDisciplinaRelDisciplina]
				CREATE SYNONYM [dbo].[GE_TUR_TurmaDocente] FOR [' + @bdGestaoEscolar + '].[dbo].[TUR_TurmaDocente]
				CREATE SYNONYM [dbo].[GE_ACA_Aluno] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_Aluno]
				CREATE SYNONYM [dbo].[GE_ACA_AlunoCurriculo] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_AlunoCurriculo]
				CREATE SYNONYM [dbo].[GE_TUR_TurmaRelTurmaDisciplina] FOR [' + @bdGestaoEscolar + '].[dbo].[TUR_TurmaRelTurmaDisciplina]
				CREATE SYNONYM [dbo].[GE_MTR_MatriculaTurma] FOR [' + @bdGestaoEscolar + '].[dbo].[MTR_MatriculaTurma]
				CREATE SYNONYM [dbo].[GE_MTR_MatriculaTurmaDisciplina] FOR [' + @bdGestaoEscolar + '].[dbo].[MTR_MatriculaTurmaDisciplina]
				CREATE SYNONYM [dbo].[GE_ACA_FormatoAvaliacao] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_FormatoAvaliacao]
				CREATE SYNONYM [dbo].[GE_ACA_TipoPeriodoCalendario] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_TipoPeriodoCalendario]
				CREATE SYNONYM [dbo].[GE_ACA_CalendarioPeriodo] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_CalendarioPeriodo]
				CREATE SYNONYM [dbo].[GE_ACA_CurriculoEscola] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_CurriculoEscola]
				CREATE SYNONYM [dbo].[GE_ACA_TipoMovimentacao] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_TipoMovimentacao]
				CREATE SYNONYM [dbo].[GE_MTR_TipoMovimentacao] FOR [' + @bdGestaoEscolar + '].[dbo].[MTR_TipoMovimentacao]
				CREATE SYNONYM [dbo].[GE_MTR_Movimentacao] FOR [' + @bdGestaoEscolar + '].[dbo].[MTR_Movimentacao]
				CREATE SYNONYM [dbo].[GE_ACA_CalendarioEscola] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_CalendarioEscola]
				CREATE SYNONYM [dbo].[GE_ACA_TipoEvento] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_TipoEvento]
				CREATE SYNONYM [dbo].[GE_ACA_Evento] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_Evento]
				CREATE SYNONYM [dbo].[GE_ACA_CalendarioEvento] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_CalendarioEvento]
				CREATE SYNONYM [dbo].[GE_ACA_CurriculoEscolaPeriodo] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_CurriculoEscolaPeriodo]
				
				CREATE SYNONYM [dbo].[BC_VD_Aluno] FOR [' + @bdBlueCore + '].[dbo].[VD_Aluno]
				CREATE SYNONYM [dbo].[BC_VD_Professor] FOR [' + @bdBlueCore + '].[dbo].[VD_Professor]
				CREATE SYNONYM [dbo].[BC_VD_Turma] FOR [' + @bdBlueCore + '].[dbo].[VD_Turma]
				
				CREATE SYNONYM [dbo].[CORESME_ACA_TipoTurno] FOR [' + @bdCoreSME + '].[dbo].[ACA_TipoTurno]
				CREATE SYNONYM [dbo].[CORESME_ACA_Turno] FOR [' + @bdCoreSME + '].[dbo].[ACA_Turno]
				CREATE SYNONYM [dbo].[CORESME_SYS_TurnoTurma] FOR [' + @bdCoreSME + '].[dbo].[SYS_TurnoTurma]				
				CREATE SYNONYM [dbo].[CORESME_v_alunos_da_turma_historico_MSTECH] FOR [' + @bdCoreSME + '].[dbo].[v_alunos_da_turma_historico_MSTECH]
				CREATE SYNONYM [dbo].[CORESME_v_alunos_da_turma_MSTECH] FOR [' + @bdCoreSME + '].[dbo].[v_alunos_da_turma_MSTECH]
				CREATE SYNONYM [dbo].[CORESME_v_turma_escola_ano_letivo] FOR [' + @bdCoreSME + '].[dbo].[v_turma_escola_ano_letivo]
				CREATE SYNONYM [dbo].[CORESME_v_demanda_infantil_MSTECH] FOR [' + @bdCoreSME + '].[dbo].[v_demanda_infantil_MSTECH]
				CREATE SYNONYM [dbo].[CORESME_v_alunos_matriculados] FOR [' + @bdCoreSME + '].[dbo].[v_alunos_matriculados]
				CREATE SYNONYM [dbo].[CORESME_v_turma_MSTECH] FOR [' + @bdCoreSME + '].[dbo].[v_turma_MSTECH]
				CREATE SYNONYM [dbo].[CORESME_v_unidade_educacao_dados_gerais] FOR [' + @bdCoreSME + '].[dbo].[v_unidade_educacao_dados_gerais]'
				
	EXEC(@SQL)
	
	/*
		Exemplo chamada da procedure
		
		EXEC STP_Gfreq_CREATE_SINONIMO 'CoreSSO', 'GestaoPedagogica', 'BlueCore', 'CoreSME'
	*/
END
GO

/****** Object:  StoredProcedure [dbo].[STP_Gfreq_LimparTabelaTemporaria]    Script Date: 05/12/2014 10:35:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_Gfreq_LimparTabelaTemporaria]
	@tableName VARCHAR(100)
AS
BEGIN
	DECLARE @sqlStatement VARCHAR(MAX)
	
	SET @sqlStatement = 'TRUNCATE TABLE ' + @tableName
	EXEC(@sqlStatement)
END
GO

/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_ACA_CalendarioPeriodo_IMPORT]    Script Date: 05/12/2014 10:35:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_QuadroHorario_ACA_CalendarioPeriodo_IMPORT]  
	@ent_id UNIQUEIDENTIFIER
	, @Ano INT
AS
BEGIN
-- DECLARE @ent_id AS varchar (200)
 -- SELECT @ent_id = ent_id FROM SSO_SYS_Entidade WHERE ent_sigla = 'SMESP'
	IF (@ent_id IS NULL)
	BEGIN
		SET @ent_id = (SELECT ent_id FROM SSO_SYS_Entidade WHERE ent_sigla = 'smesp')
	END
	DECLARE @tmpCalendarioPeriodo AS TABLE
	(
		cal_id int,
		cap_descricao varchar(100),
		tpc_id int,
		cap_dataInicio date,
		cap_dataFim date,
		cap_situacao tinyint
	)
	
	DECLARE
		@cal_id INT
		--, @ano INT
		, @tpc_bimestre1 INT
		, @tpc_bimestre2 INT
		, @tpc_bimestre3 INT
		, @tpc_bimestre4 INT
	
	--SET @ano = DATEPART(YEAR, GETDATE())
	SET @cal_id = (SELECT top 1 cal_id FROM GE_ACA_CalendarioAnual WHERE ent_id = @ent_id AND cal_ano = @ano AND cal_situacao = 1)
	SET @tpc_bimestre1 = (SELECT tpc_id FROM GE_ACA_TipoPeriodoCalendario WHERE UPPER(tpc_nome) = '1º BIMESTRE' AND tpc_situacao = 1)
	SET @tpc_bimestre2 = (SELECT tpc_id FROM GE_ACA_TipoPeriodoCalendario WHERE UPPER(tpc_nome) = '2º BIMESTRE' AND tpc_situacao = 1)
	SET @tpc_bimestre3 = (SELECT tpc_id FROM GE_ACA_TipoPeriodoCalendario WHERE UPPER(tpc_nome) = '3º BIMESTRE' AND tpc_situacao = 1)
	SET @tpc_bimestre4 = (SELECT tpc_id FROM GE_ACA_TipoPeriodoCalendario WHERE UPPER(tpc_nome) = '4º BIMESTRE' AND tpc_situacao = 1)
	
	INSERT INTO @tmpCalendarioPeriodo (cal_id, cap_descricao, tpc_id, cap_dataInicio, cap_dataFim, cap_situacao)
	SELECT @cal_id, '1º Bimestre', @tpc_bimestre1, CONVERT(DATE, CONVERT(VARCHAR(4), @ano) + '/01/01'), CONVERT(DATE, CONVERT(VARCHAR(4), @ano) + '/03/31'), 1
	UNION ALL
	SELECT @cal_id, '2º Bimestre', @tpc_bimestre2, CONVERT(DATE, CONVERT(VARCHAR(4), @ano) + '/04/01'), CONVERT(DATE, CONVERT(VARCHAR(4), @ano) + '/06/30'), 1
	UNION ALL
	SELECT @cal_id, '3º Bimestre', @tpc_bimestre3, CONVERT(DATE, CONVERT(VARCHAR(4), @ano) + '/08/01'), CONVERT(DATE, CONVERT(VARCHAR(4), @ano) + '/09/30'), 1
	UNION ALL
	SELECT @cal_id, '4º Bimestre', @tpc_bimestre4, CONVERT(DATE, CONVERT(VARCHAR(4), @ano) + '/10/01'), CONVERT(DATE, CONVERT(VARCHAR(4), @ano) + '/11/30'), 1
	UNION ALL
	SELECT 4, '1º Bimestre', @tpc_bimestre1, CONVERT(DATE, CONVERT(VARCHAR(4), 2014) + '/01/01'), CONVERT(DATE, CONVERT(VARCHAR(4), 2014) + '/03/31'), 1
	UNION ALL
	SELECT 4, '2º Bimestre', @tpc_bimestre2, CONVERT(DATE, CONVERT(VARCHAR(4), 2014) + '/04/01'), CONVERT(DATE, CONVERT(VARCHAR(4), 2014) + '/06/30'), 1
	UNION ALL
	SELECT 4, '3º Bimestre', @tpc_bimestre3, CONVERT(DATE, CONVERT(VARCHAR(4), 2014) + '/08/01'), CONVERT(DATE, CONVERT(VARCHAR(4), 2014) + '/09/30'), 1
	UNION ALL
	SELECT 4, '4º Bimestre', @tpc_bimestre4, CONVERT(DATE, CONVERT(VARCHAR(4), 2014) + '/10/01'), CONVERT(DATE, CONVERT(VARCHAR(4), 2014) + '/11/30'), 1
	
	MERGE INTO GE_ACA_CalendarioPeriodo _target
	USING
	(
		SELECT
			ISNULL(_main.cap_id, _main.rowNum) AS cap_id
			, _main.cal_id
			, _main.cap_descricao
			, _main.tpc_id
			, _main.cap_dataInicio
			, _main.cap_dataFim
			, _main.cap_situacao
		FROM
			(
				SELECT
					cap.cap_id
					, tmp.cal_id
					, tmp.cap_descricao
					, tmp.tpc_id
					, tmp.cap_dataInicio
					, tmp.cap_dataFim
					, tmp.cap_situacao
					, ROW_NUMBER() OVER(PARTITION BY tmp.cal_id ORDER BY cap.cap_dataCriacao) rowNum
				FROM
					@tmpCalendarioPeriodo tmp
					LEFT JOIN GE_ACA_CalendarioPeriodo cap
						ON (cap.cal_id = tmp.cal_id
							AND UPPER(cap.cap_descricao) COLLATE DATABASE_DEFAULT = UPPER(tmp.cap_descricao) COLLATE DATABASE_DEFAULT
							AND cap.tpc_id = tmp.tpc_id)
			) AS _main
	) AS _source
	ON (_source.cal_id = _target.cal_id
		AND UPPER(_source.cap_descricao) COLLATE DATABASE_DEFAULT = UPPER(_target.cap_descricao) COLLATE DATABASE_DEFAULT
		AND _source.tpc_id = _target.tpc_id)
	WHEN NOT MATCHED THEN
		INSERT
		(
			cap_id
			, cal_id
			, cap_descricao
			, tpc_id
			, cap_dataInicio
			, cap_dataFim
			, cap_situacao
		)
		VALUES
		(
			_source.cap_id
			, _source.cal_id
			, _source.cap_descricao
			, _source.tpc_id
			, _source.cap_dataInicio
			, _source.cap_dataFim
			, _source.cap_situacao
		);
       
		
END
GO

/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_ACA_Disciplina_IMPORT]    Script Date: 05/12/2014 10:35:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_QuadroHorario_ACA_Disciplina_IMPORT]
AS
BEGIN
MERGE INTO GE_ACA_Disciplina _target
USING
(
	SELECT
		tmp.cd_componente_curricular AS dis_codigo
		, dep.dis_nome AS dis_nome
		, tds.tds_id
		, 1 AS dis_situacao
	FROM
		tmp_DiarioClasse_disciplina tmp
		INNER JOIN DEPARA_DISCIPLINAS dep ON dep.cd_componente_curricular = tmp.cd_componente_curricular
		INNER JOIN GE_ACA_TipoDisciplina tds
			ON (tds.tds_nome COLLATE DATABASE_DEFAULT = dep.dis_nome COLLATE DATABASE_DEFAULT)
	GROUP BY
		tmp.cd_componente_curricular
		, dep.dis_nome
		, tds.tds_id
		
) AS _source
ON (_source.dis_nome COLLATE DATABASE_DEFAULT = _target.dis_nome COLLATE DATABASE_DEFAULT
	AND _source.dis_codigo = _target.dis_codigo
	AND _source.tds_id = _target.tds_id)
WHEN MATCHED THEN
	UPDATE SET
		dis_dataAlteracao = GETDATE()
WHEN NOT MATCHED THEN
	INSERT
	(
		dis_codigo
		, dis_nome
		, dis_situacao
		, tds_id
	)
	VALUES
	(
		_source.dis_codigo
		, _source.dis_nome
		, _source.dis_situacao
		, _source.tds_id
	);

UPDATE GE_ACA_Disciplina
   SET dis_nomeAbreviado = 'ARTE'
 WHERE dis_nome = 'Arte'

UPDATE GE_ACA_Disciplina
   SET dis_nomeAbreviado = 'CIE'
 WHERE dis_nome = 'Ciências'

UPDATE GE_ACA_Disciplina
   SET dis_nomeAbreviado = 'EF'
 WHERE dis_nome = 'Educação física'

UPDATE GE_ACA_Disciplina
   SET dis_nomeAbreviado = 'GEO'
 WHERE dis_nome = 'Geografia'

UPDATE GE_ACA_Disciplina
   SET dis_nomeAbreviado = 'HIS'
 WHERE dis_nome = 'História'

UPDATE GE_ACA_Disciplina
   SET dis_nomeAbreviado = 'IE'
 WHERE dis_nome = 'Informática educativa'

UPDATE GE_ACA_Disciplina
   SET dis_nomeAbreviado = 'LI'
 WHERE dis_nome in ('Língua inglesa', 'LINGUA INGLESA COMPARTILHADA')

UPDATE GE_ACA_Disciplina
   SET dis_nomeAbreviado = 'LIB'
 WHERE dis_nome = 'Libras'

UPDATE GE_ACA_Disciplina
   SET dis_nomeAbreviado = 'SOC'
 WHERE dis_nome = 'Sociologia'
 
 UPDATE GE_ACA_Disciplina
   SET dis_nomeAbreviado = 'FIL'
 WHERE dis_nome = 'Filosofia'

UPDATE GE_ACA_Disciplina
   SET dis_nomeAbreviado = 'FIS'
 WHERE dis_nome = 'Física'

UPDATE GE_ACA_Disciplina
   SET dis_nomeAbreviado = 'QUI'
 WHERE dis_nome = 'Química'

UPDATE GE_ACA_Disciplina
   SET dis_nomeAbreviado = 'BIO'
 WHERE dis_nome = 'Biologia'

UPDATE GE_ACA_Disciplina
   SET dis_nomeAbreviado = 'LE'
 WHERE dis_nome = 'Língua espanhola'

UPDATE GE_ACA_Disciplina
   SET dis_nomeAbreviado = 'LP'
 WHERE dis_nome in ('Língua portuguesa', 'LINGUA PORTUGUESA - LIBRAS')

UPDATE GE_ACA_Disciplina
   SET dis_nomeAbreviado = 'MAT'
 WHERE dis_nome = 'Matemática'

UPDATE GE_ACA_Disciplina
   SET dis_nomeAbreviado = 'PRO'
 WHERE dis_nome = 'Projetos'

UPDATE GE_ACA_Disciplina
   SET dis_nomeAbreviado = 'REC CIE'
 WHERE dis_nome = 'RECUPERACAO PARALELA - CIENCIAS'

UPDATE GE_ACA_Disciplina
   SET dis_nomeAbreviado = 'REC GEO'
 WHERE dis_nome = 'RECUPERACAO PARALELA - GEOGRAFIA'

UPDATE GE_ACA_Disciplina
   SET dis_nomeAbreviado = 'REC HIS'
 WHERE dis_nome = 'RECUPERACAO PARALELA - HISTORIA'

UPDATE GE_ACA_Disciplina
   SET dis_nomeAbreviado = 'REC MAT'
 WHERE dis_nome = 'RECUPERACAO PARALELA MATEMATICA'

UPDATE GE_ACA_Disciplina
   SET dis_nomeAbreviado = 'REC POR'
 WHERE dis_nome = 'RECUPERACAO PARALELA PORTUGUES'

UPDATE GE_ACA_Disciplina
   SET dis_nomeAbreviado = 'REG'
 WHERE dis_nome in ('Regência de classe', 'REGENCIA CLASSE')

UPDATE GE_ACA_Disciplina
   SET dis_nomeAbreviado = 'SL'
 WHERE dis_nome = 'Sala de leitura'

UPDATE GE_ACA_Disciplina
   SET dis_nomeAbreviado = 'TRS'
 WHERE dis_nome like 'Territ%'

END
GO

/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_ACA_Docente_IMPORT]    Script Date: 05/12/2014 10:35:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_QuadroHorario_ACA_Docente_IMPORT]
--DECLARE
	@tipo_cpf UNIQUEIDENTIFIER
AS
BEGIN
	--> Carrega ID do Tipo Documento CPF
	IF (@tipo_cpf IS NULL)
		SET @tipo_cpf = (SELECT tdo_id FROM SSO_SYS_TipoDocumentacao WHERE tdo_sigla = 'CPF')
	----------------------------------/
	
	create table #docente_coordenador
	 (col_id bigint)
	
	-- insere os coordenadores e diretores na temporaria
	insert into #docente_coordenador
	SELECT col.col_id
      FROM (select cd_cpf_pessoa, nm_pessoa, v_cargobase_mstech.cd_registro_funcional
              from BD_PRODAM..v_cargobase_mstech inner join BD_PRODAM..v_servidor_mstech
                   on v_cargobase_mstech.cd_registro_funcional = v_servidor_mstech.cd_registro_funcional
             where cd_cargo in (3379, 3360)
             group by cd_cpf_pessoa, nm_pessoa, v_cargobase_mstech.cd_registro_funcional) tmp
           INNER JOIN SSO_PES_PessoaDocumento cpf
            ON cpf.psd_numero COLLATE DATABASE_DEFAULT = tmp.cd_cpf_pessoa COLLATE DATABASE_DEFAULT 
           AND cpf.tdo_id = @tipo_cpf
           INNER JOIN GE_RHU_Colaborador col
           ON col.pes_id = cpf.pes_id
     WHERE cpf.psd_situacao = 1
       AND col.col_situacao = 1
     GROUP BY col.col_id
	
	-- insere na temporaria os docentes que não vieram na v_cadastro_professor
	insert into #docente_coordenador
	SELECT col.col_id
      FROM (select cd_cpf_pessoa, nm_pessoa, v_cargobase_mstech.cd_registro_funcional
              from BD_PRODAM..v_cargobase_mstech inner join BD_PRODAM..v_servidor_mstech
                   on v_cargobase_mstech.cd_registro_funcional = v_servidor_mstech.cd_registro_funcional
                   inner join GestaoPedagogica..RHU_Cargo 
                    on v_cargobase_mstech.cd_cargo = RHU_Cargo.crg_codigo
                   AND ISNULL(v_cargobase_mstech.cd_situacao_funcional,1) = RHU_Cargo.tvi_id
             where crg_situacao <> 3 and crg_cargoDocente = 1
               AND dc_cargo <> 'COORDENADOR PEDAGOGICO' 
               AND v_cargobase_mstech.cd_registro_funcional not in 
                    (select rf from bd_prodam..v_cadastro_professor)
             group by cd_cpf_pessoa, nm_pessoa, v_cargobase_mstech.cd_registro_funcional) tmp
           INNER JOIN SSO_PES_PessoaDocumento cpf
            ON cpf.psd_numero COLLATE DATABASE_DEFAULT = tmp.cd_cpf_pessoa COLLATE DATABASE_DEFAULT 
           AND cpf.tdo_id = @tipo_cpf
           INNER JOIN GE_RHU_Colaborador col
           ON col.pes_id = cpf.pes_id
     WHERE cpf.psd_situacao = 1
       AND col.col_situacao = 1
     GROUP BY col.col_id
	
	-- insere os docentes na temporaria
	insert into #docente_coordenador
    SELECT col.col_id
      FROM tmp_DiarioClasse_cadastro_professor tmp
           INNER JOIN SSO_PES_PessoaDocumento cpf
            ON cpf.psd_numero COLLATE DATABASE_DEFAULT = tmp.cd_cpf_pessoa COLLATE DATABASE_DEFAULT 
           AND cpf.tdo_id = @tipo_cpf
		   AND cpf.psd_situacao = 1
           INNER JOIN GE_RHU_Colaborador col
           ON col.pes_id = cpf.pes_id
     GROUP BY col.col_id
	
	--> ACA_Docente
    MERGE INTO GE_ACA_Docente _target
    USING (select col_id from #docente_coordenador group by col_id) AS _source
   	ON (_source.col_id = _target.col_id)
    WHEN MATCHED AND _target.doc_situacao <> 1 THEN
         update set doc_situacao = 1, doc_dataAlteracao = getdate()
    WHEN NOT MATCHED THEN
       INSERT (col_id) VALUES (_source.col_id)
    WHEN NOT MATCHED BY SOURCE THEN 
	   UPDATE SET doc_situacao = 4, doc_dataAlteracao = getdate();
       
    -----------------------------------/
END
GO

/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_ACA_FormatoAvaliacao_IMPORT]    Script Date: 05/12/2014 10:35:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_QuadroHorario_ACA_FormatoAvaliacao_IMPORT]
	@ent_id UNIQUEIDENTIFIER
AS
BEGIN
	IF (@ent_id IS NULL)
	BEGIN
		SET @ent_id = (SELECT ent_id FROM SSO_SYS_Entidade WHERE ent_sigla = 'smesp')
	END
	IF (NOT EXISTS(SELECT fav_id FROM GE_ACA_FormatoAvaliacao WHERE LOWER(fav_nome) = 'conceito global + nota de disciplina' AND ent_id = @ent_id))
	BEGIN
		INSERT INTO GE_ACA_FormatoAvaliacao
		(
			ent_id
			, fav_padrao
			, fav_nome
			, fav_tipo
			, fav_tipoLancamentoFrequencia
			, fav_bloqueiaFrequenciaEfetivacao
			, fav_planejamentoAulasNotasConjunto
			, fav_bloqueiaFrequenciaEfetivacaoDisciplina
			, fav_conceitoGlobalDocente
			, fav_obrigatorioRelatorioReprovacao
			, fav_tipoApuracaoFrequencia
			, fav_calculoQtdeAulasDadas
			, percentualMinimoFrequencia
		)
		VALUES
		(
			@ent_id
			, 1
			, 'Conceito Global + Nota de Disciplina'
			, 3
			, 4
			, 0
			, 0
			, 0
			, 0
			, 0
			, 1
			, 1
			, 0.75
		)
	END
END
GO

/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_ACA_TipoPeriodoCalendario_IMPORT]    Script Date: 05/12/2014 10:35:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_QuadroHorario_ACA_TipoPeriodoCalendario_IMPORT]
AS
BEGIN
DECLARE @ACA_TipoPeriodoCalendario AS TABLE
(
	tpc_nome varchar(100),
	tpc_ordem int,
	tpc_foraPeriodoLetivo bit,
	tpc_situacao tinyint
)

	INSERT INTO @ACA_TipoPeriodoCalendario (tpc_nome, tpc_ordem, tpc_foraPeriodoLetivo, tpc_situacao)
	SELECT '1º Bimestre', 1, 0, 1
	UNION ALL
	SELECT '2º Bimestre', 2, 0, 1
	UNION ALL
	SELECT '3º Bimestre', 3, 0, 1
	UNION ALL
	SELECT '4º Bimestre', 4, 0, 1
	
	MERGE INTO GE_ACA_TipoPeriodoCalendario _target
	USING
	(
		SELECT
			tpc_nome
			, tpc_ordem
			, tpc_foraPeriodoLetivo
			, tpc_situacao
			, UPPER(tpc_nome) AS compareKey
		FROM
			@ACA_TipoPeriodoCalendario
	) AS _source
	ON (_source.compareKey COLLATE DATABASE_DEFAULT = UPPER(_target.tpc_nome) COLLATE DATABASE_DEFAULT) 
	WHEN NOT MATCHED THEN
		INSERT
		(
			tpc_nome
			, tpc_ordem
			, tpc_foraPeriodoLetivo
			, tpc_situacao
		)
		VALUES
		(
			_source.tpc_nome
			, _source.tpc_ordem
			, _source.tpc_foraPeriodoLetivo
			, _source.tpc_situacao
		);

END
GO

/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_ACA_TipoTurno_IMPORT]    Script Date: 05/12/2014 10:35:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_QuadroHorario_ACA_TipoTurno_IMPORT]
AS
BEGIN
	UPDATE tmp_DiarioClasse_turma SET
		dc_tipo_turno = LTRIM(RTRIM(dc_tipo_turno));

	MERGE INTO GE_ACA_TipoTurno _target
	USING
	(
		SELECT
			cd_tipo_turno AS ttn_codigo
			, dc_tipo_turno AS ttn_nome
			, 1 AS ttn_situacao
		FROM
			tmp_DiarioClasse_turma
		GROUP BY
			cd_tipo_turno
			, dc_tipo_turno
	) AS _source
	ON (_source.ttn_nome COLLATE DATABASE_DEFAULT = _target.ttn_nome COLLATE DATABASE_DEFAULT)
	WHEN NOT MATCHED THEN
		INSERT
		(
			ttn_nome
			, ttn_situacao
		)
		VALUES
		(
			_source.ttn_nome
			, _source.ttn_situacao
		);
END
GO

/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_ACA_Turno_IMPORT]    Script Date: 05/12/2014 10:35:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_QuadroHorario_ACA_Turno_IMPORT]
	@ent_id UNIQUEIDENTIFIER
AS
BEGIN
IF (@ent_id IS NULL)
BEGIN
	SET @ent_id = (SELECT ent_id FROM SSO_SYS_Entidade WHERE ent_sigla = 'smesp')
END
	
	UPDATE tmp_DiarioClasse_turma SET
		hr_entrada = CONVERT(TIME, CONVERT(VARCHAR(4), (CASE WHEN CONVERT(INT, LEFT('0' + ho_entrada, 3)) > 23 THEN 23 ELSE CONVERT(INT, LEFT('0' + ho_entrada, 3)) END)) + ':' + CASE WHEN CONVERT(INT, RIGHT('0000' + ho_entrada, 2)) > 59 THEN '59' ELSE RIGHT('0000' + ho_entrada, 2) END)
		, hr_saida = CONVERT(TIME, CONVERT(VARCHAR(4), (CASE WHEN CONVERT(INT, LEFT('0' + ho_saida, 3)) > 23 THEN 23 ELSE CONVERT(INT, LEFT('0' + ho_saida, 3)) END)) + ':' + CASE WHEN CONVERT(INT, RIGHT('0000' + ho_saida, 2)) > 59 THEN '59' ELSE RIGHT('0000' + ho_saida, 2) END)
	
	UPDATE tmp_DiarioClasse_turma SET
		tur_descricao = RTRIM(LTRIM(dc_tipo_turno)) + ' - ' + CONVERT(VARCHAR(5), hr_entrada) + ' as ' + CONVERT(VARCHAR(5), hr_saida)
	
	MERGE INTO GE_ACA_Turno _target
	USING
	(
		SELECT
			_out.hr_entrada
			, _out.hr_saida
			, _out.ent_id
			, _out.ttn_nome
			, ttn.ttn_id
			, _out.trn_controleTempo
			, _out.trn_padrao
			, _out.tnr_situacao
			--, RTRIM(LTRIM(_out.ttn_nome)) + ' - ' + CONVERT(VARCHAR(5), _out.hr_entrada) + ' as ' + CONVERT(VARCHAR(5), _out.hr_saida) + ' - ' + _out.dc_ciclo_ensino AS trn_descricao
			, RTRIM(LTRIM(_out.ttn_nome)) + ' - ' + CONVERT(VARCHAR(5), _out.hr_entrada) + ' as ' + CONVERT(VARCHAR(5), _out.hr_saida) AS trn_descricao
		FROM
			(
			SELECT
				cd_tipo_turno
				, dc_tipo_turno AS ttn_nome
				, dc_ciclo_ensino
				, ho_entrada
				, ho_saida
				, @ent_id AS ent_id
				, 2 /* 1 – Tempo de aula / 2 - Horas*/ AS trn_controleTempo
				, 0 AS trn_padrao
				, 1 AS tnr_situacao
				, CONVERT(TIME, CONVERT(VARCHAR(4), (CASE WHEN CONVERT(INT, LEFT('0' + ho_entrada, 3)) > 23 THEN 23 ELSE CONVERT(INT, LEFT('0' + ho_entrada, 3)) END)) + ':' + CASE WHEN CONVERT(INT, RIGHT('0000' + ho_entrada, 2)) > 59 THEN '59' ELSE RIGHT('0000' + ho_entrada, 2) END) AS hr_entrada
				, CONVERT(TIME, CONVERT(VARCHAR(4), (CASE WHEN CONVERT(INT, LEFT('0' + ho_saida, 3)) > 23 THEN 23 ELSE CONVERT(INT, LEFT('0' + ho_saida, 3)) END)) + ':' + CASE WHEN CONVERT(INT, RIGHT('0000' + ho_saida, 2)) > 59 THEN '59' ELSE RIGHT('0000' + ho_saida, 2) END) AS hr_saida
			FROM
				tmp_DiarioClasse_turma
		    WHERE cd_tipo_turma = 1
			GROUP BY
				cd_tipo_turno
				, dc_tipo_turno
				, dc_ciclo_ensino
				, ho_entrada
				, ho_saida
			UNION ALL
			SELECT
				cd_tipo_turno
				, dc_tipo_turno AS ttn_nome
				, dc_ciclo_ensino
				, ho_entrada
				, ho_saida
				, @ent_id AS ent_id
				, 1 /* 1 – Tempo de aula / 2 - Horas*/ AS trn_controleTempo
				, 0 AS trn_padrao
				, 1 AS tnr_situacao
				, CONVERT(TIME, CONVERT(VARCHAR(4), (CASE WHEN CONVERT(INT, LEFT('0' + ho_entrada, 3)) > 23 THEN 23 ELSE CONVERT(INT, LEFT('0' + ho_entrada, 3)) END)) + ':' + CASE WHEN CONVERT(INT, RIGHT('0000' + ho_entrada, 2)) > 59 THEN '59' ELSE RIGHT('0000' + ho_entrada, 2) END) AS hr_entrada
				, CONVERT(TIME, CONVERT(VARCHAR(4), (CASE WHEN CONVERT(INT, LEFT('0' + ho_saida, 3)) > 23 THEN 23 ELSE CONVERT(INT, LEFT('0' + ho_saida, 3)) END)) + ':' + CASE WHEN CONVERT(INT, RIGHT('0000' + ho_saida, 2)) > 59 THEN '59' ELSE RIGHT('0000' + ho_saida, 2) END) AS hr_saida
			FROM
				tmp_DiarioClasse_turma
		    WHERE cd_tipo_turma = 1
			GROUP BY
				cd_tipo_turno
				, dc_tipo_turno
				, dc_ciclo_ensino
				, ho_entrada
				, ho_saida
			) AS _out
			INNER JOIN GE_ACA_TipoTurno ttn
				ON (ttn.ttn_nome COLLATE DATABASE_DEFAULT = _out.ttn_nome COLLATE DATABASE_DEFAULT)
		GROUP BY
			_out.hr_entrada
			, _out.hr_saida
			, _out.ent_id
			, _out.ttn_nome
			, ttn.ttn_id
			, _out.trn_padrao
			, _out.tnr_situacao
			, _out.trn_controleTempo
	) AS _source
	ON (_source.trn_descricao COLLATE DATABASE_DEFAULT = _target.trn_descricao COLLATE DATABASE_DEFAULT
		AND _source.ttn_id = _target.ttn_id
		AND _source.ent_id = _target.ent_id)
	WHEN NOT MATCHED THEN
		INSERT
		(
			ttn_id
			, trn_descricao
			, trn_situacao
			, trn_padrao
			, ent_id
			, trn_controleTempo
			, trn_horainicio
			, trn_horafim
		)
		VALUES
		(
			_source.ttn_id
			, _source.trn_descricao
			, _source.tnr_situacao
			, _source.trn_padrao
			, _source.ent_id
			, _source.trn_controleTempo
			, _source.hr_entrada
			, _source.hr_saida
		);
END
GO

/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_ACA_TurnoHorario_IMPORT]    Script Date: 05/12/2014 10:35:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_QuadroHorario_ACA_TurnoHorario_IMPORT]
    
AS 
BEGIN
   SET XACT_ABORT ON
   BEGIN TRAN
   DECLARE @ACA_Turno TABLE(
      Seq INT IDENTITY(1, 1) PRIMARY KEY ,
      trn_id INT ,
      ent_id UNIQUEIDENTIFIER ,
      ttn_id INT ,
      trn_descricao VARCHAR(50) ,
      trn_horaInicio TIME(7) ,
      trn_horaFim TIME(7))
   
    INSERT INTO @ACA_Turno
    SELECT trn_id, ent_id, TRN.ttn_id, trn_descricao, trn_horaInicio, trn_horaFim
    FROM GestaoPedagogica..ACA_Turno TRN INNER JOIN Turno_de_para tdp
		ON qt_hora_duracao = DATEDIFF(MINUTE, trn_horaInicio, trn_horaFim) / 60
    WHERE trn_id NOT IN (SELECT trn_id FROM GestaoPedagogica..ACA_TurnoHorario
                            WHERE trn_id = TRN.trn_id
                            AND trh_situacao <> 3)

    DECLARE @PrimeiroDia INT = 2, @UltimoDia INT = 6, @TempoIntervalo INT,
		    @TempoAula INT, @QtdeInt INT, @TempoIntervaloDiferente INT, 
			@IntervaloDiferente INT
   
   DECLARE @TotalLinhasTur INT, @IntContadorTur INT, @trn_id INT, @ent_id UNIQUEIDENTIFIER,
           @ttn_id INT, @trn_descricao VARCHAR(50), @trn_horaInicio TIME(7),
           @trn_horaInicio2 TIME(7), @trn_horaFim TIME(7), @Count INT, @Count2 INT, @Intervalo INT,
		   @qt_hora_duracao INT
   
   SET @TotalLinhasTur = (SELECT COUNT(*) FROM @ACA_Turno)
   SET @IntContadorTur = 0	
   
   WHILE @IntContadorTur < @TotalLinhasTur 
   BEGIN --Atualiza o incremento no inicio para ser utilizado no where
     SET @IntContadorTur = @IntContadorTur + 1
     SELECT @trn_id = trn_id, @ent_id = ent_id, @ttn_id = ttn_id, @trn_descricao = trn_descricao,
            @trn_horaInicio = trn_horaInicio, @trn_horaFim = trn_horaFim, @trn_horaInicio2 = trn_horaInicio,
			@qt_hora_duracao = DATEDIFF(MINUTE, trn_horaInicio, trn_horaFim) / 60
       FROM @ACA_Turno
      WHERE Seq = @IntContadorTur  
   
      SET @Count = 0
      SET @Count2 = 0
      SET @Intervalo = 0

	  DECLARE @QtdeAulas INT = CEILING(@Count2 / ( @QtdeInt + 1 )), @HoraFim TIME(7), @Dia INT
      
	  IF (@qt_hora_duracao > 0 AND EXISTS(SELECT TOP 1 qt_hora_duracao FROM Turno_de_para
										  WHERE qt_hora_duracao = @qt_hora_duracao))
	  BEGIN
			DECLARE @minutosDesconsiderar INT, @totalTemposAdicionado INT = 0, @posicaoIntervalo INT = 3

			SELECT 
				@QtdeAulas = qtdAula,
				@TempoAula = tempoAula,
				@QtdeInt = qtdIntervaloNormal + qtdInvervaloPeriodo,
				@TempoIntervalo = tempoIntervaloNormal,
				@TempoIntervaloDiferente = tempoIntervaloPeriodo,
				@IntervaloDiferente = CASE WHEN qtdInvervaloPeriodo > 0 THEN 2 ELSE 0 END, --posição do intervalo diferente
				@minutosDesconsiderar = minutosDesconsiderar
			FROM Turno_de_para
			WHERE qt_hora_duracao = @qt_hora_duracao
			
		  WHILE ( @totalTemposAdicionado < @QtdeAulas + @QtdeInt ) 
		  BEGIN
			 IF ( @Count = @posicaoIntervalo ) 
			 BEGIN
				SET @Intervalo = @Intervalo + 1
				IF ( @IntervaloDiferente = @Intervalo ) 
				BEGIN
				--IntervaloEntrePeriodos
				--@trn_horaInicio + @TempoIntervaloDiferente
				   SET @HoraFim = DATEADD(mi, @TempoIntervaloDiferente, @trn_horaInicio)
				   SET @Dia = @PrimeiroDia                                
				   WHILE ( @Dia <= @UltimoDia ) 
				   BEGIN --for(d=@PrimeiroDia;d<=@UltimoDia;d++)
					  INSERT INTO GE_ACA_TurnoHorario
							 (trn_id, trh_diaSemana, trh_horaInicio, trh_horaFim, trh_tipo,
							  trh_situacao, trh_dataCriacao, trh_dataAlteracao)
					  VALUES (@trn_id, @Dia, @trn_horaInicio, @HoraFim, 4, 1, GETDATE(), GETDATE())
					  SET @Dia = @Dia + 1
				   END
				   SET @trn_horaInicio = @HoraFim
				   SET @totalTemposAdicionado = @totalTemposAdicionado + 1
				END
				ELSE 
				BEGIN
				--IntervaloEntreAulas
				--@trn_horaInicio + @TempoIntervalo
				   SET @HoraFim = DATEADD(mi, @TempoIntervalo, @trn_horaInicio)
				   SET @Dia = @PrimeiroDia                                
				   WHILE ( @Dia <= @UltimoDia ) 
				   BEGIN --for(d=@PrimeiroDia;d<=@UltimoDia;d++)
					  INSERT INTO GE_ACA_TurnoHorario
							 (trn_id, trh_diaSemana, trh_horaInicio, trh_horaFim, trh_tipo,
							  trh_situacao, trh_dataCriacao, trh_dataAlteracao)
					  VALUES (@trn_id, @Dia, @trn_horaInicio, @HoraFim, 3, 1, GETDATE(), GETDATE())
					  SET @Dia = @Dia + 1
				   END
				   SET @trn_horaInicio = @HoraFim
				   SET @totalTemposAdicionado = @totalTemposAdicionado + 1
				END
				SET @Count = 0
			 END
			 ELSE 
			 BEGIN	
			 --AulaNormal
			 --@trn_horaInicio + @TempoAula
				SET @HoraFim = DATEADD(mi, @TempoAula, @trn_horaInicio)
				SET @Dia = @PrimeiroDia                                
				WHILE (@Dia <= @UltimoDia) 
				BEGIN --for(d=@PrimeiroDia;d<=@UltimoDia;d++)
				   --IF (@HoraFim <= @trn_horaFim)
				   --BEGIN
					  INSERT INTO GE_ACA_TurnoHorario
							 (trn_id, trh_diaSemana, trh_horaInicio, trh_horaFim, trh_tipo,
							  trh_situacao, trh_dataCriacao, trh_dataAlteracao)
					  VALUES (@trn_id, @Dia, @trn_horaInicio, @HoraFim, 1, 1, GETDATE(), GETDATE())
				   --END
				   SET @Dia = @Dia + 1
				END
				SET @trn_horaInicio = @HoraFim
				SET @totalTemposAdicionado = @totalTemposAdicionado + 1
				SET @Count = @Count + 1
			 END
		  END
	  END
   END
   
   IF (@@TRANCOUNT > 0) 
      COMMIT TRAN
   
END
GO

/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_Carrega_DEPARAS]   Script Date: 05/12/2014 10:35:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_QuadroHorario_Carrega_DEPARAS]
	@ent_id UNIQUEIDENTIFIER,
	@ano INT
AS
BEGIN
	IF (@ent_id IS NULL)
		SET @ent_id = (SELECT ent_id FROM sso_sys_entidade WHERE ent_sigla = 'smesp')

	insert into tmp_turma_grade_mstech
	select tg.*
	  from BD_PRODAM..v_turma_grade_mstech tg
		   inner join BD_PRODAM..v_grade_mstech gra ON gra.cd_grade = tg.cd_grade
	 where cd_etapa_ensino in (1,2,3,4,5,6,9,10,11,13,14)
		
	--Alteração do código do curso de ensino infantil especial para regular
	UPDATE tmp_DiarioClasse_turma SET cd_etapa_ensino = 1 WHERE cd_etapa_ensino = 10	
	UPDATE tmp_grade_mstech SET cd_etapa_ensino = 1 WHERE cd_etapa_ensino = 10

	--os updates abaixo são para descartar os tipos de série com o nome "Esc diferenciada na frente"
	-- em reunião no dia 04/01/2017 o Valmir nos falou que esta diferenciação tem relação com a ordem de matrícula de alunos e portanto não importa pro SGP
	UPDATE tmp_DiarioClasse_turma SET cd_serie_ensino =  1, dc_serie_ensino = 'Bercario I' WHERE cd_serie_ensino = 3
	UPDATE tmp_DiarioClasse_turma SET cd_serie_ensino =  4, dc_serie_ensino = 'Bercario II' WHERE cd_serie_ensino = 6
	UPDATE tmp_DiarioClasse_turma SET cd_serie_ensino = 11, dc_serie_ensino = 'MINI GRUPO I' WHERE cd_serie_ensino = 11
	UPDATE tmp_DiarioClasse_turma SET cd_serie_ensino = 28, dc_serie_ensino = 'MINI GRUPO II' WHERE cd_serie_ensino = 29
	UPDATE tmp_DiarioClasse_turma SET cd_serie_ensino = 23, dc_serie_ensino = 'INFANTIL I' WHERE cd_serie_ensino = 24
	UPDATE tmp_DiarioClasse_turma SET cd_serie_ensino = 25, dc_serie_ensino = 'INFANTIL II' WHERE cd_serie_ensino = 26
	
	UPDATE tmp_DiarioClasse_disciplina SET dc_componente_curricular = LTRIM(RTRIM(dc_componente_curricular));
	
	UPDATE tmp_DiarioClasse_turma 
	   SET tne_nome = dep.tne_nome, tme_nome = dep.tme_nome
	  FROM tmp_DiarioClasse_turma tur
		   INNER JOIN DEPARA_NIVEL_MODALIDADE_ENSINO dep ON dep.cd_etapa_ensino = tur.cd_etapa_ensino

	UPDATE tmp_DiarioClasse_turma 
	   SET crp_ciclo = RTRIM(LTRIM(dc_ciclo_ensino));
	   
/*************************************INICIO DEPARA_DISCIPLINAS***********************************************/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DEPARA_DISCIPLINAS]') AND type in (N'U'))
DROP TABLE dbo.DEPARA_DISCIPLINAS
CREATE TABLE DEPARA_DISCIPLINAS (cd_componente_curricular int, 
dc_componente_curricular varchar(100), tds_id int, dis_nome varchar(100), disciplinaDeficiente bit, disciplinaDuplaRegencia bit)

INSERT INTO DEPARA_DISCIPLINAS (cd_componente_curricular, dc_componente_curricular, dis_nome, disciplinaDeficiente, disciplinaDuplaRegencia)
--todos os cursos menos o infantil
SELECT distinct cd_componente_curricular, dc_componente_curricular,
	   CASE WHEN dc_componente_curricular LIKE '%INFORMATICA%' THEN 'INFORMATICA (OIE)' 
			WHEN dc_componente_curricular LIKE '%LEITURA%' THEN 'LEITURA (OSL)' 
			WHEN dc_componente_curricular LIKE '%DOCENCIA COMPARTILHADA%' THEN 'DOCENCIA COMPARTILHADA' 
			WHEN dc_componente_curricular LIKE '%ED.INF. EMEI%' THEN 'ED.INF. EMEI' 
			WHEN dc_componente_curricular LIKE 'REG%' THEN 'REGENCIA CLASSE' 
			ELSE replace(replace(replace(replace(replace(replace(dc_componente_curricular, 
				'/MANHA', ''),'/TARDE',''), 'MANHA', ''),'TARDE',''), 'CLICLO', 'CICLO'), 'FI - INTEGRAL', '')
	    END AS tds_nome , 0 as disciplinaDeficiente, 0 as disciplinaDuplaRegencia
  FROM BD_PRODAM..v_cadastro_disciplina 
 WHERE cd_componente_curricular in (SELECT distinct cd_componente_curricular
								      FROM BD_PRODAM..v_grade_componente_mstech graCom
										   INNER JOIN BD_PRODAM..v_grade_mstech turGra ON turGra.cd_grade = graCom.cd_grade
									 WHERE cd_etapa_ensino in (2,3,5,6,11,13) --infantil vai ser tratado separado
									 )
UNION
-- o select abaixo é específico pra disciplinas de infantil porque as disciplinas precisam ter diferenciações (TDS_IDS diferentes) do berçario/minigrupo
SELECT distinct cd_componente_curricular, dc_componente_curricular,
	   CASE WHEN dc_componente_curricular LIKE '%ED.INF. EMEI%' THEN 'CONCEITO GLOBAL (INFANTIL I E II)' 
			WHEN dc_componente_curricular LIKE 'REG%' THEN 'CONCEITO GLOBAL (INFANTIL I E II)' 
			ELSE replace(replace(replace(replace(replace(replace(dc_componente_curricular, 
				'/MANHA', ''),'/TARDE',''), 'MANHA', ''),'TARDE',''), 'CLICLO', 'CICLO'), 'FI - INTEGRAL', '')
	    END AS tds_nome , 0 as disciplinaDeficiente, 0 as disciplinaDuplaRegencia
  FROM BD_PRODAM..v_cadastro_disciplina cd
	   inner join BD_PRODAM..v_grade_curricular gc on gc.Cod_Comp_Curr = cd.cd_componente_curricular
	   inner join BD_PRODAM..v_turma_MSTECH tm on tm.cd_turma_escola = gc.cd_turma_escola
 WHERE cd_componente_curricular in (SELECT distinct cd_componente_curricular
								      FROM BD_PRODAM..v_grade_componente_mstech graCom
										   INNER JOIN BD_PRODAM..v_grade_mstech turGra ON turGra.cd_grade = graCom.cd_grade
									 WHERE cd_etapa_ensino in (1,10)
									 )
   and tm.dc_serie_ensino like 'INFANTIL%'
union
-- o select abaixo é específico pra disciplinas de berçario e minigrupo porque as disciplinas precisam ter diferenciações (TDS_IDS diferentes) do infantil
SELECT distinct cd_componente_curricular, dc_componente_curricular,
	   CASE WHEN dc_componente_curricular LIKE '%ED.INF. EMEI%' THEN 'CONCEITO GLOBAL (BERÇARIO/MINIGRUPO)' 
			WHEN dc_componente_curricular LIKE 'REG%' THEN 'CONCEITO GLOBAL (BERÇARIO/MINIGRUPO)' 
			ELSE replace(replace(replace(replace(replace(replace(dc_componente_curricular, 
				'/MANHA', ''),'/TARDE',''), 'MANHA', ''),'TARDE',''), 'CLICLO', 'CICLO'), 'FI - INTEGRAL', '')
	    END AS tds_nome , 0 as disciplinaDeficiente, 0 as disciplinaDuplaRegencia
  FROM BD_PRODAM..v_cadastro_disciplina cd
	   inner join BD_PRODAM..v_grade_curricular gc on gc.Cod_Comp_Curr = cd.cd_componente_curricular
	   inner join BD_PRODAM..v_turma_MSTECH tm on tm.cd_turma_escola = gc.cd_turma_escola
 WHERE cd_componente_curricular in (SELECT distinct cd_componente_curricular
								      FROM BD_PRODAM..v_grade_componente_mstech graCom
										   INNER JOIN BD_PRODAM..v_grade_mstech turGra ON turGra.cd_grade = graCom.cd_grade
									 WHERE cd_etapa_ensino in (1,10)
									 )
   and (tm.dc_serie_ensino like 'MINI%' or tm.dc_serie_ensino like 'BER%')
 order by tds_nome

UPDATE DEPARA_DISCIPLINAS 
   SET dis_nome = ACA_TipoDisciplina.tds_nome
  FROM DEPARA_DISCIPLINAS , GestaoPedagogica..ACA_TipoDisciplina 
 WHERE tne_id = 2 and tds_nome = 'Arte'
   and cd_componente_curricular in (139,1066,1067)
  
UPDATE DEPARA_DISCIPLINAS 
   SET dis_nome = ACA_TipoDisciplina.tds_nome
  FROM DEPARA_DISCIPLINAS , GestaoPedagogica..ACA_TipoDisciplina 
 WHERE tne_id = 2 and tds_nome = 'Ciências'
   and cd_componente_curricular = 89

UPDATE DEPARA_DISCIPLINAS 
   SET dis_nome = ACA_TipoDisciplina.tds_nome
  FROM DEPARA_DISCIPLINAS , GestaoPedagogica..ACA_TipoDisciplina 
 WHERE tne_id = 2 and tds_nome = 'Educação física'
   and cd_componente_curricular = 6

UPDATE DEPARA_DISCIPLINAS 
   SET dis_nome = ACA_TipoDisciplina.tds_nome
  FROM DEPARA_DISCIPLINAS , GestaoPedagogica..ACA_TipoDisciplina 
 WHERE tne_id = 3 and tds_nome = 'Física'
   and cd_componente_curricular = 51

UPDATE DEPARA_DISCIPLINAS 
   SET dis_nome = ACA_TipoDisciplina.tds_nome
  FROM DEPARA_DISCIPLINAS , GestaoPedagogica..ACA_TipoDisciplina 
 WHERE tne_id = 3 and tds_nome = 'Química'
   and cd_componente_curricular = 52

UPDATE DEPARA_DISCIPLINAS 
   SET dis_nome = ACA_TipoDisciplina.tds_nome
  FROM DEPARA_DISCIPLINAS , GestaoPedagogica..ACA_TipoDisciplina 
 WHERE tne_id = 3 and tds_nome = 'Biologia'
   and cd_componente_curricular = 53

UPDATE DEPARA_DISCIPLINAS 
   SET dis_nome = ACA_TipoDisciplina.tds_nome
  FROM DEPARA_DISCIPLINAS , GestaoPedagogica..ACA_TipoDisciplina 
 WHERE tne_id = 3 and tds_nome = 'Filosofia'
   and cd_componente_curricular = 98

UPDATE DEPARA_DISCIPLINAS 
   SET dis_nome = ACA_TipoDisciplina.tds_nome
  FROM DEPARA_DISCIPLINAS , GestaoPedagogica..ACA_TipoDisciplina 
 WHERE tne_id = 3 and tds_nome = 'Sociologia'
   and cd_componente_curricular = 103

UPDATE DEPARA_DISCIPLINAS 
   SET dis_nome = ACA_TipoDisciplina.tds_nome
  FROM DEPARA_DISCIPLINAS , GestaoPedagogica..ACA_TipoDisciplina 
 WHERE tne_id = 3 and tds_nome = 'Língua espanhola'
   and cd_componente_curricular = 537
   
UPDATE DEPARA_DISCIPLINAS 
   SET dis_nome = ACA_TipoDisciplina.tds_nome
  FROM DEPARA_DISCIPLINAS , GestaoPedagogica..ACA_TipoDisciplina 
 WHERE tne_id = 2 and tds_nome = 'Geografia'
   and cd_componente_curricular = 8
   
UPDATE DEPARA_DISCIPLINAS 
   SET dis_nome = ACA_TipoDisciplina.tds_nome
  FROM DEPARA_DISCIPLINAS , GestaoPedagogica..ACA_TipoDisciplina 
 WHERE tne_id = 2 and tds_nome = 'História'
   and cd_componente_curricular = 7
   
UPDATE DEPARA_DISCIPLINAS 
   SET dis_nome = ACA_TipoDisciplina.tds_nome
  FROM DEPARA_DISCIPLINAS , GestaoPedagogica..ACA_TipoDisciplina 
 WHERE tne_id = 2 and tds_nome = 'Informática educativa'
   and cd_componente_curricular in (219,1070,1071,1060)
   
UPDATE DEPARA_DISCIPLINAS 
   SET dis_nome = ACA_TipoDisciplina.tds_nome
  FROM DEPARA_DISCIPLINAS , GestaoPedagogica..ACA_TipoDisciplina 
 WHERE tne_id = 2 and tds_nome = 'Língua inglesa'
   and cd_componente_curricular in (1072,1074,1073,1106,9,1122,1123)
   
UPDATE DEPARA_DISCIPLINAS 
   SET dis_nome = ACA_TipoDisciplina.tds_nome
  FROM DEPARA_DISCIPLINAS , GestaoPedagogica..ACA_TipoDisciplina 
 WHERE tne_id = 2 and tds_nome = 'Sala de leitura'
   and cd_componente_curricular in (220,1061,1068,1069)
   
UPDATE DEPARA_DISCIPLINAS 
   SET dis_nome = ACA_TipoDisciplina.tds_nome
  FROM DEPARA_DISCIPLINAS , GestaoPedagogica..ACA_TipoDisciplina 
 WHERE tne_id = 2 and tds_nome = 'Língua portuguesa'
   and cd_componente_curricular = 138
   
UPDATE DEPARA_DISCIPLINAS 
   SET dis_nome = ACA_TipoDisciplina.tds_nome
  FROM DEPARA_DISCIPLINAS , GestaoPedagogica..ACA_TipoDisciplina 
 WHERE tne_id = 2 and tds_nome = 'Matemática'
   and cd_componente_curricular = 2
   
UPDATE DEPARA_DISCIPLINAS 
   SET dis_nome = ACA_TipoDisciplina.tds_nome
  FROM DEPARA_DISCIPLINAS , GestaoPedagogica..ACA_TipoDisciplina 
 WHERE tne_id = 2 and tds_nome = 'Projetos'
   and cd_componente_curricular = 1111
   
UPDATE DEPARA_DISCIPLINAS 
   SET dis_nome = ACA_TipoDisciplina.tds_nome
  FROM DEPARA_DISCIPLINAS , GestaoPedagogica..ACA_TipoDisciplina 
 WHERE tne_id = 2 and tds_nome = 'Docência Compartilhada'
   and cd_componente_curricular in (1118,1109,1151,1150,1110,1119,1108)
      
UPDATE DEPARA_DISCIPLINAS 
   SET dis_nome = ACA_TipoDisciplina.tds_nome
  FROM DEPARA_DISCIPLINAS , GestaoPedagogica..ACA_TipoDisciplina 
 WHERE tne_id = 2 and tds_nome = 'Regência de classe'
   and cd_componente_curricular in (508,1065,1064,1076,1112,1105,1113,1114,1115,1117,1124,1125,1121,1211,1212,1213,1247,1248) 

UPDATE DEPARA_DISCIPLINAS 
   SET dis_nome = ACA_TipoDisciplina.tds_nome
  FROM DEPARA_DISCIPLINAS , GestaoPedagogica..ACA_TipoDisciplina 
 WHERE tne_id = 1 and tds_nome = 'Conceito Global (Berçario/Minigrupo)' and tds_nome = dis_nome
   and cd_componente_curricular in (512,513,517,518) 

UPDATE DEPARA_DISCIPLINAS 
   SET dis_nome = ACA_TipoDisciplina.tds_nome
  FROM DEPARA_DISCIPLINAS , GestaoPedagogica..ACA_TipoDisciplina 
 WHERE tne_id = 1 and tds_nome = 'Conceito Global (Infantil I e II)' and tds_nome = dis_nome
   and cd_componente_curricular in (510,512,513,515,534,535)
   
UPDATE DEPARA_DISCIPLINAS 
   SET dis_nome = ACA_TipoDisciplina.tds_nome, 
       disciplinaDeficiente = 1 
  FROM DEPARA_DISCIPLINAS , GestaoPedagogica..ACA_TipoDisciplina 
 WHERE tne_id = 2 and tds_nome = 'Língua portuguesa' 
   and cd_componente_curricular = 1098
   -- verificar se tem diferença da 1098 do regular pro especial
   
UPDATE DEPARA_DISCIPLINAS 
   SET dis_nome = ACA_TipoDisciplina.tds_nome
  FROM DEPARA_DISCIPLINAS , GestaoPedagogica..ACA_TipoDisciplina 
 WHERE tne_id = 2 and tds_nome = 'Linguagens e códigos'
   and cd_componente_curricular = 230

UPDATE DEPARA_DISCIPLINAS 
   SET dis_nome = ACA_TipoDisciplina.tds_nome
  FROM DEPARA_DISCIPLINAS , GestaoPedagogica..ACA_TipoDisciplina 
 WHERE tne_id = 2 and tds_nome = 'Ciências da natureza/matemática'
   and cd_componente_curricular = 231

UPDATE DEPARA_DISCIPLINAS 
   SET dis_nome = ACA_TipoDisciplina.tds_nome
  FROM DEPARA_DISCIPLINAS , GestaoPedagogica..ACA_TipoDisciplina 
 WHERE tne_id = 2 and tds_nome = 'Ciências humanas'
   and cd_componente_curricular = 232
   
UPDATE DEPARA_DISCIPLINAS 
   SET dis_nome = ACA_TipoDisciplina.tds_nome
  FROM DEPARA_DISCIPLINAS , GestaoPedagogica..ACA_TipoDisciplina 
 WHERE tne_id = 2 and tds_nome = 'Itinerário formativo'
   and cd_componente_curricular = 233
   
UPDATE DEPARA_DISCIPLINAS 
   SET dis_nome = ACA_TipoDisciplina.tds_nome
  FROM DEPARA_DISCIPLINAS , GestaoPedagogica..ACA_TipoDisciplina 
 WHERE tne_id = 2 and tds_nome = 'Libras'
   and cd_componente_curricular = 218

UPDATE DEPARA_DISCIPLINAS 
   SET disciplinaDuplaRegencia = 1
  FROM DEPARA_DISCIPLINAS 
 WHERE dc_componente_curricular like 'REG%TARDE%' or cd_componente_curricular = 513
   
 --território do saber
UPDATE DEPARA_DISCIPLINAS 
   SET dis_nome = ACA_TipoDisciplina.tds_nome
  FROM DEPARA_DISCIPLINAS , GestaoPedagogica..ACA_TipoDisciplina 
 WHERE tne_id = 2 and tds_nome like 'Terr%' and right(tds_nome,2) = RIGHT(DEPARA_DISCIPLINAS.dc_componente_curricular,2)
   and cd_componente_curricular in (1214,1215,1216,1217,1218,1219,1220,1221,1222,1223)
   
 INSERT INTO DEPARA_DISCIPLINAS (cd_componente_curricular, dc_componente_curricular, dis_nome, disciplinaDeficiente, disciplinaDuplaRegencia)
 select dis_codigo, dis_nome, tds_nome, 0 as disciplinaDeficiente, 0 as disciplinaDuplaRegencia
   from GE_ACA_Disciplina dis inner join GE_ACA_TipoDisciplina tds on tds.tds_id = dis.tds_id
  where dis_codigo <> 0
    --and tds_nome = 'Eletiva de aluno' 
    and tds_nome like 'Recupera%' --aguardando publicação
    and not exists (select * from DEPARA_DISCIPLINAS depDis 
					 where depDis.cd_componente_curricular = dis.dis_codigo 
					   and depDis.dis_nome = dis.dis_nome)
  group by dis_codigo, dis_nome, tds_nome
					   

--CRIA AS DISCIPLINAS QUE ESTÃO FALTANDO (antes do passo que cadastra as disciplinas na temp e na ACA_Disciplina
	CREATE TABLE #TEMP (cd_escola varchar(7), cd_componente_curricular int, dc_componente_curricular varchar(50))

	INSERT INTO #TEMP VALUES ('0', 1064, 'REG. CLASSE FI')
	INSERT INTO #TEMP VALUES ('0', 1065, 'REG. CLASSE FI')
	INSERT INTO #TEMP VALUES ('0', 1066, 'ARTE FI')
	INSERT INTO #TEMP VALUES ('0', 1067, 'ARTE FI')
	INSERT INTO #TEMP VALUES ('0', 1068, 'INFORMATICA (OIE)')
	INSERT INTO #TEMP VALUES ('0', 1069, 'INFORMATICA (OIE)')
	INSERT INTO #TEMP VALUES ('0', 1070, 'INFORMATICA (OIE)')
	INSERT INTO #TEMP VALUES ('0', 1071, 'INFORMATICA (OIE)')
	INSERT INTO #TEMP VALUES ('0', 1072, 'LINGUA INGLESA CICLO I')
	INSERT INTO #TEMP VALUES ('0', 1073, 'LINGUA INGLESA CICLO I')
	INSERT INTO #TEMP VALUES ('0', 1074, 'LINGUA INGLESA CICLO I')

	INSERT INTO BD_PRODAM..v_cadastro_disciplina
	SELECT * 
	  FROM #TEMP
	 WHERE NOT EXISTS (SELECT * FROM BD_PRODAM..v_cadastro_disciplina dis 
						WHERE dis.cd_componente_curricular = #TEMP.cd_componente_curricular)
					   
/**************************************FINAL DEPARA_DISCIPLINAS***********************************************/

	
/***********************************INICIO DEPARAS_SERIE_e_GRADES*********************************************/
CREATE TABLE #curCurriculoPeriodo 
	( crp_ordem	INT 		, crp_descricao VARCHAR(200)	, crr_codigo VARCHAR(10)
	, crr_nome VARCHAR(200)	, crp_controleTempo TINYINT		, crp_qtdDiasSemana TINYINT
	, crp_ciclo VARCHAR(100), crp_turmaAvaliacao BIT		, crp_situacao TINYINT
	, cur_id INT			, crr_id INT, maxcrp INT		, LINHA INT
	, crp_concluiNivelEnsino BIT, cd_serie_ensino INT )


	INSERT INTO #curCurriculoPeriodo
	SELECT  
        ROW_NUMBER() OVER ( PARTITION BY crr.cur_id ORDER BY crp_ciclo, crp_descricao ) crp_ordem ,        
        _out.crp_descricao ,
        _out.crr_codigo ,
        _out.crr_nome ,
        _out.crp_controleTempo ,
        _out.crp_qtdDiasSemana ,
        _out.crp_ciclo ,
        _out.crp_turmaAvaliacao ,
        _out.crp_situacao ,     
        CONVERT(INT, crr.cur_id) AS cur_id ,   
        CONVERT(INT, crr.crr_id) AS crr_id ,
        NULL ,
        ROW_NUMBER() OVER ( PARTITION BY crr.cur_id ORDER BY cd_serie_ensino ),
        0,
        _out.cd_serie_ensino
FROM    ( SELECT    cd_serie_ensino ,
                    SUBSTRING(dc_turma_escola,1,1) serie, 
                    cd_serie_ensino AS crp_id ,
                    dc_serie_ensino AS crp_descricao ,
                    nom.cd_etapa_ensino AS crr_codigo ,
                    nom.cur_nome AS crr_nome ,
                    2 AS crp_controleTempo ,
                    5 AS crp_qtdDiasSemana ,
                    CASE WHEN cd_serie_ensino <> 226 
						 THEN LTRIM(RTRIM(dc_ciclo_ensino)) 
						 ELSE 'XXX'
					 END AS crp_ciclo ,
                    0 AS crp_turmaAvaliacao ,
                    @ent_id AS ent_id ,
                    1 AS crp_situacao,
                    COUNT(*) as qtd,
                    ROW_NUMBER() OVER(PARTITION BY cd_serie_ensino, cd_serie_ensino, dc_serie_ensino, 
												   nom.cd_etapa_ensino, nom.cur_nome, LTRIM(RTRIM(dc_ciclo_ensino))
									  ORDER BY COUNT(*) desc) as LINHA 
          FROM      tmp_DiarioClasse_turma
					INNER JOIN DEPARA_NOME_CURSO nom ON nom.cd_etapa_ensino = tmp_DiarioClasse_turma.cd_etapa_ensino
          WHERE     cd_serie_ensino is not null 
                    AND an_letivo >= @ano    
                    and ((nom.cd_etapa_ensino = 13 and cd_serie_ensino <> 226 and st_turma_escola <> 'E')	
						 or (nom.cd_etapa_ensino = 3 and cd_serie_ensino not in (265,266,267,268,276,277,279,281,274,275,278,280,246,247,248,249,210,211,212,213))-- esses serão adicionados a mão mais abaixo 
						 or (nom.cd_etapa_ensino not in (3, 13)))
          GROUP BY  cd_serie_ensino ,
                    SUBSTRING(dc_turma_escola,1,1), 
                    cd_serie_ensino ,
                    dc_serie_ensino ,
                    nom.cd_etapa_ensino ,
                    nom.cur_nome ,
                    LTRIM(RTRIM(dc_ciclo_ensino)) --order by crr_nome, crp_descricao 
        ) AS _out
        INNER JOIN GE_ACA_Curso cur WITH ( NOLOCK ) 
				ON cur.cur_nome COLLATE DATABASE_DEFAULT = _out.crr_nome COLLATE DATABASE_DEFAULT
				   or (cur.cur_id = 69 and _out.crr_nome = 'Ensino Fundamental Especial de 9 Anos')
				   or (cur.cur_id = 71 and _out.crr_nome = 'Ensino Médio Regular')
        INNER JOIN GE_ACA_Curriculo crr WITH ( NOLOCK ) ON ( crr.crr_codigo = _out.crr_codigo
                                                             AND crr.cur_id = cur.cur_id
                                                           ) and _out.LINHA = 1
WHERE (_out.crr_codigo <> 5 OR (_out.crr_codigo = 5 AND crr.cur_id < 13)-- and cd_serie_ensino not in (235,236))
	  )
GROUP BY 
        _out.serie ,
        _out.crp_descricao ,
        _out.crr_codigo ,
        _out.crr_nome ,
        _out.crp_controleTempo ,
        _out.crp_qtdDiasSemana ,
        _out.crp_ciclo ,
        _out.crp_turmaAvaliacao ,
        _out.crp_situacao ,
        crr.cur_id ,
        crr.crr_id ,
        _out.ent_id ,
        _out.cd_serie_ensino
	ORDER BY cur_id,crp_ordem
	
	
	UPDATE #curCurriculoPeriodo SET cur_id = 81 where cur_id = 41
		
	UPDATE #curCurriculoPeriodo SET maxcrp = 0
	--drop table #curCurriculoPeriodo
	UPDATE #curCurriculoPeriodo SET maxcrp = crp.crp_id
	  FROM #curCurriculoPeriodo
		   INNER JOIN (SELECT cur_id, max(crp_id) crp_id FROM GE_ACA_CurriculoPeriodo group by cur_id)crp 
				  ON crp.cur_id = #curCurriculoPeriodo.cur_id
	
	-- Reorganiza crp_ordem para CICLO II quando o mesmo for menor que 5
	-- Serão definidas as regras para o EJA.
		UPDATE  #curCurriculoPeriodo SET crp_ordem = crp_ordem + 4
		WHERE crp_ciclo = 'CICLO II'
		       AND crp_ordem < 5
		       AND cur_id < 13
	
	INSERT INTO #curCurriculoPeriodo
	SELECT crp.crp_ordem, CAST(crp.crp_ordem as varchar(1))+'° ano', 5, crr_nome, 2, 5, 
		   CASE when crp.crp_ordem IN (1,2,3) THEN 'Ciclo de Alfabetização'  
				when crp.crp_ordem IN (4,5,6) THEN 'Ciclo Interdisciplinar'
				else 'Ciclo Autoral' END, 0, 1, crr.cur_id, crr.crr_id, 0, crp_ordem, 0,
		        case when crr.cur_id = 70 then 249 + crp_ordem
				else 
						case crp_ordem 
						  WHEN 1 THEN 84 WHEN 2 THEN 86 WHEN 3 THEN 88 WHEN 4 THEN 235 WHEN 5 THEN 236
						  WHEN 6 THEN 232 WHEN 7 THEN 237 WHEN 8 THEN 238 WHEN 9 THEN 239 END
				 end 
	  FROM GE_ACA_Curriculo crr
		   INNER JOIN DEPARA_CURSOS_DIVIDIDOS div ON div.cur_id = crr.cur_id
		   , (select distinct crp_ordem from #curCurriculoPeriodo where crp_ordem <= 9) as crp 
	 where div.cur_id not in (69,71,72,79,80,81,41,42,83,84)
 
	-- Marca como concluído o nivel de ensino quando for o último nível do curso
    UPDATE #curCurriculoPeriodo SET crp_concluiNivelEnsino = 1
	  FROM #curCurriculoPeriodo a
	WHERE crp_ordem = (SELECT MAX(crp_ordem) FROM #curCurriculoPeriodo b WHERE a.cur_id = b.cur_id)
	
	delete from #curCurriculoPeriodo where cur_id in (65,66,67,68)
	
	INSERT INTO #curCurriculoPeriodo
	values (1, 'Fundamental I Libras', 13, 'Ensino Fundamental 9 Anos', 2, 5, 'CICLO I', 0, 1, 72, 1, 1, 1, 0, 226)
		  ,(1, 'Fundamental I Libras', 13, 'Ensino Fundamental 9 Anos', 2, 5, 'CICLO I', 0, 1, 73, 1, 1, 1, 0, 226)
		,(1, '1ª EJA Modular',  3, 'Educação de Jovens e Adultos (EJA - Modular)', 2, 5, 'CICLO I', 0, 1, 42, 1, 4, 1, 0, 212)
		,(2, '2ª EJA Modular',  3, 'Educação de Jovens e Adultos (EJA - Modular)', 2, 5, 'CICLO I', 0, 1, 42, 1, 4, 2, 0, 213)
		,(3, '3ª EJA Modular',  3, 'Educação de Jovens e Adultos (EJA - Modular)', 2, 5, 'CICLO II', 0, 1, 42, 1, 4, 3, 0, 210)
		,(4, '4ª EJA Modular',  3, 'Educação de Jovens e Adultos (EJA - Modular)', 2, 5, 'CICLO II', 0, 1, 42, 1, 4, 4, 1, 211)	
		
		,(1, 'EJA ALFABETIZACAO I',	3, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO I', 0, 1, 79, 1, 8, 1, 0, 274)
		,(2, 'EJA ALFABETIZACAO II',3, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO I', 0, 1, 79, 1, 8, 2, 0, 275)	
		,(3, 'EJA BASICA I',		3, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO I', 0, 1, 79, 1, 8, 3, 0, 278)	
		,(4, 'EJA BASICA II',		3, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO I', 0, 1, 79, 1, 8, 4, 0, 280)	
		,(5, 'EJA COMPLEMENTAR I',  3, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO II', 0, 1, 79, 1, 8, 5, 0, 246)	
		,(6, 'EJA COMPLEMENTAR II', 3, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO II', 0, 1, 79, 1, 8, 6, 0, 247)	
		,(7, 'EJA FINAL I',			3, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO II', 0, 1, 79, 1, 8, 7, 0, 248)	
		,(8, 'EJA FINAL II',		3, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO II', 0, 1, 79, 1, 8, 8, 1, 249)	
		
		,(1, 'EJA ALFABETIZACAO I',	3, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO I', 0, 1, 79, 1, 8, 1, 0, 276)
		,(2, 'EJA ALFABETIZACAO II',3, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO I', 0, 1, 79, 1, 8, 2, 0, 277)	
		,(3, 'EJA BASICA I',		3, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO I', 0, 1, 79, 1, 8, 3, 0, 279)	
		,(4, 'EJA BASICA II',		3, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO I', 0, 1, 79, 1, 8, 4, 0, 281)	
		,(5, 'EJA COMPLEMENTAR I',  3, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO II', 0, 1, 79, 1, 8, 5, 0, 265)	
		,(6, 'EJA COMPLEMENTAR II', 3, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO II', 0, 1, 79, 1, 8, 6, 0, 266)	
		,(7, 'EJA FINAL I',			3, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO II', 0, 1, 79, 1, 8, 7, 0, 267)	
		,(8, 'EJA FINAL II',		3, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO II', 0, 1, 79, 1, 8, 8, 1, 268)	
		
		,(3, 'EJA BASICA I',		11, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO I', 0, 1, 80, 1, 8, 3, 0, 292)	
		,(4, 'EJA BASICA II',		11, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO I', 0, 1, 80, 1, 8, 4, 0, 294)	
		,(4, 'EJA BASICA II',		11, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO I', 0, 1, 80, 1, 8, 4, 0, 295)	
		,(5, 'EJA COMPLEMENTAR I',  11, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO II', 0, 1, 80, 1, 8, 5, 0, 261)	
		,(6, 'EJA COMPLEMENTAR II', 11, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO II', 0, 1, 80, 1, 8, 6, 0, 270)	
		,(6, 'EJA COMPLEMENTAR II', 11, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO II', 0, 1, 80, 1, 8, 6, 0, 262)	
		,(7, 'EJA FINAL I',			11, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO II', 0, 1, 80, 1, 8, 7, 0, 263)	
		,(8, 'EJA FINAL II',		11, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO II', 0, 1, 80, 1, 8, 8, 1, 272)	
		
		,(5, 'Infantil I'   ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 65, 1, 6, 5, 0, 23)	
		,(5, 'Infantil I'   ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 65, 1, 6, 5, 0, 24)	
		,(5, 'Infantil I'   ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 65, 1, 6, 5, 0, 225)
		,(6, 'Infantil II'  ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 65, 1, 6, 6, 1, 118)
		,(6, 'Infantil II'  ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 65, 1, 6, 6, 1, 25)	
		,(6, 'Infantil II'  ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 65, 1, 6, 6, 1, 26)	
		
		,(5, 'Infantil I'   ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 66, 1, 6, 5, 0, 23)	
		,(5, 'Infantil I'   ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 66, 1, 6, 5, 0, 24)	
		,(5, 'Infantil I'   ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 66, 1, 6, 5, 0, 225)
		,(6, 'Infantil II'  ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 66, 1, 6, 6, 1, 118)
		,(6, 'Infantil II'  ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 66, 1, 6, 6, 1, 25)	
		,(6, 'Infantil II'  ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 66, 1, 6, 6, 1, 26)	
		
		,(4, 'Mini grupo II',  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 67, 1, 6, 4, 0, 28)	
		,(4, 'Mini grupo II',  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 67, 1, 6, 4, 0, 29)
		,(5, 'Infantil I'   ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 67, 1, 6, 5, 0, 23)	
		,(5, 'Infantil I'   ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 67, 1, 6, 5, 0, 24)
		,(5, 'Infantil I'   ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 67, 1, 6, 5, 0, 225)
		,(6, 'Infantil II'  ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 67, 1, 6, 6, 1, 118)
		,(6, 'Infantil II'  ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 67, 1, 6, 6, 1, 25)	
		,(6, 'Infantil II'  ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 67, 1, 6, 6, 1, 26)	
		
		,(1, 'Berçario I'   ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 68, 1, 6, 1, 0, 1)
		,(1, 'Berçario I'   ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 68, 1, 6, 1, 0, 3)
		,(2, 'Berçario II'  ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 68, 1, 6, 2, 0, 4)
		,(2, 'Berçario II'  ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 68, 1, 6, 2, 0, 6)
		,(3, 'Mini grupo I' ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 68, 1, 6, 3, 0, 11)
		,(3, 'Mini grupo I' ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 68, 1, 6, 3, 0, 27)
		,(4, 'Mini grupo II',  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 68, 1, 6, 4, 0, 28)
		,(4, 'Mini grupo II',  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 68, 1, 6, 4, 0, 29)
		,(5, 'Infantil I'   ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 68, 1, 6, 5, 0, 23)	
		,(5, 'Infantil I'   ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 68, 1, 6, 5, 0, 24)
		,(5, 'Infantil I'   ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 68, 1, 6, 5, 0, 225)
		,(6, 'Infantil II'  ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 68, 1, 6, 6, 1, 118)		
		,(6, 'Infantil II'  ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 68, 1, 6, 6, 1, 25)	
		,(6, 'Infantil II'  ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 68, 1, 6, 6, 1, 26)
		
		,(1, '1º Modulo'   , 14, 'Técnico Médio', 2, 5, 'SEM CICLO', 0, 1, 83, 1, 3, 1, 0, 194)
		,(2, '2º Modulo'   , 14, 'Técnico Médio', 2, 5, 'SEM CICLO', 0, 1, 83, 1, 3, 2, 0, 196)
		,(3, '3º Modulo'   , 14, 'Técnico Médio', 2, 5, 'SEM CICLO', 0, 1, 83, 1, 3, 3, 1, 198)

		,(1, '1º Modulo'   , 14, 'Técnico Médio', 2, 5, 'SEM CICLO', 0, 1, 83, 1, 3, 1, 0, 282)
		,(2, '2º Modulo'   , 14, 'Técnico Médio', 2, 5, 'SEM CICLO', 0, 1, 83, 1, 3, 2, 0, 284)
		,(3, '3º Modulo'   , 14, 'Técnico Médio', 2, 5, 'SEM CICLO', 0, 1, 83, 1, 3, 3, 1, 286)
		
		,(1, '1º Modulo'   , 14, 'Técnico Médio', 2, 5, 'SEM CICLO', 0, 1, 83, 1, 3, 1, 0, 283)
		,(2, '2º Modulo'   , 14, 'Técnico Médio', 2, 5, 'SEM CICLO', 0, 1, 83, 1, 3, 2, 0, 285)
		,(3, '3º Modulo'   , 14, 'Técnico Médio', 2, 5, 'SEM CICLO', 0, 1, 83, 1, 3, 3, 1, 287)

		,(1, '1º Ano'   ,  9, 'Ensino Médio Magistério', 2, 5, 'SEM CICLO', 0, 1, 84, 1, 4, 1, 0, 101)
		,(2, '2º Ano'   ,  9, 'Ensino Médio Magistério', 2, 5, 'SEM CICLO', 0, 1, 84, 1, 4, 2, 0, 103)
		,(3, '3º Ano'   ,  9, 'Ensino Médio Magistério', 2, 5, 'SEM CICLO', 0, 1, 84, 1, 4, 3, 0, 105)
		,(4, '4º Ano'	,  9, 'Ensino Médio Magistério', 2, 5, 'SEM CICLO', 0, 1, 84, 1, 4, 4, 1, 107)	


	IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DEPARA_SERIE]') AND type in (N'U'))
        DROP TABLE dbo.DEPARA_SERIE
    
    CREATE TABLE dbo.DEPARA_SERIE(
	   cd_etapa_ensino INT NOT NULL,
	   dc_etapa_ensino varchar(100) NULL,
	   cd_serie_ensino INT NOT NULL,
	   dc_serie_ensino varchar(100) NULL,
	   cur_id          INT NOT NULL,
	   crr_id          INT NOT NULL,
	   crp_id          INT NOT NULL,
       crp_ordem       INT NOT NULL,
       cur_nome		   varchar(100) NULL,
       crp_descricao   varchar(100) NULL,
       multiplasgrades INT,
	   modEnsino	   varchar(3)
       )
    
    INSERT INTO DEPARA_SERIE
    SELECT tur.cd_etapa_ensino, tur.dc_etapa_ensino, CP.cd_serie_ensino, tur.dc_serie_ensino, 
		   CP.cur_id, CP.crr_id, GECRP.crp_id, CP.crp_ordem,
		   replace(replace((select dbo.PrimeiraDeCadaPalavraMaiuscula(lower(tur.dc_etapa_ensino))),'Eja', 'EJA'), '/m', '/M') as cur_nome,
		   replace(replace(replace(replace(replace((select dbo.PrimeiraDeCadaPalavraMaiuscula(lower(tur.dc_serie_ensino))),
									'Eja', 'EJA'),'ii','II'),'Fi', 'FI'),'Iv','IV'),'IIi','III') as crp_Descricao, 
		   CASE WHEN cd_etapa_ensino in (SELECT cd_etapa_ensino from DEPARA_CURSOS_DIVIDIDOS) 
		             and CP.cur_id not in (SELECT cur_id from DEPARA_CURSOS_DIVIDIDOS) THEN 0 
		        WHEN cd_etapa_ensino not in (SELECT cd_etapa_ensino from DEPARA_CURSOS_DIVIDIDOS) THEN 0
		        ELSE 1 END as multiplasgrades,
		   CASE WHEN tur.dc_etapa_ensino like '%INFANTIL%' THEN 'EI' 
				WHEN tur.dc_etapa_ensino like '%EJA%' THEN 'EJA' 
				WHEN tur.dc_etapa_ensino like '%9 ANOS%' THEN 'EF' 
				WHEN tur.dc_etapa_ensino like '%MEDIO%' THEN 'EM' 
				ELSE NULL
			 END as modEnsino
     FROM #curCurriculoPeriodo CP 
		  INNER JOIN GE_ACA_CurriculoPeriodo GECRP
				  ON CP.cur_id = GECRP.cur_id
				 AND CP.crr_id = GECRP.crr_id
				 AND CP.crp_ordem = GECRP.crp_ordem
		  INNER JOIN (SELECT distinct cd_etapa_ensino, dc_etapa_ensino, cd_serie_ensino, dc_serie_ensino 
						from tmp_DiarioClasse_turma) tur ON tur.cd_serie_ensino = CP.cd_serie_ensino
	ORDER BY cd_etapa_ensino, crp_ordem
	
	IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DEPARA_CURSO_GRADES]') AND type in (N'U'))
    DROP TABLE dbo.DEPARA_CURSO_GRADES
    
    CREATE TABLE DEPARA_CURSO_GRADES 
	(cd_grade int, cd_serie_ensino int, soma_horas int, listaDisciplinas varchar(2000), cur_id int, crr_id int, crp_id int, fl_edFisica bit)
	
	INSERT INTO DEPARA_CURSO_GRADES (cd_grade, cd_serie_ensino, soma_horas, listaDisciplinas, fl_edFisica)
	SELECT distinct b.cd_grade, dep.cd_serie_ensino, qtd, (STUFF((SELECT DISTINCT ',' + COALESCE(rtrim(ltrim(depDis.dis_nome)) 
															  + '-' + cast(gc.qt_aula_semanal as varchar(3)), '') AS [text()]
										   FROM tmp_grade_mstech grade 
												   INNER JOIN tmp_grade_componente_mstech gc 
														   ON gc.cd_grade = grade.cd_grade 
												   INNER JOIN DEPARA_DISCIPLINAS depDis 
														   ON depDis.cd_componente_curricular = gc.cd_componente_curricular
												   INNER JOIN DEPARA_SERIE depSer 
														   ON depSer.cd_serie_ensino = grade.cd_serie_ensino 
											 WHERE (dt_fim_validade is null or dt_fim_validade >= GETDATE())
											   and gc.cd_grade = b.cd_grade and grade.cd_serie_ensino = b.cd_serie_ensino
											   -- tirando Docencia Compartilhada pois altera a conta de créditos das grades e qual curso deve ficar
											   and depDis.dis_nome not like 'Doc%ncia%Comp%'
											   and depDis.dis_nome not like 'Projet%'
												  FOR XML PATH('')), 1, 1, '')) as disciplinas, 1 as fl_edFisica
	FROM (
	SELECT cd_grade, cd_serie_ensino, SUM(qt_aula_semanal) as qtd
	FROM (SELECT distinct grade.*, gc.qt_aula_semanal, depSer.crp_id, depSer.cur_id, depDis.cd_componente_curricular, depDis.dis_nome
		    FROM tmp_grade_mstech grade 
			   INNER JOIN tmp_grade_componente_mstech gc 
					   ON gc.cd_grade = grade.cd_grade --and gc.cd_grade = 3697
			   INNER JOIN DEPARA_DISCIPLINAS depDis 
					   ON depDis.cd_componente_curricular = gc.cd_componente_curricular
					   -- tirando Docencia Compartilhada pois altera a conta de créditos das grades e qual curso deve ficar
				      and depDis.dis_nome not like 'Doc%ncia%Comp%'
				      and depDis.dis_nome not like 'Projet%'
			   INNER JOIN DEPARA_SERIE depSer 
					   ON depSer.cd_serie_ensino = grade.cd_serie_ensino 
					  and depSer.cur_id in (76,69,71,72,79,80,81,41,42,68)
		 WHERE (dt_fim_validade is null or dt_fim_validade >= GETDATE())
	   ) a 
	GROUP BY cd_grade, cd_serie_ensino
	  ) b
	INNER JOIN DEPARA_SERIE dep ON dep.cd_serie_ensino = b.cd_serie_ensino
	union
	SELECT grade.cd_grade, grade.cd_serie_ensino, sum(gc.qt_aula_semanal) as soma_horas, null, 0
		    FROM tmp_grade_mstech grade 
			   INNER JOIN tmp_grade_componente_mstech gc 
					   ON gc.cd_grade = grade.cd_grade --and gc.cd_grade = 4290
			   INNER JOIN DEPARA_SERIE depSer 
					   ON depSer.cd_serie_ensino = grade.cd_serie_ensino 
					  and depSer.cur_id in (83,84)
		 WHERE (dt_fim_validade is null or dt_fim_validade >= GETDATE())
	group by grade.cd_grade, grade.cd_serie_ensino
	order by dep.cd_serie_ensino, qtd desc, disciplinas

	--select DEPARA_CURSO_GRADES.cd_grade, tm.qt_hora_duracao
	--  from DEPARA_CURSO_GRADES 
	--	   inner join tmp_turma_grade_mstech tg on tg.cd_grade = DEPARA_CURSO_GRADES.cd_grade 
	--										   and (tg.dt_fim is null or tg.dt_fim >= GETDATE())
	--	   inner join BD_PRODAM..v_turma_MSTECH tm on tm.cd_turma_escola = tg.cd_turma_escola and tm.an_letivo = 2016
	-- group by DEPARA_CURSO_GRADES.cd_grade , tm.qt_hora_duracao
	-- order by 2, DEPARA_CURSO_GRADES.cd_grade
	
	UPDATE DEPARA_CURSO_GRADES 
	   SET cur_id = 75, crr_id = 1, crp_id = dep.crp_id
	  FROM DEPARA_CURSO_GRADES
		   INNER JOIN DEPARA_SERIE dep ON dep.cd_serie_ensino = DEPARA_CURSO_GRADES.cd_serie_ensino
	 WHERE listaDisciplinas like '%territ%'
	   AND cd_etapa_ensino = 5 --adicionado para tirar o caso da grade 4285 q é das turmas SA e SB mas tem territórios também

	UPDATE DEPARA_CURSO_GRADES 
	   SET cur_id = CASE WHEN soma_horas > 40 and cd_etapa_ensino = 5 THEN 78
					 WHEN soma_horas between 32 and 40 and cd_etapa_ensino = 5 and dep.crp_ordem <= 5 THEN 77
					 WHEN soma_horas between 30 and 40 and cd_etapa_ensino = 5 and dep.crp_ordem >= 6 THEN 77
					 WHEN soma_horas < 32 and cd_etapa_ensino = 5 and dep.crp_ordem <= 5 THEN 76
					 WHEN soma_horas < 30 and cd_etapa_ensino = 5 and dep.crp_ordem >= 6 THEN 76
					 WHEN soma_horas >= 31 and cd_grade not in (3541,3542,4285) and cd_etapa_ensino = 13 and dep.crp_ordem <= 6 THEN 70
					 WHEN soma_horas >= 30 and cd_grade not in (3541,3542,4285) and cd_etapa_ensino = 13 and dep.crp_ordem >= 7 THEN 70
					 WHEN soma_horas <= 30 and cd_grade not in (3541,3542,4285) and cd_etapa_ensino = 13 and dep.crp_ordem <= 6 THEN 69
					 WHEN soma_horas <= 29 and cd_grade not in (3541,3542,4285) and cd_etapa_ensino = 13 and dep.crp_ordem >= 7 THEN 69
					 WHEN soma_horas >= 51 and cd_etapa_ensino = 1 THEN 68
					 WHEN soma_horas between 37 and 50 and cd_etapa_ensino = 1 THEN 67
					 WHEN soma_horas between 26 and 36 and cd_etapa_ensino = 1 THEN 66
					 WHEN soma_horas <= 25 and cd_etapa_ensino = 1 THEN 65
					 WHEN cd_etapa_ensino = 6 THEN 71
					 WHEN DEPARA_CURSO_GRADES.cd_serie_ensino = 226 and cd_grade not in (4285) THEN 72
					 WHEN DEPARA_CURSO_GRADES.cd_serie_ensino = 226 and cd_grade = 4285 THEN 73
				 END, 
		   crr_id = 1, crp_id = dep.crp_id
	  FROM DEPARA_CURSO_GRADES
		   INNER JOIN DEPARA_SERIE dep ON dep.cd_serie_ensino = DEPARA_CURSO_GRADES.cd_serie_ensino
	 WHERE dep.cur_id in (select cur_id from DEPARA_CURSOS_DIVIDIDOS) 
	   and DEPARA_CURSO_GRADES.cur_id is null
	   and dep.cur_id not in (79,80,81,41,42) -- já não entrariam por causa da DEPARA_CURSOS_DIVIDIDOS mas só pra garantir
	
	UPDATE DEPARA_CURSO_GRADES 
	   SET cur_id = dep.cur_id, 
		   crr_id = 1, crp_id = dep.crp_id
	  FROM DEPARA_CURSO_GRADES
		   INNER JOIN DEPARA_SERIE dep ON dep.cd_serie_ensino = DEPARA_CURSO_GRADES.cd_serie_ensino
	 WHERE dep.cur_id in (79,80,81,41,42,83,84)
	   and DEPARA_CURSO_GRADES.cur_id is null
	
	-- COMPONENTE_CURRICULAR = 1112 está vindo do EOL com carga-horaria errada, por isso o acerto manual
	UPDATE DEPARA_CURSO_GRADES 
	   SET cur_id = 76,
		   crr_id = 1, crp_id = dep.crp_id
	 FROM DEPARA_CURSO_GRADES
		   INNER JOIN DEPARA_SERIE dep ON dep.cd_serie_ensino = DEPARA_CURSO_GRADES.cd_serie_ensino
		   INNER JOIN tmp_grade_mstech gra ON gra.cd_grade = DEPARA_CURSO_GRADES.cd_grade
	 WHERE dep.cur_id in (76,77,78)   
	   and exists (select tg.cd_grade from tmp_grade_componente_mstech tg 
					where tg.cd_grade = gra.cd_grade and tg.cd_componente_curricular = 1112)   

     UPDATE DEPARA_CURSO_GRADES
		SET fl_edFisica = 0 
	  WHERE cur_id in (70,72,73,75,77,78,41,42,65,66,67,68,83,84)
	  
	 UPDATE DEPARA_CURSO_GRADES
		SET fl_edFisica = 0 
	  WHERE cur_id = 76 and crp_id < 6
/**************************************FINAL DEPARAS_SERIE_e_GRADES*******************************************/
					
END
GO

/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_CREATE_SINONIMO]    Script Date: 05/12/2014 10:35:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_QuadroHorario_CREATE_SINONIMO]
--DECLARE
	@bdCoreSSO AS VARCHAR(100)
	, @bdGestaoEscolar AS VARCHAR(100)
	, @bdBlueCore	AS VARCHAR(100)
	, @bdQuadro	AS VARCHAR(100)
AS
BEGIN
	DECLARE @SQL AS VARCHAR(MAX)
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_SYS_UsuarioGrupo')
	DROP SYNONYM [dbo].[SSO_SYS_UsuarioGrupo]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_SYS_UsuarioGrupoUA')
	DROP SYNONYM [dbo].[SSO_SYS_UsuarioGrupoUA]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_SYS_Usuario')
	DROP SYNONYM [dbo].[SSO_SYS_Usuario]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_SYS_SistemaEntidade')
	DROP SYNONYM [dbo].[SSO_SYS_SistemaEntidade]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_SYS_Sistema')
	DROP SYNONYM [dbo].[SSO_SYS_Sistema]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_SYS_Visao')
	DROP SYNONYM [dbo].[SSO_SYS_Visao]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_SYS_Grupo')
	DROP SYNONYM [dbo].[SSO_SYS_Grupo]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_SYS_GrupoPermissao')
	DROP SYNONYM [dbo].[SSO_SYS_GrupoPermissao]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_END_Cidade')
	DROP SYNONYM [dbo].[SSO_END_Cidade]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_END_Endereco')
	DROP SYNONYM [dbo].[SSO_END_Endereco]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_END_Pais')
	DROP SYNONYM [dbo].[SSO_END_Pais]	
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_END_UnidadeFederativa')
	DROP SYNONYM [dbo].[SSO_END_UnidadeFederativa]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_PES_Pessoa')
	DROP SYNONYM [dbo].[SSO_PES_Pessoa]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_SYS_Entidade')
	DROP SYNONYM [dbo].[SSO_SYS_Entidade]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_SYS_TipoEntidade')
	DROP SYNONYM [dbo].[SSO_SYS_TipoEntidade]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_SYS_TipoUnidadeAdministrativa')
	DROP SYNONYM [dbo].[SSO_SYS_TipoUnidadeAdministrativa]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_SYS_UnidadeAdministrativa')
	DROP SYNONYM [dbo].[SSO_SYS_UnidadeAdministrativa]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_SYS_UnidadeAdministrativaEndereco')
	DROP SYNONYM [dbo].[SSO_SYS_UnidadeAdministrativaEndereco]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_TipoModalidadeEnsino')
	DROP SYNONYM [dbo].[GE_ACA_TipoModalidadeEnsino]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_TipoNivelEnsino')
	DROP SYNONYM [dbo].[GE_ACA_TipoNivelEnsino]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_Curso')
	DROP SYNONYM [dbo].[GE_ACA_Curso]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_Curriculo')
	DROP SYNONYM [dbo].[GE_ACA_Curriculo]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_AlunoResponsavel')
	DROP SYNONYM [dbo].[GE_ACA_AlunoResponsavel]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_CurriculoDisciplina')
	DROP SYNONYM [dbo].[GE_ACA_CurriculoDisciplina]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_CurriculoPeriodo')
	DROP SYNONYM [dbo].[GE_ACA_CurriculoPeriodo]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_TipoDisciplina')
	DROP SYNONYM [dbo].[GE_ACA_TipoDisciplina]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_Disciplina')
	DROP SYNONYM [dbo].[GE_ACA_Disciplina]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_CalendarioAnual')
	DROP SYNONYM [dbo].[GE_ACA_CalendarioAnual]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_CalendarioCurso')
	DROP SYNONYM [dbo].[GE_ACA_CalendarioCurso]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_TUR_Turma')
	DROP SYNONYM [dbo].[GE_TUR_Turma]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_TipoTurno')
	DROP SYNONYM [dbo].[GE_ACA_TipoTurno]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_Turno')
	DROP SYNONYM [dbo].[GE_ACA_Turno]

	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_TurnoHorario')
	DROP SYNONYM [dbo].[GE_ACA_TurnoHorario]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ESC_Escola')
	DROP SYNONYM [dbo].[GE_ESC_Escola]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ESC_EscolaHistorico')
	DROP SYNONYM [dbo].[GE_ESC_EscolaHistorico]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_ParametroAcademico')
	DROP SYNONYM [dbo].[GE_ACA_ParametroAcademico]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ESC_UnidadeEscola')
	DROP SYNONYM [dbo].[GE_ESC_UnidadeEscola]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ESC_Predio')
	DROP SYNONYM [dbo].[GE_ESC_Predio]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ESC_UnidadeEscolaPredio')
	DROP SYNONYM [dbo].[GE_ESC_UnidadeEscolaPredio]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ESC_PredioEndereco')
	DROP SYNONYM [dbo].[GE_ESC_PredioEndereco]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ESC_TipoRedeEnsino')
	DROP SYNONYM [dbo].[GE_ESC_TipoRedeEnsino]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_RHU_TipoVinculo')
	DROP SYNONYM [dbo].[GE_RHU_TipoVinculo]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_RHU_Cargo')
	DROP SYNONYM [dbo].[GE_RHU_Cargo]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_RHU_CargaHoraria')
	DROP SYNONYM [dbo].[GE_RHU_CargaHoraria]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_RHU_ColaboradorCargo')
	DROP SYNONYM [dbo].[GE_RHU_ColaboradorCargo]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_RHU_ColaboradorCargoDisciplina')
	DROP SYNONYM [dbo].[GE_RHU_ColaboradorCargoDisciplina]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_RHU_CargoDisciplina')
	DROP SYNONYM [dbo].[GE_RHU_CargoDisciplina]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_RHU_Colaborador')
	DROP SYNONYM [dbo].[GE_RHU_Colaborador]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_Docente')
	DROP SYNONYM [dbo].[GE_ACA_Docente]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_SYS_TipoDocumentacao')
	DROP SYNONYM [dbo].[SSO_SYS_TipoDocumentacao]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_PES_PessoaDocumento')
	DROP SYNONYM [dbo].[SSO_PES_PessoaDocumento]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_TUR_TurmaCurriculo')
	DROP SYNONYM [dbo].[GE_TUR_TurmaCurriculo]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_TUR_TurmaDisciplina')
	DROP SYNONYM [dbo].[GE_TUR_TurmaDisciplina]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_TUR_TurmaDisciplinaCalendario')
	DROP SYNONYM [dbo].[GE_TUR_TurmaDisciplinaCalendario]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_TUR_TurmaDisciplinaRelDisciplina')
	DROP SYNONYM [dbo].[GE_TUR_TurmaDisciplinaRelDisciplina]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_TUR_TurmaDocente')
	DROP SYNONYM [dbo].[GE_TUR_TurmaDocente]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_TUR_TurmaDocenteProjeto')
	DROP SYNONYM [dbo].[GE_TUR_TurmaDocenteProjeto]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_Aluno')
	DROP SYNONYM [dbo].[GE_ACA_Aluno]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_AlunoCurriculo')
	DROP SYNONYM [dbo].[GE_ACA_AlunoCurriculo]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_TUR_TurmaRelTurmaDisciplina')
	DROP SYNONYM [dbo].[GE_TUR_TurmaRelTurmaDisciplina]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_MTR_MatriculaTurma')
	DROP SYNONYM [dbo].[GE_MTR_MatriculaTurma]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_MTR_MatriculaTurmaDisciplina')
	DROP SYNONYM [dbo].[GE_MTR_MatriculaTurmaDisciplina]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_FormatoAvaliacao')
	DROP SYNONYM [dbo].[GE_ACA_FormatoAvaliacao]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_TipoPeriodoCalendario')
	DROP SYNONYM [dbo].[GE_ACA_TipoPeriodoCalendario]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_CalendarioPeriodo')
	DROP SYNONYM [dbo].[GE_ACA_CalendarioPeriodo]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_CurriculoEscola')
	DROP SYNONYM [dbo].[GE_ACA_CurriculoEscola]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_TipoMovimentacao')
	DROP SYNONYM [dbo].[GE_ACA_TipoMovimentacao]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_MTR_TipoMovimentacao')
	DROP SYNONYM [dbo].[GE_MTR_TipoMovimentacao]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_MTR_Movimentacao')
	DROP SYNONYM [dbo].[GE_MTR_Movimentacao]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_CalendarioEscola')
	DROP SYNONYM [dbo].[GE_ACA_CalendarioEscola]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_TipoEvento')
	DROP SYNONYM [dbo].[GE_ACA_TipoEvento]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_Evento')
	DROP SYNONYM [dbo].[GE_ACA_Evento]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_CalendarioEvento')
	DROP SYNONYM [dbo].[GE_ACA_CalendarioEvento]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'GE_ACA_CurriculoEscolaPeriodo')
	DROP SYNONYM [dbo].[GE_ACA_CurriculoEscolaPeriodo]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'BC_VD_Aluno')
	DROP SYNONYM [dbo].[BC_VD_Aluno]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'BC_VD_Professor')
	DROP SYNONYM [dbo].[BC_VD_Professor]
	
	SET @SQL = 'CREATE SYNONYM [dbo].[SSO_SYS_UsuarioGrupo] FOR [' + @bdCoreSSO + '].[dbo].[SYS_UsuarioGrupo]
				CREATE SYNONYM [dbo].[SSO_SYS_UsuarioGrupoUA] FOR [' + @bdCoreSSO + '].[dbo].[SYS_UsuarioGrupoUA]
				CREATE SYNONYM [dbo].[SSO_SYS_Usuario] FOR [' + @bdCoreSSO + '].[dbo].[SYS_Usuario]
				CREATE SYNONYM [dbo].[SSO_SYS_SistemaEntidade] FOR [' + @bdCoreSSO + '].[dbo].[SYS_SistemaEntidade]
				CREATE SYNONYM [dbo].[SSO_SYS_Sistema] FOR [' + @bdCoreSSO + '].[dbo].[SYS_Sistema]
				CREATE SYNONYM [dbo].[SSO_SYS_Grupo] FOR [' + @bdCoreSSO + '].[dbo].[SYS_Grupo]
				CREATE SYNONYM [dbo].[SSO_END_Cidade] FOR [' + @bdCoreSSO + '].[dbo].[END_Cidade]
				CREATE SYNONYM [dbo].[SSO_END_Endereco] FOR [' + @bdCoreSSO + '].[dbo].[END_Endereco]
				CREATE SYNONYM [dbo].[SSO_END_Pais] FOR [' + @bdCoreSSO + '].[dbo].[END_Pais]
				CREATE SYNONYM [dbo].[SSO_END_UnidadeFederativa] FOR [' + @bdCoreSSO + '].[dbo].[END_UnidadeFederativa]
				CREATE SYNONYM [dbo].[SSO_PES_Pessoa] FOR [' + @bdCoreSSO + '].[dbo].[PES_Pessoa]
				CREATE SYNONYM [dbo].[SSO_SYS_Entidade] FOR [' + @bdCoreSSO + '].[dbo].[SYS_Entidade]
				CREATE SYNONYM [dbo].[SSO_SYS_TipoEntidade] FOR [' + @bdCoreSSO + '].[dbo].[SYS_TipoEntidade]
				CREATE SYNONYM [dbo].[SSO_SYS_TipoUnidadeAdministrativa] FOR [' + @bdCoreSSO + '].[dbo].[SYS_TipoUnidadeAdministrativa]
				CREATE SYNONYM [dbo].[SSO_SYS_UnidadeAdministrativa] FOR [' + @bdCoreSSO + '].[dbo].[SYS_UnidadeAdministrativa]
				CREATE SYNONYM [dbo].[SSO_SYS_UnidadeAdministrativaEndereco] FOR [' + @bdCoreSSO + '].[dbo].[SYS_UnidadeAdministrativaEndereco]
				CREATE SYNONYM [dbo].[SSO_SYS_TipoDocumentacao] FOR [' + @bdCoreSSO + '].[dbo].[SYS_TipoDocumentacao]
				CREATE SYNONYM [dbo].[SSO_PES_PessoaDocumento] FOR [' + @bdCoreSSO + '].[dbo].[PES_PessoaDocumento]
				
				CREATE SYNONYM [dbo].[GE_ACA_TipoModalidadeEnsino] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_TipoModalidadeEnsino]
				CREATE SYNONYM [dbo].[GE_ACA_TipoNivelEnsino] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_TipoNivelEnsino]
				CREATE SYNONYM [dbo].[GE_ACA_Curso] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_Curso]
				CREATE SYNONYM [dbo].[GE_ACA_Curriculo] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_Curriculo]
				CREATE SYNONYM [dbo].[GE_ACA_AlunoResponsavel] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_AlunoResponsavel]
				CREATE SYNONYM [dbo].[GE_ACA_CurriculoDisciplina] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_CurriculoDisciplina]
				CREATE SYNONYM [dbo].[GE_ACA_CurriculoPeriodo] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_CurriculoPeriodo]
				CREATE SYNONYM [dbo].[GE_ACA_TipoDisciplina] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_TipoDisciplina]
				CREATE SYNONYM [dbo].[GE_ACA_Disciplina] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_Disciplina]
				CREATE SYNONYM [dbo].[GE_ACA_CalendarioAnual] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_CalendarioAnual]
				CREATE SYNONYM [dbo].[GE_ACA_CalendarioCurso] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_CalendarioCurso]
				CREATE SYNONYM [dbo].[GE_TUR_Turma] FOR [' + @bdGestaoEscolar + '].[dbo].[TUR_Turma]
				CREATE SYNONYM [dbo].[GE_ACA_TipoTurno] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_TipoTurno]
				CREATE SYNONYM [dbo].[GE_ACA_Turno] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_Turno]
				CREATE SYNONYM [dbo].[GE_ACA_TurnoHorario] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_TurnoHorario]
				CREATE SYNONYM [dbo].[GE_ESC_Escola] FOR [' + @bdGestaoEscolar + '].[dbo].[ESC_Escola]
				CREATE SYNONYM [dbo].[GE_ESC_EscolaHistorico] FOR [' + @bdGestaoEscolar + '].[dbo].[ESC_EscolaHistorico]
				CREATE SYNONYM [dbo].[GE_ACA_ParametroAcademico] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_ParametroAcademico]
				CREATE SYNONYM [dbo].[GE_ESC_UnidadeEscola] FOR [' + @bdGestaoEscolar + '].[dbo].[ESC_UnidadeEscola]
				CREATE SYNONYM [dbo].[GE_ESC_Predio] FOR [' + @bdGestaoEscolar + '].[dbo].[ESC_Predio]
				CREATE SYNONYM [dbo].[GE_ESC_UnidadeEscolaPredio] FOR [' + @bdGestaoEscolar + '].[dbo].[ESC_UnidadeEscolaPredio]
				CREATE SYNONYM [dbo].[GE_ESC_PredioEndereco] FOR [' + @bdGestaoEscolar + '].[dbo].[ESC_PredioEndereco]	
				CREATE SYNONYM [dbo].[GE_ESC_TipoRedeEnsino] FOR [' + @bdGestaoEscolar + '].[dbo].[ESC_TipoRedeEnsino]
				CREATE SYNONYM [dbo].[GE_RHU_TipoVinculo] FOR [' + @bdGestaoEscolar + '].[dbo].[RHU_TipoVinculo]
				CREATE SYNONYM [dbo].[GE_RHU_Cargo] FOR [' + @bdGestaoEscolar + '].[dbo].[RHU_Cargo]
				CREATE SYNONYM [dbo].[GE_RHU_CargaHoraria] FOR [' + @bdGestaoEscolar + '].[dbo].[RHU_CargaHoraria]
				CREATE SYNONYM [dbo].[GE_RHU_ColaboradorCargo] FOR [' + @bdGestaoEscolar + '].[dbo].[RHU_ColaboradorCargo]
				CREATE SYNONYM [dbo].[GE_RHU_ColaboradorCargoDisciplina] FOR [' + @bdGestaoEscolar + '].[dbo].[RHU_ColaboradorCargoDisciplina]
				CREATE SYNONYM [dbo].[GE_RHU_CargoDisciplina] FOR [' + @bdGestaoEscolar + '].[dbo].[RHU_CargoDisciplina]
				CREATE SYNONYM [dbo].[GE_RHU_Colaborador] FOR [' + @bdGestaoEscolar + '].[dbo].[RHU_Colaborador]
				CREATE SYNONYM [dbo].[GE_ACA_Docente] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_Docente]
				CREATE SYNONYM [dbo].[GE_TUR_TurmaCurriculo] FOR [' + @bdGestaoEscolar + '].[dbo].[TUR_TurmaCurriculo]
				CREATE SYNONYM [dbo].[GE_TUR_TurmaDisciplina] FOR [' + @bdGestaoEscolar + '].[dbo].[TUR_TurmaDisciplina]
				CREATE SYNONYM [dbo].[GE_TUR_TurmaDisciplinaCalendario] FOR [' + @bdGestaoEscolar + '].[dbo].[TUR_TurmaDisciplinaCalendario]
				CREATE SYNONYM [dbo].[GE_TUR_TurmaDisciplinaRelDisciplina] FOR [' + @bdGestaoEscolar + '].[dbo].[TUR_TurmaDisciplinaRelDisciplina]
				CREATE SYNONYM [dbo].[GE_TUR_TurmaDocente] FOR [' + @bdGestaoEscolar + '].[dbo].[TUR_TurmaDocente]
				CREATE SYNONYM [dbo].[GE_TUR_TurmaDocenteProjeto] FOR [' + @bdGestaoEscolar + '].[dbo].[TUR_TurmaDocenteProjeto]
				CREATE SYNONYM [dbo].[GE_ACA_Aluno] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_Aluno]
				CREATE SYNONYM [dbo].[GE_ACA_AlunoCurriculo] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_AlunoCurriculo]
				CREATE SYNONYM [dbo].[GE_TUR_TurmaRelTurmaDisciplina] FOR [' + @bdGestaoEscolar + '].[dbo].[TUR_TurmaRelTurmaDisciplina]
				CREATE SYNONYM [dbo].[GE_MTR_MatriculaTurma] FOR [' + @bdGestaoEscolar + '].[dbo].[MTR_MatriculaTurma]
				CREATE SYNONYM [dbo].[GE_MTR_MatriculaTurmaDisciplina] FOR [' + @bdGestaoEscolar + '].[dbo].[MTR_MatriculaTurmaDisciplina]
				CREATE SYNONYM [dbo].[GE_ACA_FormatoAvaliacao] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_FormatoAvaliacao]
				CREATE SYNONYM [dbo].[GE_ACA_TipoPeriodoCalendario] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_TipoPeriodoCalendario]
				CREATE SYNONYM [dbo].[GE_ACA_CalendarioPeriodo] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_CalendarioPeriodo]
				CREATE SYNONYM [dbo].[GE_ACA_CurriculoEscola] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_CurriculoEscola]
				CREATE SYNONYM [dbo].[GE_ACA_TipoMovimentacao] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_TipoMovimentacao]
				CREATE SYNONYM [dbo].[GE_MTR_TipoMovimentacao] FOR [' + @bdGestaoEscolar + '].[dbo].[MTR_TipoMovimentacao]
				CREATE SYNONYM [dbo].[GE_MTR_Movimentacao] FOR [' + @bdGestaoEscolar + '].[dbo].[MTR_Movimentacao]
				CREATE SYNONYM [dbo].[GE_ACA_CalendarioEscola] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_CalendarioEscola]
				CREATE SYNONYM [dbo].[GE_ACA_TipoEvento] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_TipoEvento]
				CREATE SYNONYM [dbo].[GE_ACA_Evento] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_Evento]
				CREATE SYNONYM [dbo].[GE_ACA_CalendarioEvento] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_CalendarioEvento]
				CREATE SYNONYM [dbo].[GE_ACA_CurriculoEscolaPeriodo] FOR [' + @bdGestaoEscolar + '].[dbo].[ACA_CurriculoEscolaPeriodo]
				
				CREATE SYNONYM [dbo].[BC_VD_Aluno] FOR [' + @bdBlueCore + '].[dbo].[VD_Aluno]
				CREATE SYNONYM [dbo].[BC_VD_Professor] FOR [' + @bdBlueCore + '].[dbo].[VD_Professor]'
	EXEC(@SQL)
	
	/*
		Exemplo chamada da procedure
		
		EXEC STP_QuadroHorario_CREATE_SINONIMO 'CoreSSO', 'GestaoPedagogica', 'BlueCore'
	*/
END
GO

/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_ESC_Escola_IMPORT]    Script Date: 05/12/2014 10:35:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_QuadroHorario_ESC_Escola_IMPORT]
--DECLARE
	@ent_id UNIQUEIDENTIFIER
AS
BEGIN
	DECLARE @tua_id UNIQUEIDENTIFIER
	DECLARE @tre_id INT
	
	-- Provisório: asseguro que existirá o registro referente à escola particular
	SELECT * FROM GE_ESC_TipoRedeEnsino WHERE tre_id = 2
	
	 IF ( @@ROWCOUNT = 0 ) 
		BEGIN
			INSERT  INTO GE_ESC_TipoRedeEnsino
					( tre_nome ,
					  tre_situacao
					)
			VALUES  ( 'Escola Particular e Convênio' ,
					  1
					)				
		END
		
		
	-- Carrega valor para ID Entidade
	IF (@ent_id IS NULL)
	BEGIN
		SET @ent_id = (SELECT ent_id FROM SSO_SYS_Entidade WHERE ent_sigla = 'SMESP')
	END
	----------------------------------/
	
	-- Carrega valor para ID Tipo Unidade Administrativa
	-- SET @tua_id = (SELECT tua_id FROM CoreSSO..SYS_TipoUnidadeAdministrativa WITH(NOLOCK) WHERE upper(tua_nome) = 'ESCOLA')	
	SET @tua_id = (SELECT pac_valor FROM GE_ACA_ParametroAcademico WITH(NOLOCK) WHERE pac_chave = 'TIPO_UNIDADE_ADMINISTRATIVA_ESCOLA')
	----------------------------------/
	
	-- Carrega valor para ID Tipo Rede Ensino
	--SET @tre_id = (SELECT tre_id FROM GE_ESC_TipoRedeEnsino WITH(NOLOCK) WHERE tre_nome = 'Pública - Municipal')
	--IF (@tre_id is null)
	--BEGIN
	--	INSERT INTO GE_ESC_TipoRedeEnsino (tre_nome) values ('Pública - Municipal')
	--	SET @tre_id = @@IDENTITY
	--END
	--SET @tre_id = (SELECT pac_valor FROM GE_ACA_ParametroAcademico WITH(NOLOCK) WHERE pac_chave = 'PAR_REDE_ENSINO_PADRAO')
	
	----------------------------------/
	
	-- Importa ESC_Escola
	MERGE INTO GE_ESC_Escola _target
	USING
	(
	  SELECT    uad.ent_id ,
				uad.uad_id ,
				tua_id ,
				uad_codigo ,
				rtrim(ltrim(esc_pr.sg_tp_escola)) + ' - ' + uad_nome as uad_nome,
				uad_situacao 
				,
				CASE WHEN esc_pr.dc_tipo_dependencia_administrativa = 'MUNICIPAL'
					 THEN 1
					 WHEN esc_pr.dc_tipo_dependencia_administrativa = 'PRIVADA'
					 THEN 2
					 ELSE 1
				END AS tre_id,
				esc_controleSistema = CASE WHEN sg_tp_escola IN ('EMEF','EMEFM','CEU EMEF','EMEBS') THEN 1 
										   ELSE CASE WHEN ESC.esc_controleSistema = 1 THEN 1 ELSE 0 END 
									   END,
				esc_terceirizada = CASE WHEN sg_tp_escola IN ('CEI INDIR','CR.P.CONV') THEN 1 ELSE 0 END
	  FROM SSO_SYS_UnidadeAdministrativa uad
		   INNER JOIN tmp_CoreSME_unidade_educacao_dados_gerais esc_pr ON uad.uad_codigo = esc_pr.cd_unidade_educacao
		   LEFT JOIN GE_ESC_Escola ESC ON uad.uad_codigo = esc.esc_codigo
	  WHERE     uad.ent_id = @ent_id
				AND tua_id = @tua_id
				AND uad_situacao = 1
				and dc_tipo_unidade_educacao = 'ESCOLA'
				AND sg_tp_escola IN ('EMEF','EMEFM','CEU EMEF','EMEBS','CIEJA',
									 'EMEI','CECI','CEMEI','CEI DIRET', --Adicionado by Rodrigo em 2016
									 'CCI/CIPS', 'CEI INDIR', 'CEU CEI', 'CEU EMEI', 'CR.P.CONV') --Adicionado by Pedro em 2017
	  GROUP BY 	uad.ent_id ,
				uad.uad_id ,
				tua_id ,
				uad_codigo ,
				rtrim(ltrim(esc_pr.sg_tp_escola)) + ' - ' + uad_nome ,
				uad_situacao,
				esc_pr.dc_tipo_dependencia_administrativa,
				sg_tp_escola, esc_controleSistema
	UNION
	  SELECT uad.ent_id, uad.uad_id, tua_id, uad_codigo,	'CEU GESTAO - ' + uad_nome as uad_nome,	uad_situacao,
			 CASE WHEN esc_pr.dc_tipo_dependencia_administrativa = 'MUNICIPAL' THEN 1
				  WHEN esc_pr.dc_tipo_dependencia_administrativa = 'PRIVADA'   THEN 2
			      ELSE 1
			  END AS tre_id, esc_controleSistema = 0, esc_terceirizada = 0
	    FROM SSO_SYS_UnidadeAdministrativa uad
		     INNER JOIN tmp_CoreSME_unidade_educacao_dados_gerais esc_pr ON uad.uad_codigo = esc_pr.cd_unidade_educacao
		     INNER JOIN UNIDADESADM_CEU_GESTAO_PTRF cg on cg.cd_unidade_educacao = esc_pr.cd_unidade_educacao
		     LEFT JOIN GE_ESC_Escola ESC ON uad.uad_codigo = esc.esc_codigo
	   WHERE uad.ent_id = @ent_id
			 AND tua_id = @tua_id
			 AND uad_situacao = 1
	   GROUP BY uad.ent_id, uad.uad_id,	tua_id, uad_codigo,	uad_nome, uad_situacao,
				esc_pr.dc_tipo_dependencia_administrativa, sg_tp_escola, esc_controleSistema
	UNION
	  SELECT uad.ent_id, uad.uad_id, tua_id, uad_codigo,	'E TECNICA - ' + uad_nome as uad_nome,	uad_situacao,
			 CASE WHEN esc_pr.dc_tipo_dependencia_administrativa = 'MUNICIPAL' THEN 1
				  WHEN esc_pr.dc_tipo_dependencia_administrativa = 'PRIVADA'   THEN 2
			      ELSE 1
			  END AS tre_id, esc_controleSistema = 0, esc_terceirizada = 0
	    FROM SSO_SYS_UnidadeAdministrativa uad
		     INNER JOIN tmp_CoreSME_unidade_educacao_dados_gerais esc_pr ON uad.uad_codigo = esc_pr.cd_unidade_educacao
		     LEFT JOIN GE_ESC_Escola ESC ON uad.uad_codigo = esc.esc_codigo
	   WHERE esc_pr.cd_unidade_educacao = '200242' 
	     AND tua_id = 'e33ef3ba-e4ca-479e-85f1-ed10fd2c0579'
		 AND uad_situacao = 1
	   GROUP BY uad.ent_id, uad.uad_id,	tua_id, uad_codigo,	uad_nome, uad_situacao,
				esc_pr.dc_tipo_dependencia_administrativa, sg_tp_escola, esc_controleSistema
	) AS _source
	ON (_source.ent_id = _target.ent_id
		AND _source.uad_id = _target.uad_id)
	WHEN MATCHED THEN
		UPDATE SET
			esc_codigo = _source.uad_codigo
			, esc_nome = _source.uad_nome
			, tre_id = _source.tre_id
			, esc_situacao = _source.uad_situacao
			, esc_controleSistema = _source.esc_controleSistema
			, esc_terceirizada = _source.esc_terceirizada
	WHEN NOT MATCHED THEN
		INSERT
		(
			ent_id
			, uad_id
			, esc_codigo
			, esc_nome
			, tre_id
			, esc_controleSistema
			, esc_funcionamentoInicio
			, esc_terceirizada
		)
		VALUES
		(
			_source.ent_id
			, _source.uad_id
			, _source.uad_codigo
			, _source.uad_nome
			, _source.tre_id
			, _source.esc_controleSistema
			, CAST('2013-01-01' as DATE)
			, _source.esc_terceirizada
		)
	WHEN NOT MATCHED BY SOURCE THEN
         UPDATE SET esc_situacao = 3;
	-----------------------------------/
	
	----Importa ESC_EscolaClassificacao. Decidi não deletar caso a classificação suma
	----Preciso confirmar os tipos de escola do BD_PRODAM que precisam estar em cada tipo de escola do SGP
	-- declare @ecv_id int
	-- select top 1 @ecv_id = ecv_id from GestaoPedagogica..ESC_EscolaClassificacaoVigencia where ecv_dataInicio >= '2017-01-01' order by ecv_dataInicio
	
	-- CREATE TABLE #ESC_EscolaClassificacao (esc_id int, tce_id int, ecv_id bigint)
	-- INSERT INTO #ESC_EscolaClassificacao (esc_id, tce_id, ecv_id)
	-- SELECT ESC.esc_id, isnull(tce.tce_id,1), @ecv_id as ecv_id
	-- FROM SSO_SYS_UnidadeAdministrativa uad
		 -- INNER JOIN tmp_CoreSME_unidade_educacao_dados_gerais esc_pr ON uad.uad_codigo = esc_pr.cd_unidade_educacao
		 -- INNER JOIN GE_ESC_Escola ESC ON uad.uad_codigo = esc.esc_codigo
		 -- LEFT JOIN GestaoPedagogica..ESC_TipoClassificacaoEscola tce 
				-- ON tce.tce_nome = CASE WHEN sg_tp_escola in ('CEI INDIR','CEI DIRET','CCI/CIPS','CR.P.CONV','CEU CEI') THEN 'CEI' 
									   -- WHEN sg_tp_escola in ('CEMEI','CECI') THEN 'CEMEI' 
									   -- WHEN sg_tp_escola in ('EMEI','CEU EMEI') THEN 'EMEI' 
									   -- ELSE sg_tp_escola END
			   -- AND tce.tce_situacao = 1
	-- WHERE uad.ent_id = @ent_id
	 -- AND tua_id = @tua_id
	 -- AND uad_situacao = 1
	 -- AND dc_tipo_unidade_educacao = 'ESCOLA'
	 -- AND sg_tp_escola IN ('EMEF','EMEFM','CEU EMEF','EMEBS','CIEJA',
						  -- 'EMEI','CECI','CEMEI','CEI DIRET', --Adicionado by Rodrigo em 2016
						  -- 'CCI/CIPS', 'CEI INDIR', 'CEU CEI', 'CEU EMEI', 'CR.P.CONV') --Adicionado by Pedro em 2017
	-- GROUP BY	ESC.esc_id, tce.tce_id

	-- UPDATE ESC_EscolaClassificacao 
	   -- SET tce_id = tmp.tce_id
	  -- FROM GestaoPedagogica..ESC_EscolaClassificacao
		   -- INNER JOIN #ESC_EscolaClassificacao tmp ON tmp.esc_id = ESC_EscolaClassificacao.esc_id 
												  -- AND tmp.tce_id <> ESC_EscolaClassificacao.tce_id

	-- INSERT INTO GestaoPedagogica..ESC_EscolaClassificacao (esc_id, tce_id, ecv_id)
	-- SELECT esc_id, tce_id, ecv_id
	  -- FROM #ESC_EscolaClassificacao
	 -- WHERE NOT EXISTS (SELECT ec.esc_id FROM GestaoPedagogica..ESC_EscolaClassificacao ec WHERE ec.esc_id = #ESC_EscolaClassificacao.esc_id)
	
	-- Importa ESC_UnidadeEscola
	MERGE INTO GE_ESC_UnidadeEscola _target
	USING
	(
		SELECT
			esc_id
			, esc_codigo
			, esc_nome
			, esc_situacao
		FROM
			GE_ESC_Escola
	) AS _source
	ON (_source.esc_id = _target.esc_id)
	WHEN NOT MATCHED THEN
		INSERT
		(
			esc_id
			, uni_codigo
			, uni_descricao
			, uni_situacao
			, uni_principal
		)
		VALUES
		(
			_source.esc_id
			, _source.esc_codigo
			, _source.esc_codigo
			, _source.esc_situacao
			, 1
		);
	-----------------------------------/
	
	-- Importa ACA_CalendarioEscola
	MERGE GE_ACA_CalendarioEscola _target
	USING
	(
		SELECT
			cal.cal_id
			, uni.esc_id
			, uni.uni_id
		FROM
			GE_ESC_UnidadeEscola uni
			, GE_ACA_CalendarioAnual cal
	) _source
	ON
	(_source.cal_id = _target.cal_id
	AND _source.esc_id = _target.esc_id
	AND _source.uni_id = _target.uni_id)
	WHEN NOT MATCHED THEN
		INSERT
		(
			cal_id
			, esc_id
			, uni_id
		)
		VALUES
		(
			_source.cal_id
			, _source.esc_id
			, _source.uni_id
		);
	
	DELETE FROM GE_ESC_EscolaHistorico

	INSERT INTO GE_ESC_EscolaHistorico 
	(esc_id, esh_codigo, esh_nome, esh_vigenciaInicio, esh_dataCodigo, esh_situacao, esh_dataCriacao, esh_dataAlteracao)
	select esc_id, esc_codigo, esc_nome, CAST('2013-01-01' as DATE), CAST('2013-01-01' as DATE), 1, GETDATE(), GETDATE()
	  from GE_ESC_Escola esc
	
	-- UPDATE FILTRO UA SUPERIOR NA TABELA DE ESCOLA
	-- Busca se sistema é configurado para filtrar escolas por UA Superior.
    DECLARE @filtrar BIT;
    SET @filtrar = ISNULL(
		(
			SELECT CAST(ISNULL(pac_valor, 'False') AS Bit)
			FROM GE_ACA_ParametroAcademico Pac WITH(NOLOCK)
			where 
			pac_chave = 'FILTRAR_ESCOLA_UA_SUPERIOR'
			AND pac_situacao <> 3
		)
	, 0)

	PRINT 'Filtrar: ' + cast(@filtrar as varchar(10));
	
	IF (@filtrar = 1)
	BEGIN
		-- Busca Tipo de Unidade para filtrar escolas.    
		DECLARE @tua_idUaSuperior UNIQUEIDENTIFIER;

		SELECT @tua_idUaSuperior = CAST(Pac.pac_valor AS UNIQUEIDENTIFIER)
		FROM GE_ACA_ParametroAcademico Pac WITH(NOLOCK)
		where 
		pac_chave = 'TIPO_UNIDADE_ADMINISTRATIVA_FILTRO_ESCOLA'
		AND pac_situacao <> 3    

		DECLARE @Escolas TABLE (ent_id UNIQUEIDENTIFIER, uad_id UNIQUEIDENTIFIER, esc_id INT);
	    
		INSERT INTO @Escolas (ent_id, uad_id, esc_id)
		SELECT ent_id, uad_id, esc_id
		FROM GE_ESC_Escola WITH(NOLOCK)
		WHERE esc_situacao <> 3

		; WITH UaSup AS (
			SELECT UA.ent_id, UA.uad_id, UA.uad_idSuperior, UA.tua_id, UA.uad_nome, Esc.esc_id
			FROM CoreSSO..SYS_UnidadeAdministrativa UA WITH(NOLOCK)
			INNER JOIN @Escolas Esc
				ON Esc.ent_id = UA.ent_id
				AND Esc.uad_id = UA.uad_id
			UNION ALL
			SELECT UA.ent_id, UA.uad_id, UA.uad_idSuperior, UA.tua_id, UA.uad_nome, UaSup.esc_id
			FROM CoreSSO..SYS_UnidadeAdministrativa UA WITH(NOLOCK)
			INNER JOIN UaSup UaSup
				ON UA.ent_id = UaSup.ent_id
				AND UA.uad_id = UaSup.uad_idSuperior
			)
		, UAPronta AS (
			select UA.ent_id, UA.uad_id, UA.uad_nome, UA.esc_id
			from UaSup UA
			where tua_id = @tua_idUaSuperior
		)
		--select * from UAPronta
		
		UPDATE GE_ESC_Escola
		SET uad_idSuperiorGestao = T.uad_id
		FROM UAPronta T
		INNER JOIN GE_ESC_Escola Esc WITH(NOLOCK)
			ON Esc.esc_id = T.esc_id

	END
	
	--INÍCIO PARTE QUE ATUALIZA ENDEREÇOS NAS TABELAS DO GesTAO
	CREATE TABLE #ENDERECOESCOLA (esc_id int, esc_codigo varchar(20), uep_id int, prd_id int, ped_id int, end_id uniqueidentifier)
	insert into #ENDERECOESCOLA
	select esc_id, esc_codigo, uep_id, prd_id, ped_id, end_id 
	  from (select esc.esc_id, esc.esc_codigo, uep.uep_id, prd.prd_id, ped.ped_id, uae.end_id,
				   ROW_NUMBER() OVER(PARTITION BY esc.esc_id, esc.esc_codigo, uep.uep_id, prd.prd_id  --, ped.ped_id
										 ORDER BY uae.end_id) as linha
			  from GE_ESC_Escola esc 
				   inner join GE_ESC_UnidadeEscola uni WITH(NOLOCK) on uni.esc_id = esc.esc_id
				   inner join SSO_SYS_UnidadeAdministrativaEndereco uae on uae.uad_id = esc.uad_id and uae.uae_situacao = 1
				   left join GE_ESC_UnidadeEscolaPredio uep WITH(NOLOCK) 
						  on uep.esc_id = esc.esc_id and uep.uni_id = uni.uni_id and uep_situacao = 1
				   left join GE_ESC_Predio prd WITH(NOLOCK) on prd.prd_id = uep.prd_id and prd_situacao = 1
				   left join GE_ESC_PredioEndereco ped WITH(NOLOCK) on ped.prd_id = prd.prd_id and ped_situacao = 1
			 where esc.esc_situacao = 1 ) a 
	 where a.linha = 1

	MERGE INTO GE_ESC_Predio _target
	USING (
		SELECT esc_id, esc_codigo, uep_id, prd_id, ped_id, end_id
		  FROM #ENDERECOESCOLA
		  ) as _source
	   ON (_source.prd_id = _target.prd_id)
	 WHEN MATCHED THEN
		UPDATE SET 
		   prd_descricao = _source.esc_codigo,
		   prd_dataAlteracao = getdate()
	 WHEN NOT MATCHED THEN
		INSERT
			(
				prd_descricao
				, prd_adaptado_especial
				, prd_situacao
				, prd_dataCriacao
				, prd_dataAlteracao
			)
			VALUES
			(
				_source.esc_codigo
				, 0
				, 1
				, GETDATE()
				, GETDATE()
			);
			
	delete from #ENDERECOESCOLA
	insert into #ENDERECOESCOLA
	select esc_id, esc_codigo, uep_id, prd_id, ped_id, end_id
	  from (select esc.esc_id, esc.esc_codigo, uep.uep_id, prd.prd_id, ped.ped_id, uae.end_id,
	               ROW_NUMBER() OVER (PARTITION BY esc.esc_id
                                ORDER BY uae.uae_dataAlteracao desc) AS row
	          from GE_ESC_Escola esc 
		           inner join GE_ESC_UnidadeEscola uni WITH(NOLOCK) on uni.esc_id = esc.esc_id
		           inner join SSO_SYS_UnidadeAdministrativaEndereco uae on uae.uad_id = esc.uad_id and uae.uae_situacao = 1
		           left join GE_ESC_UnidadeEscolaPredio uep WITH(NOLOCK) 
				   on uep.esc_id = esc.esc_id and uep.uni_id = uni.uni_id and uep_situacao = 1
		           left join GE_ESC_Predio prd WITH(NOLOCK) on prd.prd_descricao = esc.esc_codigo and prd_situacao = 1
		           left join GE_ESC_PredioEndereco ped WITH(NOLOCK) on ped.prd_id = prd.prd_id and ped_situacao = 1
	         where esc.esc_situacao = 1) predios
	 where ROW = 1
	 

	UPDATE GE_ESC_UnidadeEscolaPredio
	   SET prd_id = #ENDERECOESCOLA.prd_id, 
		   uep_principal = 1,
		   uep_dataAlteracao = GETDATE()
	  FROM GE_ESC_UnidadeEscolaPredio
		   inner join #ENDERECOESCOLA on GE_ESC_UnidadeEscolaPredio.esc_id = #ENDERECOESCOLA.esc_id
									 and GE_ESC_UnidadeEscolaPredio.uep_id = #ENDERECOESCOLA.uep_id
					
	insert into GE_ESC_UnidadeEscolaPredio 
	(esc_id, uni_id, prd_id, uep_principal, uep_situacao, uep_vigenciaInicio, uep_dataCriacao, uep_dataAlteracao)
	select esc_id, 1, prd_id, 1, 1, '2013-01-01', GETDATE(), GETDATE()
	 from #ENDERECOESCOLA 
	where uep_id is null and prd_id is not null

	UPDATE GE_ESC_PredioEndereco
	   SET ped_numero = uae.uae_numero,
		   ped_complemento = uae.uae_complemento,
		   ped_dataAlteracao = GETDATE()
	  from GE_ESC_PredioEndereco
		   inner join #ENDERECOESCOLA ee on ee.prd_id = GE_ESC_PredioEndereco.prd_id
		   inner join GE_ESC_Escola esc on esc.esc_id = ee.esc_id
		   inner join SSO_SYS_UnidadeAdministrativaEndereco uae on uae.uad_id = esc.uad_id and uae.uae_situacao = 1

	insert into GE_ESC_PredioEndereco 
	(prd_id, end_id, ped_numero, ped_complemento, ped_situacao, ped_dataCriacao, ped_dataAlteracao)
	select prd_id, uae.end_id , uae.uae_numero, uae.uae_complemento, 1, GETDATE(), GETDATE()
	  from #ENDERECOESCOLA ee
		   inner join GE_ESC_Escola esc on esc.esc_id = ee.esc_id
		   inner join CoreSSO..SYS_UnidadeAdministrativaEndereco uae on uae.uad_id = esc.uad_id and uae.uae_situacao = 1
	 where ped_id is null

	MERGE INTO GestaoFinanceira..SchoolType _target
	USING (	select uad.uad_id, esc.esc_codigo, tua.tua_id
			  from CoreSSO..SYS_UnidadeAdministrativa uad
				   INNER JOIN tmp_CoreSME_unidade_educacao_dados_gerais esc_pr ON uad.uad_codigo = esc_pr.cd_unidade_educacao
				   INNER JOIN GE_ESC_Escola ESC ON uad.uad_codigo = esc.esc_codigo and esc.esc_situacao = 1
				   inner join CoreSSO..SYS_TipoUnidadeAdministrativa tua on tua.tua_nome = esc_pr.sg_tp_escola
			 group by uad.uad_id, esc.esc_codigo, tua.tua_id 
			 union
			select uad.uad_id, uad.uad_codigo, tua.tua_id
			  from CoreSSO..SYS_UnidadeAdministrativa uad
				   INNER JOIN tmp_CoreSME_unidade_educacao_dados_gerais esc_pr ON uad.uad_codigo = esc_pr.cd_unidade_educacao
				   inner join UNIDADESADM_CEU_GESTAO_PTRF cg on cg.cd_unidade_educacao = esc_pr.cd_unidade_educacao
				   inner join CoreSSO..SYS_TipoUnidadeAdministrativa tua on tua.tua_nome = 'CEU GESTAO'
			 where uad.uad_situacao <> 3
			group by uad.uad_id, uad.uad_codigo, tua.tua_id
		  ) as _source
	   ON (_source.uad_id = _target.Id)
	 WHEN MATCHED THEN
		UPDATE SET 
		   Code = _source.esc_codigo,
		   AdministrativeUnitTypeId = tua_id
	 WHEN NOT MATCHED THEN
		INSERT (Id, Code, AdministrativeUnitTypeId)
		VALUES (_source.uad_id, _source.esc_codigo, _source.tua_id);
	 
END
GO

/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_PES_Pessoa_IMPORT]    Script Date: 05/12/2014 10:35:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_QuadroHorario_PES_Pessoa_IMPORT]
	@ent_id UNIQUEIDENTIFIER ,
    @tipo_cpf UNIQUEIDENTIFIER ,
    @sis_id INT ,
    @gru_id UNIQUEIDENTIFIER
AS
BEGIN
    DECLARE @gru_idDiretor UNIQUEIDENTIFIER, @gru2_idDiretor UNIQUEIDENTIFIER, @gru_idDocente UNIQUEIDENTIFIER, @gru_idSecrInfantil UNIQUEIDENTIFIER,
    @sis_idManutencao INT,	@gru_idManutencao UNIQUEIDENTIFIER, @gru_idCoordPedag UNIQUEIDENTIFIER,
    @gru_cj UNIQUEIDENTIFIER, @gru_id_AD UNIQUEIDENTIFIER, @sis_sgp int, @grp_supEscolar UNIQUEIDENTIFIER,
    @grp_supTecnico UNIQUEIDENTIFIER, @gru_id_SEC UNIQUEIDENTIFIER, @gru_id_DRE UNIQUEIDENTIFIER, 
    @gru_idPlateia UNIQUEIDENTIFIER, @gru_idDocenteQuadro UNIQUEIDENTIFIER
    
    DECLARE @SourceID UNIQUEIDENTIFIER, @PackageLogID INT
    SELECT @PackageLogID = MAX(PackageLogID) FROM PackageLog
    
    SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Pessoas - Inicio do Processo', @SourceID, getdate())

    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
	SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Carregas variáveis e cria tabelas temporárias', @SourceID, getdate())
    
    DECLARE @UsuarioTable TABLE
     (usu_id UNIQUEIDENTIFIER,
      usu_login VARCHAR(500) COLLATE Latin1_General_CI_AS)
    
    -- Id de sistema SGP
    select @sis_sgp = sis_id FROM SSO_SYS_Sistema WHERE sis_nome = ' SGP'
    
	-- Id do sistema de Manutenção
	SELECT  @sis_idManutencao = sis_id FROM SSO_SYS_Sistema WHERE sis_nome = 'Manutenção'
    
	-- ID do Grupo Manutenção
	SELECT @gru_idManutencao = gru_idUsadoIntegracao FROM DEPARA_GRUPOS_INTEGRACAO 
     WHERE nomeUsadoIntegracao = 'Grupo Manutenção' and sis_id = @sis_idManutencao
	
	if db_id('PlateiaSMESP') is not null
	BEGIN
		-- ID do Grupo do Plateia
		SELECT @gru_idPlateia = CAST([Value] as VARCHAR(8000)) FROM PlateiaSMESP..Parameter WHERE [key] = 'DEFAULT_USER_GROUP'
	END
	
	-- Insere na tabela temporária os usuários que não poderão ser excluídos, pois esses não foram incluídos pela importação.
	INSERT INTO @UsuarioTable (usu_id,usu_login)
    SELECT usu.usu_id, usu.usu_login
      FROM SSO_SYS_Usuario usu
           INNER JOIN SSO_SYS_UsuarioGrupo usg ON usu.usu_id = usg.usu_id
           INNER JOIN SSO_SYS_Grupo gru ON usg.gru_id = gru.gru_id
     WHERE gru.sis_id = @sis_idManutencao AND usg.gru_id = @gru_idManutencao
     GROUP BY usu.usu_id, usu.usu_login
	
	--> Carrega valor para ID Entidade
    IF @ent_id IS NULL
       SET @ent_id = (SELECT TOP 1 ent_id FROM SSO_SYS_Entidade WHERE ent_sigla = 'SMESP')
	
	--> Carrega ID do Tipo Documento CPF
    IF @tipo_cpf IS NULL 
       SET @tipo_cpf = (SELECT TOP 1 tdo_id FROM SSO_SYS_TipoDocumentacao WHERE tdo_sigla = 'CPF')
	
    IF @sis_id IS NULL
       SET @sis_id = (SELECT  sis_id FROM SSO_SYS_Sistema WHERE sis_nome = 'Quadro de horários')
	
	--> Carrega ID do grupo Diretores
    SET @gru_idDiretor = (SELECT gru_idUsadoIntegracao FROM DEPARA_GRUPOS_INTEGRACAO 
						   WHERE nomeUsadoIntegracao = 'quadro_ue' and sis_id = @sis_id)
    
    --> Carrega ID do grupo Administrador na UE para os Diretores	
    SET @gru2_idDiretor = (SELECT gru_idUsadoIntegracao FROM DEPARA_GRUPOS_INTEGRACAO 
						   WHERE nomeUsadoIntegracao = 'Diretor Escolar' and sis_id = @sis_sgp)
	
	--> Carrega ID do grupo Assistente de Diretor na UE	
    SET @gru_id_AD = (SELECT gru_idUsadoIntegracao FROM DEPARA_GRUPOS_INTEGRACAO 
					   WHERE nomeUsadoIntegracao = 'Assistente de Diretor na UE' and sis_id = @sis_sgp)
	
    --> Carrega ID do grupo Coordenador Pedagógico para os Coordenadores Pedagógicos
    SET @gru_idCoordPedag = (SELECT gru_idUsadoIntegracao FROM DEPARA_GRUPOS_INTEGRACAO 
							  WHERE nomeUsadoIntegracao = 'Coordenador Pedagógico' and sis_id = @sis_sgp)
	
    SET @gru_idDocente = (SELECT gru_idUsadoIntegracao FROM DEPARA_GRUPOS_INTEGRACAO 
						   WHERE nomeUsadoIntegracao = 'Docente' and sis_id = @sis_sgp)
    
	SET @gru_idDocenteQuadro = (SELECT gru_idUsadoIntegracao FROM DEPARA_GRUPOS_INTEGRACAO 
								 WHERE nomeUsadoIntegracao = 'Professores' and sis_id = 142)
	
	SET @gru_idSecrInfantil = (SELECT gru_idUsadoIntegracao FROM DEPARA_GRUPOS_INTEGRACAO 
							    WHERE nomeUsadoIntegracao = 'Secretário Escolar Infantil' and sis_id = @sis_sgp)
	
    SET @gru_cj = (SELECT gru_idUsadoIntegracao FROM DEPARA_GRUPOS_INTEGRACAO 
					WHERE nomeUsadoIntegracao = 'Docente - CJ e outros' and sis_id = @sis_sgp)
    
    SET @grp_supEscolar = (SELECT gru_idUsadoIntegracao FROM DEPARA_GRUPOS_INTEGRACAO 
							WHERE nomeUsadoIntegracao = 'Supervisor escolar' and sis_id = @sis_sgp)
    
    SET @grp_supTecnico = (SELECT gru_idUsadoIntegracao FROM DEPARA_GRUPOS_INTEGRACAO 
							WHERE nomeUsadoIntegracao = 'Supervisor Técnico' and sis_id = @sis_sgp)
    
    --> Carrega ID do grupo Coordenador Pedagógico para Secretário Escolar
    SET @gru_id_SEC = (SELECT gru_idUsadoIntegracao FROM DEPARA_GRUPOS_INTEGRACAO 
						WHERE nomeUsadoIntegracao = 'Secretário Escolar' and sis_id = @sis_sgp)

    --> Carrega ID do grupo Diretor Regional
    SET @gru_id_DRE = (SELECT gru_idUsadoIntegracao FROM DEPARA_GRUPOS_INTEGRACAO 
						WHERE nomeUsadoIntegracao = 'Diretor Regional' and sis_id = @sis_sgp)
    
    --> Tabelas auxiliares
    CREATE TABLE #pessoaDoc_Table
        (pes_id UNIQUEIDENTIFIER,
         pes_cpf VARCHAR(50) COLLATE Latin1_General_CI_AS)
	
    CREATE TABLE #servidor
         (pes_id UNIQUEIDENTIFIER,
          pes_nome VARCHAR(200) COLLATE Latin1_General_CI_AS,
          pes_cpf VARCHAR(11) COLLATE Latin1_General_CI_AS,
          pes_dataNascimento DATE,
          pes_sexo TINYINT,
          pes_situacao TINYINT,
          pes_integridade TINYINT,
          pes_dataCriacao DATETIME,
          pes_dataAlteracao DATETIME,
          col_dataInicio DATETIME)
            
    CREATE TABLE #usuario_table
         (usu_id UNIQUEIDENTIFIER,
          usu_login VARCHAR(50) COLLATE Latin1_General_CI_AS)
    
    --> Alimenta tabela auxiliar
    INSERT INTO #servidor (pes_id, pes_nome, pes_cpf)
    SELECT pes_id, nm_pessoa, cd_cpf_pessoa
      FROM (SELECT tmp.cd_cpf_pessoa, MAX(tmp.nm_pessoa) AS nm_pessoa,
                   CAST(MAX(CAST(usu.pes_id AS VARCHAR(100))) AS UNIQUEIDENTIFIER) AS pes_id
              FROM tmp_DiarioClasse_cadastro_professor tmp
                   LEFT JOIN CoreSSO..SYS_Usuario usu
                    ON usu.usu_login COLLATE Latin1_General_CI_AI = tmp.rf COLLATE Latin1_General_CI_AI
                   AND usu.usu_situacao <> 3
             GROUP BY  tmp.cd_cpf_pessoa
            UNION
            SELECT tmp.cd_cpf_pessoa, MAX(tmp.nm_pessoa) AS nm_pessoa,
                   CAST(MAX(CAST(usu.pes_id AS VARCHAR(100))) AS UNIQUEIDENTIFIER) AS pes_id
              FROM tmp_DiarioSupervisor_servidor tmp
                   LEFT JOIN CoreSSO..SYS_Usuario usu
                    ON usu.usu_login COLLATE Latin1_General_CI_AI = tmp.cd_registro_funcional COLLATE Latin1_General_CI_AI
                   AND usu.usu_situacao <> 3
			 WHERE tmp.cd_cpf_pessoa is not null -- não criar as pessoas q não tem CPF. Em 02/02/2017 eram apenas 57 casos e estavam causando problemas de usuarios e pessoas duplicadas
             GROUP BY  tmp.cd_cpf_pessoa) AS _servidor
     GROUP BY pes_id, nm_pessoa, cd_cpf_pessoa
	
	--> Atualiza tabela auxiliar
    UPDATE #servidor
       SET pes_sexo = CASE cd_sexo_pessoa WHEN 'M' THEN 1 WHEN 'F' THEN 2 ELSE NULL END,
           pes_dataNascimento = dt_nascimento_pessoa
      FROM #servidor INNER JOIN tmp_DiarioSupervisor_servidor
           ON #servidor.pes_cpf = tmp_DiarioSupervisor_servidor.cd_cpf_pessoa
	
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
	SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Cria as pessoas que não existirem', @SourceID, getdate())
	
	update #servidor set pes_id = newid()
	 where pes_id is null
	
	delete from #pessoaDoc_Table
	
	insert into #pessoaDoc_Table (pes_id, pes_cpf)
	select pes_id, pes_cpf 
	  from #servidor
     where not exists (select pes.pes_id from SSO_PES_Pessoa pes where pes.pes_id = #servidor.pes_id)
	 
	insert into #pessoaDoc_Table (pes_id, pes_cpf)
	select #servidor.pes_id, #servidor.pes_cpf 
	  from #servidor
		   inner join SSO_PES_Pessoa pes on pes.pes_id = #servidor.pes_id
		   left join SSO_PES_PessoaDocumento psd on psd.pes_id = #servidor.pes_id and psd.tdo_id = @tipo_cpf and psd.psd_situacao <> 3
     where (psd.psd_numero is null or #servidor.pes_cpf <> psd.psd_numero)
	 
	--> Tabela PES_Pessoa
    INSERT INTO SSO_PES_Pessoa (pes_nome, pes_dataNascimento, pes_sexo, pes_situacao, pes_dataCriacao, pes_dataAlteracao, pes_integridade)
    SELECT pes_nome, pes_dataNascimento, pes_sexo, 1, GETDATE(), GETDATE(), 1
      FROM #servidor
     where not exists (select pes.pes_id from SSO_PES_Pessoa pes where pes.pes_id = #servidor.pes_id)
	
	--> Tabela PES_PessoaDocumento
    MERGE INTO SSO_PES_PessoaDocumento _target
    USING (SELECT pes_id, pes_cpf FROM #pessoaDoc_Table 
			where pes_cpf is not null and exists (select pes.pes_id from SSO_PES_Pessoa pes where pes.pes_id = #pessoaDoc_Table.pes_id) ) AS _source
     ON _source.pes_id = _target.pes_id
    AND _target.tdo_id = @tipo_cpf
    WHEN NOT MATCHED THEN
		 INSERT (pes_id, tdo_id, psd_numero, psd_situacao, psd_dataCriacao, psd_dataAlteracao)
         VALUES (_source.pes_id, @tipo_cpf, _source.pes_cpf, 1, GETDATE(), GETDATE())
    WHEN MATCHED AND _target.psd_numero <> _source.pes_cpf THEN
         UPDATE SET psd_numero = _source.pes_cpf,
                    psd_situacao = 1,
                    psd_dataAlteracao = getdate();
	
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
	SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Atualiza o pes_id nas temporárias', @SourceID, getdate())
	
    UPDATE tmp_DiarioClasse_cadastro_professor
       SET pes_id = u.pes_id
      FROM tmp_DiarioClasse_cadastro_professor
	       INNER JOIN sso_sys_usuario u
           ON u.usu_login = tmp_DiarioClasse_cadastro_professor.rf
     where usu_situacao <> 3	
    
    UPDATE tmp_DiarioSupervisor_servidor
       SET pes_id = u.pes_id
	  FROM tmp_DiarioSupervisor_servidor
           INNER JOIN sso_sys_usuario u
           ON u.usu_login = tmp_DiarioSupervisor_servidor.cd_registro_funcional
     where usu_situacao <> 3
	
    UPDATE tmp_DiarioClasse_cargos
       SET pes_id = u.pes_id
	  FROM tmp_DiarioClasse_cargos
           INNER JOIN sso_sys_usuario u
           ON u.usu_login = tmp_DiarioClasse_cargos.cd_registro_funcional
     where usu_situacao <> 3	
	
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
	SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Cria novos usuários', @SourceID, getdate())
	
	--> Tabela SYS_Usuario
    MERGE INTO SSO_SYS_Usuario _target
    USING (select isnull(usu_id, newid()) usu_id, dados.usu_login, dados.usu_senha, dados.pes_id, dados.ent_id,
                  dados.usu_situacao, dados.usu_criptografia, GETDATE() usu_dataCriacao, GETDATE() usu_dataAlteracao
             from (SELECT usu_login, usu_senha, pes_id, ent_id, usu_situacao, usu_criptografia,
                          GETDATE() usu_dataCriacao, GETDATE() usu_dataAlteracao
                     FROM (SELECT DISTINCT tmp.rf AS usu_login, tmp.senha AS usu_senha, tmp.pes_id,
                                  @ent_id ent_id, 5 usu_situacao, 3 usu_criptografia
                             FROM tmp_DiarioClasse_cadastro_professor tmp
                           UNION
                           SELECT DISTINCT tmp.cd_registro_funcional AS usu_login, tmp.senha AS usu_senha,
                                  tmp.pes_id, @ent_id ent_id, 5 usu_situacao, 3 usu_criptografia
                             FROM tmp_DiarioSupervisor_servidor tmp
							WHERE tmp.cd_cpf_pessoa is not null --adicionada em 02/02/2017 pois não foi criada pessoa por causa do cpf nulo, o que fazia com que o merge ficasse criando usuarios para esta pessoa desnecessariamente
						   ) usuario
                    GROUP BY usu_login, usu_senha, pes_id, ent_id, usu_situacao, usu_criptografia) dados
                  LEFT JOIN CoreSSO..SYS_Usuario usu
                   ON dados.pes_id = usu.pes_id
                  AND dados.usu_login = usu.usu_login
                  AND usu.usu_situacao <> 3
		   where dados.pes_id is not null) AS _source
     ON _source.usu_id = _target.usu_id
    WHEN NOT MATCHED THEN
         INSERT (usu_id, usu_login, usu_senha, pes_id, ent_id, usu_situacao,
                 usu_criptografia, usu_dataCriacao, usu_dataAlteracao)
         VALUES (_source.usu_id, _source.usu_login, _source.usu_senha, _source.pes_id, _source.ent_id,
                 _source.usu_situacao, _source.usu_criptografia, _source.usu_dataCriacao, _source.usu_dataAlteracao)
    OUTPUT INSERTED.usu_id, INSERTED.usu_login
      INTO #usuario_table ;
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
	SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Cria usuários do platéia', @SourceID, getdate())
	
	if db_id('PlateiaSMESP') is not null
	BEGIN
	
		--> repetindo o MERGE acima para a tabela User do Plateia
		MERGE INTO PlateiaSMESP..[User] _target
		USING (SELECT usu.usu_id, pes.pes_nome, usu.usu_login, usu.usu_email, usu.usu_situacao, 
					  GETDATE() usu_dataCriacao, GETDATE() usu_dataAlteracao, usu.ent_id, usu.usu_senha, 
					  usu.usu_criptografia, dados.pes_id
				 FROM (SELECT usu_login, usu_senha, pes_id, ent_id, usu_situacao, usu_criptografia,
							  GETDATE() usu_dataCriacao, GETDATE() usu_dataAlteracao
						 FROM (SELECT DISTINCT tmp.rf AS usu_login, tmp.senha AS usu_senha, tmp.pes_id,
									  @ent_id ent_id, 5 usu_situacao, 3 usu_criptografia
								 FROM tmp_DiarioClasse_cadastro_professor tmp
							   UNION
							   SELECT DISTINCT tmp.cd_registro_funcional AS usu_login, tmp.senha AS usu_senha,
									  tmp.pes_id, @ent_id ent_id, 5 usu_situacao, 3 usu_criptografia
								 FROM tmp_DiarioSupervisor_servidor tmp) usuario
						GROUP BY usu_login, usu_senha, pes_id, ent_id, usu_situacao, usu_criptografia) dados
					  INNER JOIN CoreSSO..SYS_Usuario usu
							  ON dados.pes_id = usu.pes_id
							 AND dados.usu_login = usu.usu_login
							 AND usu.usu_situacao <> 3
					  INNER JOIN CoreSSO..PES_Pessoa pes 
							  ON pes.pes_id = usu.pes_id) AS _source
		 ON _source.usu_id = _target.Id
		WHEN NOT MATCHED THEN
			 INSERT (Id, Name, RF, Email, State, CreateDate, UpdateDate, EntityId, Login, Password, Crypt, IsAdmin)
			 VALUES (_source.usu_id, _source.pes_nome, _source.usu_login, _source.usu_email, _source.usu_situacao, 
					 _source.usu_dataCriacao, _source.usu_dataAlteracao, _source.ent_id, _source.usu_login, 
					 _source.usu_senha, _source.usu_criptografia, 0)
		WHEN MATCHED THEN
			 UPDATE SET State = 1, 
						Name = _source.pes_nome,
						Password = _source.usu_senha,
						Crypt = _source.usu_criptografia, 
						UpdateDate = CASE WHEN (_source.pes_nome = Name) and 
											   (_source.usu_senha = Password) and 
											   (_source.usu_criptografia = Crypt)
													  THEN _target.UpdateDate
												 ELSE GETDATE() END;
												 
		
		MERGE INTO CoreSSO..SYS_UsuarioGrupo			   AS target
		USING ( SELECT pu.id
					  FROM PlateiaSMESP..[User]       AS pu 
					  INNER JOIN CoreSSO..SYS_Usuario AS u
					  ON u.usu_id = pu.id)					AS source
		ON source.id = target.usu_id 
			AND target.gru_id = @gru_idPlateia
		WHEN MATCHED AND usg_situacao <> 1 
			THEN
				UPDATE
					SET usg_situacao = 1
				WHEN NOT MATCHED 
								THEN
									  INSERT (usu_id , gru_id , usg_situacao)
									  VALUES ( source.id , @gru_idPlateia, 1);

		UPDATE PlateiaSMESP..[User] 
		   SET IsAdmin = 1, UpdateDate = GETDATE()
		 WHERE exists (select ug.usu_id
						 from CoreSSO..SYS_UsuarioGrupo ug
							  inner join CoreSSO..SYS_Grupo gru 
									  on gru.gru_id = ug.gru_id and gru.gru_situacao = 1
									 and gru.sis_id = 215 and gru.vis_id = 1
						where ug.usu_id = [User].Id )

		--adicionada pois tem um job que roda de tempos em tempos, pra ele não precisar atualizar novamente todos os usuários q foram atualizados a noite
		update DataUltimoUpdateUsersPlateia set dataUltimaAtualizacao = GETDATE()
    END
	
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
	SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Insere novos usuários no NewUsers', @SourceID, getdate())
	
    INSERT INTO SSO_NewUsers (usu_id, usu_login, usu_status_sinc)
    SELECT u.usu_id, u.usu_login, 1
      FROM #usuario_table u LEFT JOIN SSO_NewUsers n
           ON n.usu_login = u.usu_login
     WHERE n.usu_login IS NULL
	
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
	SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Atualiza o pes_id nas temporárias - parte 2', @SourceID, getdate())
	
	--> Updates no campo pes_id das tabelas temporárias e sinonimo sso_sys_usuario
	UPDATE tmp_DiarioClasse_cadastro_professor
       SET pes_id = tmp.pes_id
      FROM tmp_DiarioClasse_cadastro_professor prof
           INNER JOIN #pessoaDoc_Table tmp ON tmp.pes_cpf = prof.cd_cpf_pessoa
     WHERE prof.pes_id IS NULL
	   and exists (select pes.pes_id from SSO_PES_Pessoa pes where pes.pes_id = tmp.pes_id)
    
    UPDATE tmp_DiarioSupervisor_Servidor
       SET pes_id = tmp.pes_id
      FROM tmp_DiarioSupervisor_Servidor serv
           INNER JOIN #pessoaDoc_Table tmp ON tmp.pes_cpf = serv.cd_cpf_pessoa
     WHERE serv.pes_id IS NULL
	   and exists (select pes.pes_id from SSO_PES_Pessoa pes where pes.pes_id = tmp.pes_id)
    
    UPDATE tmp_DiarioClasse_cargos
       SET pes_id = tmp.pes_id
      FROM tmp_DiarioClasse_cargos crg
           INNER JOIN #pessoaDoc_Table tmp ON tmp.pes_cpf = crg.cd_cpf_pessoa
     WHERE crg.pes_id IS NULL
	   and exists (select pes.pes_id from SSO_PES_Pessoa pes where pes.pes_id = tmp.pes_id)
    
    UPDATE sso_sys_usuario
       SET pes_id = tmp.pes_id
      FROM sso_sys_usuario usu
           INNER JOIN tmp_DiarioClasse_cadastro_professor tmp ON tmp.rf = usu.usu_login
	
    UPDATE sso_sys_usuario
       SET pes_id = tmp.pes_id
      FROM sso_sys_usuario usu
           INNER JOIN tmp_DiarioSupervisor_Servidor tmp ON tmp.cd_registro_funcional = usu.usu_login
	
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
	SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Atualiza Professores do Quadro de horário', @SourceID, getdate())
	
    IF @gru_id IS NOT NULL
    BEGIN
	--> Tabela SYS_UsuarioGrupo
		
		--	Inativa todos do grupo de PROFESSOR. 
        UPDATE SSO_SYS_UsuarioGrupo        
           SET usg_situacao = 3
          FROM SSO_SYS_UsuarioGrupo ug
               LEFT JOIN @UsuarioTable ust ON ug.usu_id = ust.usu_id
         WHERE ug.gru_id = @gru_id
           AND @gru_id IS NOT NULL 
           AND ust.usu_id IS NULL
        
        MERGE INTO SSO_SYS_UsuarioGrupo _target
        USING (SELECT usu.usu_id, @gru_id AS gru_id, usu.pes_id
                 FROM tmp_DiarioClasse_cadastro_professor tmp
                      INNER JOIN sso_sys_usuario usu
                       ON usu.usu_login COLLATE Latin1_General_CI_AI = tmp.rf COLLATE Latin1_General_CI_AI
                      AND tmp.pes_id = usu.pes_id
                      AND usu.usu_situacao <> 3
                GROUP BY  usu.usu_id, usu.pes_id) _source
         ON _source.usu_id = _target.usu_id
        AND _source.gru_id = _target.gru_id
        WHEN NOT MATCHED THEN
		     INSERT (usu_id, gru_id, usg_situacao)
		     VALUES (_source.usu_id, _source.gru_id, 1)
        WHEN MATCHED THEN
             UPDATE SET usg_situacao = 1;
	
    	--> SYS_UsuarioGrupoUA
        CREATE TABLE #usuarioProfessor
           (usu_id UNIQUEIDENTIFIER,
            gru_id UNIQUEIDENTIFIER,
            uad_id UNIQUEIDENTIFIER,
            pes_id UNIQUEIDENTIFIER)
    
        INSERT INTO #usuarioProfessor
        SELECT usu.usu_id, @gru_id, esc.uad_id, usu.pes_id
          FROM tmp_DiarioClasse_cadastro_professor tmp
               INNER JOIN sso_sys_usuario usu
                ON usu.usu_login COLLATE Latin1_General_CI_AI = tmp.rf COLLATE Latin1_General_CI_AI
               AND tmp.pes_id = usu.pes_id
               AND usu.usu_situacao <> 3
               INNER JOIN GE_ESC_Escola esc
                ON esc.ent_id = @ent_id
               AND esc_codigo COLLATE Latin1_General_CI_AS = tmp.cd_escola COLLATE Latin1_General_CI_AS
			   AND esc.esc_situacao <> 3
         GROUP BY  usu.usu_id, esc.uad_id, usu.pes_id
    
	    --> Apaga todos os registros em SYS_UsuarioGrupoUA em que o usu_id e gru_id estejam vindo do BD_PRODAM e que não estejam no grupo Manutencao
        DELETE SSO_SYS_UsuarioGrupoUA
          FROM SSO_SYS_UsuarioGrupoUA ugu
               INNER JOIN #usuarioProfessor usp
                ON ugu.usu_id = usp.usu_id
               AND ugu.gru_id = usp.gru_id
               LEFT JOIN @UsuarioTable u
                ON u.usu_id = ugu.usu_id
               AND @gru_idManutencao = ugu.gru_id
         WHERE u.usu_id IS NULL
	
    	--> SYS_UsuarioGrupoUA
	    -- Apenas inserção pois o Delete já é feito acima, garantindo assim qualquer atualização.	
        INSERT SSO_SYS_UsuarioGrupoUA (usu_id, gru_id, ent_id, uad_id)
        SELECT usu.usu_id, @gru_id, @ent_id, usu.uad_id
          FROM #usuarioProfessor usu
         GROUP BY usu.usu_id, usu.uad_id, usu.pes_id              
    END
	
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
	SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Atualiza Docente - CJ e outros do SGP', @SourceID, getdate())
	
	-- Cadastra as permissões para os docentes que não estão na v_cadastro_professor
    IF @gru_cj IS NOT NULL
    BEGIN
	--> Tabela SYS_UsuarioGrupo
       CREATE TABLE #usuario_doc_cj
         (usu_id UNIQUEIDENTIFIER,
          gru_id UNIQUEIDENTIFIER,
          pes_id UNIQUEIDENTIFIER)
       
       --> Grupo 'Coordenador Pedagógico'
       INSERT INTO #usuario_doc_cj
       SELECT usu.usu_id, @gru_cj AS gru_id, usu.pes_id
         FROM (select distinct pes_id, ds.cd_registro_funcional
                 from tmp_DiarioSupervisor_Servidor ds
                      inner join bd_prodam..v_cargobase_mstech cb
                      on ds.cd_registro_funcional = cb.cd_registro_funcional 
                      inner join GestaoPedagogica..RHU_Cargo 
                       on cb.cd_cargo = RHU_Cargo.crg_codigo
                      and isnull(cb.cd_situacao_funcional,1) = RHU_Cargo.tvi_id
                      INNER JOIN GE_RHU_ColaboradorCargo coc
                       ON ds.cd_registro_funcional = coc.coc_matricula
                      AND RHU_Cargo.crg_id = coc.crg_id
                      AND 1 = coc.coc_situacao
                where crg_situacao <> 3 and crg_cargoDocente = 1
                  and dc_cargo <> 'COORDENADOR PEDAGOGICO'
                  and ds.cd_registro_funcional not in
                      (select rf
                         from (select prf.rf, gc.cd_escola
                                 from BD_PRODAM..v_cadastro_professor prf
                                      inner join BD_PRODAM..v_grade_curricular gc
                                      on prf.rf = gc.rf
                                      inner join DEPARA_DISCIPLINAS dd
                                      on gc.Cod_Comp_Curr = dd.cd_componente_curricular
                                      inner join BD_PRODAM..v_unidade_educacao_dados_gerais esc
                                      on gc.cd_escola = esc.cd_unidade_educacao
                                where esc. dc_tipo_unidade_educacao = 'ESCOLA' 
                                  and esc.sg_tp_escola not in ('EMEF','EMEFM','CEU EMEF','EMEBS','CIEJA',
									 'EMEI','CECI','CEMEI','CEI DIRET', 'CCI/CIPS', 'CEI INDIR', 'CEU CEI', 'CEU EMEI', 'CR.P.CONV')
                                group by prf.rf, gc.cd_escola) prof
                        where prof.rf = ds.cd_registro_funcional
                          and prof.cd_escola = cb.lotacao)) tmp
              INNER JOIN sso_sys_usuario usu
               ON usu.usu_login COLLATE Latin1_General_CI_AI = tmp.cd_registro_funcional COLLATE Latin1_General_CI_AI
              AND tmp.pes_id = usu.pes_id
              AND usu.usu_situacao <> 3
        WHERE usu.usu_id not in
              (select usu_id from SSO_SYS_UsuarioGrupo usg
                where usg.usu_id = usu.usu_id
                  and usg.gru_id = @gru_idDocente
                  and usg_situacao = 1)
        GROUP BY usu.usu_id, usu.pes_id
	   
       MERGE INTO SSO_SYS_UsuarioGrupo _target
       USING (SELECT usu_id, gru_id, pes_id
              FROM #usuario_doc_cj
             GROUP BY usu_id, gru_id, pes_id) _source
        ON _source.usu_id = _target.usu_id
       AND _source.gru_id = _target.gru_id
       WHEN NOT MATCHED THEN
            INSERT (usu_id, gru_id, usg_situacao)
	        VALUES (_source.usu_id, _source.gru_id, 1) 
	   WHEN MATCHED THEN
            UPDATE SET usg_situacao = 1
	   WHEN NOT MATCHED BY SOURCE AND _target.gru_id = @gru_cj THEN
            UPDATE SET usg_situacao = 3;
       
       -- Manutenção da tabela SSIS_LoginImportado
       MERGE SSIS_LoginImportado AS _target
       USING  (SELECT usu.usu_id, usu.usu_login, tmp.gru_id
                 FROM #usuario_doc_cj tmp WITH ( NOLOCK )
                      INNER JOIN SSO_SYS_Usuario usu WITH ( NOLOCK )
                      ON tmp.usu_id = usu.usu_id
                GROUP BY usu.usu_id, usu.usu_login, tmp.gru_id) AS _source
        ON _source.usu_id = _target.usu_id
       AND _source.usu_login = _target.ssi_login
       AND _source.gru_id = _target.gru_id
       WHEN NOT MATCHED THEN
	        INSERT (usu_id, ssi_login, gru_id, ssi_situacao)
            VALUES (_source.usu_id, _source.usu_login, _source.gru_id, 1)
       WHEN MATCHED AND _target.ssi_situacao = 3 AND _target.gru_id = @gru_cj THEN
	        UPDATE SET ssi_situacao = 1 ,
                       ssi_dataAlteracao = GETDATE()
       WHEN NOT MATCHED BY SOURCE AND _target.ssi_situacao = 1 AND _target.gru_id = @gru_cj THEN
	        UPDATE SET ssi_situacao = 3, ssi_dataAlteracao = GETDATE();
	   
       -- UsuarioGrupo
       -- Deleta a relação UsuarioGrupo para os registros que estão na tmp de servidores importados automaticamente
       DELETE ug
         FROM SSO_SYS_UsuarioGrupo ug
              INNER JOIN SSIS_LoginImportado lo
               ON ug.usu_id = lo.usu_id
              AND ug.gru_id = lo.gru_id
        WHERE lo.gru_id = @gru_cj
          AND lo.ssi_situacao = 3
    END
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
	SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Atualiza Diretor no SGP e Quadro de horários', @SourceID, getdate())
	
	--> Cadastra os grupos dos diretores	
    IF (@gru_idDiretor IS NOT NULL) OR (@gru2_idDiretor IS NOT NULL)
    BEGIN
	--> Atribui para uma temp todos os diretores que serão importados para UsuarioGrupoUA
        CREATE TABLE #usuarioDiretor
          (usu_id UNIQUEIDENTIFIER,
           gru_id UNIQUEIDENTIFIER,
           uad_id UNIQUEIDENTIFIER,
           pes_id UNIQUEIDENTIFIER)
        
        IF @gru_idDiretor IS NOT NULL
           INSERT INTO #usuarioDiretor
           SELECT usu.usu_id, @gru_idDiretor AS gru_id, esc.uad_id, usu.pes_id
             FROM tmp_DiarioSupervisor_servidor tmp
                  INNER JOIN sso_sys_usuario usu
                   ON usu.usu_login COLLATE Latin1_General_CI_AI = tmp.cd_registro_funcional COLLATE Latin1_General_CI_AI
                  AND tmp.pes_id = usu.pes_id
                  AND usu.usu_situacao <> 3
                  INNER JOIN tmp_DiarioClasse_cargos crg
                   ON tmp.cd_registro_funcional = crg.cd_registro_funcional
                  AND crg.cd_cargo IN (3360, 3182, 3379 ) -- Cargo de Diretor, Secrtário de Escola e Coordenador Pedagógico
                  INNER JOIN GE_ESC_Escola esc ON crg.lotacao = esc.esc_codigo
				  AND esc.esc_situacao <> 3
            GROUP BY usu.usu_id, esc.uad_id, usu.pes_id
		         
        IF @gru2_idDiretor IS NOT NULL
           INSERT INTO #usuarioDiretor
           SELECT usu.usu_id, @gru2_idDiretor AS gru_id, esc.uad_id, usu.pes_id
             FROM tmp_DiarioSupervisor_servidor tmp
                  INNER JOIN sso_sys_usuario usu
                   ON usu.usu_login COLLATE Latin1_General_CI_AI = tmp.cd_registro_funcional COLLATE Latin1_General_CI_AI
                  AND tmp.pes_id = usu.pes_id
                  AND usu.usu_situacao <> 3
                  INNER JOIN tmp_DiarioClasse_cargos crg
                   ON tmp.cd_registro_funcional = crg.cd_registro_funcional
                  AND crg.cd_cargo = 3360 -- Cargo de Diretor
                  INNER JOIN GE_ESC_Escola esc ON crg.lotacao = esc.esc_codigo
				  AND esc.esc_situacao <> 3
            GROUP BY usu.usu_id, esc.uad_id, usu.pes_id
	
         -- Inativa todos do grupo de Cargo de Diretor, Secrtário de Escola e Coordenador Pedagógico. 
         IF @gru_idDiretor IS NOT NULL
 		    UPDATE SSO_SYS_UsuarioGrupo        
			   SET usg_situacao = 3
             WHERE gru_id = @gru_idDiretor
         
         IF @gru_idDiretor IS NOT NULL
            MERGE INTO SSO_SYS_UsuarioGrupo _target
            USING (SELECT usu.usu_id, @gru_idDiretor AS gru_id, usu.pes_id
                     FROM tmp_DiarioSupervisor_servidor tmp
                          INNER JOIN sso_sys_usuario usu
                           ON usu.usu_login COLLATE Latin1_General_CI_AI = tmp.cd_registro_funcional COLLATE Latin1_General_CI_AI
                          AND tmp.pes_id = usu.pes_id
                          AND usu.usu_situacao <> 3
                          INNER JOIN tmp_DiarioClasse_cargos crg
                           ON tmp.cd_registro_funcional = crg.cd_registro_funcional
                          AND crg.cd_cargo IN (3360, 3182, 3379) -- Cargo de Diretor e Coordenador Pedagógico
                    GROUP BY usu.usu_id, usu.pes_id) _source
             ON _source.usu_id = _target.usu_id
            AND _source.gru_id = _target.gru_id
            WHEN NOT MATCHED THEN
		         INSERT (usu_id, gru_id, usg_situacao)
		         VALUES (_source.usu_id, _source.gru_id, 1) 
		    WHEN MATCHED THEN
				 UPDATE SET usg_situacao = 1;
	     
         -- Inativa todos do grupo de Cargo de Diretor, Secrtário de Escola e Coordenador Pedagógico. 
         IF @gru2_idDiretor IS NOT NULL
 		    UPDATE SSO_SYS_UsuarioGrupo        
			   SET usg_situacao = 3
             WHERE gru_id = @gru2_idDiretor
	     
	     IF @gru2_idDiretor IS NOT NULL
	        MERGE INTO SSO_SYS_UsuarioGrupo _target
            USING (SELECT usu.usu_id, @gru2_idDiretor AS gru_id, usu.pes_id
                     FROM tmp_DiarioSupervisor_servidor tmp
                          INNER JOIN sso_sys_usuario usu
                           ON usu.usu_login COLLATE Latin1_General_CI_AI = tmp.cd_registro_funcional COLLATE Latin1_General_CI_AI
                          AND tmp.pes_id = usu.pes_id
                          AND usu.usu_situacao <> 3
                          INNER JOIN tmp_DiarioClasse_cargos crg
                           ON tmp.cd_registro_funcional = crg.cd_registro_funcional
                          AND crg.cd_cargo = 3360 -- Cargo de Diretor
                    GROUP BY usu.usu_id, usu.pes_id) _source
             ON _source.usu_id = _target.usu_id
            AND _source.gru_id = _target.gru_id
            WHEN NOT MATCHED THEN
		         INSERT (usu_id, gru_id, usg_situacao)
		         VALUES (_source.usu_id, _source.gru_id, 1) 
		    WHEN MATCHED THEN
				 UPDATE SET usg_situacao = 1;
	       
	     --> SYS_UsuarioGrupoUA
	     IF @gru_idDiretor IS NOT NULL
         BEGIN
	        --> Apaga todos os registros em SYS_UsuarioGrupoUA em que o usu_id e gru_id estejam vindo do BD_PRODAM
            DELETE ugu
              FROM SSO_SYS_UsuarioGrupoUA ugu
                   INNER JOIN #usuarioDiretor usd
                    ON ugu.usu_id = usd.usu_id
                   AND ugu.gru_id = usd.gru_id
             WHERE usd.gru_id = @gru_idDiretor
            
            INSERT SSO_SYS_UsuarioGrupoUA (usu_id, gru_id, uad_id, ent_id)
            SELECT usu.usu_id, usu.gru_id, usu.uad_id, @ent_id
              FROM #usuarioDiretor usu
             WHERE usu.gru_id = @gru_idDiretor
             GROUP BY usu.usu_id, usu.gru_id, usu.uad_id
         END
         
	     IF @gru2_idDiretor IS NOT NULL
	     BEGIN
   	        --> Apaga todos os registros em SYS_UsuarioGrupoUA em que o usu_id e gru_id estejam vindo do BD_PRODAM
            DELETE ugu
              FROM SSO_SYS_UsuarioGrupoUA ugu
                   INNER JOIN #usuarioDiretor usd
                    ON ugu.usu_id = usd.usu_id
                   AND ugu.gru_id = usd.gru_id
             WHERE usd.gru_id = @gru2_idDiretor
            
            INSERT SSO_SYS_UsuarioGrupoUA (usu_id, gru_id, uad_id, ent_id)
            SELECT usu.usu_id, gru_id, usu.uad_id, @ent_id
              FROM #usuarioDiretor usu
             WHERE usu.gru_id = @gru2_idDiretor
             GROUP BY usu.usu_id, usu.gru_id, usu.uad_id
         END
    END
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
	SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Atualiza Assistente de Diretor no SGP', @SourceID, getdate())
	
	--> Cadastra os grupos de ASSISTENTE DE DIRETOR DE ESCOLA	
    IF @gru_id_AD IS NOT NULL
    BEGIN
       CREATE TABLE #usuarioAssistente
         (usu_id UNIQUEIDENTIFIER,
          gru_id UNIQUEIDENTIFIER,
          uad_id UNIQUEIDENTIFIER,
          pes_id UNIQUEIDENTIFIER)
       
       --> Grupo 'Assistente de Diretor na UE'
       INSERT INTO #usuarioAssistente
       SELECT usu.usu_id, @gru_id_AD AS gru_id, esc.uad_id, usu.pes_id
         FROM tmp_DiarioSupervisor_servidor tmp
              INNER JOIN sso_sys_usuario usu
               ON usu.usu_login COLLATE Latin1_General_CI_AI = tmp.cd_registro_funcional COLLATE Latin1_General_CI_AI
              AND tmp.pes_id = usu.pes_id
              AND usu.usu_situacao <> 3
              INNER JOIN tmp_DiarioClasse_cargos crg
               ON tmp.cd_registro_funcional = crg.cd_registro_funcional
              AND crg.cd_cargo = 3085 -- Cargo de ASSISTENTE DE DIRETOR DE ESCOLA
              INNER JOIN GE_ESC_Escola esc ON crg.lotacao = esc.esc_codigo
			  AND esc.esc_situacao <> 3
        GROUP BY usu.usu_id, esc.uad_id, usu.pes_id
	   
       MERGE INTO SSO_SYS_UsuarioGrupo _target
       USING (SELECT usu_id, gru_id, pes_id
              FROM #usuarioAssistente
             GROUP BY usu_id, gru_id, pes_id) _source
        ON _source.usu_id = _target.usu_id
       AND _source.gru_id = _target.gru_id
       WHEN NOT MATCHED THEN
            INSERT (usu_id, gru_id, usg_situacao)
	        VALUES (_source.usu_id, _source.gru_id, 1) 
	   WHEN MATCHED THEN
            UPDATE SET usg_situacao = 1;
       
       -- Manutenção da tabela SSIS_LoginImportado
       MERGE SSIS_LoginImportado AS _target
       USING  (SELECT usu.usu_id, usu.usu_login, tmp.gru_id
                 FROM #usuarioAssistente tmp WITH ( NOLOCK )
                      INNER JOIN SSO_SYS_Usuario usu WITH ( NOLOCK )
                      ON tmp.usu_id = usu.usu_id
                GROUP BY usu.usu_id, usu.usu_login, tmp.gru_id) AS _source
        ON _source.usu_id = _target.usu_id
       AND _source.usu_login = _target.ssi_login
       AND _source.gru_id = _target.gru_id
       WHEN NOT MATCHED THEN
	        INSERT (usu_id, ssi_login, gru_id, ssi_situacao)
            VALUES (_source.usu_id, _source.usu_login, _source.gru_id, 1)
       WHEN MATCHED AND _target.ssi_situacao = 3 AND _target.gru_id = @gru_id_AD THEN
	        UPDATE SET ssi_situacao = 1 ,
                       ssi_dataAlteracao = GETDATE()
       WHEN NOT MATCHED BY SOURCE AND _target.ssi_situacao = 1 AND _target.gru_id = @gru_id_AD THEN
	        UPDATE SET ssi_situacao = 3, ssi_dataAlteracao = GETDATE();
	   
       -- UsuarioGrupo
       -- Deleta a relação UsuarioGrupo para os registros que estão na tmp de servidores importados automaticamente
       DELETE ug
         FROM SSO_SYS_UsuarioGrupo ug
              INNER JOIN SSIS_LoginImportado lo
               ON ug.usu_id = lo.usu_id
              AND ug.gru_id = lo.gru_id
        WHERE lo.gru_id = @gru_id_AD
          AND lo.ssi_situacao = 3
	   
	     --> Apaga todos os registros em SYS_UsuarioGrupoUA em que o usu_id e gru_id estejam vindo do BD_PRODAM
         DELETE SSO_SYS_UsuarioGrupoUA
           FROM SSO_SYS_UsuarioGrupoUA ugu
                INNER JOIN #usuarioAssistente usd
                 ON ugu.usu_id = usd.usu_id
                AND ugu.gru_id = usd.gru_id
				LEFT JOIN @UsuarioTable u
				 ON ugu.usu_id = u.usu_id
				AND ugu.gru_id = @gru_id_AD
	      WHERE u.usu_id IS NULL
	     
	     --> SYS_UsuarioGrupoUA
         INSERT SSO_SYS_UsuarioGrupoUA (usu_id, gru_id, uad_id, ent_id)
         SELECT usu.usu_id, gru_id, usu.uad_id, @ent_id
           FROM #usuarioAssistente usu
          where usu.gru_id = @gru_id_AD
          GROUP BY usu.usu_id, usu.gru_id, usu.uad_id

         ----> Apaga os registro que não tiverem uma UA associada
         --delete from SSO_SYS_UsuarioGrupo
         -- where gru_id = @@gru_id_AD
         --   and usu_id not in (select usu_id from SSO_SYS_UsuarioGrupoUA ugu
         --                       where ugu.gru_id = @@gru_id_AD
         --                         and ugu.usu_id = SSO_SYS_UsuarioGrupo.usu_id)
    END
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
	SELECT @SourceID = NEWID()

    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Atualiza Secretário Escolar Infantil no SGP', @SourceID, getdate())
	
	--> Cadastra os grupos de Secretário Escolar Infantil	
    IF @gru_idSecrInfantil IS NOT NULL
    BEGIN
       CREATE TABLE #usuarioSecrInfantil
         (usu_id UNIQUEIDENTIFIER,
          gru_id UNIQUEIDENTIFIER,
          uad_id UNIQUEIDENTIFIER,
          pes_id UNIQUEIDENTIFIER)
       
       --> Grupo 'Assistente de Diretor na UE'
       INSERT INTO #usuarioSecrInfantil
       SELECT usu.usu_id, @gru_idSecrInfantil AS gru_id, esc.uad_id, usu.pes_id
         FROM tmp_DiarioSupervisor_servidor tmp
              INNER JOIN sso_sys_usuario usu
               ON usu.usu_login COLLATE Latin1_General_CI_AI = tmp.cd_registro_funcional COLLATE Latin1_General_CI_AI
              AND tmp.pes_id = usu.pes_id
              AND usu.usu_situacao <> 3
              INNER JOIN tmp_DiarioClasse_cargos crg
               ON tmp.cd_registro_funcional = crg.cd_registro_funcional
              AND crg.cd_cargo = 4906 
              INNER JOIN GE_ESC_Escola esc 
			   ON crg.lotacao = esc.esc_codigo
			   AND esc.esc_situacao <> 3
			  INNER JOIN GestaoPedagogica..ESC_EscolaClassificacao ec
			   ON ec.esc_id = esc.esc_id
			  INNER JOIN GestaoPedagogica..ESC_TipoClassificacaoEscola tce
			   ON ec.tce_id = ec.tce_id and tce.tce_nome = 'EMEI'
        GROUP BY usu.usu_id, esc.uad_id, usu.pes_id
	   
       MERGE INTO SSO_SYS_UsuarioGrupo _target
       USING (SELECT usu_id, gru_id, pes_id
              FROM #usuarioSecrInfantil
             GROUP BY usu_id, gru_id, pes_id) _source
        ON _source.usu_id = _target.usu_id
       AND _source.gru_id = _target.gru_id
       WHEN NOT MATCHED THEN
            INSERT (usu_id, gru_id, usg_situacao)
	        VALUES (_source.usu_id, _source.gru_id, 1) 
	   WHEN MATCHED THEN
            UPDATE SET usg_situacao = 1;
       
       -- Manutenção da tabela SSIS_LoginImportado
       MERGE SSIS_LoginImportado AS _target
       USING  (SELECT usu.usu_id, usu.usu_login, tmp.gru_id
                 FROM #usuarioSecrInfantil tmp WITH ( NOLOCK )
                      INNER JOIN SSO_SYS_Usuario usu WITH ( NOLOCK )
                      ON tmp.usu_id = usu.usu_id
                GROUP BY usu.usu_id, usu.usu_login, tmp.gru_id) AS _source
        ON _source.usu_id = _target.usu_id
       AND _source.usu_login = _target.ssi_login
       AND _source.gru_id = _target.gru_id
       WHEN NOT MATCHED THEN
	        INSERT (usu_id, ssi_login, gru_id, ssi_situacao)
            VALUES (_source.usu_id, _source.usu_login, _source.gru_id, 1)
       WHEN MATCHED AND _target.ssi_situacao = 3 AND _target.gru_id = @gru_idSecrInfantil THEN
	        UPDATE SET ssi_situacao = 1 ,
                       ssi_dataAlteracao = GETDATE()
       WHEN NOT MATCHED BY SOURCE AND _target.ssi_situacao = 1 AND _target.gru_id = @gru_idSecrInfantil THEN
	        UPDATE SET ssi_situacao = 3, ssi_dataAlteracao = GETDATE();
	   
       -- UsuarioGrupo
       -- Deleta a relação UsuarioGrupo para os registros que estão na tmp de servidores importados automaticamente
       DELETE ug
         FROM SSO_SYS_UsuarioGrupo ug
              INNER JOIN SSIS_LoginImportado lo
               ON ug.usu_id = lo.usu_id
              AND ug.gru_id = lo.gru_id
        WHERE lo.gru_id = @gru_idSecrInfantil
          AND lo.ssi_situacao = 3
	   
	   --> Apaga todos os registros em SYS_UsuarioGrupoUA em que o usu_id e gru_id estejam vindo do BD_PRODAM
       DELETE SSO_SYS_UsuarioGrupoUA
         FROM SSO_SYS_UsuarioGrupoUA ugu
              INNER JOIN #usuarioSecrInfantil usd
               ON ugu.usu_id = usd.usu_id
              AND ugu.gru_id = usd.gru_id
			  LEFT JOIN @UsuarioTable u
			   ON ugu.usu_id = u.usu_id
			  AND ugu.gru_id = @gru_idSecrInfantil
	    WHERE u.usu_id IS NULL
	     
	   --> SYS_UsuarioGrupoUA
       INSERT SSO_SYS_UsuarioGrupoUA (usu_id, gru_id, uad_id, ent_id)
       SELECT usu.usu_id, gru_id, usu.uad_id, @ent_id
         FROM #usuarioSecrInfantil usu
        WHERE usu.gru_id = @gru_idSecrInfantil
        GROUP BY usu.usu_id, usu.gru_id, usu.uad_id

    END
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
	SELECT @SourceID = NEWID()
	
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Atualiza Coordenador Pedagógico no SGP', @SourceID, getdate())
	
	--> Cadastra os grupos dos Coord. Pedagogicos	
    IF @gru_idCoordPedag IS NOT NULL
    BEGIN
       CREATE TABLE #usuarioCoordPedag
         (usu_id UNIQUEIDENTIFIER,
          gru_id UNIQUEIDENTIFIER,
          uad_id UNIQUEIDENTIFIER,
          pes_id UNIQUEIDENTIFIER)
       
       --> Grupo 'Coordenador Pedagógico'
       INSERT INTO #usuarioCoordPedag
       SELECT usu.usu_id, @gru_idCoordPedag AS gru_id, esc.uad_id, usu.pes_id
         FROM tmp_DiarioSupervisor_servidor tmp
              INNER JOIN sso_sys_usuario usu
               ON usu.usu_login COLLATE Latin1_General_CI_AI = tmp.cd_registro_funcional COLLATE Latin1_General_CI_AI
              AND tmp.pes_id = usu.pes_id
              AND usu.usu_situacao <> 3
              INNER JOIN tmp_DiarioClasse_cargos crg
               ON tmp.cd_registro_funcional = crg.cd_registro_funcional
              AND crg.cd_cargo = 3379 -- Cargo de Coordenador Pedagógico
              INNER JOIN GE_ESC_Escola esc ON crg.lotacao = esc.esc_codigo
			  AND esc.esc_situacao <> 3
        GROUP BY usu.usu_id, esc.uad_id, usu.pes_id
	   
       MERGE INTO SSO_SYS_UsuarioGrupo _target
       USING (SELECT usu_id, gru_id, pes_id
              FROM #usuarioCoordPedag
             GROUP BY usu_id, gru_id, pes_id) _source
        ON _source.usu_id = _target.usu_id
       AND _source.gru_id = _target.gru_id
       WHEN NOT MATCHED THEN
            INSERT (usu_id, gru_id, usg_situacao)
	        VALUES (_source.usu_id, _source.gru_id, 1) 
	   WHEN MATCHED THEN
            UPDATE SET usg_situacao = 1;
       
       -- Manutenção da tabela SSIS_LoginImportado
       MERGE SSIS_LoginImportado AS _target
       USING  (SELECT usu.usu_id, usu.usu_login, tmp.gru_id
                 FROM #usuarioCoordPedag tmp WITH ( NOLOCK )
                      INNER JOIN SSO_SYS_Usuario usu WITH ( NOLOCK )
                      ON tmp.usu_id = usu.usu_id
                GROUP BY usu.usu_id, usu.usu_login, tmp.gru_id) AS _source
        ON _source.usu_id = _target.usu_id
       AND _source.usu_login = _target.ssi_login
       AND _source.gru_id = _target.gru_id
       WHEN NOT MATCHED THEN
	        INSERT (usu_id, ssi_login, gru_id, ssi_situacao)
            VALUES (_source.usu_id, _source.usu_login, _source.gru_id, 1)
       WHEN MATCHED AND _target.ssi_situacao = 3 AND _target.gru_id = @gru_idCoordPedag THEN
	        UPDATE SET ssi_situacao = 1 ,
                       ssi_dataAlteracao = GETDATE()
       WHEN NOT MATCHED BY SOURCE AND _target.ssi_situacao = 1 AND _target.gru_id = @gru_idCoordPedag THEN
	        UPDATE SET ssi_situacao = 3, ssi_dataAlteracao = GETDATE();
	   
       -- UsuarioGrupo
       -- Deleta a relação UsuarioGrupo para os registros que estão na tmp de servidores importados automaticamente
       DELETE ug
         FROM SSO_SYS_UsuarioGrupo ug
              INNER JOIN SSIS_LoginImportado lo
               ON ug.usu_id = lo.usu_id
              AND ug.gru_id = lo.gru_id
        WHERE lo.gru_id = @gru_idCoordPedag
          AND lo.ssi_situacao = 3
	   
	     --> Apaga todos os registros em SYS_UsuarioGrupoUA em que o usu_id e gru_id estejam vindo do BD_PRODAM
         DELETE SSO_SYS_UsuarioGrupoUA
           FROM SSO_SYS_UsuarioGrupoUA ugu
                INNER JOIN #usuarioCoordPedag usd
                 ON ugu.usu_id = usd.usu_id
                AND ugu.gru_id = usd.gru_id
				LEFT JOIN @UsuarioTable u
				 ON ugu.usu_id = u.usu_id
				AND ugu.gru_id = @gru_idCoordPedag
	      WHERE u.usu_id IS NULL
	     
	     --> SYS_UsuarioGrupoUA
         INSERT SSO_SYS_UsuarioGrupoUA (usu_id, gru_id, uad_id, ent_id)
         SELECT usu.usu_id, gru_id, usu.uad_id, @ent_id
           FROM #usuarioCoordPedag usu
          where usu.gru_id = @gru_idCoordPedag
          GROUP BY usu.usu_id, usu.gru_id, usu.uad_id

         ----> Apaga os registro que não tiverem uma UA associada
         --delete from SSO_SYS_UsuarioGrupo
         -- where gru_id = @gru_idCoordPedag
         --   and usu_id not in (select usu_id from SSO_SYS_UsuarioGrupoUA ugu
         --                       where ugu.gru_id = @gru_idCoordPedag
         --                         and ugu.usu_id = SSO_SYS_UsuarioGrupo.usu_id)
    END
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
	SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Atualiza Supervisor Escolar no SGP', @SourceID, getdate())
	
	--> Cadastra os grupos de Supervisor Escolar	
    IF @grp_supEscolar IS NOT NULL
    BEGIN
       CREATE TABLE #usuariosupEscolar
         (usu_id UNIQUEIDENTIFIER,
          gru_id UNIQUEIDENTIFIER,
          uad_id UNIQUEIDENTIFIER,
          pes_id UNIQUEIDENTIFIER)
       
       --> Grupo 'Supervisor Escolar'
       -- pega direto a DRE
       INSERT INTO #usuariosupEscolar
       SELECT usu.usu_id, @grp_supEscolar AS gru_id, esc.uad_id, usu.pes_id
         FROM tmp_DiarioSupervisor_servidor tmp
              INNER JOIN sso_sys_usuario usu
               ON usu.usu_login COLLATE Latin1_General_CI_AI = tmp.cd_registro_funcional COLLATE Latin1_General_CI_AI
              AND tmp.pes_id = usu.pes_id
              AND usu.usu_situacao <> 3
              INNER JOIN tmp_DiarioClasse_cargos crg
               ON tmp.cd_registro_funcional = crg.cd_registro_funcional
              AND crg.cd_cargo = 3352 -- Supervisor Escolar
              INNER JOIN SSO_SYS_UnidadeAdministrativa esc ON crg.lotacao = esc.uad_codigo
														  and esc.tua_id = '52022558-8C00-4539-99FB-B647BC994D5E' --TIPO = DRE
        GROUP BY usu.usu_id, esc.uad_id, usu.pes_id
        
       -- quando for tipo de unidade errado (normalmente 'DIVISAO DE ORIENTACAO TECNICO-PEDAGOGICA-CE CS' ou 'SUPERVISAO ESCOLAR ....')
       -- neste caso tentar pegar a DRE
       INSERT INTO #usuariosupEscolar
       SELECT usu.usu_id, @grp_supEscolar AS gru_id, uadDRE.uad_id, usu.pes_id
         FROM tmp_DiarioSupervisor_servidor tmp
              INNER JOIN sso_sys_usuario usu
               ON usu.usu_login COLLATE Latin1_General_CI_AI = tmp.cd_registro_funcional COLLATE Latin1_General_CI_AI
              AND tmp.pes_id = usu.pes_id
              AND usu.usu_situacao <> 3
              INNER JOIN tmp_DiarioClasse_cargos crg
               ON tmp.cd_registro_funcional = crg.cd_registro_funcional
              AND crg.cd_cargo = 3352 -- Supervisor Escolar
              INNER JOIN SSO_SYS_UnidadeAdministrativa uadErrado 
					  ON crg.lotacao = uadErrado.uad_codigo
					 AND uadErrado.tua_id = 'E33EF3BA-E4CA-479E-85F1-ED10FD2C0579' --Tipo = ESCOLA
			  INNER JOIN SSO_SYS_UnidadeAdministrativa uadSetor on uadSetor.uad_id = uadErrado.uad_idSuperior
			  INNER JOIN SSO_SYS_UnidadeAdministrativa uadDistrito on uadDistrito.uad_id = uadSetor.uad_idSuperior
			  INNER JOIN SSO_SYS_UnidadeAdministrativa uadDRE on uadDRE.uad_id = uadDistrito.uad_idSuperior
        GROUP BY usu.usu_id, uadDRE.uad_id, usu.pes_id
	   
       MERGE INTO SSO_SYS_UsuarioGrupo _target
       USING (SELECT usu_id, gru_id, pes_id
              FROM #usuariosupEscolar
             GROUP BY usu_id, gru_id, pes_id) _source
        ON _source.usu_id = _target.usu_id
       AND _source.gru_id = _target.gru_id
       WHEN NOT MATCHED THEN
            INSERT (usu_id, gru_id, usg_situacao)
	        VALUES (_source.usu_id, _source.gru_id, 1) 
	   WHEN MATCHED THEN
            UPDATE SET usg_situacao = 1;
       
       -- Manutenção da tabela SSIS_LoginImportado
       MERGE SSIS_LoginImportado AS _target
       USING  (SELECT usu.usu_id, usu.usu_login, tmp.gru_id
                 FROM #usuariosupEscolar tmp WITH ( NOLOCK )
                      INNER JOIN SSO_SYS_Usuario usu WITH ( NOLOCK )
                      ON tmp.usu_id = usu.usu_id
                GROUP BY usu.usu_id, usu.usu_login, tmp.gru_id) AS _source
        ON _source.usu_id = _target.usu_id
       AND _source.usu_login = _target.ssi_login
       AND _source.gru_id = _target.gru_id
       WHEN NOT MATCHED THEN
	        INSERT (usu_id, ssi_login, gru_id, ssi_situacao)
            VALUES (_source.usu_id, _source.usu_login, _source.gru_id, 1)
       WHEN MATCHED AND _target.ssi_situacao = 3 AND _target.gru_id = @grp_supEscolar THEN
	        UPDATE SET ssi_situacao = 1 ,
                       ssi_dataAlteracao = GETDATE()
       WHEN NOT MATCHED BY SOURCE AND _target.ssi_situacao = 1 AND _target.gru_id = @grp_supEscolar THEN
	        UPDATE SET ssi_situacao = 3, ssi_dataAlteracao = GETDATE();
	   
       -- UsuarioGrupo
       -- Deleta a relação UsuarioGrupo para os registros que estão na tmp de servidores importados automaticamente
       DELETE ug
         FROM SSO_SYS_UsuarioGrupo ug
              INNER JOIN SSIS_LoginImportado lo
               ON ug.usu_id = lo.usu_id
              AND ug.gru_id = lo.gru_id
        WHERE lo.gru_id = @grp_supEscolar
          AND lo.ssi_situacao = 3
	   
	     --> Apaga todos os registros em SYS_UsuarioGrupoUA em que o usu_id e gru_id estejam vindo do BD_PRODAM
         DELETE SSO_SYS_UsuarioGrupoUA
           FROM SSO_SYS_UsuarioGrupoUA ugu
                INNER JOIN #usuariosupEscolar usd
                 ON ugu.usu_id = usd.usu_id
                AND ugu.gru_id = usd.gru_id
				LEFT JOIN @UsuarioTable u
				 ON ugu.usu_id = u.usu_id
				AND ugu.gru_id = @grp_supEscolar
	      WHERE u.usu_id IS NULL
	     
	     --> SYS_UsuarioGrupoUA
         INSERT SSO_SYS_UsuarioGrupoUA (usu_id, gru_id, uad_id, ent_id)
         SELECT usu.usu_id, gru_id, usu.uad_id, @ent_id
           FROM #usuariosupEscolar usu
          where usu.gru_id = @grp_supEscolar
          GROUP BY usu.usu_id, usu.gru_id, usu.uad_id

         ----> Apaga os registro que não tiverem uma UA associada
         delete from SSO_SYS_UsuarioGrupo
          where gru_id = @grp_supEscolar
            and usu_id not in (select usu_id from SSO_SYS_UsuarioGrupoUA ugu
                                where ugu.gru_id = @grp_supEscolar
                                  and ugu.usu_id = SSO_SYS_UsuarioGrupo.usu_id)
    END
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
	SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Atualiza Supervisor Técnico no SGP', @SourceID, getdate())
	
	--> Cadastra os grupos de Supervisor Técnico	
    IF @grp_supTecnico IS NOT NULL
    BEGIN
       CREATE TABLE #usuariosupTecnico
         (usu_id UNIQUEIDENTIFIER,
          gru_id UNIQUEIDENTIFIER,
          uad_id UNIQUEIDENTIFIER,
          pes_id UNIQUEIDENTIFIER)
       
       --> Grupo 'Supervisor Técnico'
              -- pega direto a DRE
       INSERT INTO #usuariosupTecnico
       SELECT usu.usu_id, @grp_supTecnico AS gru_id, esc.uad_id, usu.pes_id
         FROM tmp_DiarioSupervisor_servidor tmp
              INNER JOIN sso_sys_usuario usu
               ON usu.usu_login COLLATE Latin1_General_CI_AI = tmp.cd_registro_funcional COLLATE Latin1_General_CI_AI
              AND tmp.pes_id = usu.pes_id
              AND usu.usu_situacao <> 3
              INNER JOIN tmp_DiarioClasse_cargos crg
               ON tmp.cd_registro_funcional = crg.cd_registro_funcional
              AND crg.cd_cargo = 434 -- Supervisor Técnico
              INNER JOIN CoreSSO..SYS_UnidadeAdministrativa esc ON crg.lotacao = esc.uad_codigo
											   and esc.tua_id = '52022558-8C00-4539-99FB-B647BC994D5E' --tipo = DRE
        GROUP BY usu.usu_id, esc.uad_id, usu.pes_id
        
	   INSERT INTO #usuariosupTecnico
	   select usu.usu_id, @grp_supTecnico as gru_id, UAD.uad_id, SERV.pes_id
         from tmp_DiarioSupervisor_servidor SERV
              INNER JOIN BD_PRODAM..v_cargobase_mstech CB
              on SERV.cd_registro_funcional = CB.cd_registro_funcional
              INNER JOIN BD_PRODAM..v_cargosobreposto_mstech SOBRE
              on CB.cd_cargo_base_servidor = SOBRE.cd_cargo_base_servidor
              inner join SSO_SYS_UnidadeAdministrativa UAD
              on SOBRE.cd_unidade_local_servico = UAD.uad_codigo
              inner join SSO_SYS_Usuario usu
              on SERV.pes_id = usu.pes_id
			  and usu.usu_login not like 'RESP%' and usu.usu_login not like 'RA%'
        where SOBRE.cd_cargo = 434
          and uad_situacao = 1 and usu_situacao <> 3
	
       -- quando for tipo de unidade errado (normalmente 'DIVISAO DE ORIENTACAO TECNICO-PEDAGOGICA-CE CS' ou 'SUPERVISAO ESCOLAR ....')
       -- neste caso tentar pegar a DRE
       INSERT INTO #usuariosupTecnico
       SELECT usu.usu_id, @grp_supTecnico AS gru_id, uadDRE.uad_id, usu.pes_id
         FROM tmp_DiarioSupervisor_servidor tmp
              INNER JOIN sso_sys_usuario usu
               ON usu.usu_login COLLATE Latin1_General_CI_AI = tmp.cd_registro_funcional COLLATE Latin1_General_CI_AI
              AND tmp.pes_id = usu.pes_id
              AND usu.usu_situacao <> 3
              INNER JOIN tmp_DiarioClasse_cargos crg
               ON tmp.cd_registro_funcional = crg.cd_registro_funcional
              AND crg.cd_cargo = 434 -- Supervisor Técnico
			  INNER JOIN SSO_SYS_UnidadeAdministrativa uadErrado 
					  ON crg.lotacao = uadErrado.uad_codigo
					 AND uadErrado.tua_id = 'E33EF3BA-E4CA-479E-85F1-ED10FD2C0579' --Tipo = ESCOLA
			  INNER JOIN SSO_SYS_UnidadeAdministrativa uadSetor on uadSetor.uad_id = uadErrado.uad_idSuperior
			  INNER JOIN SSO_SYS_UnidadeAdministrativa uadDistrito on uadDistrito.uad_id = uadSetor.uad_idSuperior
			  INNER JOIN SSO_SYS_UnidadeAdministrativa uadDRE on uadDRE.uad_id = uadDistrito.uad_idSuperior
        GROUP BY usu.usu_id, uadDRE.uad_id, usu.pes_id
	   
       MERGE INTO SSO_SYS_UsuarioGrupo _target
       USING (SELECT usu_id, gru_id
              FROM #usuariosupTecnico
             GROUP BY usu_id, gru_id) _source
        ON _source.usu_id = _target.usu_id
       AND _source.gru_id = _target.gru_id
       WHEN NOT MATCHED THEN
            INSERT (usu_id, gru_id, usg_situacao)
	        VALUES (_source.usu_id, _source.gru_id, 1) 
	   WHEN MATCHED THEN
            UPDATE SET usg_situacao = 1;
       
       -- Manutenção da tabela SSIS_LoginImportado
       MERGE SSIS_LoginImportado AS _target
       USING  (SELECT usu.usu_id, usu.usu_login, tmp.gru_id
                 FROM #usuariosupTecnico tmp WITH ( NOLOCK )
                      INNER JOIN SSO_SYS_Usuario usu WITH ( NOLOCK )
                      ON tmp.usu_id = usu.usu_id
                GROUP BY usu.usu_id, usu.usu_login, tmp.gru_id) AS _source
        ON _source.usu_id = _target.usu_id
       AND _source.usu_login = _target.ssi_login
       AND _source.gru_id = _target.gru_id
       WHEN NOT MATCHED THEN
	        INSERT (usu_id, ssi_login, gru_id, ssi_situacao)
            VALUES (_source.usu_id, _source.usu_login, _source.gru_id, 1)
       WHEN MATCHED AND _target.ssi_situacao = 3 AND _target.gru_id = @grp_supTecnico THEN
	        UPDATE SET ssi_situacao = 1 ,
                       ssi_dataAlteracao = GETDATE()
       WHEN NOT MATCHED BY SOURCE AND _target.ssi_situacao = 1 AND _target.gru_id = @grp_supTecnico THEN
	        UPDATE SET ssi_situacao = 3, ssi_dataAlteracao = GETDATE();
	   
       -- UsuarioGrupo
       -- Deleta a relação UsuarioGrupo para os registros que estão na tmp de servidores importados automaticamente
       DELETE ug
         FROM SSO_SYS_UsuarioGrupo ug
              INNER JOIN SSIS_LoginImportado lo
               ON ug.usu_id = lo.usu_id
              AND ug.gru_id = lo.gru_id
        WHERE lo.gru_id = @grp_supTecnico
          AND lo.ssi_situacao = 3
	   
	     --> Apaga todos os registros em SYS_UsuarioGrupoUA em que o usu_id e gru_id estejam vindo do BD_PRODAM
         DELETE SSO_SYS_UsuarioGrupoUA
           FROM SSO_SYS_UsuarioGrupoUA ugu
                INNER JOIN #usuariosupTecnico usd
                 ON ugu.usu_id = usd.usu_id
                AND ugu.gru_id = usd.gru_id
				LEFT JOIN @UsuarioTable u
				 ON ugu.usu_id = u.usu_id
				AND ugu.gru_id = @grp_supTecnico
	      WHERE u.usu_id IS NULL
	     
	     --> SYS_UsuarioGrupoUA
         INSERT SSO_SYS_UsuarioGrupoUA (usu_id, gru_id, uad_id, ent_id)
         SELECT usu.usu_id, gru_id, usu.uad_id, @ent_id
           FROM #usuariosupTecnico usu
          where usu.gru_id = @grp_supTecnico
          GROUP BY usu.usu_id, usu.gru_id, usu.uad_id

         ----> Apaga os registro que não tiverem uma UA associada
         delete from SSO_SYS_UsuarioGrupo
          where gru_id = @grp_supTecnico
            and usu_id not in (select usu_id from SSO_SYS_UsuarioGrupoUA ugu
                                where ugu.gru_id = @grp_supTecnico
                                  and ugu.usu_id = SSO_SYS_UsuarioGrupo.usu_id)
    END
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
	SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Atualiza Docente no SGP', @SourceID, getdate())
	
    if @gru_idDocente is not null
    begin
       CREATE TABLE #userDocente
          (usu_id UNIQUEIDENTIFIER,
           pes_id UNIQUEIDENTIFIER,
           gru_id UNIQUEIDENTIFIER)
           
       CREATE TABLE #RFs_ESCOLAS (rf varchar(20), cd_escola char(6))
	   insert into #RFs_ESCOLAS
	   select prf.rf, gc.cd_escola
		 from BD_PRODAM..v_cadastro_professor prf
			  inner join BD_PRODAM..v_grade_curricular gc
					  on prf.rf = gc.rf
			  inner join BD_PRODAM..v_unidade_educacao_dados_gerais esc
					  on gc.cd_escola = esc.cd_unidade_educacao
			  inner join DEPARA_DISCIPLINAS dd
					  on gc.Cod_Comp_Curr = dd.cd_componente_curricular
		where esc. dc_tipo_unidade_educacao = 'ESCOLA' 
		  and esc.sg_tp_escola in ('EMEF','EMEFM','CEU EMEF','EMEBS','CIEJA',
						'EMEI','CECI','CEMEI','CEI DIRET', 'CCI/CIPS', 'CEI INDIR', 'CEU CEI', 'CEU EMEI', 'CR.P.CONV') 
		group by prf.rf, gc.cd_escola

       --> Associa os Docentes ATIVOS ao grupo 'Docente'
       INSERT INTO #userDocente (usu_id, pes_id, gru_id)
       SELECT usu.usu_id, usu.pes_id, @gru_idDocente AS gru_id
         FROM tmp_DiarioClasse_cadastro_professor tmp
              INNER JOIN sso_sys_usuario usu
               ON usu.usu_login COLLATE Latin1_General_CI_AI = tmp.rf COLLATE Latin1_General_CI_AI
              AND tmp.pes_id = usu.pes_id
              AND usu.usu_situacao <> 3
              INNER JOIN tmp_DiarioClasse_cargos crg
              ON tmp.rf = crg.cd_registro_funcional
              INNER JOIN GE_RHU_TipoVinculo tvi
              ON tvi.tvi_codIntegracao = crg.cd_situacao_funcional
              INNER JOIN GE_RHU_Cargo RHU_Cargo
               ON crg.cd_cargo = RHU_Cargo.crg_codigo
              AND tvi.tvi_id = RHU_Cargo.tvi_id
              AND 1 = RHU_Cargo.crg_cargoDocente
              INNER JOIN GE_RHU_ColaboradorCargo coc
               ON tmp.rf = coc.coc_matricula
              AND RHU_Cargo.crg_id = coc.crg_id
              AND 1 = coc.coc_situacao
        where crg.cd_situacao_funcional is not null
          and exists (select doc.rf from #RFs_ESCOLAS doc
					   where doc.rf = tmp.rf and doc.cd_escola = tmp.cd_escola)
        GROUP BY usu.usu_id, usu.pes_id
       
       
       -- Manutenção da tabela SSIS_LoginImportado
       MERGE SSIS_LoginImportado AS _target
       USING (SELECT usu.usu_id, usu.usu_login, tmp.gru_id
                FROM #userDocente tmp
                     INNER JOIN SSO_SYS_Usuario usu
                     ON tmp.usu_id = usu.usu_id
               GROUP BY usu.usu_id, usu.usu_login, tmp.gru_id) AS _source
        ON _source.usu_id = _target.usu_id
       AND _source.usu_login = _target.ssi_login
       AND _source.gru_id = _target.gru_id
       WHEN NOT MATCHED THEN
	        INSERT (usu_id, ssi_login, gru_id, ssi_situacao)
            VALUES (_source.usu_id, _source.usu_login, _source.gru_id, 1)
       WHEN MATCHED AND _target.ssi_situacao = 3 AND _target.gru_id = @gru_idDocente THEN
            UPDATE SET ssi_situacao = 1, ssi_dataAlteracao = GETDATE()
       WHEN NOT MATCHED BY SOURCE AND _target.ssi_situacao = 1 AND _target.gru_id = @gru_idDocente THEN
	        UPDATE SET ssi_situacao = 3,
                       ssi_dataAlteracao = GETDATE();	
	   
       MERGE INTO SSO_SYS_UsuarioGrupo _target
       USING (SELECT usu_id, gru_id, pes_id
                FROM #userDocente
               GROUP BY usu_id, gru_id, pes_id) _source
        ON _source.usu_id = _target.usu_id
       AND _source.gru_id = _target.gru_id
       WHEN NOT MATCHED THEN
            INSERT (usu_id, gru_id, usg_situacao)
            VALUES (_source.usu_id, _source.gru_id, 1) 
       WHEN MATCHED THEN
            UPDATE SET usg_situacao = 1;
       
	   --> Apaga todos os registros em SYS_UsuarioGrupoUA em que o usu_id e gru_id estejam vindo do BD_PRODAM
       DELETE SSO_SYS_UsuarioGrupoUA
         FROM SSO_SYS_UsuarioGrupoUA ugu
              INNER JOIN #userDocente usd
               ON ugu.usu_id = usd.usu_id
              AND ugu.gru_id = usd.gru_id
       
       -- UsuarioGrupo
       -- Deleta a relação UsuarioGrupo para os registros que estão na tmp de servidores importados automaticamente
       DELETE ug
         FROM SSO_SYS_UsuarioGrupo ug
              INNER JOIN SSIS_LoginImportado lo
               ON ug.usu_id = lo.usu_id
              AND ug.gru_id = lo.gru_id
        WHERE lo.gru_id = @gru_idDocente  
          AND lo.ssi_situacao = 3
       
       MERGE SSO_SYS_UsuarioGrupo AS _target
       USING (SELECT usu_id, gru_id
                FROM #userDocente
               GROUP BY usu_id, gru_id) AS _source
        ON _source.usu_id = _target.usu_id
       AND _source.gru_id = _target.gru_id
       WHEN NOT MATCHED THEN
            INSERT (usu_id, gru_id, usg_situacao)
            VALUES (_source.usu_id, _source.gru_id, 1)
       WHEN MATCHED THEN
            UPDATE SET usg_situacao = 1;

		--além destes usuários, também tive que adicionar em 08/07 os usuários com atribuição esporádica no grupo 'Docente' do SGP
		--eles foram add na procedure RHU_ColaboradorCargo_Cargos
    END

    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
	SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Atualiza Docente no Quadro', @SourceID, getdate())
	
    if @gru_idDocenteQuadro is not null
    BEGIN
		update ugQuadro 
		   set usg_situacao = ugSGP.usg_situacao
		  from CoreSSO..SYS_UsuarioGrupo ugQuadro
			   inner join CoreSSO..SYS_UsuarioGrupo ugSGP on ugSGP.usu_id = ugQuadro.usu_id 
					  and ugSGP.gru_id in (@gru_idDocente, @gru_cj) 
		 where ugQuadro.gru_id = @gru_idDocenteQuadro

		insert into CoreSSO..SYS_UsuarioGrupo (usu_id, gru_id, usg_situacao)
		select ugSGP.usu_id, @gru_idDocenteQuadro as gru_id, 1 as usg_situacao
		  from CoreSSO..SYS_UsuarioGrupo ugSGP 
		 where ugSGP.gru_id in (@gru_idDocente, @gru_cj) 
		   and ugSGP.usg_situacao = 1
		   and not exists (select ug.usu_id from CoreSSO..SYS_UsuarioGrupo ug
							where ug.usu_id = ugSGP.usu_id and ug.gru_id = @gru_idDocenteQuadro)
		 group by ugSGP.usu_id

    END

    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
	 
	SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Atualiza Secretário Escolar no SGP', @SourceID, getdate())
	
    if @gru_id_SEC is not null
    begin
       CREATE TABLE #userSecret
          (usu_id UNIQUEIDENTIFIER,
           gru_id UNIQUEIDENTIFIER,
           pes_id UNIQUEIDENTIFIER,
           uad_id UNIQUEIDENTIFIER)
           
       --> Associa os Docentes ATIVOS ao grupo 'Secretário Escolar'
       INSERT INTO #userSecret
       select usu.usu_id, @gru_id_SEC as gru_id, SERV.pes_id, UAD.uad_id
         from tmp_DiarioSupervisor_servidor SERV
              INNER JOIN BD_PRODAM..v_cargobase_mstech CB
              on SERV.cd_registro_funcional = CB.cd_registro_funcional
              INNER JOIN BD_PRODAM..v_cargosobreposto_mstech SOBRE
              on CB.cd_cargo_base_servidor = SOBRE.cd_cargo_base_servidor
              inner join SSO_SYS_UnidadeAdministrativa UAD
              on SOBRE.cd_unidade_local_servico = UAD.uad_codigo
              inner join SSO_SYS_Usuario usu
              on SERV.pes_id = usu.pes_id
			  and usu.usu_login not like 'RESP%' and usu.usu_login not like 'RA%'
        where CB.cd_cargo = 4906 and SOBRE.cd_cargo = 3182
          and uad_situacao = 1 and usu_situacao <> 3
       
       MERGE INTO SSO_SYS_UsuarioGrupo _target
       USING (SELECT usu_id, gru_id, pes_id
                FROM #userSecret
               GROUP BY usu_id, gru_id, pes_id) _source
        ON _source.usu_id = _target.usu_id
       AND _source.gru_id = _target.gru_id
       WHEN NOT MATCHED THEN
            INSERT (usu_id, gru_id, usg_situacao)
            VALUES (_source.usu_id, _source.gru_id, 1) 
       WHEN MATCHED THEN
            UPDATE SET usg_situacao = 1;
       
       -- Manutenção da tabela SSIS_LoginCoordPedag
       MERGE SSIS_LoginImportado AS _target
       USING (SELECT usu.usu_id, usu.usu_login, tmp.gru_id
                FROM #userSecret tmp WITH ( NOLOCK )
                     INNER JOIN SSO_SYS_Usuario usu WITH ( NOLOCK ) ON tmp.usu_id = usu.usu_id
               GROUP BY usu.usu_id, usu.usu_login, tmp.gru_id) AS _source
        ON _source.usu_id = _target.usu_id
       AND _source.usu_login = _target.ssi_login
       AND _source.gru_id = _target.gru_id
       WHEN NOT MATCHED THEN
	        INSERT (usu_id, ssi_login, gru_id, ssi_situacao)
            VALUES (_source.usu_id, _source.usu_login, _source.gru_id, 1)
       WHEN MATCHED AND _target.ssi_situacao = 3 AND _target.gru_id = @gru_id_SEC THEN
            UPDATE SET ssi_situacao = 1, ssi_dataAlteracao = GETDATE()
       WHEN NOT MATCHED BY SOURCE AND _target.ssi_situacao = 1 AND _target.gru_id = @gru_id_SEC THEN
	        UPDATE SET ssi_situacao = 3,
                       ssi_dataAlteracao = GETDATE();	
	   
	   --> Apaga todos os registros em SYS_UsuarioGrupoUA em que o usu_id e gru_id estejam vindo do BD_PRODAM
       DELETE SSO_SYS_UsuarioGrupoUA
         FROM SSO_SYS_UsuarioGrupoUA ugu
              INNER JOIN #userSecret usd
               ON ugu.usu_id = usd.usu_id
              AND ugu.gru_id = usd.gru_id
       
       -- UsuarioGrupo
       -- Deleta a relação UsuarioGrupo para os registros que estão na tmp de servidores importados automaticamente
       DELETE ug
         FROM SSO_SYS_UsuarioGrupo ug
              INNER JOIN SSIS_LoginImportado lo
               ON ug.usu_id = lo.usu_id
              AND ug.gru_id = lo.gru_id
        WHERE lo.gru_id = @gru_id_SEC  
          AND lo.ssi_situacao = 3
       
       MERGE SSO_SYS_UsuarioGrupo AS _target
       USING (SELECT usu_id, gru_id
                FROM #userSecret
               GROUP BY usu_id, gru_id) AS _source
        ON _source.usu_id = _target.usu_id
       AND _source.gru_id = _target.gru_id
       WHEN NOT MATCHED THEN
            INSERT (usu_id, gru_id, usg_situacao)
            VALUES (_source.usu_id, _source.gru_id, 1)
       WHEN MATCHED THEN
            UPDATE SET usg_situacao = 1;

       MERGE SSO_SYS_UsuarioGrupoUA AS _target
       USING (SELECT usu_id, gru_id, uad_id, @ent_id as ent_id
                FROM #userSecret
               GROUP BY usu_id, gru_id, uad_id) AS _source
        ON _source.usu_id = _target.usu_id
       AND _source.gru_id = _target.gru_id
       WHEN NOT MATCHED THEN
            INSERT (usu_id, gru_id, ent_id, uad_id)
            VALUES (_source.usu_id, _source.gru_id, _source.ent_id, _source.uad_id)
       WHEN MATCHED THEN
            UPDATE SET uad_id = _source.uad_id;
    END

    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
	SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Atualiza Diretor Regional no SGP', @SourceID, getdate())
	
    if @gru_id_DRE is not null
    begin
       CREATE TABLE #userDirRegional
          (usu_id UNIQUEIDENTIFIER,
           gru_id UNIQUEIDENTIFIER,
           pes_id UNIQUEIDENTIFIER,
           uad_id UNIQUEIDENTIFIER)
           
       --> Associa os Docentes ATIVOS ao grupo 'Secretário Escolar'
       INSERT INTO #userDirRegional
       select usu.usu_id, @gru_id_DRE as gru_id, SERV.pes_id, UAD.uad_id
         from tmp_DiarioSupervisor_servidor SERV
              INNER JOIN BD_PRODAM..v_cargobase_mstech CB
              on SERV.cd_registro_funcional = CB.cd_registro_funcional
              INNER JOIN BD_PRODAM..v_cargosobreposto_mstech SOBRE
              on CB.cd_cargo_base_servidor = SOBRE.cd_cargo_base_servidor
              inner join SSO_SYS_UnidadeAdministrativa UAD
              on SOBRE.cd_unidade_local_servico = UAD.uad_codigo
              inner join SSO_SYS_Usuario usu
              on SERV.pes_id = usu.pes_id and usu.usu_login not like 'RESP%' and usu.usu_login not like 'RA%'
        where SOBRE.cd_cargo = 3000
          and uad_situacao = 1 and usu_situacao <> 3
       
       MERGE INTO SSO_SYS_UsuarioGrupo _target
       USING (SELECT usu_id, gru_id, pes_id
                FROM #userDirRegional
               GROUP BY usu_id, gru_id, pes_id) _source
        ON _source.usu_id = _target.usu_id
       AND _source.gru_id = _target.gru_id
       WHEN NOT MATCHED THEN
            INSERT (usu_id, gru_id, usg_situacao)
            VALUES (_source.usu_id, _source.gru_id, 1) 
       WHEN MATCHED THEN
            UPDATE SET usg_situacao = 1;
       
       -- Manutenção da tabela SSIS_LoginCoordPedag
       MERGE SSIS_LoginImportado AS _target
       USING (SELECT usu.usu_id, usu.usu_login, tmp.gru_id
                FROM #userDirRegional tmp WITH ( NOLOCK )
                     INNER JOIN SSO_SYS_Usuario usu WITH ( NOLOCK ) ON tmp.usu_id = usu.usu_id
               GROUP BY usu.usu_id, usu.usu_login, tmp.gru_id) AS _source
        ON _source.usu_id = _target.usu_id
       AND _source.usu_login = _target.ssi_login
       AND _source.gru_id = _target.gru_id
       WHEN NOT MATCHED THEN
	        INSERT (usu_id, ssi_login, gru_id, ssi_situacao)
            VALUES (_source.usu_id, _source.usu_login, _source.gru_id, 1)
       WHEN MATCHED AND _target.ssi_situacao = 3 AND _target.gru_id = @gru_id_DRE THEN
            UPDATE SET ssi_situacao = 1, ssi_dataAlteracao = GETDATE()
       WHEN NOT MATCHED BY SOURCE AND _target.ssi_situacao = 1 AND _target.gru_id = @gru_id_DRE THEN
	        UPDATE SET ssi_situacao = 3,
                       ssi_dataAlteracao = GETDATE();	
	   
	   --> Apaga todos os registros em SYS_UsuarioGrupoUA em que o usu_id e gru_id estejam vindo do BD_PRODAM
       DELETE SSO_SYS_UsuarioGrupoUA
         FROM SSO_SYS_UsuarioGrupoUA ugu
              INNER JOIN #userDirRegional usd
               ON ugu.usu_id = usd.usu_id
              AND ugu.gru_id = usd.gru_id
       
       -- UsuarioGrupo
       -- Deleta a relação UsuarioGrupo para os registros que estão na tmp de servidores importados automaticamente
       DELETE ug
         FROM SSO_SYS_UsuarioGrupo ug
              INNER JOIN SSIS_LoginImportado lo
               ON ug.usu_id = lo.usu_id
              AND ug.gru_id = lo.gru_id
        WHERE lo.gru_id = @gru_id_DRE  
          AND lo.ssi_situacao = 3
       
       MERGE SSO_SYS_UsuarioGrupo AS _target
       USING (SELECT usu_id, gru_id
                FROM #userDirRegional
               GROUP BY usu_id, gru_id) AS _source
        ON _source.usu_id = _target.usu_id
       AND _source.gru_id = _target.gru_id
       WHEN NOT MATCHED THEN
            INSERT (usu_id, gru_id, usg_situacao)
            VALUES (_source.usu_id, _source.gru_id, 1)
       WHEN MATCHED THEN
            UPDATE SET usg_situacao = 1;

       MERGE SSO_SYS_UsuarioGrupoUA AS _target
       USING (SELECT usu_id, gru_id, uad_id, @ent_id as ent_id
                FROM #userDirRegional
               GROUP BY usu_id, gru_id, uad_id) AS _source
        ON _source.usu_id = _target.usu_id
       AND _source.gru_id = _target.gru_id
       WHEN NOT MATCHED THEN
            INSERT (usu_id, gru_id, ent_id, uad_id)
            VALUES (_source.usu_id, _source.gru_id, _source.ent_id, _source.uad_id)
       WHEN MATCHED THEN
            UPDATE SET uad_id = _source.uad_id;
			
    END
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
	SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Marca integracao = 2 para todos os servidores', @SourceID, getdate())
	
    --adicionado conforme solicitação em 14/05/2015 para deixar marcado integracao = 2 para todos os servidores
    update SSO_SYS_Usuario set usu_integracaoAD = 2
	  from SSO_SYS_Usuario 
		   inner join BD_PRODAM..v_servidor_mstech sm on sm.cd_registro_funcional = SSO_SYS_Usuario.usu_login
	 where usu_situacao <> 3 and usu_integracaoAD <> 2
    
    UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
    
	SELECT @SourceID = NEWID()
    
    INSERT INTO PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
         VALUES (@PackageLogID, 'Remover Permissões s unidade adm e coloca email falso p email nulo', @SourceID, getdate())
		 
	update usg set usg.usg_situacao = 3
	  from CoreSSO..SYS_UsuarioGrupo usg
		   inner join CoreSSO..SYS_Grupo gru on gru.gru_id = usg.gru_id and vis_id in (2,3) and gru_situacao <> 3
		   inner join CoreSSO..SYS_Sistema sis on sis.sis_id = gru.sis_id
		   inner join CoreSSO..SYS_Usuario usu on usu.usu_id = usg.usu_id
		   inner join CoreSSO..PES_Pessoa pes on pes.pes_id = usu.pes_id
	 where usg.usg_situacao <> 3
	   and not exists (select ugu.usu_id 
						 from CoreSSO..SYS_UsuarioGrupoUA ugu 
						where ugu.usu_id = usg.usu_id and ugu.gru_id = gru.gru_id)

	UPDATE CoreSSO..SYS_Usuario
	   SET usu_email = 'RF' + usu_login + '@emailfalso'
	  FROM CoreSSO..SYS_Usuario USU WITH(NOLOCK)
	 WHERE (usu_email IS NULL OR LTRIM(RTRIM(usu_email)) = '')
	   AND usu_situacao <> 3
	   AND usu_email <> 'RF' + usu_login + '@emailfalso'
	   
	UPDATE PackageTaskLog
       SET EndDateTime = getdate()
     WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID

END
GO

/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_RHU_CargaHoraria_IMPORT]    Script Date: 05/12/2014 10:35:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_QuadroHorario_RHU_CargaHoraria_IMPORT]
--DECLARE
	@ent_id UNIQUEIDENTIFIER
AS
BEGIN
	--> Carrega valor para ID Entidade
	IF (@ent_id IS NULL)
	BEGIN
		SET @ent_id = (SELECT ent_id FROM SSO_SYS_Entidade WHERE ent_sigla = 'SMESP')
	END
	----------------------------------/
	
	--> Atualiza RHU_CargaHoraria
	MERGE INTO GE_RHU_CargaHoraria _target
	USING
	(
		SELECT
			crg.crg_id
			, tmp.carga_horaria
			, CASE WHEN tmp.carga_horaria < 24 THEN 1 --JB
				   WHEN tmp.carga_horaria >= 24 AND
						tmp.carga_horaria <= 26 THEN 3 --JBD
				   WHEN tmp.carga_horaria >= 25 THEN 11 --JEIF
				   --TODO: Testar a diferença entre JBD e JEIF
			  END
			  AS hora_atividade
		FROM
			tmp_DiarioClasse_cadastro_professor tmp
		INNER JOIN GE_RHU_Cargo crg
			ON tmp.cd_cargo = crg.crg_codigo
		GROUP BY
			crg.crg_id
			, tmp.carga_horaria
			, tmp.hora_atividade
	) AS _source
	ON (_source.crg_id = _target.crg_id AND 
		(_target.chr_horasAula / 60) = ISNULL(_source.carga_horaria,0))--
		--AND (_target.chr_horasComplementares / 60) = ISNULL(_source.hora_atividade,0)) 
		--TODO: quando a hora_atividade estiver correta no BD_PRODAM (diferença entre JBD e JEIF) descomentar a linha acima
	WHEN NOT MATCHED THEN
		INSERT
		(
			  ent_id
			, chr_padrao
			, crg_id
			, chr_cargaHorariaSemanal
			, chr_horasAula
			, chr_horasComplementares
			, chr_situacao
			, chr_dataCriacao
			, chr_dataAlteracao
		)
		VALUES
		(
			  @ent_id
			, 0
			, _source.crg_id
			, ISNULL((_source.carga_horaria * 60),0) + ISNULL((_source.hora_atividade * 60),0)
			, ISNULL((_source.carga_horaria * 60),0)
			, ISNULL((_source.hora_atividade * 60),0)
			, 1
			, GETDATE()
			, GETDATE()
		);
	-----------------------------------/
END
GO

/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_RHU_Cargo_IMPORT]    Script Date: 05/12/2014 10:35:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_QuadroHorario_RHU_Cargo_IMPORT]
	@ent_id UNIQUEIDENTIFIER
AS
BEGIN
	IF (@ent_id IS NULL)
		SET @ent_id = (SELECT ent_id FROM SSO_SYS_Entidade WHERE ent_sigla = 'SMESP')

    DECLARE @tmp_DiarioClasse_cadastro_professor TABLE
       (rf char(7) NULL,
        nm_pessoa varchar(70) NULL,
        cd_cpf_pessoa varchar(11) NULL,
        senha varchar(256) NULL,
        cd_escola char(6) NULL,
        cd_vinculo int NULL,
        dc_vinculo varchar(40) NULL,
        cd_cargo_base_servidor int NULL,
        cd_cargo int NULL,
        dc_cargo varchar(50) NULL,
        cd_vinculo_sigpec int NULL,
        carga_horaria int NULL,
        hora_atividade int NULL,
        dt_inicio datetime NULL,
        pes_id uniqueidentifier NULL)
    
    INSERT INTO @tmp_DiarioClasse_cadastro_professor
           (rf, nm_pessoa, cd_cpf_pessoa, senha, cd_escola, cd_vinculo, dc_vinculo, cd_cargo_base_servidor,
           cd_cargo, dc_cargo, cd_vinculo_sigpec, carga_horaria, hora_atividade, dt_inicio, pes_id)
    select rf, nm_pessoa, cd_cpf_pessoa, senha, cd_escola, cd_vinculo, dc_vinculo, cd_cargo_base_servidor,
           cd_cargo, dc_cargo, cd_vinculo_sigpec, carga_horaria, hora_atividade, dt_inicio, pes_id
      from tmp_DiarioClasse_cadastro_professor
     GROUP BY rf, nm_pessoa, cd_cpf_pessoa, senha, cd_escola, cd_vinculo, dc_vinculo, cd_cargo_base_servidor,
           cd_cargo, dc_cargo, cd_vinculo_sigpec, carga_horaria, hora_atividade, dt_inicio, pes_id
	
	TRUNCATE TABLE tmp_DiarioClasse_cadastro_professor
	INSERT INTO tmp_DiarioClasse_cadastro_professor
           (rf, nm_pessoa, cd_cpf_pessoa, senha, cd_escola, cd_vinculo, dc_vinculo, cd_cargo_base_servidor,
           cd_cargo, dc_cargo, cd_vinculo_sigpec, carga_horaria, hora_atividade, dt_inicio, pes_id)
    select rf, nm_pessoa, cd_cpf_pessoa, senha, cd_escola, cd_vinculo, dc_vinculo, cd_cargo_base_servidor,
           cd_cargo, dc_cargo, cd_vinculo_sigpec, carga_horaria, hora_atividade, dt_inicio, pes_id
      from @tmp_DiarioClasse_cadastro_professor 
	
	--> Atualiza RHU_Cargo
	MERGE INTO GE_RHU_Cargo _target
	USING (SELECT tmp.cd_cargo, tmp.dc_cargo, tvi.tvi_id
             FROM tmp_DiarioClasse_cadastro_professor tmp
                  INNER JOIN GE_RHU_TipoVinculo tvi
                  ON tvi.tvi_codIntegracao = CAST(tmp.cd_vinculo AS VARCHAR(20))
            GROUP BY tmp.cd_cargo, tmp.dc_cargo, tvi.tvi_id) AS _source
     ON _source.cd_cargo = _target.crg_codigo
    AND _source.tvi_id = _target.tvi_id
    WHEN NOT MATCHED THEN
         INSERT (crg_codigo, crg_nome, crg_descricao, tvi_id, crg_cargoDocente, crg_codIntegracao, ent_id)
         VALUES (_source.cd_cargo, _source.dc_cargo, _source.dc_cargo, _source.tvi_id, 1, _source.cd_cargo, @ent_id);
    
    -- ajusta os cargos de docente		
    update GE_RHU_Cargo set crg_cargoDocente = 0 where crg_controleIntegracao = 1;
    
    update GE_RHU_Cargo 
	   set crg_cargoDocente = 1
     where (crg_codigo in (select cd_cargo from tmp_DiarioClasse_cadastro_professor group by cd_cargo)
            or crg_tipo = 3)
	   and crg_controleIntegracao = 1
END
GO

/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_RHU_CargoDisciplina_IMPORT]    Script Date: 05/12/2014 10:35:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_QuadroHorario_RHU_CargoDisciplina_IMPORT]
	@ent_id UNIQUEIDENTIFIER
AS
BEGIN
    declare @id_entidade UNIQUEIDENTIFIER
	
	SET @id_entidade = (SELECT ent_id FROM SSO_SYS_Entidade WHERE ent_sigla = 'smesp')
    
    DECLARE @tdo_id UNIQUEIDENTIFIER
    
    SET @tdo_id = (SELECT tdo_id FROM SSO_SYS_TipoDocumentacao WHERE tdo_sigla = 'CPF')
    
    UPDATE tmp_DiarioClasse_grade_curricular
       SET dc_componente_curricular = LTRIM(RTRIM(dc_componente_curricular));
    
    MERGE INTO GE_RHU_CargoDisciplina _target
    USING (SELECT crg.crg_id, tds.tds_id
             FROM tmp_DiarioClasse_grade_curricular tmpgc
                  INNER JOIN DEPARA_DISCIPLINAS depDis
                  ON depDis.cd_componente_curricular = tmpgc.cd_componente_curricular
                  INNER JOIN GE_ACA_TipoDisciplina tds
                  ON (tds.tds_nome = depDis.dis_nome)
                  INNER JOIN
                  (SELECT tdo_id, pes_id, psd_numero
                     FROM SSO_PES_PessoaDocumento psd
                    WHERE psd.tdo_id = @tdo_id
                      AND psd.psd_situacao <> 3) AS psd
                  ON psd.psd_numero COLLATE DATABASE_DEFAULT = tmpgc.cd_cpf_pessoa COLLATE DATABASE_DEFAULT
                  INNER JOIN GE_RHU_Colaborador col
                   ON col.pes_id = psd.pes_id
                  AND col.ent_id = @id_entidade
                  INNER JOIN GE_ACA_Docente doc
                  ON doc.col_id = col.col_id
                  INNER JOIN GE_RHU_Cargo crg
                   ON crg.crg_codigo = CONVERT(VARCHAR(20), tmpgc.cd_cargo)
                  AND crg.ent_id = @id_entidade
                  INNER JOIN GE_RHU_ColaboradorCargo coc
                   ON coc.col_id = col.col_id
                  AND coc.crg_id = crg.crg_id
                  AND coc.ent_id = @id_entidade
            WHERE tds.tds_situacao <> 3
              and col.col_situacao <> 3
              and doc.doc_situacao <> 3
              and crg.crg_situacao <> 3
              and coc.coc_situacao <> 3
            GROUP BY crg.crg_id, tds.tds_id) AS _source
     ON _source.crg_id = _target.crg_id
    AND _source.tds_id = _target.tds_id
    WHEN NOT MATCHED THEN
         INSERT (crg_id, tds_id)
         VALUES (_source.crg_id, _source.tds_id);
END
GO

/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_RHU_Colaborador_IMPORT]    Script Date: 05/12/2014 13:08:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_QuadroHorario_RHU_Colaborador_IMPORT]
	@ent_id UNIQUEIDENTIFIER,
	@tipo_cpf UNIQUEIDENTIFIER
AS
BEGIN
	--> Carrega valor para ID Entidade
	IF (@ent_id IS NULL)
		SET @ent_id = (SELECT ent_id FROM SSO_SYS_Entidade WHERE ent_sigla = 'SMESP')
	
	--> Carrega ID do Tipo Documento CPF
	IF (@tipo_cpf IS NULL)
		SET @tipo_cpf = (SELECT tdo_id FROM SSO_SYS_TipoDocumentacao WHERE tdo_sigla = 'CPF')
	
	--> RHU_Colaborador
	MERGE INTO GE_RHU_Colaborador _target
	USING (SELECT cpf.pes_id
             FROM tmp_DiarioClasse_cadastro_professor tmp 
                  INNER JOIN SSO_PES_PessoaDocumento cpf
                   ON cpf.psd_numero COLLATE DATABASE_DEFAULT = tmp.cd_cpf_pessoa COLLATE DATABASE_DEFAULT 
                  AND cpf.tdo_id = @tipo_cpf
                  INNER JOIN SSO_SYS_USUARIO usu 
				   ON cpf.pes_id = usu.pes_id and tmp.rf = usu.usu_login
            WHERE cpf.psd_situacao = 1
            GROUP BY cpf.pes_id) AS _source
    ON _source.pes_id = _target.pes_id
    WHEN NOT MATCHED THEN
         INSERT (pes_id, ent_id)
         VALUES (_source.pes_id, @ent_id)
    WHEN MATCHED AND ((_target.col_situacao = 3 )
         AND (_target.pes_id not in (select pes_id from GE_RHU_Colaborador where col_situacao = 1)))
         THEN
         UPDATE SET col_situacao = 1,
                    col_dataAlteracao = getdate();
END
GO

USE [GestaoPedagogica]
GO
DISABLE TRIGGER TRG_RHU_ColaboradorCargo_Identity ON RHU_ColaboradorCargo;
GO
USE [Manutencao]
GO
/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_RHU_ColaboradorCargo_Cargos_IMPORT]    Script Date: 05/16/2014 10:19:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_QuadroHorario_RHU_ColaboradorCargo_Cargos_IMPORT]
AS
BEGIN
    /* Corrige as escolas dos Coordenadores pedagógicos que estão vinculados a diretoria */
    DECLARE @tua_id_dre UNIQUEIDENTIFIER
    
    SET @tua_id_dre = (SELECT tua_id FROM SSO_SYS_TipoUnidadeAdministrativa WHERE tua_nome = 'DIRETORIA REGIONAL DE EDUCAÇÃO')
    
    DECLARE @TipoUAD table (tua_id UNIQUEIDENTIFIER)
	
	insert into @TipoUAD
	SELECT tua_id FROM SSO_SYS_TipoUnidadeAdministrativa
	 WHERE tua_nome in ('Diretoria Regional de Educação','Escola')
    
    /* Busca o código das DREs */
    DECLARE @dre AS TABLE (cd_unidade_educacao VARCHAR(6))
    
    DECLARE @ent_id_smesp UNIQUEIDENTIFIER, @tdo_id_cpf UNIQUEIDENTIFIER
    
    SET @ent_id_smesp = (SELECT ent_id FROM SSO_SYS_Entidade WHERE ent_sigla = 'smesp')
    
    INSERT INTO @dre( cd_unidade_educacao )
    SELECT uad_codigo
      FROM SSO_SYS_UnidadeAdministrativa
     WHERE tua_id = @tua_id_dre
       AND ent_id = @ent_id_smesp;
    	
    insert into tmp_DiarioClasse_cargos
    select nm_pessoa, dt_nascimento_pessoa, cd_sexo_pessoa, cd_cpf_pessoa, carga_horaria,
           hora_atividade = CASE WHEN carga_horaria < 24 THEN 1
                                 WHEN carga_horaria > = 24 AND carga_horaria <= 26 THEN 3
                                 WHEN carga_horaria > 25 THEN 11 END,
           cd_registro_funcional, cd_cargo_base_servidor, lotacao,
           origem, pwd, cd_cargo, dc_cargo, cd_situacao_funcional,
           dc_situacao_funcional, pes_id, dt_inicio
      from (SELECT dcc.nm_pessoa, dcc.dt_nascimento_pessoa, dcc.cd_sexo_pessoa, dcc.cd_cpf_pessoa,
                   prof.carga_horaria, dcc.cd_registro_funcional, prof.cd_cargo_base_servidor,
                   prof.cd_escola as lotacao, dcc.origem, dcc.pwd, prof.cd_cargo, prof.dc_cargo,
                   dcc.cd_situacao_funcional, dcc.dc_situacao_funcional, dcc.pes_id, dcc.dt_inicio
              FROM BD_PRODAM..v_cadastro_professor prof 
				   inner join BD_PRODAM..v_cargobase_mstech cb 
				   on prof.rf = cb.cd_registro_funcional 
				   and prof.cd_cargo_base_servidor = cb.cd_cargo_base_servidor 
				   inner join tmp_DiarioClasse_cargos dcc 
				   on cb.cd_registro_funcional = dcc.cd_registro_funcional 
				   and cb.cd_cargo_base_servidor = dcc.cd_cargo_base_servidor 
				   and cb.cd_situacao_funcional = dcc.cd_situacao_funcional 
				   and cb.dt_inicio = dcc.dt_inicio
                   inner join BD_PRODAM..v_unidade_educacao_dados_gerais esc
                   on prof.cd_escola = esc.cd_unidade_educacao    
             where dcc.lotacao not in (select cd_unidade_educacao from @dre)
               and prof.rf not in
                   (select cd_registro_funcional from tmp_DiarioClasse_cargos aux
                     where prof.rf = aux.cd_registro_funcional
                       and prof.cd_cargo_base_servidor = aux.cd_cargo_base_servidor
                       and prof.cd_escola = aux.lotacao)
               and prof.cd_cargo_base_servidor not in
                   (select cd_cargo_base_servidor from BD_PRODAM..v_cargosobreposto_mstech)
               and esc. dc_tipo_unidade_educacao = 'ESCOLA' 
               and esc.sg_tp_escola in ('EMEF','EMEFM','CEU EMEF','EMEBS','CIEJA',
									 'EMEI','CECI','CEMEI','CEI DIRET', 'CCI/CIPS', 'CEI INDIR', 'CEU CEI', 'CEU EMEI', 'CR.P.CONV')
             group by dcc.nm_pessoa, dcc.dt_nascimento_pessoa, dcc.cd_sexo_pessoa, dcc.cd_cpf_pessoa,
                   prof.carga_horaria, dcc.cd_registro_funcional, prof.cd_cargo_base_servidor,
                   prof.cd_escola, dcc.origem, dcc.pwd, prof.cd_cargo, prof.dc_cargo,
                   dcc.cd_situacao_funcional, dcc.dc_situacao_funcional, dcc.pes_id, dcc.dt_inicio) dados
    
    MERGE INTO GE_RHU_ColaboradorCargo _target
    USING (SELECT distinct
                  coc_id = CASE WHEN _main.coc_id IS NOT NULL THEN _main.coc_id
                                WHEN _main.coc_id IS NULL
                                      and not exists (select coc_id from GestaoPedagogica..RHU_ColaboradorCargo coc
                                                       where col_id = _main.col_id
                                                         and crg_id = _main.crg_id
                                                         and coc_id = _main.rowNum)
                                      THEN _main.rowNum
                                ELSE (select isnull(max(coc_id),0) + 1 + _main.rowNum
                                       from GestaoPedagogica..RHU_ColaboradorCargo coc
                                      where col_id = _main.col_id
                                        and crg_id = _main.crg_id) END,
                  _main.pes_id, _main.col_id, _main.crg_id, _main.uad_id, _main.ent_id, _main.chr_id,
                  _main.coc_situacao, _main.coc_matricula, _main.coc_observacao, _main.coc_vigenciaInicio
             FROM (SELECT distinct tmp.pes_id, tmp.col_id, tmp.crg_id, tmp.uad_id, tmp.ent_id, tmp.chr_id,
                          tmp.coc_situacao coc_situacao, tmp.coc_matricula,
                          tmp.coc_observacao, tmp.lotacao, coc.coc_id, tmp.coc_vigenciaInicio,
                          ROW_NUMBER() OVER(PARTITION BY tmp.col_id, tmp.crg_id
                                       ORDER BY coc.coc_dataCriacao DESC) AS rowNum
                     FROM (SELECT crg.pes_id, car.crg_id, uad.uad_id, uad.ent_id, col.col_id, chr.chr_id,
                                  crg.coc_situacao, crg.coc_matricula,
                                  CAST(crg.coc_observacao AS VARCHAR(2)) AS coc_observacao,
                                  crg.lotacao as lotacao, crg.coc_vigenciaInicio, crg.cd_situacao_funcional
                             FROM (SELECT DISTINCT pes_id, cd_registro_funcional AS coc_matricula,
                                          (SELECT TOP 1 CAST(cd_lotacao_cl AS VARCHAR(2))
                                             FROM tmp_GerenciamentoFrequencia_cargoBase base
                                            WHERE base.cd_cargo_base_servidor = tmpcrg.cd_cargo_base_servidor
                                              AND base.cd_registro_funcional = tmpcrg.cd_registro_funcional) AS coc_observacao,
                                          cd_cargo, dc_cargo, lotacao, carga_horaria, 1 AS coc_situacao,
                                          dt_inicio AS coc_vigenciaInicio, cd_situacao_funcional, cd_cargo_base_servidor,
                                          ROW_NUMBER() OVER ( PARTITION BY pes_id ORDER BY origem DESC ) AS rowNum
                                     FROM (select cd_registro_funcional, cd_cargo_base_servidor, lotacao, cd_cargo, dc_cargo,
                                                  null AS carga_horaria, dt_inicio, cd_situacao_funcional, pes_id, origem
                                             from tmp_DiarioClasse_cargos
                                            WHERE lotacao IS NOT NULL
                                            group by cd_registro_funcional, cd_cargo_base_servidor, lotacao, cd_cargo, dc_cargo,
                                                  dt_inicio, cd_situacao_funcional, pes_id, origem
                                           union all
                                           select cd_registro_funcional, dcc.cd_cargo_base_servidor, cd_escola as lotacao, cd_cargo,
                                                  dc_cargo, dcc.carga_horaria, dt_inicio, cd_situacao_funcional, pes_id, origem
                                             from tmp_DiarioClasse_cargos dcc
                                                  inner join BD_PRODAM..v_grade_curricular grd
                                                   on dcc.cd_registro_funcional = grd.rf
                                                  and dcc.cd_cargo_base_servidor = grd.cd_cargo_base_servidor
                                            WHERE dcc.lotacao IS NULL
                                            group by cd_registro_funcional, dcc.cd_cargo_base_servidor, cd_escola, cd_cargo,
                                                  dc_cargo, dcc.carga_horaria, dt_inicio, cd_situacao_funcional, pes_id, origem) tmpcrg) crg 
                                  INNER JOIN GE_RHU_TipoVinculo tvi
                                  ON tvi.tvi_codIntegracao = crg.cd_situacao_funcional
                                  INNER JOIN GE_RHU_Cargo car
                                  ON car.crg_codigo = crg.cd_cargo AND (car.tvi_id = tvi.tvi_id or (tvi.tvi_codIntegracao = 99 and car.tvi_id = 1))
								  INNER JOIN (select dcgc2.rf, dcgc2.cd_cargo_base_servidor, dcgc2.cd_escola  
					                            from tmp_DiarioClasse_grade_curricular dcgc2  
						 	                         inner join GE_ESC_Escola esc  
									                 on esc.esc_codigo = dcgc2.cd_escola  
													 AND esc.esc_situacao <> 3
					                           GROUP BY dcgc2.rf, dcgc2.cd_cargo_base_servidor, dcgc2.cd_escola) dcgc  
                                   ON crg.coc_matricula = dcgc.rf  
                                  AND crg.cd_cargo_base_servidor = dcgc.cd_cargo_base_servidor  
                                  AND (crg.lotacao = dcgc.cd_escola
                                       or crg.lotacao in (select cd_unidade_educacao from @dre))
                                  INNER JOIN SSO_SYS_UnidadeAdministrativa uad
                                   ON uad.uad_codigo = dcgc.cd_escola
                                  AND uad.ent_id = @ent_id_smesp
                                  INNER JOIN @TipoUAD tua
                                  ON uad.tua_id = tua.tua_id
                                  INNER JOIN tmp_GerenciamentoFrequencia_cargoBase base
                                   ON crg.cd_cargo = base.cd_cargo
                                  AND crg.coc_matricula = base.cd_registro_funcional
                                  AND crg.cd_cargo_base_servidor = base.cd_cargo_base_servidor
                                  AND CAST(crg.coc_observacao AS VARCHAR(2)) = CAST(base.cd_lotacao_cl AS VARCHAR(2))
                                  INNER JOIN GE_RHU_Colaborador col
                                  ON col.pes_id = crg.pes_id
                                  LEFT JOIN GE_RHU_CargaHoraria chr
                                   ON crg.carga_horaria * 60 = chr.chr_horasAula
                                  AND car.crg_id = chr.crg_id
                            WHERE uad.uad_situacao = 1
                              AND tvi.tvi_situacao <> 3
                              AND car.crg_situacao <> 3
                              AND col.col_situacao <> 3
                            GROUP BY crg.pes_id, car.crg_id, uad.uad_id, uad.ent_id, col.col_id, chr.chr_id,
                                  crg.coc_situacao, crg.coc_matricula, crg.coc_observacao, crg.lotacao,
                                  crg.coc_vigenciaInicio, crg.cd_situacao_funcional) AS tmp
                          LEFT JOIN GE_RHU_ColaboradorCargo coc
                           ON coc.col_id = tmp.col_id
                          AND coc.crg_id = tmp.crg_id
                          AND (coc.coc_observacao = tmp.coc_observacao or coc.coc_observacao is null)
                          AND coc.coc_matricula = tmp.coc_matricula
                          --AND (coc.chr_id = tmp.chr_id or coc.chr_id is null)
                          AND coc.uad_id = tmp.uad_id		
                          AND (coc.coc_vigenciaInicio = tmp.coc_vigenciaInicio or tmp.cd_situacao_funcional = 99) --adicionado pois nos casos de origem=2, o inicio da vigencia vem = getdate, portanto ele estava duplicando, criando um registro pra cada dia
                          AND coc.coc_situacao <> 3
                          LEFT JOIN @dre dre
                          ON dre.cd_unidade_educacao = tmp.lotacao)AS _main) AS _source	
     ON _source.col_id = _target.col_id
    AND _source.crg_id = _target.crg_id
    AND _source.coc_id = _target.coc_id
    WHEN MATCHED AND _target.coc_controladoIntegracao = 1 THEN
         UPDATE SET uad_id = _source.uad_id,
                    coc_observacao = _source.coc_observacao,
                    coc_situacao = _source.coc_situacao,
                    coc_controladoIntegracao = 1,
                    chr_id = CASE WHEN _source.chr_id IS NOT NULL THEN _source.chr_id ELSE _target.chr_id END,
                    coc_vigenciaInicio = _source.coc_vigenciaInicio,
                    coc_vigenciaFim = case when _source.coc_situacao = 1 then null else coc_vigenciaFim end,
                    coc_dataAlteracao = CASE WHEN (_source.uad_id = _target.uad_id) and 
                                                  (_source.coc_situacao = _target.coc_situacao) and
                                                  (_source.coc_observacao = _target.coc_observacao) and
                                                  (_source.coc_vigenciaInicio = _target.coc_vigenciaInicio)
                                                  THEN _target.coc_dataAlteracao
                                             ELSE GETDATE() END
    WHEN NOT MATCHED THEN
         INSERT (col_id, crg_id, coc_id, chr_id, coc_matricula, coc_observacao, coc_vigenciaInicio,
                 ent_id, uad_id, coc_situacao, coc_dataCriacao, coc_dataAlteracao, coc_controladoIntegracao)
         VALUES (_source.col_id, _source.crg_id, _source.coc_id, _source.chr_id, _source.coc_matricula,
                 _source.coc_observacao, _source.coc_vigenciaInicio, _source.ent_id, _source.uad_id,
                 _source.coc_situacao, GETDATE(), GETDATE(), 1);
             
    -- atribuição esporádica    
	declare @crgAtribuicaoEsporadica int
	select top 1 @crgAtribuicaoEsporadica = crg_id from GE_RHU_Cargo where crg_tipo = 2

	MERGE INTO GE_RHU_ColaboradorCargo _target
		USING (
		select * 
		  from (
				select coc.col_id, @crgAtribuicaoEsporadica as crg_id, 
					   (select isnull(max(coc_id),0) + 1 from GE_RHU_ColaboradorCargo cc2
													  where cc2.col_id = coc.col_id
														and cc2.crg_id = @crgAtribuicaoEsporadica) as coc_id,
					   coc.coc_matricula, NULL as coc_observacao,
					   coc.coc_vigenciaInicio, coc.coc_vigenciaFim, coc.coc_situacao, -- repetindo estes 3 campos do vínculo de CP,ASS ou DIR. pq se o vinculo de CP acabar, esse deve acabar também
					   coc.ent_id, coc.uad_id, null as chr_id, 1 as coc_controladoIntegracao,
					   GETDATE() as coc_dataCriacao, GETDATE() as coc_dataAlteracao,
					   ROW_NUMBER() OVER(PARTITION BY coc.col_id,coc.coc_matricula ORDER BY coc.coc_vigenciaInicio) as linha
				  from GE_RHU_ColaboradorCargo coc
					   inner join CoreSSO..SYS_Usuario usu on usu.usu_login = coc.coc_matricula and usu.usu_situacao <> 3
					   inner join BD_PRODAM..v_cargobase_mstech cb on cb.cd_registro_funcional = coc.coc_matricula
					   inner join GE_RHU_Cargo crgDoc on cb.cd_cargo = crgDoc.crg_codigo
					                                  and crgDoc.crg_situacao <> 3 and crgDoc.crg_cargoDocente = 1
				 where coc_situacao <> 3 and coc_situacao = 1-- and coc.coc_matricula = '5925550'
				   and cb.cd_cargo_base_servidor not in (select cd_cargo_base_servidor
				                                           from BD_PRODAM..v_cadastro_professor)
				   and not exists (select cc.col_id 
									 from GE_RHU_ColaboradorCargo cc
										  inner join GE_RHU_Cargo crg on crg.crg_id = cc.crg_id
									where cc.col_id = coc.col_id and crg.crg_tipo in (2,3)
									  and cc.coc_situacao = 1)
			) tab
		   where tab.linha = 1
	) AS _source	
		 ON _source.col_id = _target.col_id
		AND _source.crg_id = _target.crg_id
		AND _source.coc_id = _target.coc_id
	WHEN MATCHED AND _target.coc_controladoIntegracao = 1 THEN
		 UPDATE SET uad_id = _source.uad_id,
					coc_situacao = _source.coc_situacao,
					coc_vigenciaInicio = _source.coc_vigenciaInicio,
					coc_vigenciaFim = case when _source.coc_situacao = 1 then null else _source.coc_vigenciaFim end,
					coc_dataAlteracao = CASE WHEN (_source.uad_id = _target.uad_id) and 
												  (_source.coc_situacao = _target.coc_situacao)
												  THEN _target.coc_dataAlteracao
											 ELSE GETDATE() END
	WHEN NOT MATCHED THEN
			 INSERT (col_id, crg_id, coc_id, chr_id, coc_matricula, coc_observacao, coc_vigenciaInicio,
					 ent_id, uad_id, coc_situacao, coc_dataCriacao, coc_dataAlteracao, coc_controladoIntegracao)
			 VALUES (_source.col_id, _source.crg_id, _source.coc_id, _source.chr_id, _source.coc_matricula,
					 _source.coc_observacao, _source.coc_vigenciaInicio, _source.ent_id, _source.uad_id,
					 _source.coc_situacao, GETDATE(), GETDATE(), 1);
					
                 
      --inserido em 08/07 para garantir que todo docente com atribuição esporádica permaneça no grupo de docentes
      --inseri aqui pela urgência da situação e porque ainda não consegui encontrar o local que os retira deste grupo
	  INSERT INTO CoreSSO..SYS_USUARIOGRUPO (usu_id, gru_id, usg_situacao)
	  select distinct Usu.usu_Id, '85D6EC99-AF8A-E311-B1FE-782BCB3D2D76', 1 
		from GestaoPedagogica..RHU_ColaboradorCargo Coc with(nolock)
			 INNER JOIN GestaoPedagogica..RHU_Colaborador Col WITH(NOLOCK) ON Col.col_id = Coc.col_id
			 INNER JOIN GestaoPedagogica..RHU_Cargo crg on crg.crg_id = Coc.crg_id and crg.crg_tipo = 3
			 INNER JOIN CoreSSO..PES_Pessoa Pes WITH(NOLOCK)	ON Pes.pes_Id = Col.pes_id
			 INNER JOIN CoreSSO..SYS_Usuario Usu WITH(NOLOCK) ON Usu.pes_id = Col.pes_id and usu.usu_login not like 'RESP%' and usu.usu_login not like 'RA%'
			 LEFT JOIN GestaoPedagogica..ACA_docente Doc WITH(NOLOCK) ON Doc.col_id = Col.col_id
		where crg.crg_id = 236
		  and NOT EXISTS (SELECT 1 from CoreSSO..Sys_usuarioGrupo Ugru WITH(NOLOCK)
						   WHERE Ugru.gru_Id = '85D6EC99-AF8A-E311-B1FE-782BCB3D2D76'
							 AND Ugru.usu_id = Usu.usu_id AND Ugru.usg_situacao <> 3)    
END
GO
USE [GestaoPedagogica]
GO
ENABLE TRIGGER TRG_RHU_ColaboradorCargo_Identity ON RHU_ColaboradorCargo;
GO
USE [Manutencao]
GO

/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_RHU_ColaboradorCargoDisciplina_IMPORT]    Script Date: 05/12/2014 10:35:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_QuadroHorario_RHU_ColaboradorCargoDisciplina_IMPORT]
	@ent_id UNIQUEIDENTIFIER
AS
BEGIN
    declare @id_entidade UNIQUEIDENTIFIER
	
	SET @id_entidade = (SELECT ent_id FROM SSO_SYS_Entidade WHERE ent_sigla = 'smesp')
    
    DECLARE @tdo_id UNIQUEIDENTIFIER
    
    SET @tdo_id = (SELECT tdo_id FROM SSO_SYS_TipoDocumentacao WHERE tdo_sigla = 'CPF')
    
    UPDATE tmp_DiarioClasse_grade_curricular
       SET dc_componente_curricular = LTRIM(RTRIM(dc_componente_curricular));
    
	CREATE TABLE #ColabCargoDisciplina 	(col_id bigint, crg_id int, coc_id int, tds_id int)
	insert into #ColabCargoDisciplina
	-- baseado na grade curricular
	SELECT col.col_id, crg.crg_id, coc.coc_id, tds.tds_id
	 FROM tmp_DiarioClasse_grade_curricular tmpgc
		  INNER JOIN 
		  (SELECT cd_componente_curricular, dc_componente_curricular, dis_nome
			 FROM DEPARA_DISCIPLINAS
		   --UNION
		   --SELECT DISTINCT cd_componente_curricular, dc_componente_curricular,
		   --		  'Eletiva de aluno' as dis_nome
		   --  FROM BD_PRODAM..v_cadastro_disciplina
		   -- WHERE LEFT(dc_componente_curricular,7) = 'REC PAR'
		   UNION
		   SELECT DISTINCT cd_componente_curricular, dc_componente_curricular,
				  'Atendimento educacional especializado' as dis_nome
			 FROM BD_PRODAM..v_cadastro_disciplina
			WHERE cd_componente_curricular in (1030,1103) -- turmas de AEE
		  ) depDis
		  ON depDis.cd_componente_curricular = tmpgc.cd_componente_curricular
		  INNER JOIN GE_ACA_TipoDisciplina tds ON tds.tds_nome = depDis.dis_nome
		  INNER JOIN
		  (SELECT tdo_id, pes_id, psd_numero
			 FROM SSO_PES_PessoaDocumento psd
			WHERE psd.tdo_id = @tdo_id
			  AND psd.psd_situacao <> 3) AS psd
		  ON psd.psd_numero COLLATE DATABASE_DEFAULT = tmpgc.cd_cpf_pessoa COLLATE DATABASE_DEFAULT
		  INNER JOIN GE_RHU_Colaborador col
		   ON col.pes_id = psd.pes_id
		  AND col.ent_id = @id_entidade
		  INNER JOIN GE_ACA_Docente doc
		  ON doc.col_id = col.col_id
		  INNER JOIN GE_RHU_Cargo crg
		   ON crg.crg_codigo = CONVERT(VARCHAR(20), tmpgc.cd_cargo)
		  AND crg.ent_id = @id_entidade
		  INNER JOIN GE_RHU_ColaboradorCargo coc
		   ON coc.col_id = col.col_id
		  AND coc.crg_id = crg.crg_id
		  AND coc.ent_id = @id_entidade
	WHERE tds.tds_situacao = 1
	  AND col.col_situacao = 1
	  and doc.doc_situacao = 1
	  and crg.crg_situacao = 1
	  and coc.coc_situacao = 1
	GROUP BY col.col_id, crg.crg_id, coc.coc_id, tds.tds_id
	union
	SELECT coc.col_id, coc.crg_id, coc.coc_id, tds.tds_id
	  FROM GE_RHU_ColaboradorCargo coc
		   inner join GE_RHU_Cargo crg on crg.crg_id = coc.crg_id,
		   GE_ACA_TipoDisciplina tds
	 WHERE (crg.crg_codigo in (3875,3212,3239,3220,4650) and tds_nome = 'Conceito Global (Berçario/Minigrupo)'
	     or crg.crg_codigo in (3213,3395,3239) and tds.tds_nome = 'Conceito Global (Infantil I e II)')
	 GROUP BY coc.col_id, coc.crg_id, coc.coc_id, tds.tds_id
	
    MERGE INTO GE_RHU_ColaboradorCargoDisciplina _target
    USING #ColabCargoDisciplina AS _source
     ON _source.col_id = _target.col_id
    AND _source.crg_id = _target.crg_id
    AND _source.coc_id = _target.coc_id
    AND _source.tds_id = _target.tds_id
    WHEN NOT MATCHED THEN
         INSERT (col_id, crg_id, coc_id, tds_id)
         VALUES (_source.col_id, _source.crg_id, _source.coc_id, _source.tds_id);
END
GO

/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_TUR_Turma_IMPORT]    Script Date: 05/12/2014 10:35:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_QuadroHorario_TUR_Turma_IMPORT]
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
														AND ((tur.dc_etapa_ensino like '%infantil%' and cal.cal_id = 13) 
															 or (tur.dc_etapa_ensino like '%EJA%' and tur.dc_tipo_periodicidade = 'SEMESTRAL INICIO NO 1º SEMESTRE' and cal.cal_id = 14)
															 or (tur.dc_etapa_ensino like '%EJA%' and tur.dc_tipo_periodicidade = 'SEMESTRAL INICIO NO 2º SEMESTRE' and cal.cal_id = 15)
														     or (tur.dc_etapa_ensino not like '%infantil%' 
																 and tur.dc_etapa_ensino not like '%EJA%' and cal.cal_id = 12))
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
		   inner join GE_TUR_TurmaCurriculo tcr on tcr.tur_id = tur.tur_id and tcr.tcr_situacao <> 3 and tcr.cur_id in (79,80)
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
GO

/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_TUR_TurmaCurriculo_IMPORT]    Script Date: 05/12/2014 10:35:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_QuadroHorario_TUR_TurmaCurriculo_IMPORT]
	@ent_id UNIQUEIDENTIFIER
AS
BEGIN
	IF (@ent_id IS NULL)
		SET @ent_id = (SELECT ent_id FROM SSO_SYS_Entidade WHERE ent_sigla = 'smesp')
    
    --estes insert abaixo foi adicionado em 16/09 para que o processo insira as novas series de EJA segundo semestre
	insert into tmpTipoSerieEOL (cd_serie_eol98)
	 select distinct cd_serie_eol98 from BD_PRODAM..v_turma_MSTECH tm
	  where an_letivo = 2018 and cd_serie_ensino is not null
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
      tcr_situacao tinyint NULL)    
    
	--turmas regulares com fl_edFisica = 0
    INSERT INTO #tmp_TurmaCurriculo (tur_id, cur_id, crr_id, crp_id, tcr_prioridade, tcr_situacao)
    SELECT tur.tur_id, cur.cur_id, crr.crr_id, crp.crp_id, 1 AS tcr_prioridade, 1 AS tcr_situacao
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
       and  ((crp.cur_id = 76 and crp.crp_ordem >= 6 and tmp.cd_escola not in (select esc_codigo from _PARAMETROS_ESCOLA_EDUCACAO_FISICA))
			  or (crp.cur_id = 76 and crp.crp_ordem < 6)
			  or (crp.cur_id = 69 and tmp.cd_escola not in (select esc_codigo from _PARAMETROS_ESCOLA_EDUCACAO_FISICA))
			  or crp.cur_id not in (69,71,76,79,80)
			)
       and dep.fl_edFisica = 0
    
	--turmas regulares com fl_edFisica = 1
    INSERT INTO #tmp_TurmaCurriculo (tur_id, cur_id, crr_id, crp_id, tcr_prioridade, tcr_situacao)
    SELECT tur.tur_id, cur.cur_id, crr.crr_id, crp.crp_id, 1 AS tcr_prioridade, 1 AS tcr_situacao
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
	   and  ((crp.cur_id = 76 and crp.crp_ordem >= 6 and tmp.cd_escola in (select esc_codigo from _PARAMETROS_ESCOLA_EDUCACAO_FISICA))
			  or (crp.cur_id = 69 and tmp.cd_escola in (select esc_codigo from _PARAMETROS_ESCOLA_EDUCACAO_FISICA))
			  or (crp.cur_id in (71,79,80))
			)
       and dep.fl_edFisica = 1

	 --turmas de RP com fl_edFisica = 0
    INSERT INTO #tmp_TurmaCurriculo (tur_id, cur_id, crr_id, crp_id, tcr_prioridade, tcr_situacao)
    SELECT tur.tur_id, cur.cur_id, crr.crr_id, crp.crp_id, 1 AS tcr_prioridade, 1 AS tcr_situacao
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
       AND  ((crp.cur_id = 76 and crp.crp_ordem >= 6 and tmp.cd_escola not in (select esc_codigo from _PARAMETROS_ESCOLA_EDUCACAO_FISICA))
			  or (crp.cur_id = 76 and crp.crp_ordem < 6)
			  or (crp.cur_id = 69 and tmp.cd_escola not in (select esc_codigo from _PARAMETROS_ESCOLA_EDUCACAO_FISICA))
			  or (crp.cur_id NOT IN (69,71,76))
			 )
       and DEPARA_CURSO_GRADES.fl_edFisica = 0
    
	 --turmas de RP com fl_edFisica = 1
    INSERT INTO #tmp_TurmaCurriculo (tur_id, cur_id, crr_id, crp_id, tcr_prioridade, tcr_situacao)
    SELECT tur.tur_id, cur.cur_id, crr.crr_id, crp.crp_id, 1 AS tcr_prioridade, 1 AS tcr_situacao
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
       and  ((crp.cur_id = 76 and crp.crp_ordem >= 6 and tmp.cd_escola in (select esc_codigo from _PARAMETROS_ESCOLA_EDUCACAO_FISICA))
			  or (crp.cur_id = 69 and tmp.cd_escola in (select esc_codigo from _PARAMETROS_ESCOLA_EDUCACAO_FISICA))
			  or (crp.cur_id in (71,79,80))
			)
       and DEPARA_CURSO_GRADES.fl_edFisica = 1
    
    INSERT INTO #tmp_TurmaCurriculo (tur_id, cur_id, crr_id, crp_id, tcr_prioridade, tcr_situacao)
    SELECT tur.tur_id, cur.cur_id, crr.crr_id, crp.crp_id, 1 AS tcr_prioridade, 1 AS tcr_situacao
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
    USING (select tur_id, cur_id, crr_id, crp_id, tcr_situacao, tcr_prioridade
			 from #tmp_TurmaCurriculo 
			group by tur_id, cur_id, crr_id, crp_id, tcr_situacao, tcr_prioridade) AS _source
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
		select distinct cur_id, crr_id, tur.esc_id, uni_id, 1 as ces_id, '2018-01-01' as ces_vigenciaInicio,
			   cast(null as date) as ces_vigenciafim, 1 as ces_situacao, GETDATE() as ces_DataCriacao,
			   GETDATE() as ces_DataAlteracao, 1 as vis_id
		  from GE_TUR_Turma tur
			   inner join GE_TUR_TurmaCurriculo tcr
			   on tur.tur_id = tcr.tur_id and tcr.cur_id in (65,66,67,68)
			   inner join GE_ESC_Escola esc
			   on tur.esc_id = esc.esc_id
			   inner join GE_ACA_CalendarioAnual cal
			   on tur.cal_id = cal.cal_id
		 where tur.tur_situacao <> 3
		   and tcr.tcr_situacao <> 3
		   and esc.esc_situacao <> 3
		   and cal.cal_situacao <> 3
		   and cal.cal_ano = 2018
		   and cur_id not in (select cur_id from GE_ACA_CurriculoEscola ces
							   where ces.cur_id = tcr.cur_id
								 and ces.crr_id = tcr.crr_id
								 and ces.esc_id = tur.esc_id
								 and ces.uni_id = tur.uni_id)
		 
		 insert into GE_ACA_CurriculoEscolaPeriodo
		select distinct ces.cur_id, ces.crr_id, ces.esc_id, ces.uni_id, ces.ces_id, tcr.crp_id, ces_situacao
		  from GE_TUR_Turma tur
			   inner join GE_TUR_TurmaCurriculo tcr
			   on tur.tur_id = tcr.tur_id and tcr.cur_id in (65,66,67,68)
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
		   and cal.cal_ano = 2018
		   and ces.ces_situacao <> 3
		   and ces.cur_id not in (select cur_id from GE_ACA_CurriculoEscolaPeriodo cep
								   where cep.cur_id = ces.cur_id
									 and cep.crr_id = ces.crr_id
									 and cep.esc_id = ces.esc_id
									 and cep.uni_id = ces.uni_id
									 and cep.ces_id = ces.ces_id
									 and cep.crp_id = tcr.crp_id)

END
GO

/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_TUR_TurmaDisciplina_IMPORT]    Script Date: 05/12/2014 10:35:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_QuadroHorario_TUR_TurmaDisciplina_IMPORT]
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
           tud_naoLancarFrequencia = case when dis.tds_id in (11,12) and crd.cur_id = 76 then 1 
										  when dis.tds_id = 10 and crd.crp_id < 6 then 1 
										  when dis.tds_id in (13,30,32) then 1 
										  else 0 end,
           tud_naoExibirFrequencia = case when dis.tds_id in (11,12) and crd.cur_id = 76 then 1 
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
       AND (crd.cur_id not in (69,76)
           or (crd.cur_id in (69,76) and dis.dis_cargaHorariaTeorica <> 0))
    
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
                   ROW_NUMBER() OVER (PARTITION BY tur_id ORDER BY CASE WHEN cur_id in (39,40,41,42,79,80,81) 
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
                   ROW_NUMBER() OVER (PARTITION BY tur_id ORDER BY CASE WHEN cur_id in (39,40,41,42,79,80,81) 
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
GO

USE [GestaoPedagogica]
GO
DISABLE TRIGGER TRG_TUR_TurmaDocente_Identity ON TUR_TurmaDocente;
GO
USE [Manutencao]
GO
/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_TUR_TurmaDocente_IMPORT]    Script Date: 05/16/2014 09:16:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_QuadroHorario_TUR_TurmaDocente_IMPORT]
	@ent_id UNIQUEIDENTIFIER
AS
BEGIN
	/*
		Para execução desse procedimento é necessário que a Trigger TRG_TUR_TurmaDocente_Identity
		pois com a utilização do comando MERGE, não há tempo suficiente para o MERGE executar
		gerando um erro de violação de chave primária.
	*/
   
    DECLARE @tdo_id UNIQUEIDENTIFIER, @pac_valor tinyint, @entidade_id UNIQUEIDENTIFIER
    
    SELECT @tdo_id = tdo_id FROM SSO_SYS_TipoDocumentacao WHERE tdo_sigla = 'CPF'
    SELECT @entidade_id = ent_id FROM SSO_SYS_Entidade WHERE ent_sigla = 'smesp'
    
    CREATE TABLE #tmp_GradeTurma
     (tud_id BIGINT ,
      doc_id BIGINT ,
      col_id BIGINT ,
      crg_id INT ,
      coc_id INT ,
      dis_nome varchar(200) COLLATE DATABASE_DEFAULT,
      tds_id INT,
      dc_componente_curricular varchar(70),
	  disciplinaDuplaRegencia BIT)
    
    create table #tmpDisciplinas
     (cd_componente_curricular int,
      dc_componente_curricular varchar(100),
      dis_nome varchar(100),
	  disciplinaDuplaRegencia bit)
    
    insert into #tmpDisciplinas
    -- Disciplinas de Turmas Regulares
    SELECT cd_componente_curricular, dc_componente_curricular, dis_nome, disciplinaDuplaRegencia
      FROM DEPARA_DISCIPLINAS
	 WHERE dis_nome not like 'Recuper%'
	UNION
	SELECT cd_componente_curricular, dc_componente_curricular, dc_componente_curricular as dis_nome, disciplinaDuplaRegencia
      FROM DEPARA_DISCIPLINAS
	 WHERE dis_nome like 'Recuper%'
    UNION 
    SELECT DISTINCT cd_componente_curricular, dc_componente_curricular,
				'Atendimento educacional especializado' as dis_nome, 0 as disciplinaDuplaRegencia
	  FROM BD_PRODAM..v_cadastro_disciplina
	 WHERE cd_componente_curricular in (1030,1103)
    
    create index IX_Disciplinas_01 on #tmpDisciplinas (dc_componente_curricular)
    
    CREATE TABLE #tmp_GradeParcial 
     (tud_id BIGINT ,
      doc_id BIGINT ,
      col_id BIGINT ,
      dis_nome varchar(200) COLLATE DATABASE_DEFAULT,
	  disciplinaDuplaRegencia BIT,
      tds_id INT,
      uad_id UNIQUEIDENTIFIER,
      cd_lotacao_cl VARCHAR(2),
      cd_situacao_funcional varchar(20),
      dc_componente_curricular varchar(70))
    
    CREATE TABLE #tmp_componente
     (cd_cpf_pessoa varchar(11),
      cd_cargo int,
      cd_cargo_base_servidor int,
      cd_componente_curricular int,
      dc_componente_curricular varchar(70),
      tud_id bigint,
      dis_id int,
      esc_id int)
    
    insert into #tmp_componente
    select tmpgc.cd_cpf_pessoa, tmpgc.cd_cargo, tmpgc.cd_cargo_base_servidor, tmpgc.cd_componente_curricular,
           tmpgc.dc_componente_curricular, tud.tud_id, trt.dis_id, tur.esc_id
      from tmp_DiarioClasse_grade_curricular tmpgc
           INNER JOIN DEPARA_TURMA depTur
           ON tmpgc.cd_turma_escola = depTur.tur_codigo
           INNER JOIN GestaoPedagogica..TUR_Turma tur
            ON depTur.tur_id = tur.tur_id
           AND 1 = tur.tur_situacao
           INNER JOIN GestaoPedagogica..TUR_TurmaRelTurmaDisciplina trel
           ON depTur.tur_id = trel.tur_id
           INNER JOIN GestaoPedagogica..TUR_TurmaDisciplina tud
            ON trel.tud_id = tud.tud_id
           AND 1 = tud.tud_situacao
           INNER JOIN GestaoPedagogica..TUR_TurmaDisciplinaRelDisciplina trt
           ON tud.tud_id = trt.tud_id
           INNER JOIN GestaoPedagogica..TUR_TurmaCurriculo tcr
           on tur.tur_id = tcr.tur_id
           and 1 = tcr.tcr_situacao
--     where cur_id in  (select cur_id from GestaoPedagogica..ACA_Curso
--                        where cur_nome not like '%EJA%' and cur_situacao <> 3)
    
    insert into #tmp_GradeParcial
          (tud_id, doc_id, col_id, dis_nome, tds_id, uad_id, cd_lotacao_cl, cd_situacao_funcional, dc_componente_curricular, disciplinaDuplaRegencia)
    select tmpgc.tud_id, doc.doc_id, col.col_id, dis.dis_nome, dis.tds_id, esc.uad_id, crgB.cd_lotacao_cl,
           crgB.cd_situacao_funcional, tmpgc.dc_componente_curricular, disciplinaDuplaRegencia
      FROM #tmp_componente tmpgc
           INNER JOIN CoreSSO..PES_PessoaDocumento psd
            ON tmpgc.cd_cpf_pessoa COLLATE DATABASE_DEFAULT = psd.psd_numero COLLATE DATABASE_DEFAULT
           AND @tdo_id = psd.tdo_id
           AND 1 = psd.psd_situacao
           INNER JOIN (select distinct * from tmp_GerenciamentoFrequencia_cargoBase) crgB
            ON tmpgc.cd_cargo = crgB.cd_cargo
           AND tmpgc.cd_cargo_base_servidor = crgB.cd_cargo_base_servidor
           INNER JOIN GestaoPedagogica..RHU_Colaborador col
            ON psd.pes_id = col.pes_id
           AND @entidade_id = col.ent_id
           AND 1 = col.col_situacao
           INNER JOIN GestaoPedagogica..ACA_Docente doc
            ON col.col_id = doc.col_id
           AND 1 = doc.doc_situacao
           INNER JOIN #tmpDisciplinas depDis
           ON tmpgc.cd_componente_curricular = depDis.cd_componente_curricular
           INNER JOIN GestaoPedagogica..ACA_Disciplina dis
            ON tmpgc.dis_id = dis.dis_id
           AND depDis.dis_nome = dis.dis_nome
           AND 1 = dis.dis_situacao
           INNER JOIN GestaoPedagogica..ESC_Escola esc
            ON tmpgc.esc_id = esc.esc_id
           AND 1 = esc.esc_situacao
           INNER JOIN CoreSSO..SYS_UnidadeAdministrativa uad
            ON esc.uad_id = uad.uad_id
           AND 1 = uad.uad_situacao
    
    insert into #tmp_GradeTurma (tud_id, doc_id, col_id, crg_id, coc_id, dis_nome, tds_id, dc_componente_curricular, disciplinaDuplaRegencia)
    select tud_id, doc_id, grp.col_id, coc.crg_id, coc.coc_id, dis_nome, tds_id, grp.dc_componente_curricular, disciplinaDuplaRegencia
      from #tmp_GradeParcial grp
           INNER JOIN GE_RHU_ColaboradorCargo coc
            ON grp.col_id = coc.col_id
           AND grp.uad_id = coc.uad_id
           AND grp.cd_lotacao_cl = coc.coc_observacao
           AND 1 = coc.coc_situacao
           INNER JOIN GE_RHU_Cargo crg
            ON coc.crg_id = crg.crg_id
           AND 1 = crg.crg_situacao
           INNER JOIN GE_RHU_TipoVinculo tvi
            ON crg.tvi_id = tvi.tvi_id
           AND grp.cd_situacao_funcional = tvi.tvi_codIntegracao
           AND 1 = tvi.tvi_situacao

	--- Ativa as atribuições de docentes que já existirem para as turmas de EJA----
	update GestaoPedagogica..TUR_TurmaDocente
	   set tdt_situacao = case when tdt_vigenciaFim IS NOT NULL then 4 else 1 end
     where tdt_situacao = 3
       and tud_id in
           (select tud_id from GestaoPedagogica..TUR_TurmaRelTurmaDisciplina
             where tur_id in 
                   (select tcr.tur_id 
					  from GestaoPedagogica..TUR_TurmaCurriculo tcr
						   inner join GestaoPedagogica..ACA_Curso cur on cur.cur_id = tcr.cur_id and cur.cur_situacao <> 3
						   inner join GestaoPedagogica..ACA_TipoModalidadeEnsino modEnsino on modEnsino.tme_id = cur.tme_id
                     --where modEnsino.tme_nome in ('CIEJA','EJA - Modular') --aguardando a publicação do SGP pro EJA
					 where cur.cur_nome_abreviado in ('CIEJA', 'EJA MOD', 'EJA', 'EJA ESP') --aguardando a publicação do SGP pro EJA
				    ))
    
    CREATE TABLE #tmp_TurmaDocente 
	    (
          tdt_verificador INT ,
          tdt_id INT ,
          tud_id BIGINT ,
          doc_id BIGINT ,
          col_id BIGINT ,
          crg_id INT ,
          coc_id INT ,
          tdt_tipo TINYINT ,
          tdt_horarioSobreposto BIT ,
          tdt_situacao TINYINT ,
          tdt_posicao TINYINT ,
          tdt_vigenciaInicio DATE
        )
	
    INSERT INTO #tmp_TurmaDocente
           (tdt_verificador, tdt_id, tud_id, doc_id, col_id, crg_id, coc_id, tdt_tipo,
            tdt_horarioSobreposto, tdt_situacao, tdt_vigenciaInicio , tdt_posicao)
    SELECT 1, ISNULL(_main.tdt_id, isnull(_main.max_tdt + _main.RowNum, _main.RowNum)) AS tdt_id, _main.tud_id,
           _main.doc_id, _main.col_id, _main.crg_id, _main.coc_id, _main.tdt_tipo, _main.tdt_horarioSobreposto,
           _main.tdt_situacao, _main.tdt_dataCriacao,
          tdt_posicao = CASE when disciplinaDuplaRegencia = 1 then 6 else 1 end
      FROM (SELECT _out.tdt_id, _out.tud_id, _out.doc_id, _out.col_id, _out.crg_id, _out.coc_id, _out.tdt_tipo,
                   _out.tdt_horarioSobreposto, _out.tdt_situacao, _out.tdt_dataCriacao, max_tdt, dc_componente_curricular, disciplinaDuplaRegencia,
                   ROW_NUMBER() OVER ( PARTITION BY _out.tud_id ORDER BY _out.tdt_dataCriacao ) AS RowNum
              FROM (select tdt.tdt_id, td.tud_id, td.doc_id, td.col_id, td.crg_id, td.coc_id, 1 AS tdt_tipo,
                           0 AS tdt_horarioSobreposto, 1 AS tdt_situacao, dc_componente_curricular, 
                           ISNULL(tdt.tdt_dataCriacao, GETDATE()) AS tdt_dataCriacao, TD_MAX.max_tdt, disciplinaDuplaRegencia
                     from  #tmp_GradeTurma td
						   INNER JOIN GE_TUR_TurmaDisciplina tud on tud.tud_id = td.tud_id and tud.tud_tipo <> 12 --filha da regencia
                           INNER JOIN GE_RHU_ColaboradorCargoDisciplina ccd
                            ON td.col_id = ccd.col_id
                           AND td.crg_id = ccd.crg_id
                           AND td.coc_id = ccd.coc_id
                           AND td.tds_id = ccd.tds_id
                           LEFT JOIN 
                           (SELECT tud_id, MAX(tdt_id) max_tdt FROM GE_TUR_TurmaDocente group by tud_id) TD_MAX
                           on td.tud_id = TD_MAX.tud_id
                           LEFT JOIN GE_TUR_TurmaDocente tdt
                            ON td.tud_id = tdt.tud_id
                           AND td.doc_id = tdt.doc_id
                           AND td.col_id = tdt.col_id
                           AND td.crg_id = tdt.crg_id
                           AND td.coc_id = tdt.coc_id
                           AND 1 = tdt.tdt_situacao) AS _out
             GROUP BY  _out.tdt_id, _out.tud_id, _out.doc_id, _out.col_id, _out.crg_id, _out.coc_id,
                       _out.tdt_tipo, _out.tdt_horarioSobreposto, _out.tdt_situacao, _out.tdt_dataCriacao,
                       _out.max_tdt, _out.dc_componente_curricular, disciplinaDuplaRegencia) _main
	
    insert into #tmp_TurmaDocente
    select td.tdt_verificador, td.tdt_id, tud2.tud_id, td.doc_id, td.col_id, td.crg_id, td.coc_id, 
           td.tdt_tipo, td.tdt_horarioSobreposto, td.tdt_situacao, td.tdt_posicao, td.tdt_vigenciaInicio
      from #tmp_TurmaDocente td
           inner join GE_TUR_TurmaRelTurmaDisciplina trel ON td.tud_id = trel.tud_id
           inner join GE_TUR_Turma tur ON trel.tur_id = tur.tur_id 
           inner join GE_ACA_CalendarioAnual cal ON cal.cal_id = tur.cal_id 
           inner join _PARAMETROS par ON par.CHAVE = 'ANO_BASE' and cal.cal_ano = par.VALOR
           inner join GE_TUR_TurmaCurriculo tcr ON tcr.tur_id = tur.tur_id and tcr.tcr_situacao <> 3
           inner join GE_ACA_CurriculoPeriodo crp ON crp.cur_id = tcr.cur_id 
                      and crp.crp_id = tcr.crp_id
                      and crp.crp_ordem < 6
           inner join GE_TUR_TurmaDisciplina tud ON td.tud_id = tud.tud_id 
                      and tud.tud_nome like 'Regência%'
           inner join GE_TUR_TurmaRelTurmaDisciplina trel2 ON trel2.tur_id = tur.tur_id
           inner join GE_TUR_TurmaDisciplina tud2 ON tud2.tud_id = trel2.tud_id
                      and tud2.tud_tipo = 12
	 WHERE tur.tur_situacao = 1
       and tud.tud_situacao = 1
       and crp.crp_situacao = 1
       and tcr.tcr_situacao = 1
       and tud2.tud_situacao = 1
	
	
	CREATE TABLE #tmp_TurmaDocente_Insert
	    ( tdt_verificador INT ,
          tdt_id INT ,
          tud_id BIGINT ,
          doc_id BIGINT ,
          col_id BIGINT ,
          crg_id INT ,
          coc_id INT ,
          tdt_tipo TINYINT ,
          tdt_horarioSobreposto BIT ,
          tdt_situacao TINYINT ,
          tdt_posicao TINYINT ,
          tdt_vigenciaInicio DATE,
          tdt_vigenciaFim DATE)
	
	insert into #tmp_TurmaDocente_Insert
	       (tdt_verificador, tdt_id, tud_id, doc_id, col_id, crg_id, coc_id, tdt_tipo,
	        tdt_horarioSobreposto, tdt_situacao, tdt_posicao, tdt_vigenciaInicio)
	select tdt_verificador, tdt_id, tud_id, doc_id, col_id, crg_id, coc_id, tdt_tipo,
	       tdt_horarioSobreposto, tdt_situacao, tdt_posicao, tdt_vigenciaInicio
	  from (select tdt_verificador, tdt_id, tud_id, doc_id, col_id, crg_id, coc_id, tdt_tipo,
	               tdt_horarioSobreposto, tdt_situacao, tdt_posicao, tdt_vigenciaInicio,
	               ROW_NUMBER() OVER (PARTITION BY tud_id, doc_id, col_id, crg_id, coc_id
	                            ORDER BY tdt_vigenciaInicio desc) AS RowNum
	          from #tmp_TurmaDocente) td
     where td.RowNum = 1
	
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
	
    MERGE INTO GE_TUR_TurmaDocente _target
    USING (SELECT tdt_id, tud_id, doc_id, col_id, crg_id, coc_id, tdt_tipo, tdt_horarioSobreposto,
                  tdt_situacao, tdt_posicao, tdt_vigenciaInicio
             FROM #tmp_TurmaDocente_Insert) AS _source
     ON  _source.tud_id = _target.tud_id
    AND _source.tdt_id = _target.tdt_id
    WHEN NOT MATCHED THEN
		 INSERT (tdt_id, tud_id, doc_id, col_id, crg_id, coc_id, tdt_tipo,
                 tdt_horarioSobreposto, tdt_situacao, tdt_posicao, tdt_vigenciaInicio)
          VALUES (_source.tdt_id, _source.tud_id, _source.doc_id, _source.col_id,
                  _source.crg_id, _source.coc_id, _source.tdt_tipo, _source.tdt_horarioSobreposto,
                  _source.tdt_situacao, _source.tdt_posicao, _source.tdt_vigenciaInicio)
    WHEN MATCHED AND NOT EXISTS (select coc.col_id from GE_RHU_ColaboradorCargo coc 
								  inner join GE_RHU_Cargo crg on crg.crg_id = coc.crg_id and crg.crg_tipo = 3 
								  where coc.col_id = _target.col_id and coc.crg_id = _target.crg_id 
									and coc.coc_id = _target.coc_id)
			THEN
         UPDATE SET col_id = _source.col_id,
                    crg_id = _source.crg_id,
                    coc_id = _source.coc_id,
                    doc_id = _source.doc_id,
                    tdt_situacao = 1,
                    tdt_posicao = _source.tdt_posicao,
                    tdt_vigenciaInicio = _source.tdt_vigenciaInicio,
                    tdt_vigenciaFim = NULL
    WHEN NOT MATCHED BY SOURCE AND ((((_target.tdt_situacao = 1) AND (_target.tdt_posicao = 1))
         OR ((_target.tdt_situacao = 1) AND (_target.tdt_posicao <> 1) AND
             (_target.doc_id not in (select doc_id
                                       from GestaoPedagogica..TUR_TurmaDocenteProjeto TDP
                                            inner join GestaoPedagogica..TUR_TurmaRelTurmaDisciplina TRTD
                                            on TDP.tur_id = TRTD.tur_id
                                      where TRTD.tud_id = _target.tud_id))))
		AND _target.tud_id in (select trel.tud_id from GE_TUR_TurmaRelTurmaDisciplina trel 
							    inner join GE_TUR_Turma tur on tur.tur_id = trel.tur_id 
														   and (tur.cal_id = @cal_idEF or tur.cal_id = @cal_idEI or 
																tur.cal_id = @cal_idEJA or tur.cal_id = @cal_idEJA2)
							   )
		AND NOT EXISTS ( select coc.col_id from GE_RHU_ColaboradorCargo coc 
						  inner join GE_RHU_Cargo crg on crg.crg_id = coc.crg_id and crg.crg_tipo = 3 
						  where coc.col_id = _target.col_id and coc.crg_id = _target.crg_id 
						    and coc.coc_id = _target.coc_id)
		AND NOT EXISTS ( select tud.tud_id from GE_TUR_TurmaDisciplina tud
						  where tud.tud_id = _target.tud_id and tud.tud_tipo = 18) -- Experiências PEdagogicas do território do saber
		)

         THEN
         UPDATE SET tdt_dataAlteracao = GETDATE() ,
                    tdt_situacao = 4;
	
    -- Atualiza a data de termino de vigência
    UPDATE TD
       SET tdt_vigenciaFim = CASE WHEN ISNULL(DATEADD(dd,-1,ATV_TD.tdt_vigenciaInicio),GETDATE()-1) < TD.tdt_vigenciaInicio 
								  THEN TD.tdt_vigenciaInicio
								  ELSE ISNULL(DATEADD(dd,-1,ATV_TD.tdt_vigenciaInicio),GETDATE()-1)
							  END
      FROM GE_TUR_TurmaDocente TD
           LEFT JOIN
           (SELECT tud_id, MAX(tdt_vigenciaInicio) tdt_vigenciaInicio
              from GE_TUR_TurmaDocente
             where tdt_situacao = 1
             group by tud_id) ATV_TD
           ON TD.tud_id = ATV_TD.tud_id
     where TD.tdt_situacao = 4
       and TD.tdt_vigenciaFim is null
    
    -- Atualiza com situacao = 4 os registros existentes em TUR_TurmaDOcente e que não constam mais na base da PRODAM
    UPDATE GE_TUR_TurmaDocente
       SET tdt_vigenciaFim = GETDATE(),
           tdt_situacao = 4
      FROM GE_TUR_TurmaDocente tdt
           INNER JOIN GE_TUR_TurmaDisciplina tud
            ON tdt.tud_id = tud.tud_id
           AND tud.tud_situacao <> 1
     WHERE tdt_situacao = 1;
     
    /*************************************************
    
     DOCENTES DA DISCIPLINA PROJETOS
    
    *************************************************/
    
    select @pac_valor = tdc_posicao from GestaoPedagogica..ACA_TipoDocente
      where tdc_id = 3

    create table #DOC_AUX
     (doc_id bigint,
      tur_id bigint,
      col_id bigint,
      crg_id int,
      coc_id int)
    
    if @pac_valor is not null
    begin
        insert into #DOC_AUX
        select doc_id, tur_id, col_id, crg_id, coc_id
          from (select doc_id, tur_id, coc.col_id, crg_id, coc_id,
                       ROW_NUMBER() OVER ( PARTITION BY tur_id, coc.col_id, crg_id ORDER BY coc.coc_vigenciaInicio) AS linha
                  from BD_PRODAM..v_grade_curricular INNER JOIN
                       (select distinct cd_componente_curricular
                          from BD_PRODAM..v_cadastro_disciplina
                         where dc_componente_curricular = 'PROJETOS') proj
                       on v_grade_curricular.Cod_Comp_Curr = proj.cd_componente_curricular
                       inner join DEPARA_TURMA 
                       on v_grade_curricular.cd_turma_escola = cast(DEPARA_TURMA.tur_codigo as Int)
                       inner join GE_ESC_Escola esc
                       on v_grade_curricular.cd_escola = cast(esc.esc_codigo as int)
                       INNER JOIN SSO_SYS_UnidadeAdministrativa uad
                       on esc.uad_id = uad.uad_id 
                       inner join GE_RHU_ColaboradorCargo coc
                        on v_grade_curricular.rf COLLATE DATABASE_DEFAULT = coc.coc_matricula
                       and esc.uad_id = coc.uad_id
                       inner join GE_RHU_Colaborador col
                       on coc.col_id = col.col_id
                       INNER JOIN GE_ACA_Docente doc
                       on coc.col_id = doc.col_id
                 WHERE doc.doc_situacao = 1
                   and esc.esc_situacao = 1
                   and uad.uad_situacao = 1
                   and coc.coc_situacao = 1
                   and col.col_situacao = 1) DC
         where linha = 1
        
        MERGE INTO GE_TUR_TurmaDocenteProjeto _target
        USING (select base.tur_id, isnull(base.tdp_id, isnull(chave.tdp_id,0) + linha) as tdp_id,
                      doc_id, col_id, crg_id, coc_id, tdp_posicao
                 from (select #DOC_AUX.tur_id, tdp.tdp_id, #DOC_AUX.doc_id, #DOC_AUX.col_id, #DOC_AUX.crg_id,
                              #DOC_AUX.coc_id, @pac_valor as tdp_posicao,
                              ROW_NUMBER() OVER ( PARTITION BY #DOC_AUX.tur_id ORDER BY #DOC_AUX.doc_id) AS linha
                         from #DOC_AUX left join
                              GE_TUR_TurmaDocenteProjeto tdp
                               on #DOC_AUX.tur_id = tdp.tur_id
                              and #DOC_AUX.doc_id = tdp.doc_id
                              and #DOC_AUX.col_id = tdp.col_id
                              and #DOC_AUX.crg_id = tdp.crg_id
                              and #DOC_AUX.coc_id = tdp.coc_id
                              and 1 = tdp.tdp_situacao) base
                      left join
                      (select tur_id, MAX(tdp_id) as tdp_id
                         from GE_TUR_TurmaDocenteProjeto
                        group by tur_id) chave
                       on base.tur_id = chave.tur_id) _source
         ON _source.tur_id = _target.tur_id
        AND _source.tdp_id = _target.tdp_id
        WHEN NOT MATCHED  THEN
    	     INSERT (tur_id, tdp_id, doc_id, col_id, crg_id, coc_id, tdp_posicao,
    	             tdp_situacao, tdp_dataCriacao, tdp_dataAlteracao)
             VALUES (_source.tur_id, _source.tdp_id, _source.doc_id, _source.col_id, _source.crg_id,
                     _source.coc_id, _source.tdp_posicao, 1, getdate(), getdate())
        WHEN MATCHED AND (_target.tdp_situacao = 4 or _target.tdp_posicao <> @pac_valor) THEN
             UPDATE SET tdp_situacao = 1, tdp_posicao = @pac_valor, tdp_dataAlteracao = getdate()
        WHEN NOT MATCHED BY SOURCE  and (_target.tdp_posicao = @pac_valor) THEN
             UPDATE SET tdp_situacao = 4, tdp_dataAlteracao = getdate();
    end
    
    /*************************************************
    
     DOCENTES DA DISCIPLINA DOCENCIA COMPARTILHADA
    
    *************************************************/
    
    select @pac_valor = null
    select @pac_valor = tdc_posicao from GestaoPedagogica..ACA_TipoDocente
      where tdc_id = 2
    
    truncate table #DOC_AUX
    
    if @pac_valor is not null
    begin
        insert into #DOC_AUX
        select doc_id, tur_id, col_id, crg_id, coc_id
          from (select doc_id, tur_id, coc.col_id, crg_id, coc_id,
                       ROW_NUMBER() OVER ( PARTITION BY tur_id, coc.col_id, crg_id ORDER BY coc.coc_vigenciaInicio) AS linha
                  from BD_PRODAM..v_grade_curricular INNER JOIN
                       (select distinct cd_componente_curricular
                          from BD_PRODAM..v_cadastro_disciplina
                         where left(dc_componente_curricular,22) = 'DOCENCIA COMPARTILHADA') proj
                       on v_grade_curricular.Cod_Comp_Curr = proj.cd_componente_curricular
                       inner join DEPARA_TURMA 
                       on v_grade_curricular.cd_turma_escola = cast(DEPARA_TURMA.tur_codigo as Int)
                       inner join GE_ESC_Escola esc
                       on v_grade_curricular.cd_escola = cast(esc.esc_codigo as int)
                       INNER JOIN SSO_SYS_UnidadeAdministrativa uad
                       on esc.uad_id = uad.uad_id 
                       inner join GE_RHU_ColaboradorCargo coc
                        on v_grade_curricular.rf COLLATE DATABASE_DEFAULT = coc.coc_matricula
                       and esc.uad_id = coc.uad_id
                       INNER JOIN GE_ACA_Docente doc
                       on coc.col_id = doc.col_id
                 WHERE doc.doc_situacao = 1
                   and esc.esc_situacao = 1
                   and uad.uad_situacao = 1
                   and coc.coc_situacao = 1) DC
         where linha = 1
          
        MERGE INTO GE_TUR_TurmaDocenteProjeto _target
        USING (select base.tur_id, isnull(base.tdp_id,isnull(chave.tdp_id,1) + linha) as tdp_id,
                      doc_id, col_id, crg_id, coc_id, tdp_posicao
                 from (select #DOC_AUX.tur_id, tdp.tdp_id, #DOC_AUX.doc_id, #DOC_AUX.col_id, #DOC_AUX.crg_id,
                              #DOC_AUX.coc_id, @pac_valor as tdp_posicao,
                              ROW_NUMBER() OVER ( PARTITION BY #DOC_AUX.tur_id ORDER BY #DOC_AUX.doc_id) AS linha
                         from #DOC_AUX left join
                              GE_TUR_TurmaDocenteProjeto tdp
                               on #DOC_AUX.tur_id = tdp.tur_id
                              and #DOC_AUX.doc_id = tdp.doc_id
                              and #DOC_AUX.col_id = tdp.col_id
                              and #DOC_AUX.crg_id = tdp.crg_id
                              and #DOC_AUX.coc_id = tdp.coc_id
                              and 1 = tdp.tdp_situacao) base
                      left join
                      (select tur_id, MAX(tdp_id) + 1 as tdp_id
                         from GE_TUR_TurmaDocenteProjeto
                        group by tur_id) chave
                       on base.tur_id = chave.tur_id) _source
         ON _source.tur_id = _target.tur_id
        AND _source.tdp_id = _target.tdp_id
        WHEN NOT MATCHED  THEN
    	     INSERT (tur_id, tdp_id, doc_id, col_id, crg_id, coc_id, tdp_posicao,
    	             tdp_situacao, tdp_dataCriacao, tdp_dataAlteracao)
             VALUES (_source.tur_id, _source.tdp_id, _source.doc_id, _source.col_id, _source.crg_id,
                     _source.coc_id, _source.tdp_posicao, 1, getdate(), getdate())
        WHEN MATCHED AND (_target.tdp_situacao = 4 or _target.tdp_posicao <> @pac_valor) THEN
             UPDATE SET tdp_situacao = 1, tdp_posicao = @pac_valor, tdp_dataAlteracao = getdate()
        WHEN NOT MATCHED BY SOURCE and (_target.tdp_posicao = @pac_valor) THEN
             UPDATE SET tdp_situacao = 4, tdp_dataAlteracao = getdate();
    end
    
    /*************************************************
    
     DOCENTES DA DISCIPLINA DE LIBRAS
    
    *************************************************/
    
    select @pac_valor = null
    select @pac_valor = tdc_posicao from GestaoPedagogica..ACA_TipoDocente
      where tdc_id = 5
    
    truncate table #tmp_GradeTurma
    truncate table #tmp_TurmaDocente
    
    if @pac_valor is not null
    begin
        insert into #tmp_GradeTurma (tud_id, doc_id, col_id, crg_id, coc_id, dis_nome, tds_id)
        select tud_id, doc_id, col_id, crg_id, coc_id, dis_nome_dp, tds_id
          from (select trtd.tud_id, doc_id, coc.col_id, crg_id, coc_id,
                       dis.dis_nome as dis_nome_dp, dis.tds_id, 
                       ROW_NUMBER() OVER ( PARTITION BY trtd.tud_id, coc.col_id, crg_id ORDER BY coc.coc_vigenciaInicio) AS linha
                  from (select tur_id, esc_id, rf
                          from BD_PRODAM..v_grade_curricular  gc INNER JOIN
                               (select cd_componente_curricular from DEPARA_DISCIPLINAS
                                 where disciplinaDeficiente = 1) Libras
                               on gc.Cod_Comp_Curr = Libras.cd_componente_curricular
                               inner join BD_PRODAM..v_turma_MSTECH TurLibras
                               on gc.cd_turma_escola = TurLibras.cd_turma_escola
                               inner join
                               (select TUR_Turma.tur_id, esc_id, cd_escola, an_letivo, dc_turma_escola
                                  from BD_PRODAM..v_turma_MSTECH inner join DEPARA_TURMA
                                       on v_turma_MSTECH.cd_turma_escola =  cast(DEPARA_TURMA.tur_codigo as Int)
                                       inner join GestaoPedagogica..TUR_Turma
                                       on DEPARA_TURMA.tur_id = TUR_Turma.tur_id
                                 where v_turma_MSTECH.an_letivo = (select VALOR from _PARAMETROS where CHAVE = 'ANO_BASE')
                                   AND tur_situacao = 1
                                   AND tur_tipo = 1) TurRegular
                                on TurLibras.an_letivo = TurRegular.an_letivo
                               and TurLibras.dc_turma_escola = TurRegular.dc_turma_escola
                               and TurLibras.cd_escola = TurRegular.cd_escola
                         group by tur_id, esc_id, rf) docentes
                       inner join GE_ESC_Escola esc
                       on docentes.esc_id = esc.esc_id
                       INNER JOIN SSO_SYS_UnidadeAdministrativa uad
                       on esc.uad_id = uad.uad_id 
                       inner join GE_RHU_ColaboradorCargo coc
                        on docentes.rf COLLATE DATABASE_DEFAULT = coc.coc_matricula
                       and esc.uad_id = coc.uad_id
                       INNER JOIN GE_ACA_Docente doc
                       on coc.col_id = doc.col_id
                       inner join GE_TUR_TurmaCurriculo tcr
                       on docentes.tur_id = tcr.tur_id
                       inner join GE_ACA_CurriculoPeriodo crp
                        on tcr.cur_id = crp.cur_id
                       and tcr.crr_id = crp.crr_id
                       and tcr.crp_id = crp.crp_id
                       inner join GE_ACA_CurriculoDisciplina crd
                        on crp.cur_id = crd.cur_id
                       and crp.crr_id = crd.crr_id
                       and crp.crp_id = crd.crp_id
                       inner join GE_TUR_TurmaRelTurmaDisciplina trtd
                       on docentes.tur_id = trtd.tur_id
                       inner join GE_TUR_TurmaDisciplinaRelDisciplina tdrd
                        on trtd.tud_id = tdrd.tud_id
                       and crd.dis_id = tdrd.dis_id
                       inner join GE_ACA_Disciplina dis
                       on tdrd.dis_id = dis.dis_id
                       inner join GestaoPedagogica..ACA_TipoDisciplinaDeficiencia tdd
                       on dis.tds_id = tdd.tds_id
                 WHERE doc.doc_situacao = 1
                   and tcr.tcr_situacao = 1
                   and crp.crp_situacao = 1
                   and crp.crp_ordem between 6 and 9  -- sexto ao nono ano
                   and crd.crd_situacao = 1
                   and dis.dis_situacao = 1
                   and esc.esc_situacao = 1
                   and uad.uad_situacao = 1
                   and coc.coc_situacao = 1) DC
         where linha = 1
        
        INSERT INTO #tmp_TurmaDocente
               (tdt_verificador, tdt_id, tud_id, doc_id, col_id, crg_id, coc_id, tdt_tipo,
                tdt_horarioSobreposto, tdt_situacao, tdt_posicao, tdt_vigenciaInicio)
        SELECT 1, ISNULL(_main.tdt_id, isnull(_main.max_tdt + _main.RowNum, _main.RowNum))
               AS tdt_id, _main.tud_id, _main.doc_id, _main.col_id, _main.crg_id, _main.coc_id,
               _main.tdt_tipo, _main.tdt_horarioSobreposto, _main.tdt_situacao, @pac_valor, _main.tdt_dataCriacao
          FROM (SELECT _out.tdt_id, _out.tud_id, _out.doc_id, _out.col_id, _out.crg_id, _out.coc_id, _out.tdt_tipo,
                       _out.tdt_horarioSobreposto, _out.tdt_situacao, _out.tdt_dataCriacao, max_tdt,
                       ROW_NUMBER() OVER ( PARTITION BY _out.tud_id ORDER BY _out.tdt_dataCriacao ) AS RowNum
                  FROM (select tdt.tdt_id, td.tud_id, td.doc_id, td.col_id, td.crg_id, td.coc_id, 1 AS tdt_tipo,
                               0 AS tdt_horarioSobreposto, 1 AS tdt_situacao,
                               ISNULL(tdt.tdt_dataCriacao, GETDATE()) AS tdt_dataCriacao, TD_MAX.max_tdt
                         from  #tmp_GradeTurma td
                               INNER JOIN GE_RHU_ColaboradorCargoDisciplina ccd
                                ON td.col_id = ccd.col_id
                               AND td.crg_id = ccd.crg_id
                               AND td.coc_id = ccd.coc_id
                               AND td.tds_id = ccd.tds_id
                               LEFT JOIN 
                               (SELECT tud_id, MAX(tdt_id) max_tdt FROM GE_TUR_TurmaDocente group by tud_id) TD_MAX
                               on td.tud_id = TD_MAX.tud_id
                               LEFT JOIN GE_TUR_TurmaDocente tdt
                                ON td.tud_id = tdt.tud_id
                               AND td.doc_id = tdt.doc_id
                               AND td.col_id = tdt.col_id
                               AND td.crg_id = tdt.crg_id
                               AND td.coc_id = tdt.coc_id
                               AND 3 <> tdt.tdt_situacao) AS _out
                 GROUP BY  _out.tdt_id, _out.tud_id, _out.doc_id, _out.col_id, _out.crg_id, _out.coc_id,
                           _out.tdt_tipo, _out.tdt_horarioSobreposto, _out.tdt_situacao, _out.tdt_dataCriacao,
                           _out.max_tdt) _main
               
        MERGE INTO GE_TUR_TurmaDocente _target
        USING (SELECT tdt_id, tud_id, doc_id, col_id, crg_id, coc_id, tdt_tipo, tdt_horarioSobreposto,
                      tdt_situacao, tdt_posicao, tdt_vigenciaInicio
                 FROM #tmp_TurmaDocente) AS _source
         ON _source.tud_id = _target.tud_id
        AND _source.tdt_id = _target.tdt_id
        WHEN NOT MATCHED THEN
	         INSERT (tdt_id, tud_id, doc_id, col_id, crg_id, coc_id, tdt_tipo,
	                 tdt_horarioSobreposto, tdt_situacao, tdt_posicao, tdt_vigenciaInicio)
             VALUES (_source.tdt_id, _source.tud_id, _source.doc_id, _source.col_id, _source.crg_id,
                     _source.coc_id, _source.tdt_tipo, _source.tdt_horarioSobreposto, _source.tdt_situacao,
                     _source.tdt_posicao, _source.tdt_vigenciaInicio)
        WHEN MATCHED THEN
        UPDATE SET col_id = _source.col_id ,
                   crg_id = _source.crg_id ,
                   coc_id = _source.coc_id ,
                   tdt_situacao = 1 ,
                   tdt_vigenciaFim = NULL;
        
    end

    drop table #DOC_AUX
    drop table #tmpDisciplinas
    drop table #tmp_GradeParcial
    drop table #tmp_GradeTurma
    drop table #tmp_TurmaDocente
    drop table #tmp_TurmaDocente_Insert
	
	/*************************************************
    
    INICIO DO TRATAMENTO DE DIFERENÇAS DO TERRITÓRIOS DO SABER
    
    *************************************************/
	 --SET XACT_ABORT ON
    BEGIN TRAN
	
	declare @maxDataFoto datetime
	select @maxDataFoto = MAX(dataFoto) from Manutencao..ultimaFotoTerritorios
	
	PRINT 'Insert de dados na tabela #territoriosDiferencas'
	--verifica as diferenças comparando com a última FOTO e joga na temporaria:
	--drop table #territoriosDiferencas
	CREATE TABLE #territoriosDiferencas (tur_id bigint, tud_idTerritorio bigint, ter_idAntigo int, ter_idNovo int, 
	 ter_codigoAntigo int, ter_codigoNovo int, tud_idExperienciaAntigo bigint, tud_idExperienciaNovo bigint, 
	 doc_idAntigo bigint, doc_idNovo bigint)	
	insert into #territoriosDiferencas	 
	select tur.tur_id, tudTer.tud_id, u.ter_id as ter_idAntigo, ter.ter_id as ter_idNovo, 
		   u.ter_codigo as ter_codigoAntigo, ter.ter_codigo as ter_codigoNovo,
		   u.tud_idExperiencia as tud_idExperienciaAntigo, NULL as tud_idExperienciaNovo,
		   u.doc_id as doc_idAntigo, tdt.doc_id as doc_idNovo
	  from GestaoPedagogica..TUR_TurmaDisciplina tudTer
		   inner join GestaoPedagogica..TUR_TurmaRelTurmaDisciplina trel on trel.tud_id = tudTer.tud_id
		   inner join GestaoPedagogica..TUR_Turma tur on tur.tur_id = trel.tur_id
		   inner join GestaoPedagogica..ACA_CalendarioAnual cal on cal.cal_id = tur.cal_id 
																   and cal.cal_ano = (select VALOR as cal_ano from _PARAMETROS where CHAVE = 'ANO_BASE')
		   inner join GestaoPedagogica..TUR_TurmaDisciplinaRelDisciplina td on trel.tud_id = td.tud_id
		   inner join GestaoPedagogica..ACA_Disciplina dis on dis.dis_id = td.dis_id
		   inner join Manutencao..DEPARA_DISCIPLINAS depDis on depDis.dis_nome = dis.dis_nome
		   inner join Manutencao..DEPARA_TURMA depTur on depTur.tur_id = tur.tur_id
		   left join Manutencao..tmp_territorio_saber tt on tt.cd_turma_escola = depTur.tur_codigo
														 and tt.cd_componente_curricular = depDis.cd_componente_curricular
		   left join GestaoPedagogica..ACA_TerritorioExperiencia ter on ter.ter_codigo = tt.cd_experiencia_pedagogica
		   left join GestaoPedagogica..TUR_TurmaDocente tdt on tdt.tud_id = tudTer.tud_id
															   and tdt.tdt_situacao = 1 and tdt.tdt_posicao = 1 
															   and tdt.tdt_vigenciaInicio <= GETDATE() 
															   and (tdt.tdt_vigenciaFim >= GETDATE() or tdt.tdt_vigenciaFim is null)
		   left join ultimaFotoTerritorios u on u.tud_idTerritorio = tudTer.tud_id
											and u.dataFoto = @maxDataFoto
	 where tudTer.tud_tipo = 19 -- territorios do saber que é o OBRIGATORIO
	   and (u.ter_id is not null or ter.ter_id is not null) 
	   and (isnull(u.ter_id,-1) <> isnull(ter.ter_id,-1) 
		    or isnull(u.doc_id,-1) <> isnull(tdt.doc_id,-1))  -- filtrando apenas quando não encontrou ou tem alguma diferença quanto a ultima foto
	 order by tudTer.tud_id
	
	IF @@ERROR <> 0
    BEGIN
       PRINT 'Erro na inserção de dados na tabela #territoriosDiferencas'
       ROLLBACK
       RETURN
    END
	
	--select * from #territoriosDiferencas

	--antes dessa parte de baixo, vai faltar verificar se tem alguma coisa na foto e q não veio agora, pra add nessa tabela
	
	-- adiciona as diferenças agrupando por experiencias e joga na nova temp
	--drop table #DiferencasAgrupadas
	CREATE TABLE #DiferencasAgrupadas (tur_id bigint, descricao varchar(10), ter_id int, ter_codigo int, doc_id bigint, qtde int)
	insert into #DiferencasAgrupadas
	select tur_id, 'ENTRANDO' as descricao, ter_idNovo AS ter_id , ter_codigoNovo AS ter_codigo, doc_idNovo AS doc_id, COUNT(*) as qtde
	  from #territoriosDiferencas
	 group by tur_id, ter_idNovo, ter_codigoNovo, doc_idNovo
	 union
	select tur_id, 'SAINDO' as descricao, ter_idAntigo AS ter_id , ter_codigoAntigo AS ter_codigo, doc_idAntigo AS doc_id, COUNT(*) as qtde
	  from #territoriosDiferencas
	 group by tur_id, ter_idAntigo, ter_codigoAntigo, doc_idAntigo
	 order by tur_id, descricao, ter_id, doc_id
	
	IF @@ERROR <> 0
    BEGIN
       PRINT 'Erro na inserção de dados na tabela #DiferencasAgrupadas 1'
       ROLLBACK
       RETURN
    END
    
	--select 1,* from #DiferencasAgrupadas

	--pegar alguem q esteja ENTRANDO, pra procurar outro tud com o mesmo ter_id e docente q não esteja SAINDO
	insert into #DiferencasAgrupadas
	select dif.tur_id, 'SAINDO' as descricao, dif.ter_id, dif.ter_codigo, dif.doc_id, COUNT(*) as qtde
	  from #DiferencasAgrupadas dif
		   inner join GestaoPedagogica..TUR_TurmaRelTurmaDisciplina trel on trel.tur_id = dif.tur_id
		   inner join GestaoPedagogica..TUR_TurmaDisciplina tudTer on tudTer.tud_id = trel.tud_id 
																  and tudTer.tud_situacao <> 3 
																  and tudTer.tud_tipo = 19
		   left join GestaoPedagogica..TUR_TurmaDocente tdt on tdt.tud_id = tudTer.tud_id
														   and tdt.tdt_situacao = 1 and tdt.tdt_posicao = 1 
														   and tdt.tdt_vigenciaInicio < GETDATE() 
														   and (tdt.tdt_vigenciaFim >= GETDATE() or tdt.tdt_vigenciaFim is null)
	  where dif.descricao = 'ENTRANDO'
		and isnull(dif.ter_id,-1) = isnull(tudTer.ter_id,-1)
		and isnull(dif.doc_id,-1) = isnull(tdt.doc_id,-1)
	    and tudTer.tud_id not in (select tud_idTerritorio from #territoriosDiferencas)
		and not exists (select d.tur_id from #DiferencasAgrupadas d 
						 where d.tur_id = dif.tur_id and d.descricao = 'SAINDO'
						   and isnull(d.ter_id,-1) = isnull(dif.ter_id,-1)
						   and isnull(d.doc_id,-1) = isnull(dif.doc_id,-1))
	 group by dif.tur_id, dif.ter_id, dif.ter_codigo, dif.doc_id
	 order by tur_id, descricao, ter_id, doc_id
	 
	IF @@ERROR <> 0
    BEGIN
       PRINT 'Erro na inserção de dados na tabela #DiferencasAgrupadas 2'
       ROLLBACK
       RETURN
    END
    --select 2,* from #DiferencasAgrupadas

	--pegar alguem q esteja SAINDO, pra procurar outro tud com o mesmo ter_id e docente q não esteja SAINDO
	insert into #DiferencasAgrupadas
	select dif.tur_id, 'SAINDO' as descricao, dif.ter_id, dif.ter_codigo, dif.doc_id, COUNT(*) as qtde
	  from #DiferencasAgrupadas dif
		   inner join GestaoPedagogica..TUR_TurmaRelTurmaDisciplina trel on trel.tur_id = dif.tur_id
		   inner join GestaoPedagogica..TUR_TurmaDisciplina tudTer on tudTer.tud_id = trel.tud_id 
																  and tudTer.tud_situacao <> 3 
																  and tudTer.tud_tipo = 19
		   left join GestaoPedagogica..TUR_TurmaDocente tdt on tdt.tud_id = tudTer.tud_id
														   and tdt.tdt_situacao = 1 and tdt.tdt_posicao = 1 
														   and tdt.tdt_vigenciaInicio < GETDATE() 
														   and (tdt.tdt_vigenciaFim >= GETDATE() or tdt.tdt_vigenciaFim is null)
	  where dif.descricao = 'SAINDO'
	  	and isnull(dif.ter_id,-1) = isnull(tudTer.ter_id,-1)
		and isnull(dif.doc_id,-1) = isnull(tdt.doc_id,-1)
	    and tudTer.tud_id not in (select tud_idTerritorio from #territoriosDiferencas)
		and not exists (select d.tur_id from #DiferencasAgrupadas d 
						 where d.tur_id = dif.tur_id and d.descricao = 'SAINDO'
						   and isnull(d.ter_id,-1) = isnull(dif.ter_id,-1)
						   and isnull(d.doc_id,-1) = isnull(dif.doc_id,-1))
	 group by dif.tur_id, dif.ter_id, dif.ter_codigo, dif.doc_id
	 order by tur_id, descricao, ter_id, doc_id
	 
	IF @@ERROR <> 0
    BEGIN
       PRINT 'Erro na inserção de dados na tabela #DiferencasAgrupadas 3'
       ROLLBACK
       RETURN
    END
	--select 3, * from #DiferencasAgrupadas

	PRINT 'UPDATE da dataFim da TUR_TurmaDisciplinaTerritorio'
	--finaliza vigencia da TUR_TurmaDisciplinaTerritorio  q não está vindo na view
	update GestaoPedagogica..TUR_TurmaDisciplinaTerritorio  
	   set tte_vigenciaFim = DATEADD(D, -1, GETDATE()), tte_dataAlteracao = GETDATE()
	  from GestaoPedagogica..TUR_TurmaDisciplinaTerritorio  
		   inner join GestaoPedagogica..TUR_TurmaDisciplina tudExp 
				   on tudExp.tud_id = TUR_TurmaDisciplinaTerritorio.tud_idExperiencia --tud_id=18=PAI
		   inner join GestaoPedagogica..TUR_TurmaRelTurmaDisciplina trel on trel.tud_id = TUR_TurmaDisciplinaTerritorio.tud_idTerritorio
		   inner join #DiferencasAgrupadas dif on dif.tur_id = trel.tur_id 
											  and dif.ter_id = tudExp.ter_id
											  and dif.descricao = 'SAINDO'
	 where tte_vigenciaInicio <= GETDATE() and (tte_vigenciaFim >= GETDATE() or tte_vigenciaFim is null)
	IF @@ERROR <> 0
    BEGIN
       PRINT 'Erro NO UPDATE da dataFim da TUR_TurmaDisciplinaTerritorio'
       ROLLBACK
       RETURN
    END
	   
	--inserir apenas as novas experiencias (pais) q precisaram ser criadas
	--drop table #tmp_TUR_TurmaDisciplina_novaExp
	  CREATE TABLE #tmp_TUR_TurmaDisciplina_novaExp
			( tur_id bigint, dis_id int, 
			  tud_codigo VARCHAR(30) COLLATE DATABASE_DEFAULT,
			  tud_nome VARCHAR(70) COLLATE DATABASE_DEFAULT,
			  tud_multiseriado INT ,
			  tud_vagas TINYINT ,
			  tud_modo INT ,
			  tud_tipo INT ,
			  tud_dataInicio DATE ,
			  tud_dataFim DATE ,
			  tud_situacao INT ,
			  tud_cargaHorariaSemanal INT ,
			  tud_global INT ,
			  tud_naoLancarNota BIT,
			  tud_naoLancarFrequencia BIT,
			  tud_naoExibirNota BIT,
			  tud_naoExibirFrequencia BIT,
			  tud_semProfessor BIT,
			  tud_naoExibirBoletim BIT,
			  tud_naoLancarPlanejamento BIT,
			  ter_id int,
			  doc_id int)
	insert into #tmp_TUR_TurmaDisciplina_novaExp
	select agr.tur_id, dis.dis_id as dis_id, tur_codigo as tud_codigo, ter.ter_nome, 0 as tud_multiseriado, tur.tur_vagas as tud_vagas,
		   1 as tud_modo, 18 as tud_tipo, --tud_tipo=18=Experiencia=PAI
		   GETDATE() as tud_dataInicio, cal.cal_dataFim as tud_dataFim, 1 as tud_situacao, 5 as tud_cargaHorariaSemanal, 
		   0 as tud_global, 1 as tud_naoLancarNota, 0 as tud_naoLancarFrequencia, 1 as tud_naoExibirNota,
		   0 as tud_naoExibirFrequencia, 0 as tud_semProfessor, 1 as tud_naoExibirBoletim, 0 as tud_naoLancarPlanejamento,
		   ter.ter_id, tdt.doc_id
	  from #territoriosDiferencas  
		   inner join #DiferencasAgrupadas agr on agr.tur_id = #territoriosDiferencas.tur_id 
											  and isnull(agr.ter_id,-1) = isnull(#territoriosDiferencas.ter_idNovo,-1)
											  and isnull(agr.doc_id,-1) = isnull(#territoriosDiferencas.doc_idNovo,-1)
											  and agr.descricao = 'ENTRANDO'
		   inner join GestaoPedagogica..TUR_Turma tur on tur.tur_id = agr.tur_id
		   inner join GestaoPedagogica..ACA_CalendarioAnual cal on cal.cal_id = tur.cal_id
		   inner join GestaoPedagogica..ACA_TerritorioExperiencia ter on ter.ter_id = agr.ter_id
		   inner join GestaoPedagogica..ACA_TipoDisciplina tds on tds.tds_nome = ter.ter_nome and tds.tds_tipo = 4
		   inner join GestaoPedagogica..ACA_Disciplina dis on dis.tds_id = tds.tds_id and dis.dis_nome = tds.tds_nome
		   left join GestaoPedagogica..TUR_TurmaDocente tdt 
				  on tdt.tud_id = #territoriosDiferencas.tud_idTerritorio and tdt.tdt_situacao = 1
				 and tdt.tdt_posicao = 1 and tdt.tdt_vigenciaInicio <= GETDATE() 
				 and (tdt.tdt_vigenciaFim >= GETDATE() or tdt.tdt_vigenciaFim is null)
	 where not exists (select tudExp.tud_id from GestaoPedagogica..TUR_TurmaDisciplina tudExp
						inner join GestaoPedagogica..TUR_TurmaDisciplinaTerritorio tte 
								on tte.tud_idExperiencia = tudExp.tud_id
							   and tte.tte_vigenciaInicio <= GETDATE() 
							   and (tte.tte_vigenciaFim >= GETDATE() or tte.tte_vigenciaFim is null)
					    left join GestaoPedagogica..TUR_TurmaDocente tdt2 on tdt2.tud_id = tte.tud_idTerritorio
												   and tdt2.tdt_situacao = 1 and tdt2.tdt_posicao = 1 
												   and tdt2.tdt_vigenciaInicio <= GETDATE() 
												   and (tdt2.tdt_vigenciaFim >= GETDATE() or tdt2.tdt_vigenciaFim is null)
						inner join GestaoPedagogica..TUR_TurmaRelTurmaDisciplina trel on trel.tud_id = tudExp.tud_id
						inner join GestaoPedagogica..TUR_TurmaDisciplinaRelDisciplina td on td.tud_id = tudExp.tud_id 
						inner join GestaoPedagogica..ACA_Disciplina disExp on disExp.dis_id = td.dis_id
						inner join GestaoPedagogica..ACA_TipoDisciplina tdsExp on tdsExp.tds_id = disExp.tds_id 
																			  and tdsExp.tds_tipo = 4
																			  and tdsExp.tds_nome = tds.tds_nome
						where trel.tur_id = agr.tur_id and tudExp.tud_tipo = 18
						  and isnull(tdt2.doc_id,-1) = isnull(tdt.doc_id,-1))
	 group by agr.tur_id, dis.dis_id, tur_codigo, ter.ter_nome, tur.tur_vagas, cal.cal_dataFim, ter.ter_id, tdt.doc_id
	 order by agr.tur_id, dis.dis_id
	 
	IF @@ERROR <> 0
    BEGIN
       PRINT 'Erro na inserção da #tmp_TUR_TurmaDisciplina_novaExp 1'
       ROLLBACK
       RETURN
    END
	
	--select * from #tmp_TUR_TurmaDisciplina_novaExp

	insert into #tmp_TUR_TurmaDisciplina_novaExp
	select agr.tur_id, dis.dis_id as dis_id, tur_codigo as tud_codigo, ter.ter_nome, 0 as tud_multiseriado, tur.tur_vagas as tud_vagas,
		   1 as tud_modo, 18 as tud_tipo, --tud_tipo=18=Experiencia=PAI
		   GETDATE() as tud_dataInicio, cal.cal_dataFim as tud_dataFim, 1 as tud_situacao, 5 as tud_cargaHorariaSemanal, 
		   0 as tud_global, 1 as tud_naoLancarNota, 0 as tud_naoLancarFrequencia, 1 as tud_naoExibirNota,
		   0 as tud_naoExibirFrequencia, 0 as tud_semProfessor, 1 as tud_naoExibirBoletim, 0 as tud_naoLancarPlanejamento,
		   ter.ter_id, tdt.doc_id
	  from GestaoPedagogica..TUR_TurmaDisciplina tudTer
		   inner join GestaoPedagogica..TUR_TurmaRelTurmaDisciplina tr on tr.tud_id = tudTer.tud_id
		   left join GestaoPedagogica..TUR_TurmaDocente tdt 
				  on tdt.tud_id = tudTer.tud_id and tdt.tdt_situacao = 1
				 and tdt.tdt_posicao = 1 and tdt.tdt_vigenciaInicio <= GETDATE() 
				 and (tdt.tdt_vigenciaFim >= GETDATE() or tdt.tdt_vigenciaFim is null)
		   inner join #DiferencasAgrupadas agr on agr.tur_id = tr.tur_id 
											  and agr.ter_id = tudTer.ter_id
											  and isnull(agr.doc_id,-1) = isnull(tdt.doc_id,-1)
											  and agr.descricao = 'SAINDO'
		   inner join GestaoPedagogica..TUR_Turma tur on tur.tur_id = agr.tur_id
		   inner join GestaoPedagogica..ACA_CalendarioAnual cal on cal.cal_id = tur.cal_id
		   inner join GestaoPedagogica..ACA_TerritorioExperiencia ter on ter.ter_id = agr.ter_id
		   inner join GestaoPedagogica..ACA_TipoDisciplina tds on tds.tds_nome = ter.ter_nome and tds.tds_tipo = 4
		   inner join GestaoPedagogica..ACA_Disciplina dis on dis.tds_id = tds.tds_id and dis.dis_nome = tds.tds_nome
	 where tudTer.tud_tipo = 19 and tudTer.tud_id not in (select tud_idTerritorio from #territoriosDiferencas)
	   and not exists (select tmp.tur_id from #tmp_TUR_TurmaDisciplina_novaExp tmp
						where tmp.tur_id = agr.tur_id
						  and isnull(tmp.ter_id,-1) = isnull(ter.ter_id,-1)
						  and isnull(tmp.doc_id,-1) = isnull(tdt.doc_id,-1))
	   and not exists (select tudExp.tud_id from GestaoPedagogica..TUR_TurmaDisciplina tudExp
						inner join GestaoPedagogica..TUR_TurmaDisciplinaTerritorio tte 
								on tte.tud_idExperiencia = tudExp.tud_id
							   and tte.tte_vigenciaInicio <= GETDATE() 
							   and (tte.tte_vigenciaFim >= GETDATE() or tte.tte_vigenciaFim is null)
						left join GestaoPedagogica..TUR_TurmaDocente tdt2 on tdt2.tud_id = tte.tud_idTerritorio
												   and tdt2.tdt_situacao = 1 and tdt2.tdt_posicao = 1 
												   and tdt2.tdt_vigenciaInicio <= GETDATE() 
												   and (tdt2.tdt_vigenciaFim >= GETDATE() or tdt2.tdt_vigenciaFim is null)
						inner join GestaoPedagogica..TUR_TurmaRelTurmaDisciplina trel on trel.tud_id = tudExp.tud_id
						inner join GestaoPedagogica..TUR_TurmaDisciplinaRelDisciplina td on td.tud_id = tudExp.tud_id 
						inner join GestaoPedagogica..ACA_Disciplina disExp on disExp.dis_id = td.dis_id
						inner join GestaoPedagogica..ACA_TipoDisciplina tdsExp on tdsExp.tds_id = disExp.tds_id 
																			  and tdsExp.tds_tipo = 4
																			  and tdsExp.tds_nome = tds.tds_nome
						where trel.tur_id = agr.tur_id and tudExp.tud_tipo = 18
						  and isnull(tdt2.doc_id,-1) = isnull(tdt.doc_id,-1))
	 group by agr.tur_id, dis.dis_id, tur_codigo, ter.ter_nome, tur.tur_vagas, cal.cal_dataFim, ter.ter_id, tdt.doc_id
	 order by agr.tur_id, dis.dis_id
	 
	IF @@ERROR <> 0
    BEGIN
       PRINT 'Erro na inserção da #tmp_TUR_TurmaDisciplina_novaExp 2'
       ROLLBACK
       RETURN
    END

	--drop table #tempRelacionamentos
	create table #tempRelacionamentos (tur_id bigint, tud_id bigint, dis_id int, doc_id int)
	
    MERGE INTO GestaoPedagogica..TUR_TurmaDisciplina _target
    USING  (SELECT tud_codigo, tud_nome, tud_multiseriado, tud_vagas, tud_modo, tud_tipo,
				   tud_cargaHorariaSemanal, tud_situacao, tud_dataInicio, tud_dataFim, tud_global,
				   tud_naoLancarNota, tud_naoLancarFrequencia, tud_naoExibirNota, tud_naoExibirFrequencia, 
				   tud_semProfessor, tud_naoExibirBoletim, tud_naoLancarPlanejamento, ter_id, doc_id,
				   tur_id, dis_id, -1 as tud_id --pra nunca encontrar mesmo. Só estou usando o merge por causa do output
              FROM #tmp_TUR_TurmaDisciplina_novaExp) AS _source
     ON _source.tud_id = _target.tud_id
    WHEN NOT MATCHED THEN
    INSERT (tud_codigo, tud_nome, tud_multiseriado, tud_vagas, tud_modo, tud_tipo,
            tud_cargaHorariaSemanal, tud_situacao, tud_dataInicio, tud_dataFim, tud_global,
            tud_naoLancarNota, tud_naoExibirNota, tud_naoExibirBoletim, 
            tud_naoLancarFrequencia, tud_naoExibirFrequencia, ter_id)
    VALUES ( _source.tud_codigo, _source.tud_nome, _source.tud_multiseriado, _source.tud_vagas,
             _source.tud_modo, _source.tud_tipo, _source.tud_cargaHorariaSemanal, _source.tud_situacao,
             _source.tud_dataInicio, _source.tud_dataFim, _source.tud_global,
             _source.tud_naoLancarNota, _source.tud_naoExibirNota, _source.tud_naoExibirBoletim,
             _source.tud_naoLancarFrequencia, _source.tud_naoExibirFrequencia, _source.ter_id) 
    OUTPUT _source.tur_id, INSERTED.tud_id, _source.dis_id, _source.doc_id
      INTO #tempRelacionamentos;
	
	IF @@ERROR <> 0
    BEGIN
       PRINT 'Erro no merge da TUR_TurmaDisciplina'
       ROLLBACK
       RETURN
    END
	
	INSERT INTO GestaoPedagogica..TUR_TurmaRelTurmaDisciplina 
	select distinct tur_id, tud_id from #tempRelacionamentos
    
	INSERT INTO GestaoPedagogica..TUR_TurmaDisciplinaRelDisciplina
	select distinct tud_id, dis_id from #tempRelacionamentos	
	
	insert into GestaoPedagogica..TUR_TurmaDisciplinaTerritorio
	(tud_idExperiencia, tud_idTerritorio, tte_vigenciaInicio, tte_vigenciaFim, tte_situacao, tte_dataCriacao, tte_dataAlteracao)
	select tudExp.tud_id as tud_idExperiencia, tudTer.tud_id as tud_idTerritorio, 
		   GETDATE() as tte_vigenciaInicio, '2018-12-21' as tte_vigenciaFim, 
		   1 as tte_situacao, GETDATE() as tte_dataCriacao, GETDATE() as tte_dataAlteracao
	  from GestaoPedagogica..TUR_TurmaDisciplina tudExp 
		   inner join GestaoPedagogica..TUR_TurmaDisciplinaRelDisciplina td on td.tud_id = tudExp.tud_id
		   inner join GestaoPedagogica..ACA_Disciplina dis on dis.dis_id = td.dis_id
		   inner join GestaoPedagogica..ACA_TipoDisciplina tds on tds.tds_id = dis.tds_id and tds.tds_nome = dis.dis_nome
																	  and tds.tds_tipo = 4
		   inner join GestaoPedagogica..ACA_TerritorioExperiencia ter on ter.ter_nome = tudExp.tud_nome
		   inner join GestaoPedagogica..TUR_TurmaRelTurmaDisciplina trelExp on trelExp.tud_id = tudExp.tud_id
		   inner join GestaoPedagogica..TUR_TurmaRelTurmaDisciplina trelTer on trelTer.tur_id = trelExp.tur_id
		   inner join GestaoPedagogica..TUR_TurmaDisciplina tudTer on tudTer.tud_id = trelTer.tud_id 
																  and tudTer.ter_id = tudExp.ter_id
																  and tudTer.tud_tipo = 19 --tud_tipo=19=OBRIG
		   inner join #tempRelacionamentos t on t.tud_id = tudExp.tud_id
		   left join GestaoPedagogica..TUR_TurmaDocente tdt 
				  on tdt.tud_id = tudTer.tud_id and tdt.tdt_situacao = 1
				 and tdt.tdt_posicao = 1 and tdt.tdt_vigenciaInicio <= GETDATE() 
				 and (tdt.tdt_vigenciaFim >= GETDATE() or tdt.tdt_vigenciaFim is null)
	 where tudExp.tud_tipo = 18  --tud_tipo=18=PAI
	   and isnull(tdt.doc_id,-1) = isnull(t.doc_id,-1)
	 group by trelExp.tur_id, tudExp.tud_id, tudTer.tud_id
	 order by trelExp.tur_id, tudExp.tud_id, tudTer.tud_id
	IF @@ERROR <> 0
    BEGIN
       PRINT 'Erro no insert da tur_turmadisciplinaterritorio'
       ROLLBACK
       RETURN
    END
	
	truncate table Manutencao..tmp_territorios_incluidosNestaExecucao
	insert into Manutencao..tmp_territorios_incluidosNestaExecucao (tur_id, tud_id, dis_id, doc_id)
	select tur_id, tud_id, dis_id, doc_id from #tempRelacionamentos
	
	COMMIT
	
	/*************************************************
    
    FIM DO TRATAMENTO DE DIFERENÇAS DO TERRITÓRIOS DO SABER
    
    *************************************************/
	--INICIO TRATAMENTO TUR_TurmaDocente para as experiências do território do saber
	--deixei para colocar no final, para não atrapalhar a criação do registro na TTE no código acima
	
	CREATE TABLE #TUR_TurmaDocente(
		[tud_id] [bigint] NOT NULL,
		[tdt_idNovo] [int] NULL,
		[doc_id] [bigint] NOT NULL,
		[tdt_tipo] [tinyint] NOT NULL,
		[tdt_horarioSobreposto] [bit] NOT NULL,
		[tdt_situacao] [tinyint] NOT NULL,
		[tdt_dataCriacao] [datetime] NOT NULL,
		[tdt_dataAlteracao] [datetime] NOT NULL,
		[col_id] [bigint] NULL,
		[crg_id] [int] NULL,
		[coc_id] [int] NULL,
		[tdt_vigenciaInicio] [date] NOT NULL,
		[tdt_vigenciaFim] [date] NULL,
		[tdt_posicao] [tinyint] NOT NULL,
		[jaExiste] [tinyint] null
	) 

	insert into #TUR_TurmaDocente
	(tud_id, tdt_idNovo, doc_id, tdt_tipo, tdt_horarioSobreposto, tdt_situacao, tdt_dataCriacao, tdt_dataAlteracao, 
	 col_id, crg_id, coc_id, tdt_vigenciaInicio, tdt_vigenciaFim, tdt_posicao)
	select tud_idExperiencia, tdt_id, doc_id, tdt_tipo, tdt_horarioSobreposto, situacao, GETDATE(), GETDATE(), 
		   col_id, crg_id, coc_id, tdt_vigenciaInicio, tdt_vigenciaFim, tdt_posicao
	  from (select tud_idExperiencia, ISNULL(maxTDT, 0) + linha as tdt_id, doc_id, tdt_tipo, tdt_horarioSobreposto, 
				   CASE WHEN tdt_vigenciaFim < GETDATE() THEN 4 ELSE 1 END as situacao, 
				   col_id, crg_id, coc_id, tdt_vigenciaInicio, tdt_vigenciaFim, tdt_posicao,
				   ROW_NUMBER() OVER(PARTITION BY tud_idExperiencia, doc_id, tdt_vigenciaInicio, tdt_vigenciaFim
										 ORDER BY tdt_dataCriacao) as linhaAtivos
			  from (select tte.tud_idExperiencia, doc_id, tdt_tipo, tdt_horarioSobreposto, tdt_situacao, tdt_dataCriacao, tdt_dataAlteracao, 
						   col_id, crg_id, coc_id, 
						   CASE WHEN tdt_vigenciaInicio > tte_vigenciaInicio then tdt_vigenciaInicio else tte_vigenciaInicio end AS tdt_vigenciaInicio,
						   CASE WHEN tdt_vigenciaFim < tte_vigenciaFim then tdt_vigenciaFim else tte_vigenciaFim end as tdt_vigenciaFim, tdt_posicao,
						   ROW_NUMBER() OVER(PARTITION BY tte.tud_idExperiencia, doc_id, tdt_vigenciaInicio, tdt_vigenciaFim 
												 ORDER BY tdt_dataCriacao) as filtro,
						   ROW_NUMBER() OVER(PARTITION BY tte.tud_idExperiencia ORDER BY tdt_vigenciaInicio) as linha,
						   (select MAX(tdt_id) from GestaoPedagogica..TUR_TurmaDocente t2 
							 where t2.tud_id = tte.tud_idExperiencia) as maxTDT
					  from GestaoPedagogica..TUR_TurmaDisciplinaTerritorio tte
						   inner join GestaoPedagogica..TUR_TurmaDocente tdt on tdt.tud_id = tte.tud_idTerritorio --and tdt.doc_id = 50985
					 where tdt_situacao <> 3 and tdt_posicao = 1 --and tte.tud_idExperiencia = 707013
					   --and tte.tud_idTerritorio in (671675,671677)
					   and tdt_vigenciaInicio <= tte_vigenciaFim and (tdt_vigenciaFim >= tte_vigenciaInicio or tdt_vigenciaFim is null)
					 group by tte.tud_idExperiencia, doc_id, tdt_tipo, tdt_horarioSobreposto, tdt_situacao, tdt_dataCriacao, tdt_dataAlteracao, 
					 col_id, crg_id, coc_id, tdt_vigenciaInicio, tdt_vigenciaFim, tdt_posicao, tte_vigenciaInicio, tte_vigenciaFim
				   ) Tab
			 where Tab.filtro = 1
			 ) Tabela2
	 where Tabela2.linhaAtivos = 1
	 
	 update #TUR_TurmaDocente set jaExiste = 0
	 
	 update #TUR_TurmaDocente set jaExiste = 1, tdt_idNovo = null
	   from #TUR_TurmaDocente 
			inner join GestaoPedagogica..TUR_TurmaDocente tdt 
					on #TUR_TurmaDocente.tud_id = tdt.tud_id and #TUR_TurmaDocente.col_id = tdt.col_id 
				   and #TUR_TurmaDocente.crg_id = tdt.crg_id and #TUR_TurmaDocente.coc_id = tdt.coc_id
				   and #TUR_TurmaDocente.tdt_vigenciaInicio = tdt.tdt_vigenciaInicio 
				   and #TUR_TurmaDocente.tdt_vigenciaFim = tdt.tdt_vigenciaFim
	 where tdt.tdt_posicao = 1 and tdt.tdt_situacao <> 3 --and tdt.tud_id in (707013,707044,707185,707186)
	 --order by tdt.tud_id, tdt.doc_id, tdt.tdt_vigenciaInicio --having count(*) > 1
	 
	 insert into GestaoPedagogica..TUR_TurmaDocente
	(tud_id, tdt_id, doc_id, tdt_tipo, tdt_horarioSobreposto, tdt_situacao, tdt_dataCriacao, tdt_dataAlteracao, 
	 col_id, crg_id, coc_id, tdt_vigenciaInicio, tdt_vigenciaFim, tdt_posicao)
	 select tud_id, tdt_idNovo, doc_id, tdt_tipo, tdt_horarioSobreposto, tdt_situacao, tdt_dataCriacao, tdt_dataAlteracao, 
	 col_id, crg_id, coc_id, tdt_vigenciaInicio, tdt_vigenciaFim, tdt_posicao
	   from #TUR_TurmaDocente
	  where jaExiste = 0
	
END
GO
USE [GestaoPedagogica]
GO
ENABLE TRIGGER TRG_TUR_TurmaDocente_Identity ON TUR_TurmaDocente;
GO
USE [Manutencao]
GO

/****** Object:  StoredProcedure [dbo].[STP_SMESP_Aluno_DadosAlunoTurma]    Script Date: 05/12/2014 10:35:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_SMESP_Aluno_DadosAlunoTurma]
AS
BEGIN
	DECLARE 
		@ent_id UNIQUEIDENTIFIER
    
    --Pega o código da SMESP
	SELECT @ent_id = ent_id FROM SSO_SYS_Entidade WHERE ent_sigla = 'SMESP'
	
	MERGE INTO BC_VD_AlunoEscola _target
	USING
	(
			SELECT
				extTable.pes_id
				, extTable.ent_id
				, extTable.uad_id
				, extTable.tur_id
				, extTable.cd_serie_eol98
				, extTable.sg_serie_eol98
				,extTable.tur_nome
			FROM
				(
				SELECT
					alu.pes_id
					, alu.ent_id
					, tur.uad_id
					, tur.tur_id
					, tur.tur_nome
					, tmp.cl_dt_inclusao
					, tmp.cd_serie_eol98
					, tmp.sg_serie_eol98
					, ROW_NUMBER() OVER(PARTITION BY alu.pes_id, alu.ent_id, tur.uad_id ORDER BY tmp.cl_dt_inclusao DESC) AS RowNum
				FROM
					dbo.TMP_ALUNOXTURMA tmp
					INNER JOIN BC_VD_Turma tur
						ON (tur.tur_salaAula COLLATE Latin1_General_CI_AI = tmp.cl_tur_codigo COLLATE Latin1_General_CI_AI
						AND tur.ent_id = @ent_id
						AND tur.tur_ativo = 1)
					INNER JOIN BC_VD_Aluno alu
						ON (alu.alu_numeroMatricula COLLATE Latin1_General_CI_AI = CAST(tmp.cl_alu_codigo AS VARCHAR(50)) COLLATE Latin1_General_CI_AI
						AND alu.ent_id = @ent_id)
				WHERE
					alu.ent_id = @ent_id
				) AS extTable
			WHERE
				extTable.RowNum = 1
				
	) AS _source
	ON (_source.pes_id = _target.pes_id
		AND	_source.ent_id = _target.ent_id
		AND _source.uad_id = _target.uad_id)
	WHEN MATCHED THEN
		UPDATE SET
			tur_id = _source.tur_id
			, aes_situacao = 1
			, aes_ativo = 1
			, aes_dataAlteracao = GETDATE()
	WHEN NOT MATCHED THEN
		INSERT
		(
			pes_id
			, ent_id
			, uad_id
			, tur_id
			, aes_situacao
			, aes_ativo
			, aes_dataCriacao
			, aes_dataAlteracao
		)
		VALUES
		(
			_source.pes_id
			, _source.ent_id
			, _source.uad_id
			, _source.tur_id
			, 0
			, 1
			, GETDATE()
			, GETDATE()
		);
END
GO

USE [GestaoPedagogica]
GO
DISABLE TRIGGER TRG_ACA_AlunoResponsavel_Identity on ACA_AlunoResponsavel
GO
USE [Manutencao]
GO
/****** Object:  StoredProcedure [dbo].[STP_SMESP_Aluno_DadosCadastrais]    Script Date: 05/12/2014 10:35:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_SMESP_Aluno_DadosCadastrais]
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
           1 as usu_integridade, @ent_id AS ent_id, 3 as usu_criptografia
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
                  1 as usu_integridade, @ent_id AS ent_id, 3 as usu_criptografia
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
GO
USE [GestaoPedagogica]
GO
ENABLE TRIGGER TRG_ACA_AlunoResponsavel_Identity on ACA_AlunoResponsavel
GO
USE [Manutencao]
GO

/****** Object:  StoredProcedure [dbo].[STP_SMESP_Aluno_PreparaDados]    Script Date: 05/12/2014 10:35:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_SMESP_Aluno_PreparaDados]
AS 
BEGIN
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ssis_DiarioClasse_aluno]') AND type in (N'U'))
	CREATE TABLE dbo.ssis_DiarioClasse_aluno(
		cl_alu_codigo int NULL,
		cl_cham varchar(3) NULL,
		cl_tur_codigo int NULL,
		alu_nome varchar(70) NULL,
		alu_sex varchar(1) NULL,
		alu_nasc date NULL,
		alu_mae varchar(70) NULL,
		ind_mae_falecida char(1) NULL,
		alu_pai varchar(70) NULL,
		ind_pai_falecido char(1) NULL,
		cl_dt_inclusao datetime NULL,
		cl_st varchar(1) NULL,
		cd_escola varchar(6) NULL,
		cd_turma_escola int NULL,
		tne_nome varchar(100) NULL,
		tme_nome varchar(100) NULL,
		cur_codigo varchar(10) NULL,
		crr_codigo varchar(10) NULL,
		crp_ordem int NULL,
		crp_descricao varchar(40) NULL,
		crp_ciclo varchar(20) NULL,
		alu_numeroMatricula varchar(10) NULL,
		esc_codigo varchar(6) NULL,
		tur_codigo varchar(10) NULL,
		tipo_responsavel decimal(1, 0) NULL,
		nome_responsavel varchar(70) NULL,
		codigo_cpf_responsavel decimal(11, 0) NULL,
		senha varchar(256) NULL,
		senha_resp varchar(256) NULL)

truncate table ssis_DiarioClasse_aluno
truncate table tmp_DiarioClasse_aluno

create table #Mov_Ordenada
   (cl_codigo            int NULL,
    cl_alu_codigo        int NULL,
    cl_tur_codigo        int NOT NULL,
    cd_escola            varchar(10) NULL,
    cl_datst             datetime NULL,
    cl_cham              varchar(5) NULL,
    cl_st                char(1) NULL,
    des_status           varchar(25) NULL,
    cl_nota              char(1) NULL,
    expr1                datetime NULL,
    cl_dt_inclusao       datetime NULL,
    flag_matr_antecipada char(1) NULL,
    expr2                datetime NULL,
    an_letivo            smallint NULL)

insert into #Mov_Ordenada
       (cl_codigo, cl_alu_codigo, cl_tur_codigo, cl_datst, cl_cham, des_status, cl_nota, cl_st,
        expr1, cl_dt_inclusao, flag_matr_antecipada, expr2, an_letivo, cd_escola)
select cl_codigo, cl_alu_codigo, cl_tur_codigo, cl_datst, cl_cham, des_status, cl_nota,
       cl_st = case cl_st when 'R' then 'T' when 'N' then 'D' when 'S' then 'I' else cl_st end,
       expr1, hm.cl_dt_inclusao, flag_matr_antecipada, expr2, hm.an_letivo, cd_escola
  from BD_PRODAM..v_alunos_turma_matriculados_historico_movimentacao hm inner join
       BD_PRODAM..v_turma_MSTECH tur
       on cl_tur_codigo = cd_turma_escola
	   INNER JOIN tmpTipoSerieEOL AS serie -- ADD em 13/09 Alunos "transferidos" para o EJA, continuavam ativos no SGP 
			   ON serie.cd_serie_eol98 = tur.cd_serie_eol98 -- E-mail: Atualização SGP - EMEF Josefa Nicácio - fgonsales@PREFEITURA.SP.GOV.BR>
 where tur.cd_tipo_turma = 1
   AND tur.cd_etapa_ensino IN (1,2,3,4,5,6,9,10,11,13,14) --filtrar apenas os cursos tratados pela integração
   AND tur.an_letivo = (select VALOR from _PARAMETROS where CHAVE = 'ANO_BASE')
   
CREATE TABLE #tmp_aluno(
    cl_codigo            int NULL,
	cl_alu_codigo        int NULL,
	cl_cham              varchar(3) NULL,
	cl_tur_codigo        int NULL,
	cl_dt_inclusao       datetime NULL,
	cl_st                varchar(1) NULL,
	cd_escola            varchar(10) NULL,
	expr1                datetime NULL,
	des_status           varchar(25) NULL,
    cl_nota              char(1) NULL,
    flag_matr_antecipada char(1) NULL,
    expr2                datetime NULL,
    an_letivo            smallint NULL,
	ordem                tinyint)

insert into #tmp_aluno
       (cl_codigo, cl_alu_codigo, cl_cham, cl_tur_codigo, cl_dt_inclusao, cl_st, cd_escola, expr1,
        des_status, cl_nota, expr2, an_letivo, flag_matr_antecipada, ordem)
select cl_codigo, cl_alu_codigo, cl_cham, cl_tur_codigo, cl_datst, cl_st, cd_escola, expr1, des_status,
       cl_nota, expr2, an_letivo, flag_matr_antecipada, ord_aluno
  from (select cl_codigo, cl_alu_codigo, LEFT(cl_cham,3) AS cl_cham, cl_tur_codigo, cl_datst, cl_st,
               cd_escola, expr1, des_status, cl_nota, expr2, an_letivo, flag_matr_antecipada,
               ROW_NUMBER() OVER (PARTITION BY cl_alu_codigo, cl_codigo, cl_tur_codigo
                            ORDER BY cl_codigo, cl_tur_codigo, expr1) AS ord_aluno
          from #Mov_Ordenada hst
         where cl_st in ('I', 'S', 'E')) dados

insert into #tmp_aluno
       (cl_codigo, cl_alu_codigo, cl_cham, cl_tur_codigo, cl_dt_inclusao, cl_st, cd_escola, expr1,
        des_status, cl_nota, expr2, an_letivo, flag_matr_antecipada, ordem)
select saida.cl_codigo, saida.cl_alu_codigo, saida.cl_cham, saida.cl_tur_codigo, cl_datst, saida.cl_st,
       saida.cd_escola, saida.expr1, saida.des_status, saida.cl_nota, saida.expr2, saida.an_letivo,
       saida.flag_matr_antecipada, saida.ord_aluno
  from #tmp_aluno tmp inner join 
       (select cl_codigo, cl_alu_codigo, LEFT(cl_cham,3) AS cl_cham, cl_tur_codigo, cl_datst, cl_st,
               cd_escola, expr1, des_status, cl_nota, expr2, an_letivo, flag_matr_antecipada,
               ROW_NUMBER() OVER (PARTITION BY cl_alu_codigo, cl_codigo, cl_tur_codigo
                            ORDER BY cl_codigo, cl_tur_codigo, expr1) AS ord_aluno
          from #Mov_Ordenada hst
         where cl_st not in ('I', 'S', 'E')) saida
        on tmp.cl_alu_codigo = saida.cl_alu_codigo
       and tmp.cl_codigo = saida.cl_codigo
       and tmp.cl_tur_codigo = saida.cl_tur_codigo
       and tmp.ordem = saida.ord_aluno

--BLOCO QUE FAZ AJUSTE ESPECÍFICO PARA O ENSINO MÉDIO E ENSINO MÉDIO TÉCNICO
--A REGRA DECIDIDA EM CONVERSA COM CARLA/HAILA/JULIANO FOI: 
--SE O ALUNO ESTÁ COM A ULTIMA MATRICULA NO TÉCNICO: VERIFICAR SE ELE TEM ALGUMA MATRÍCULA NO MÉDIO REGULAR E DEIXAR ELE NO MÉDIO REGULAR 
--SE O ALUNO ESTÁ COM A ULTIMA MATRICULA NO TÉCNICO E NÃO TEM MATRÍCULA NO MÉDIO REGULAR, MATRICULAR ELE NO TÉCNICO
--PARA FAZER ISSO FUNCIONAR, FIZ O WHILE ABAIXO QUE DELETA OS REGISTROS DO TÉCNICO QUANDO EXISTE ALGUM REGISTRO DO MÉDIO PRA AQUELE ALUNO NAQUELE ANO
create table #alusTECNICO_DeletarDaTEMP (cl_codigo int, cl_alu_codigo int, cl_tur_codigo int, expr1 datetime, cl_ST CHAR(1))

declare @existeRegistroADeletar int = 1
WHILE (@existeRegistroADeletar = 1)
BEGIN
	
	insert into #alusTECNICO_DeletarDaTEMP
	select alu.cl_codigo, alu.cl_alu_codigo, alu.cl_tur_codigo, alu.expr1, alu.cl_ST
	  from #tmp_aluno alu
		   inner join ( select a.*, t.cd_etapa_ensino, t.dc_etapa_ensino, 
							   ROW_NUMBER() OVER(PARTITION BY cl_alu_codigo ORDER BY expr1 desc) linha
						  from #tmp_aluno a
							   inner join BD_PRODAM..v_turma_mstech t on t.cd_turma_escola = a.cl_tur_codigo
						 where a.CL_ST <> 'X'
						   --and cl_alu_codigo in (6779601,134157,2624341,2627489,2827207)
					  ) ultimaTecnico
				   on ultimaTecnico.cl_alu_codigo = alu.cl_alu_codigo 
				  and ultimaTecnico.cl_tur_codigo = alu.cl_tur_codigo 
				  and ultimaTecnico.cl_codigo = alu.cl_codigo 
				  and ultimaTecnico.expr1 = alu.expr1 
				  and ultimaTecnico.linha = 1
				  and ultimaTecnico.cd_etapa_ensino in (9,14) --tecnico e magisterio
			inner join ( select a.*, t.cd_etapa_ensino, t.dc_etapa_ensino, 
							   ROW_NUMBER() OVER(PARTITION BY cl_alu_codigo ORDER BY expr1 desc) linha
						  from #tmp_aluno a
							   inner join BD_PRODAM..v_turma_mstech t on t.cd_turma_escola = a.cl_tur_codigo
						 where a.CL_ST <> 'X'
						   --and cl_alu_codigo in (6779601,134157,2624341,2627489,2827207)
						   and t.cd_etapa_ensino = 6 --MEDIO REGULAR
					  ) algumaMedio
				   on algumaMedio.cl_alu_codigo = alu.cl_alu_codigo 
				  and algumaMedio.linha = 1
			left join ( select a.*, t.cd_etapa_ensino, t.dc_etapa_ensino, 
							   ROW_NUMBER() OVER(PARTITION BY cl_alu_codigo ORDER BY expr1 desc) linha
						  from #tmp_aluno a
							   inner join BD_PRODAM..v_turma_mstech t on t.cd_turma_escola = a.cl_tur_codigo
						 where a.CL_ST = 'X'
						   --and cl_alu_codigo in (6779601,134157,2624341,2627489,2827207)
						   and t.cd_etapa_ensino = 6 --MEDIO REGULAR
					  ) algumaMedioComX
				   on algumaMedioComX.cl_alu_codigo = alu.cl_alu_codigo 
				  and algumaMedioComX.linha = 1
	 where algumaMedioComX.cl_alu_codigo is null

	 delete
	   from #tmp_aluno 
	  where exists (select d.cl_alu_codigo from #alusTECNICO_DeletarDaTEMP d
					 where d.cl_alu_codigo = #tmp_aluno.cl_alu_codigo 
					   and d.cl_tur_codigo = #tmp_aluno.cl_tur_codigo 
					   and d.cl_codigo = #tmp_aluno.cl_codigo 
					   and d.expr1 = #tmp_aluno.expr1 )

	 if ((select count(*) from #alusTECNICO_DeletarDaTEMP) = 0) SET @existeRegistroADeletar = 0
	 
	 delete from #alusTECNICO_DeletarDaTEMP
END
	   
	   
create table #alunos
 (cl_alu_codigo          int,
  cl_cham                varchar(5),
  cl_tur_codigo          int,
  cl_dt_inclusao         datetime,
  cl_st                  char(1), 
  alu_numeroMatricula    varchar(10),
  tur_codigo             varchar(10),
  alu_nome               varchar(70) NULL,
  alu_sex                varchar(1) NULL,
  alu_nasc               date NULL,
  alu_mae                varchar(70) NULL,
  ind_mae_falecida       char(1) NULL,
  alu_pai                varchar(70) NULL,
  ind_pai_falecido       char(1) NULL,
  tipo_responsavel       decimal(1, 0) NULL,
  nome_responsavel       varchar(70) NULL,
  codigo_cpf_responsavel decimal(11, 0) NULL,
  senha                  varchar(256) NULL,
  senha_resp             varchar(256) NULL)

create table #turma
  (cd_escola       char(6),
   cd_turma_escola INT,
   tne_nome        varchar(100),
   tme_nome        varchar(100),
   cur_codigo      int,
   crr_codigo      int,
   crp_ordem       int,
   crp_descricao   varchar(40),
   crp_ciclo       varchar(20))

insert into #alunos
       (cl_alu_codigo, cl_cham, cl_tur_codigo, cl_dt_inclusao, cl_st, 
       alu_numeroMatricula, tur_codigo, alu_nome, alu_nasc, alu_sex,
       alu_mae, alu_pai, nome_responsavel, codigo_cpf_responsavel, senha,
       tipo_responsavel, senha_resp, ind_mae_falecida, ind_pai_falecido)
select cl_alu_codigo, cl_cham, cl_tur_codigo, cl_datst, cl_st, 
       alu_numeroMatricula, tur_codigo, alu_nome, alu_nasc, alu_sex,
       alu_mae, alu_pai, NOME_RESPONSAVEL, CODIGO_CPF_RESPONSAVEL, senha,
       tipo_responsavel, senharesp, ind_mae_falecida, ind_pai_falecido
  from (SELECT alm.cl_alu_codigo, LEFT(alm.cl_cham,3) AS cl_cham, alm.cl_tur_codigo,
               alm.cl_datst, alm.cl_st,
               CAST(alm.cl_alu_codigo as VARCHAR(10)) as alu_numeroMatricula,
               CAST(alm.cl_tur_codigo as VARCHAR(10)) as tur_codigo,
               cast(mtr.alu_nome as varchar(70)) as alu_nome, mtr.alu_nasc,
               CASE UPPER(mtr.alu_sex) WHEN 'M' THEN 1 WHEN 'F' THEN 2 ELSE NULL END AS alu_sex,
               cast(mtr.ALU_MAE as varchar(70)) as alu_mae, cast(mtr.ALU_PAI as varchar(70)) as alu_pai,
               CAST(mtr.NOME_RESPONSAVEL AS VARCHAR(70)) AS NOME_RESPONSAVEL,
               CAST(mtr.CODIGO_CPF_RESPONSAVEL as DECIMAL(11,0)) AS CODIGO_CPF_RESPONSAVEL,
               cast(RIGHT(alm.cl_alu_codigo,4) as varchar(256)) as senha,
               tipo_responsavel = case ISNULL(tipo_pessoa_responsavel,0) when 3 then 4 when 4 then 3
                                  else tipo_pessoa_responsavel end,
               cast((RIGHT('0'+CAST(DAY(ALU_NASC) AS VARCHAR(2)),2) +
               RIGHT('0'+CAST(MONTH(ALU_NASC) AS VARCHAR(2)),2) +
               CAST(YEAR(ALU_NASC) AS VARCHAR(4))) as varchar(256)) AS senharesp,
               mae_falecida as ind_mae_falecida, pai_falecida as ind_pai_falecido,
               ROW_NUMBER() OVER (PARTITION BY alm.cl_alu_codigo
                                      ORDER BY alm.ordem desc) AS row_num
          FROM (select CL_ALU_CODIGO, cd_turma_escola, cd_tipo_turma, alu_nome, alu_sex, alu_nasc, 
                       ALU_MAE, ALU_PAI, NOME_RESPONSAVEL, CODIGO_CPF_RESPONSAVEL, tipo_pessoa_responsavel,
                       mae_falecida, pai_falecida,
                       cl_st = case cl_st when 'R' then 'T' when 'N' then 'D' when 'S' then 'I' else cl_st end
                  from BD_PRODAM..v_alunos_da_turma_MSTECH) mtr
               INNER JOIN
               (select cl_codigo, cl_alu_codigo, cl_tur_codigo, cl_datst, cl_cham, cl_st, des_status,
                       expr1, cl_nota, cl_dt_inclusao, flag_matr_antecipada, expr2, an_letivo,
                       ROW_NUMBER() OVER (PARTITION BY cl_alu_codigo
                                    ORDER BY cl_alu_codigo, ord_aluno, posicao) AS ordem
                 from (select cl_codigo, cl_alu_codigo, LEFT(cl_cham,3) AS cl_cham, cl_tur_codigo, 
                              cl_dt_inclusao as cl_datst, cl_st, des_status, expr1, cl_nota, cl_dt_inclusao,
                              flag_matr_antecipada, expr2, mov.an_letivo, 1 as posicao,
                              ROW_NUMBER() OVER (PARTITION BY cl_alu_codigo
                                           ORDER BY expr1) AS ord_aluno
                                           --ORDER BY cl_codigo, expr1) AS ord_aluno 
                                           -- PEDRO SILVA em 29/04:
                                           -- o julio tinha add essa linha acima em 29/02, mas estava causando inúmeros chamados em que pegava a situação errada do aluno (mais antiga) por causa do cl_codigo
                                           -- estou voltando como era antes de 29/02 e vou ficar de olho pra ver as consequencias
                         from #tmp_aluno mov
                        where cl_st in ('I', 'S', 'E')
                       union
                       select cl_codigo, cl_alu_codigo, LEFT(cl_cham,3) AS cl_cham, cl_tur_codigo,
                              cl_dt_inclusao as cl_datst, cl_st, des_status, expr1, cl_nota, cl_dt_inclusao,
                              flag_matr_antecipada, expr2, mov.an_letivo, 2 as posicao,
                              ROW_NUMBER() OVER (PARTITION BY cl_alu_codigo
                                           ORDER BY cl_dt_inclusao) AS ord_aluno
                                           --ORDER BY cl_codigo, cl_dt_inclusao) AS ord_aluno
                                           -- PEDRO SILVA em 29/04:
                                           -- o julio tinha add essa linha acima em 29/02, mas estava causando inúmeros chamados em que pegava a situação errada do aluno (mais antiga) por causa do cl_codigo
                                           -- estou voltando como era antes de 29/02 e vou ficar de olho pra ver as consequencias
                         from #tmp_aluno mov
                         where cl_st not in ('I', 'S', 'E')) dados) alm
                ON mtr.CL_ALU_CODIGO = alm.cl_alu_codigo
               AND mtr.cd_turma_escola = alm.cl_tur_codigo
               AND ((isnull(mtr.CL_ST,'T') = alm.cl_st)
                    OR 
                    (isnull(mtr.CL_ST,'D') = alm.cl_st)
                    OR
                    ((isnull(mtr.CL_ST,'X') = 'D') AND (alm.cl_st = 'T')))
         where cd_tipo_turma = 1) a
 WHERE a.row_num = 1

CREATE NONCLUSTERED INDEX IX_matricula ON #alunos (cl_tur_codigo)

insert into #turma
SELECT cd_escola, cd_turma_escola, tne_nome, tme_nome, cur_codigo,
       crr_codigo, crp_ordem, crp_descricao, crp_ciclo
  FROM (SELECT tal.cd_escola, tal.cd_turma_escola, CONVERT(VARCHAR(100),
               RTRIM(LTRIM(REPLACE(REPLACE(REPLACE(REPLACE(tal.dc_etapa_ensino,
               ' DE 8 ANOS', ''), ' DE 9 ANOS', ''), ' 9 ANOS', ''), ' 8 ANOS', '')))) AS tne_nome ,
               CONVERT(VARCHAR(100), RTRIM(LTRIM(CONVERT(VARCHAR(5), tal.cd_modalidade_ensino) +
               '_' + dc_modalidade_ensino))) AS tme_nome, tal.cd_etapa_ensino AS cur_codigo,
               tal.cd_etapa_ensino AS crr_codigo, tal.cd_serie_ensino AS crp_ordem,
               tal.dc_serie_ensino AS crp_descricao, LTRIM(RTRIM(tal.dc_ciclo_ensino)) AS crp_ciclo
          FROM BD_PRODAM..v_turma_MSTECH tal
			   INNER JOIN GE_ESC_Escola esc on esc.esc_codigo = tal.cd_escola 
										   AND esc.esc_situacao <> 3
										   --and esc.esc_controleSistema = 1 --filtro para funcionar com menos escolas em homologação
																			 -- mas teve q ser comentado em 28/04/2016 por causa dos CIEJAS
               INNER JOIN tmpTipoSerieEOL tse
               ON tse.cd_serie_eol98 = tal.cd_serie_eol98
         WHERE tal.an_letivo = (SELECT CAST(VALOR as int) FROM _PARAMETROS WHERE CHAVE = 'ANO_BASE')
           AND tal.dc_etapa_ensino IS NOT NULL
           AND tal.cd_etapa_ensino IN (1,2,3,4,5,6,9,10,11,13,14) --filtrar alunos de EF (Regular e Especial) e EI (Regular e Especial)
           AND tal.cd_modalidade_ensino IS NOT NULL
           AND tal.cd_serie_ensino IS NOT NULL
           AND tal.dc_ciclo_ensino IS NOT NULL) AS t
  GROUP BY t.cd_escola, t.cd_turma_escola, t.tne_nome, t.tme_nome, t.cur_codigo,
           t.crr_codigo, t.crp_ordem, t.crp_descricao, t.crp_ciclo

CREATE NONCLUSTERED INDEX IX_turma ON #turma (cd_turma_escola)

insert into ssis_DiarioClasse_aluno
       (cl_alu_codigo, cl_cham, cl_tur_codigo, alu_nome, alu_sex, alu_nasc, alu_mae, ind_mae_falecida,
	    alu_pai, ind_pai_falecido, cl_dt_inclusao, cl_st, cd_escola, cd_turma_escola, tne_nome, tme_nome,
	    cur_codigo, crr_codigo, crp_ordem, crp_descricao, crp_ciclo, alu_numeroMatricula,
	    tur_codigo, tipo_responsavel, nome_responsavel, codigo_cpf_responsavel, senha, senha_resp, esc_codigo)
select cl_alu_codigo, cl_cham, cl_tur_codigo, alu_nome, alu_sex, alu_nasc, alu_mae, ind_mae_falecida,
	   alu_pai, ind_pai_falecido, cl_dt_inclusao, cl_st, tur.cd_escola, tur.cd_turma_escola, tur.tne_nome,
	   tur.tme_nome, tur.cur_codigo, tur.crr_codigo, tur.crp_ordem,
	   LEFT(tur.crp_descricao,40) as crp_descricao, left(tur.crp_ciclo, 20) as crp_ciclo, alu_numeroMatricula,
	   tur_codigo, tipo_responsavel, nome_responsavel, codigo_cpf_responsavel, senha,
       senha_resp, CAST(tur.cd_escola as VARCHAR(6)) as  esc_codigo
  from #alunos aluno INNER JOIN #turma AS tur
       ON aluno.cl_tur_codigo = tur.cd_turma_escola 
 group by cl_alu_codigo, cl_cham, cl_tur_codigo, alu_nome, alu_sex, alu_nasc, alu_mae, ind_mae_falecida,
	   alu_pai, ind_pai_falecido, cl_dt_inclusao, cl_st, tur.cd_escola, tur.cd_turma_escola,
       tur.tne_nome, tur.tme_nome, tur.cur_codigo, tur.crr_codigo, tur.crp_ordem, tur.crp_descricao,
       tur.crp_ciclo, alu_numeroMatricula, tur_codigo, tipo_responsavel, nome_responsavel,
       codigo_cpf_responsavel, senha, senha_resp

declare @data_corte varchar(10)
declare @inicio_recesso_meio_ano date
declare @fim_recesso_meio_ano date
declare @data_corte_meio_ano date

select @data_corte = VALOR from _PARAMETROS where CHAVE = 'DATA_CORTE'
select @inicio_recesso_meio_ano = VALOR from _PARAMETROS where CHAVE = 'INICIO_RECESSO_MEIO_ANO'
select @fim_recesso_meio_ano = VALOR from _PARAMETROS where CHAVE = 'FIM_RECESSO_MEIO_ANO'
select @data_corte_meio_ano = VALOR from _PARAMETROS where CHAVE = 'DATA_CORTE_MEIO_ANO'

--Arruma as datas para não ter nenhuma data menor que a data de corte (menor data de matrícula no ano)
update ssis_DiarioClasse_aluno
   set cl_dt_inclusao = @data_corte
 where cl_dt_inclusao < @data_corte
 
--Arruma as datas do recesso do meio de ano para ficarem todas na data do primeiro dia do terceiro bimestre (menor data de matrícula no ano)
update ssis_DiarioClasse_aluno
   set cl_dt_inclusao = @data_corte_meio_ano
 where cl_dt_inclusao between @inicio_recesso_meio_ano and @fim_recesso_meio_ano
END
GO

/****** Object:  StoredProcedure [dbo].[STP_SMESP_AnoSerie_IMPORT]    Script Date: 05/12/2014 10:35:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_SMESP_AnoSerie_IMPORT]
AS
BEGIN
	MERGE INTO BC_VD_AnoSerie _target
	USING
	(
		SELECT
			sg_serie_eol98
			, cd_serie_eol98
			, cur_id
		FROM
			tmp_turma
		WHERE
			sg_serie_eol98 IS NOT NULL
		GROUP BY
			sg_serie_eol98
			, cd_serie_eol98
			, cur_id
	) AS _source
	ON (_source.sg_serie_eol98 COLLATE Latin1_General_CI_AS = _target.ase_nome COLLATE Latin1_General_CI_AS
		AND _source.cur_id = _target.cur_id
		AND _source.cd_serie_eol98 = _target.ase_codigo)
	WHEN MATCHED AND ase_codigo IS NULL THEN
		UPDATE SET
			ase_codigo = _source.cd_serie_eol98
			, ase_dataAlteracao = GETDATE()
	WHEN NOT MATCHED THEN
		INSERT
		(
			ase_nome
			, cur_id
			, ase_codigo
			, ase_dataCriacao
			, ase_dataAlteracao
			, ase_ativo
		)
		VALUES
		(
			_source.sg_serie_eol98
			, _source.cur_id
			, _source.cd_serie_eol98
			, GETDATE()
			, GETDATE()
			, 1
		);
	UPDATE tmp_turma SET
		ase_id = ase.ase_id
	FROM
		tmp_turma tur
		INNER JOIN BC_VD_AnoSerie ase
			ON (ase.ase_nome COLLATE Latin1_General_CI_AS = tur.sg_serie_eol98)

END
GO

/****** Object:  StoredProcedure [dbo].[STP_SMESP_AVA_UsuarioGrupo_IMPORT]    Script Date: 05/12/2014 10:35:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_SMESP_AVA_UsuarioGrupo_IMPORT]
AS 
BEGIN     
    DECLARE @ent_id UNIQUEIDENTIFIER, @sis_id INT, @gru_idProfessor UNIQUEIDENTIFIER 
    
    DECLARE @TipoUAD table (tua_id UNIQUEIDENTIFIER)
	
	insert into @TipoUAD
	SELECT tua_id FROM SSO_SYS_TipoUnidadeAdministrativa
	 WHERE tua_nome in ('Diretoria Regional de Educação','Escola') 
    
    CREATE TABLE #tmp_Usuario
        (usu_id UNIQUEIDENTIFIER,
         gru_id UNIQUEIDENTIFIER,
         uad_id UNIQUEIDENTIFIER)
    
    -- ID da entidade
    SELECT @ent_id = ent_id FROM SSO_SYS_Entidade WITH (NOLOCK) WHERE ent_sigla = 'SMESP'
    
    -- ID do sistema
    SELECT @sis_id = sis_id FROM SSO_SYS_Sistema WITH (NOLOCK) WHERE sis_nome = 'AVA SME-SP'
    
    -- IDs dos grupos 
	SELECT @gru_idProfessor = gru_idUsadoIntegracao FROM DEPARA_GRUPOS_INTEGRACAO 
     WHERE nomeUsadoIntegracao = 'Cursistas' and sis_id = @sis_id
    
    -- insere na tmp_usuario
    INSERT INTO #tmp_Usuario (usu_id, gru_id, uad_id)
    SELECT usu.usu_id, serv.gru_id, uad.uad_id
      FROM (-- Professores
            SELECT rf, @gru_idProfessor AS gru_id, cd_escola
              FROM tmp_professor prof WITH (NOLOCK)
             UNION
             select ds.cd_registro_funcional AS RF, @gru_idProfessor, cb.lotacao AS cd_escola
               from BD_PRODAM..v_servidor_mstech ds
                    inner join bd_prodam..v_cargobase_mstech cb
                    on ds.cd_registro_funcional = cb.cd_registro_funcional 
                    inner join GestaoPedagogica..RHU_Cargo 
                     on cb.cd_cargo = RHU_Cargo.crg_codigo
                    and isnull(cb.cd_situacao_funcional,1) = RHU_Cargo.tvi_id
                    inner join BD_PRODAM..v_unidade_educacao_dados_gerais esc
                     on cb.lotacao = esc.cd_unidade_educacao
              where crg_situacao <> 3 and crg_cargoDocente = 1
                and dc_cargo <> 'COORDENADOR PEDAGOGICO'
                and esc.dc_tipo_unidade_educacao = 'ESCOLA' 
                and esc.sg_tp_escola in ('EMEF','EMEFM','CEU EMEF','EMEBS','CIEJA',
									 'EMEI','CECI','CEMEI','CEI DIRET', 'CCI/CIPS', 'CEI INDIR', 'CEU CEI', 'CEU EMEI', 'CR.P.CONV')
                and ds.cd_registro_funcional not in (select rf from tmp_professor)) serv
           INNER JOIN SSO_SYS_Usuario usu WITH (NOLOCK)
           ON serv.rf = usu.usu_login
           INNER JOIN SSO_SYS_UnidadeAdministrativa uad WITH (NOLOCK)
           ON serv.cd_escola = uad.uad_codigo
           INNER JOIN @TipoUAD tua
           ON uad.tua_id = tua.tua_id
     GROUP BY usu_id, gru_id, uad_id
    
    -- Manutenção da tabela SSIS_LoginImportado
    MERGE SSIS_LoginImportado AS _target
    USING (SELECT usu.usu_id, usu.usu_login, tmp.gru_id, tmp.uad_id
             FROM #tmp_Usuario tmp WITH (NOLOCK)
                  INNER JOIN SSO_SYS_Usuario usu WITH (NOLOCK)
                  ON tmp.usu_id = usu.usu_id
            GROUP BY usu.usu_id, usu.usu_login, tmp.gru_id, tmp.uad_id) AS _source
     ON _source.usu_id = _target.usu_id
    AND _source.usu_login = _target.ssi_login
    AND _source.gru_id = _target.gru_id
    AND _source.uad_id = _target.uad_id
    WHEN NOT MATCHED THEN
	     INSERT (usu_id, ssi_login, gru_id, uad_id, ssi_situacao)
         VALUES (_source.usu_id, _source.usu_login, _source.gru_id, _source.uad_id, 1)
    WHEN MATCHED AND _target.ssi_situacao = 3 AND _target.gru_id = @gru_idProfessor
                 AND _target.uad_id = _source.uad_id THEN
	     UPDATE SET ssi_situacao = 1, ssi_dataAlteracao = GETDATE()
    WHEN NOT MATCHED BY SOURCE AND _target.gru_id = @gru_idProfessor THEN
	     DELETE;	
    
    -- UsuarioGrupo    
    -- Deleta a relação UsuarioGrupo para os registros que estão na tmp de servidores importados automaticamente
    DELETE ug
      FROM SSO_SYS_UsuarioGrupo ug
           INNER JOIN SSIS_LoginImportado lo
            ON ug.usu_id = lo.usu_id
           AND ug.gru_id = lo.gru_id
     WHERE lo.gru_id = @gru_idProfessor  
       AND lo.ssi_situacao = 3
    
    MERGE SSO_SYS_UsuarioGrupo AS _target
    USING (SELECT usu_id, gru_id
             FROM #tmp_Usuario
            GROUP BY usu_id, gru_id) AS _source
     ON _source.usu_id = _target.usu_id
    AND _source.gru_id = _target.gru_id
    WHEN NOT MATCHED  THEN
         INSERT (usu_id, gru_id, usg_situacao)
         VALUES (_source.usu_id, _source.gru_id, 1)
    WHEN MATCHED THEN UPDATE SET usg_situacao = 1;
    
    -- Deleta a relação UsuarioGrupoUA para os registros que estão na tmp de servidores importados automaticamente
    DELETE ugu
      FROM SSO_SYS_UsuarioGrupoUA ugu
           INNER JOIN SSIS_LoginImportado lo
            ON ugu.usu_id = lo.usu_id
           AND ugu.gru_id = lo.gru_id
           AND ugu.uad_id = lo.uad_id
     WHERE lo.gru_id = @gru_idProfessor
       AND lo.ssi_situacao = 3
    
    MERGE SSO_SYS_UsuarioGrupoUA AS _target
    USING (SELECT usu_id, gru_id, uad_id
             FROM #tmp_Usuario
            GROUP BY usu_id, gru_id, uad_id) AS _source
     ON _source.usu_id = _target.usu_id
    AND _source.gru_id = _target.gru_id
    AND _source.uad_id = _target.uad_id
    WHEN NOT MATCHED THEN
	INSERT (usu_id, gru_id, ent_id, uad_id)
	VALUES (_source.usu_id, _source.gru_id, @ent_id, _source.uad_id );
END
GO

/****** Object:  StoredProcedure [dbo].[STP_SMESP_BCW_CREATE_SINONIMO]    Script Date: 05/12/2014 10:35:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_SMESP_BCW_CREATE_SINONIMO]
	@bdBlueControlWeb AS VARCHAR(100)
AS
BEGIN
	DECLARE @SQL AS VARCHAR(MAX)
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'BCW_Escola')
	DROP SYNONYM [dbo].[BCW_Escola]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'BCW_Programa')
	DROP SYNONYM [dbo].[BCW_Programa]	
	
	SET @SQL = 'CREATE SYNONYM [dbo].[BCW_Escola] FOR [' + @bdBlueControlWeb + '].[dbo].[Escola]
				CREATE SYNONYM [dbo].[BCW_Programa] FOR [' + @bdBlueControlWeb + '].[dbo].[Programa]'				

	EXEC(@SQL)	
END

GO

/****** Object:  StoredProcedure [dbo].[STP_SMESP_BCW_Escola_Import]    Script Date: 05/12/2014 10:35:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE
 PROCEDURE [dbo].[STP_SMESP_BCW_Escola_Import]
AS 
    BEGIN

        SET XACT_ABORT ON
        BEGIN TRAN
 
        DECLARE @ent_id UNIQUEIDENTIFIER ,
            @tua_id UNIQUEIDENTIFIER ,
            @esp_id INT  

-- Seta Variáveis
	-- Atualiza entidade;
        SET @ent_id = ( SELECT  ent_id
                        FROM    SSO_SYS_Entidade
                        WHERE   ent_sigla = 'SMESP'
                      )
        SET @tua_id = ( SELECT  pac_valor
                        FROM    GE_ACA_ParametroAcademico WITH ( NOLOCK )
                        WHERE   pac_chave = 'TIPO_UNIDADE_ADMINISTRATIVA_ESCOLA'
                      )
        
	-- Atualiza Programa da Escola;
        SET @esp_id = ( SELECT TOP 1
                                esp_id
                        FROM    BCW_Programa
                      )

-- Importa ESC_Escola
        MERGE INTO BCW_Escola _target
            USING 
                ( SELECT DISTINCT
                            @ent_id AS ent_id ,
                            uad_id ,
                            1 AS ess_id ,
                            1 AS esc_dadosCommited ,
                            @esp_id AS esp_id
                  FROM      SSO_SYS_UnidadeAdministrativa uad
                            INNER JOIN tmp_CoreSME_unidade_educacao_dados_gerais esc_pr ON uad.uad_codigo = esc_pr.cd_unidade_educacao
                  WHERE     uad.ent_id = @ent_id
                            AND tua_id = @tua_id
                            AND uad_situacao = 1
                            AND dc_tipo_unidade_educacao = 'ESCOLA'
                  GROUP BY  uad.ent_id ,
                            uad.uad_id ,
                            tua_id ,
                            uad_codigo ,
                            RTRIM(LTRIM(esc_pr.sg_tp_escola)) + ' - '
                            + uad_nome ,
                            uad_situacao ,
                            esc_pr.dc_tipo_dependencia_administrativa
                ) AS _source
            ON ( _source.ent_id = _target.ent_id
                 AND _source.uad_id = _target.uad_id
               )
            WHEN NOT MATCHED 
                THEN
		INSERT  (
                      ent_id ,
                      uad_id ,
                      ess_id ,
                      esc_dadosCommited ,
                      esp_id
				
                    )
                    VALUES
                    ( _source.ent_id ,
                      _source.uad_id ,
                      _source.ess_id ,
                      _source.esc_dadosCommited ,
                      _source.esp_id			
		        ) ;
	

	
        IF ( ( SELECT   @@TRANCOUNT
             ) > 0 ) 
            BEGIN
                COMMIT TRANSACTION
            END
        ELSE 
            BEGIN 
                ROLLBACK TRANSACTION
            END
    END
GO

/****** Object:  StoredProcedure [dbo].[STP_SMESP_CORESSO_LOG_ERROS_DELETE]    Script Date: 05/12/2014 10:35:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_SMESP_CORESSO_LOG_ERROS_DELETE] ( @MesesAtras INT )
AS 
BEGIN
   DECLARE @for_delete INT, @Count int = 0
   
   SELECT @for_delete = count(*)
     FROM SSO_LOG_Erros
    WHERE err_dataHora < DATEADD(MONTH, @MesesAtras, GETDATE())
   
   WHILE (@Count < @for_delete)
   BEGIN
      SELECT @Count = @Count + 10000
      BEGIN TRAN
         DELETE TOP(10000) FROM SSO_LOG_Erros
          WHERE err_dataHora < DATEADD(MONTH, @MesesAtras, GETDATE())
      COMMIT TRAN
   END
   
   SET @for_delete = 0
   SET @Count = 0
   
   SELECT @for_delete = count(*)
     FROM SSO_LOG_Erros WHERE sis_id is null

   WHILE (@Count < @for_delete)
   BEGIN
      SELECT @Count = @Count + 10000
      BEGIN TRAN
         DELETE TOP(10000) FROM SSO_LOG_Erros WHERE sis_id is null
      COMMIT TRAN
   END
END
GO

/****** Object:  StoredProcedure [dbo].[STP_SMESP_CREATE_SINONIMO]    Script Date: 05/12/2014 10:35:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_SMESP_CREATE_SINONIMO]
	@bdCoreSSO AS VARCHAR(100)
	, @bdGerenciamentoFrequencia AS VARCHAR(100)
	, @bdBlueCore AS VARCHAR(100)
	, @bdCoreSME as VARCHAR(100)
	, @bdCoreSSO_LOG AS VARCHAR(100)
AS
BEGIN
	
	IF  @bdCoreSME is null 
        SET @bdCoreSME = 'CORESME'
	 
	DECLARE @SQL AS VARCHAR(MAX)
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_SYS_UsuarioGrupo')
	DROP SYNONYM [dbo].[SSO_SYS_UsuarioGrupo]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_SYS_Usuario')
	DROP SYNONYM [dbo].[SSO_SYS_Usuario]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_NewUsers')
	DROP SYNONYM [dbo].[SSO_NewUsers]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_SYS_SistemaEntidade')
	DROP SYNONYM [dbo].[SSO_SYS_SistemaEntidade]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_SYS_Sistema')
	DROP SYNONYM [dbo].[SSO_SYS_Sistema]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_SYS_Grupo')
	DROP SYNONYM [dbo].[SSO_SYS_Grupo]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_END_Cidade')
	DROP SYNONYM [dbo].[SSO_END_Cidade]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_END_Endereco')
	DROP SYNONYM [dbo].[SSO_END_Endereco]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_END_Pais')
	DROP SYNONYM [dbo].[SSO_END_Pais]	
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_END_UnidadeFederativa')
	DROP SYNONYM [dbo].[SSO_END_UnidadeFederativa]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_PES_Pessoa')
	DROP SYNONYM [dbo].[SSO_PES_Pessoa]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_PES_PessoaDocumento')
	DROP SYNONYM [dbo].[SSO_PES_PessoaDocumento]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_SYS_Entidade')
	DROP SYNONYM [dbo].[SSO_SYS_Entidade]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_SYS_TipoEntidade')
	DROP SYNONYM [dbo].[SSO_SYS_TipoEntidade]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_SYS_TipoDocumentacao')
	DROP SYNONYM [dbo].[SSO_SYS_TipoDocumentacao]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_SYS_TipoUnidadeAdministrativa')
	DROP SYNONYM [dbo].[SSO_SYS_TipoUnidadeAdministrativa]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_SYS_UnidadeAdministrativa')
	DROP SYNONYM [dbo].[SSO_SYS_UnidadeAdministrativa]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_SYS_UnidadeAdministrativaEndereco')
	DROP SYNONYM [dbo].[SSO_SYS_UnidadeAdministrativaEndereco]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'BC_VD_Turma')
	DROP SYNONYM [dbo].[BC_VD_Turma]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'BC_VD_Aluno')
	DROP SYNONYM [dbo].[BC_VD_Aluno]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'BC_VD_AlunoEscola')
	DROP SYNONYM [dbo].[BC_VD_AlunoEscola]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'BC_VD_AnoSerie')
	DROP SYNONYM [dbo].[BC_VD_AnoSerie]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'BC_VD_Curso')
	DROP SYNONYM [dbo].[BC_VD_Curso]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'BC_VD_Disciplina')
	DROP SYNONYM [dbo].[BC_VD_Disciplina]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'BC_VD_Disciplina_Turma')
	DROP SYNONYM [dbo].[BC_VD_Disciplina_Turma]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'BC_VD_Professor')
	DROP SYNONYM [dbo].[BC_VD_Professor]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'BC_VD_ProfessorEscola')
	DROP SYNONYM [dbo].[BC_VD_ProfessorEscola]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'BC_VD_Periodo')
	DROP SYNONYM [dbo].[BC_VD_Periodo]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'BC_VD_Professor_Disciplina')
	DROP SYNONYM [dbo].[BC_VD_Professor_Disciplina]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'BC_VD_Professor_Disciplina_Turma')
	DROP SYNONYM [dbo].[BC_VD_Professor_Disciplina_Turma]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SME_SYS_UnidadeAdministrativa_TipoEscola')
	DROP SYNONYM [dbo].[SME_SYS_UnidadeAdministrativa_TipoEscola]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SME_SYS_TipoEscola')
	DROP SYNONYM [dbo].[SME_SYS_TipoEscola]
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'SSO_LOG_Erros')
	DROP SYNONYM [dbo].[SSO_LOG_Erros]
	
	SET @SQL = 'CREATE SYNONYM [dbo].[SSO_SYS_UsuarioGrupo] FOR [' + @bdCoreSSO + '].[dbo].[SYS_UsuarioGrupo]
				CREATE SYNONYM [dbo].[SSO_SYS_Usuario] FOR [' + @bdCoreSSO + '].[dbo].[SYS_Usuario]
				CREATE SYNONYM [dbo].[SSO_NewUsers] FOR [' + @bdCoreSSO + '].[dbo].[NewUsers]
				CREATE SYNONYM [dbo].[SSO_SYS_SistemaEntidade] FOR [' + @bdCoreSSO + '].[dbo].[SYS_SistemaEntidade]
				CREATE SYNONYM [dbo].[SSO_SYS_Sistema] FOR [' + @bdCoreSSO + '].[dbo].[SYS_Sistema]
				CREATE SYNONYM [dbo].[SSO_SYS_Grupo] FOR [' + @bdCoreSSO + '].[dbo].[SYS_Grupo]
				CREATE SYNONYM [dbo].[SSO_END_Cidade] FOR [' + @bdCoreSSO + '].[dbo].[END_Cidade]
				CREATE SYNONYM [dbo].[SSO_END_Endereco] FOR [' + @bdCoreSSO + '].[dbo].[END_Endereco]
				CREATE SYNONYM [dbo].[SSO_END_Pais] FOR [' + @bdCoreSSO + '].[dbo].[END_Pais]
				CREATE SYNONYM [dbo].[SSO_END_UnidadeFederativa] FOR [' + @bdCoreSSO + '].[dbo].[END_UnidadeFederativa]
				CREATE SYNONYM [dbo].[SSO_PES_Pessoa] FOR [' + @bdCoreSSO + '].[dbo].[PES_Pessoa]
				CREATE SYNONYM [dbo].[SSO_PES_PessoaDocumento] FOR [' + @bdCoreSSO + '].[dbo].[PES_PessoaDocumento]
				CREATE SYNONYM [dbo].[SSO_SYS_Entidade] FOR [' + @bdCoreSSO + '].[dbo].[SYS_Entidade]
				CREATE SYNONYM [dbo].[SSO_SYS_TipoEntidade] FOR [' + @bdCoreSSO + '].[dbo].[SYS_TipoEntidade]
				CREATE SYNONYM [dbo].[SSO_SYS_TipoDocumentacao] FOR [' + @bdCoreSSO + '].[dbo].[SYS_TipoDocumentacao]
				CREATE SYNONYM [dbo].[SSO_SYS_TipoUnidadeAdministrativa] FOR [' + @bdCoreSSO + '].[dbo].[SYS_TipoUnidadeAdministrativa]
				CREATE SYNONYM [dbo].[SSO_SYS_UnidadeAdministrativa] FOR [' + @bdCoreSSO + '].[dbo].[SYS_UnidadeAdministrativa]
				CREATE SYNONYM [dbo].[SSO_SYS_UnidadeAdministrativaEndereco] FOR [' + @bdCoreSSO + '].[dbo].[SYS_UnidadeAdministrativaEndereco]
				
				CREATE SYNONYM [dbo].[BC_VD_Turma] FOR [' + @bdBlueCore + '].[dbo].[VD_Turma]
				CREATE SYNONYM [dbo].[BC_VD_Aluno] FOR [' + @bdBlueCore + '].[dbo].[VD_Aluno]
				CREATE SYNONYM [dbo].[BC_VD_AlunoEscola] FOR [' + @bdBlueCore + '].[dbo].[VD_AlunoEscola]
				CREATE SYNONYM [dbo].[BC_VD_AnoSerie] FOR [' + @bdBlueCore + '].[dbo].[VD_AnoSerie]
				CREATE SYNONYM [dbo].[BC_VD_Curso] FOR [' + @bdBlueCore + '].[dbo].[VD_Curso]
				CREATE SYNONYM [dbo].[BC_VD_Disciplina] FOR [' + @bdBlueCore + '].[dbo].[VD_Disciplina]
				CREATE SYNONYM [dbo].[BC_VD_Disciplina_Turma] FOR [' + @bdBlueCore + '].[dbo].[VD_Disciplina_Turma]
				CREATE SYNONYM [dbo].[BC_VD_Professor] FOR [' + @bdBlueCore + '].[dbo].[VD_Professor]
				CREATE SYNONYM [dbo].[BC_VD_ProfessorEscola] FOR [' + @bdBlueCore + '].[dbo].[VD_ProfessorEscola]
				CREATE SYNONYM [dbo].[BC_VD_Periodo] FOR [' + @bdBlueCore + '].[dbo].[VD_Periodo]
				CREATE SYNONYM [dbo].[BC_VD_Professor_Disciplina] FOR [' + @bdBlueCore + '].[dbo].[VD_Professor_Disciplina]
				CREATE SYNONYM [dbo].[BC_VD_Professor_Disciplina_Turma] FOR [' + @bdBlueCore + '].[dbo].[VD_Professor_Disciplina_Turma]
				CREATE SYNONYM [dbo].[SME_SYS_UnidadeAdministrativa_TipoEscola] FOR [' + @bdCoreSME + '].[dbo].[SYS_UnidadeAdministrativa_TipoEscola]
				CREATE SYNONYM [dbo].[SME_SYS_TipoEscola] FOR [' + @bdCoreSME + '].[dbo].[SYS_TipoEscola]
				CREATE SYNONYM [dbo].[SSO_LOG_Erros] FOR [' + @bdCoreSSO_LOG + '].[dbo].[LOG_Erros]'
				
				

	EXEC(@SQL)
	
	IF  EXISTS (SELECT * FROM sys.synonyms WHERE name = N'FREQ_Configuracao')
	DROP SYNONYM [dbo].[FREQ_Configuracao]

	SET @SQL = 'CREATE SYNONYM [dbo].[FREQ_Configuracao] FOR [' + @bdGerenciamentoFrequencia + '].[dbo].[Configuracao]'
	EXEC(@SQL)
END
GO

/****** Object:  StoredProcedure [dbo].[STP_SMESP_Curso_IMPORT]    Script Date: 05/12/2014 10:35:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_SMESP_Curso_IMPORT]
AS
BEGIN

MERGE INTO BC_VD_Curso _target
USING
(
	SELECT
		tmp.dc_etapa_ensino
		, ((SELECT MAX(cur_id) FROM BlueCore..VD_Curso) + RowNum) AS id
	FROM
		(
		SELECT
			UPPER(dc_etapa_ensino) AS dc_etapa_ensino
			, ROW_NUMBER() OVER (ORDER BY dc_etapa_ensino) AS RowNum
		FROM
			tmp_turma
		WHERE
			dc_etapa_ensino IS NOT NULL
		GROUP BY
			UPPER(dc_etapa_ensino)
			, dc_etapa_ensino
		) AS tmp
) AS _source
ON (_source.dc_etapa_ensino COLLATE Latin1_General_CI_AS = UPPER(_target.cur_nome) COLLATE Latin1_General_CI_AS)
WHEN NOT MATCHED THEN
	INSERT
	(
		cur_id
		, cur_nome
	)
	VALUES
	(
		_source.id
		, _source.dc_etapa_ensino
	);

UPDATE tmp_turma SET
	cur_id = cur.cur_id
FROM
	tmp_turma tmp
	INNER JOIN BC_VD_Curso cur
		ON (cur.cur_nome COLLATE Latin1_General_CI_AS = tmp.dc_etapa_ensino COLLATE Latin1_General_CI_AS)
END
GO

/****** Object:  StoredProcedure [dbo].[STP_SMESP_DiretoriaRegionalEnsino_IMPORT]    Script Date: 05/12/2014 10:35:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_SMESP_DiretoriaRegionalEnsino_IMPORT]
AS
BEGIN
    DECLARE @ent_id UNIQUEIDENTIFIER, @tua_id UNIQUEIDENTIFIER
    
    SET @ent_id = (SELECT ent_id FROM CoreSSO..sys_entidade WHERE UPPER(ent_sigla) = 'SMESP')
    SET @tua_id = (SELECT tua_id FROM CoreSSO..sys_tipounidadeadministrativa WHERE UPPER(tua_nome) = 'DIRETORIA REGIONAL DE EDUCAÇÃO')
    
    MERGE INTO CoreSSO..sys_unidadeadministrativa _target
    USING (SELECT une.cd_unidade_educacao, une.dc_tipo_unidade_educacao, une.nm_unidade_educacao,
                  une.nm_logradouro, une.cd_nr_endereco, une.nm_bairro, une.cd_endereco_grh
             FROM BD_PRODAM..v_unidade_educacao_dados_gerais UNE
            WHERE tp_situacao_unidade = 1
              AND nm_unidade_educacao LIKE 'DIRETORIA REGIONAL DE EDUCACAO %') AS _source
     ON _target.ent_id = @ent_id
    AND _target.tua_id = @tua_id
    AND _target.uad_codigo COLLATE Latin1_General_CI_AS = _source.cd_unidade_educacao COLLATE Latin1_General_CI_AS
    WHEN MATCHED THEN
         UPDATE SET uad_nome = _source.nm_unidade_educacao,
                    uad_codigoIntegracao = _source.cd_endereco_grh,
                    uad_dataAlteracao = GETDATE()
    WHEN NOT MATCHED THEN
         INSERT (ent_id, tua_id, uad_codigo, uad_nome, uad_sigla, uad_idSuperior, uad_situacao,
                 uad_dataCriacao, uad_dataAlteracao, uad_integridade, uad_codigoIntegracao)
         VALUES (@ent_id, @tua_id, _source.cd_unidade_educacao, _source.nm_unidade_educacao, NULL, NULL, 1,
                 GETDATE(), GETDATE(), 0, _source.cd_endereco_grh);
    
    -- Atualiza o campo uad_codigoIntegracao com o valor em BD_PRODAM..v_unidade_educacao_dados_gerais.cd_endereco_grh
    -- para todos os registros na SYS_UnidadeAdministrativa que tiverem relação com um registro ativo no EOL
    -- e que não estejam preenchidos
    update uad
       set uad_codigoIntegracao = dados.cd_endereco_grh
      FROM CoreSSO..SYS_UnidadeAdministrativa uad
           INNER JOIN
           (SELECT * FROM BD_PRODAM..v_unidade_educacao_dados_gerais
             WHERE tp_situacao_unidade = 1
               AND cd_endereco_grh IS NOT NULL) dados
           ON uad.uad_codigo = dados.cd_unidade_educacao
     WHERE tua_id <> '1D208ECE-D576-E211-B1FD-782BCB3D2D76' -- Biblioteca
       and ISNULL(uad_codigoIntegracao,'') <> dados.cd_endereco_grh
END
GO

/****** Object:  StoredProcedure [dbo].[STP_SMESP_Disciplina_IMPORT]    Script Date: 05/12/2014 10:35:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_SMESP_Disciplina_IMPORT]
AS
BEGIN
SET XACT_ABORT ON
BEGIN TRAN

DECLARE
	@ent_id UNIQUEIDENTIFIER

	DECLARE @tua_id UNIQUEIDENTIFIER
	SET @tua_id = (SELECT tua_id FROM SSO_SYS_TipoUnidadeAdministrativa WHERE tua_nome = 'Escola')

SET @ent_id = (SELECT ent_id FROM SSO_SYS_Entidade WHERE ent_sigla = 'SMESP')

MERGE INTO BC_VD_Disciplina _target
USING
(
	SELECT
		tmp.cd_escola
		, tmp.cd_componente_curricular
		, tmp.dc_componente_curricular
		, uad.uad_codigo
		, uad.uad_id
	FROM
		tmp_disciplina tmp
		INNER JOIN SSO_SYS_UnidadeAdministrativa uad
			ON (uad.uad_codigo COLLATE Latin1_General_CI_AI = tmp.cd_escola COLLATE Latin1_General_CI_AI
				AND uad.ent_id = @ent_id
				AND uad.tua_id = @tua_id)
) AS _source
ON (_source.dc_componente_curricular COLLATE Latin1_General_CI_AI = _target.dis_nome COLLATE Latin1_General_CI_AI
	AND _source.uad_id = _target.uad_id)
WHEN NOT MATCHED THEN
	INSERT
	(
		dis_nome
		, dis_descricao
		, dis_ativo
		, ent_id
		, uad_id
		, dis_dataCriacao
		, dis_dataAlteracao
	)
	VALUES
	(
		dc_componente_curricular
		, cd_componente_curricular
		, 1
		, @ent_id
		, uad_id
		, GETDATE()
		, GETDATE()
	);

IF (@@TRANCOUNT > 0)
BEGIN
	COMMIT TRAN
END

END
GO

/****** Object:  StoredProcedure [dbo].[STP_SMESP_Disciplina_Turma_IMPORT]    Script Date: 05/12/2014 10:35:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_SMESP_Disciplina_Turma_IMPORT]
AS
BEGIN
SET XACT_ABORT ON
BEGIN TRAN

DECLARE
	@ent_id UNIQUEIDENTIFIER
SET @ent_id = (SELECT ent_id FROM SSO_SYS_Entidade WHERE ent_sigla = 'SMESP')

	DECLARE @tua_id UNIQUEIDENTIFIER
	SET @tua_id = (SELECT tua_id FROM SSO_SYS_TipoUnidadeAdministrativa WHERE tua_nome = 'Escola')

MERGE INTO BC_VD_Disciplina_Turma _target
USING
(
	SELECT
		tmp.cod_comp_curr
		, dis.dis_id
		, tmp.cd_turma_escola
		, tur.tur_id
	FROM
		tmp_grade tmp
		INNER JOIN BC_VD_Turma tur
			ON (tur.tur_salaAula COLLATE Latin1_General_CI_AI = CONVERT(VARCHAR(50), tmp.cd_turma_escola) COLLATE Latin1_General_CI_AI
				AND tur.ent_id = @ent_id)
		INNER JOIN SSO_SYS_UnidadeAdministrativa uad
			ON (uad.uad_codigo COLLATE Latin1_General_CI_AI = tmp.cd_escola COLLATE Latin1_General_CI_AI
				AND uad.ent_id = @ent_id
				AND uad.tua_id = @tua_id)
		INNER JOIN BC_VD_Disciplina dis
			ON (dis.dis_descricao COLLATE Latin1_General_CI_AI = CONVERT(VARCHAR(40), tmp.cod_comp_curr) COLLATE Latin1_General_CI_AI
				AND dis.ent_id = @ent_id
				AND dis.uad_id = uad.uad_id)
	GROUP BY
		tmp.cod_comp_curr
		, dis.dis_id
		, tmp.cd_turma_escola
		, tur.tur_id
) AS _source
ON (_source.dis_id = _target.dis_id
	AND _source.tur_id = _target.tur_id)
WHEN NOT MATCHED THEN
	INSERT
	(
		dis_id
		, tur_id
		, dit_dataCriacao
		, dit_dataAlteracao
	)
	VALUES
	(
		dis_id
		, tur_id
		, GETDATE()
		, GETDATE()
	);

IF (@@TRANCOUNT > 0)
BEGIN
	COMMIT TRAN
END
END
GO

/****** Object:  StoredProcedure [dbo].[STP_SMESP_Distrito_IMPORT]    Script Date: 05/12/2014 10:35:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_SMESP_Distrito_IMPORT]
AS
BEGIN
    DECLARE @ent_id UNIQUEIDENTIFIER, @tua_id_distrito UNIQUEIDENTIFIER, @tua_id_setor UNIQUEIDENTIFIER,
            @qtdSetorInicio INT, @qtdSetorFinal INT, @tua_id_dre UNIQUEIDENTIFIER
    
    SET @ent_id = (SELECT ent_id FROM CoreSSO..SYS_Entidade WHERE LOWER(ent_sigla) = 'smesp')
    SET @tua_id_distrito = (SELECT tua_id FROM CoreSSO..SYS_TipoUnidadeAdministrativa WHERE LOWER(tua_nome) = 'distrito')
    SET @tua_id_setor = (SELECT tua_id FROM CoreSSO..SYS_TipoUnidadeAdministrativa WHERE LOWER(tua_nome) = 'setor')
    SET @tua_id_dre = (SELECT tua_id FROM CoreSSO..SYS_TipoUnidadeAdministrativa WHERE LOWER(tua_nome) = 'diretoria regional de educação')
    
    -- Cria tabela temporária de output de ALUNOS.  
    IF OBJECT_ID('tempdb..#integridade') > 0 
       DROP TABLE #integridade
    
    CREATE TABLE #integridade (uad_id UNIQUEIDENTIFIER, uad_idSuperior UNIQUEIDENTIFIER)
    
    --Cria tabela de diretorias para validação apenas de distritos
    --que estejam vinculados a registros do tipo DRE

    DECLARE @dre AS TABLE (cd_unidade_educacao VARCHAR(20))
    
    INSERT INTO @dre (cd_unidade_educacao)
    SELECT une.cd_unidade_educacao
      FROM tmp_coreSME_unidade_educacao_dados_gerais une
           INNER JOIN
           (SELECT cd_unidade_administrativa_referencia
              FROM tmp_coreSME_unidade_educacao_dados_gerais AS vue
             WHERE tp_situacao_unidade = 1
               AND sg_tp_escola IS NOT NULL
               AND sg_tp_escola NOT IN ('ESC.PART.')
               AND sg_tp_escola NOT IN ('E TECNICA')
             GROUP BY cd_unidade_administrativa_referencia) AS dre
           ON une.cd_unidade_educacao = dre.cd_unidade_administrativa_referencia
    
    MERGE INTO CoreSSO..SYS_UnidadeAdministrativa _target
    USING (SELECT dis.nm_distrito, dis.cd_distrito, dis.tua_id_distrito, dis.uad_situacao,
                  dis.ent_id, dis.cd_dre, dis.uad_idDre, dis.cd_endereco_grh
             FROM (SELECT DISTINCT ent_id, @tua_id_distrito AS tua_id_distrito, dis.cd_distrito_mec AS cd_distrito,
                          dis.nm_distrito_mec AS nm_distrito, uad_superior.uad_id AS uad_idDre,
                          cd_unidade_administrativa_referencia AS cd_dre, 1 AS uad_situacao, esc.cd_endereco_grh
                     FROM tmp_distrito_mec_MSTECH dis
                          INNER JOIN tmp_coreSME_unidade_educacao_dados_gerais esc
                          ON dis.cd_distrito_mec = LEFT(esc.cd_setor_distrito,2)
                          INNER JOIN CoreSSO..SYS_UnidadeAdministrativa uad_superior
                          ON esc.cd_unidade_administrativa_referencia = uad_superior.uad_codigo
                          LEFT JOIN (SELECT  uad_.uad_id AS uad_idFilho, uad_.uad_codigo AS uad_codigoFilho,
                                             uad_pai.uad_id AS uad_idPai, uad_pai.uad_codigo AS uad_codigoPai
                                        FROM CoreSSO..SYS_UnidadeAdministrativa uad_
                                             INNER JOIN CoreSSO..SYS_UnidadeAdministrativa uad_pai
                                             ON uad_.uad_idSuperior = uad_pai.uad_id) uad
                           ON CAST(dis.cd_distrito_mec AS VARCHAR(20)) = uad.uad_codigoFilho
                          AND uad.uad_codigoPai = esc.cd_unidade_administrativa_referencia
                    WHERE uad.uad_codigoFilho IS NULL
                      AND esc.cd_unidade_administrativa_referencia IN
                          (SELECT cd_unidade_educacao
                             FROM @dre)) AS dis
            GROUP BY dis.nm_distrito, dis.cd_distrito, dis.tua_id_distrito, dis.uad_situacao, dis.ent_id,
                     dis.cd_dre, dis.uad_idDre, dis.cd_endereco_grh) AS _source
     ON CAST(_source.cd_distrito AS VARCHAR(20)) = _target.uad_codigo
    AND _source.uad_idDre = _target.uad_idSuperior
    AND _source.tua_id_distrito = _target.tua_id
    AND _source.ent_id = _target.ent_id
    WHEN MATCHED THEN
         UPDATE SET uad_nome = _source.nm_distrito,
                    uad_dataAlteracao = GETDATE(),
                    uad_idSuperior = _source.uad_idDre,
                    uad_codigoIntegracao = _source.cd_endereco_grh
    WHEN NOT MATCHED THEN
         INSERT (ent_id, tua_id, uad_codigo, uad_nome, uad_idSuperior, uad_situacao, uad_codigoIntegracao)
         VALUES (_source.ent_id, _source.tua_id_distrito, _source.cd_distrito, _source.nm_distrito,
                 _source.uad_idDre, _source.uad_situacao, _source.cd_endereco_grh)
         OUTPUT INSERTED.uad_id, INSERTED.uad_idSuperior
           INTO #integridade;

    UPDATE CoreSSO..SYS_UnidadeAdministrativa
       SET uad_integridade = uad_integridade + quantidade
      FROM CoreSSO..SYS_UnidadeAdministrativa uad
           INNER JOIN (SELECT uad_idsuperior, COUNT(uad_id) AS quantidade
                         FROM #integridade
                        GROUP BY uad_idsuperior) AS quant
           ON uad.uad_id = quant.uad_idsuperior
END
GO

/****** Object:  StoredProcedure [dbo].[STP_SMESP_Escola_Endereco_IMPORT]    Script Date: 10/23/2012 09:13:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_SMESP_Escola_Endereco_IMPORT]
AS
BEGIN
DECLARE
	@ent_id_smesp		UNIQUEIDENTIFIER
	, @tua_id_dre		UNIQUEIDENTIFIER
	, @cid_id_sao_paulo UNIQUEIDENTIFIER

	SET @ent_id_smesp = (SELECT ent_id FROM sso_sys_entidade WHERE UPPER(ent_sigla) = 'SMESP')
	SET @tua_id_dre = (SELECT tua_id FROM sso_sys_tipounidadeadministrativa WHERE UPPER(tua_nome) = 'ESCOLA')
	SET @cid_id_sao_paulo = (SELECT TOP 1 cid_id FROM sso_end_cidade WHERE cid_nome = 'SÃO PAULO' ORDER BY cid_integridade)

	IF OBJECT_ID('tempdb..end_esc') > 0 
            DROP TABLE end_esc
        CREATE TABLE #end_esc
            (
              end_id UNIQUEIDENTIFIER ,
              nm_logradouro VARCHAR(200),
              end_cep varchar(8),
              nm_bairro varchar(100), 
              nm_distrito_mec varchar(100)
            )
            
	MERGE INTO sso_end_endereco _target
	USING
	(
		SELECT
			right('00000000' + CONVERT(VARCHAR(8), une.cd_cep),8) as cd_cep
			, une.nm_logradouro
			, une.nm_bairro
			, une.nm_distrito_mec
			, @cid_id_sao_paulo AS cid_id
			, COUNT(uad.uad_id) AS qtd
		FROM
			tmp_escola une
			INNER JOIN sso_sys_unidadeadministrativa uad
				ON (uad.ent_id = @ent_id_smesp
					AND uad.tua_id = @tua_id_dre
					AND uad.uad_codigo COLLATE Latin1_General_CI_AS = une.cd_unidade_educacao COLLATE Latin1_General_CI_AS)
		where une.cd_cep is not null 					
		GROUP BY
			right('00000000' + CONVERT(VARCHAR(8), une.cd_cep),8)
			, une.nm_logradouro
			, une.nm_bairro
			, une.nm_distrito_mec
	) AS _source
	ON (cast (_target.end_cep as int) = cast(_source.cd_cep as int)
		AND _target.end_logradouro COLLATE Latin1_General_CI_AS = _source.nm_logradouro COLLATE Latin1_General_CI_AS
		AND _target.end_bairro COLLATE Latin1_General_CI_AS = _source.nm_bairro COLLATE Latin1_General_CI_AS
		AND _target.end_distrito COLLATE Latin1_General_CI_AS = _source.nm_distrito_mec COLLATE Latin1_General_CI_AS
		AND _target.cid_id = _source.cid_id)
	WHEN MATCHED and (_target.end_cep COLLATE Latin1_General_CI_AS <> _source.cd_cep COLLATE Latin1_General_CI_AS) THEN
		UPDATE SET
		    end_cep = _source.cd_cep,
			end_dataAlteracao = GETDATE()
	WHEN NOT MATCHED THEN
		INSERT
		(
			end_cep
			, end_logradouro
			, end_bairro
			, end_distrito
			, cid_id
			, end_situacao
			, end_integridade
		)
		VALUES
		(
			_source.cd_cep
			, _source.nm_logradouro
			, _source.nm_bairro
			, _source.nm_distrito_mec
			, _source.cid_id
			, 1
			, _source.qtd
		)OUTPUT INSERTED.end_id, INSERTED.end_logradouro, INSERTED.end_cep, INSERTED.end_bairro, INSERTED.end_distrito INTO #end_esc;
	
		create table #TEMP_ENDER (ent_id uniqueidentifier, uad_id uniqueidentifier, end_id uniqueidentifier, 
		cd_nr_endereco varchar(6), dc_complemento_endereco varchar(30), nm_logradouro varchar(200))
		
		insert into #TEMP_ENDER
		SELECT
			@ent_id_smesp AS ent_id
			, uad.uad_id
			, end_esc.end_id
			, une.cd_nr_endereco
			, une.dc_complemento_endereco
			, end_esc.nm_logradouro 
		FROM
			tmp_escola une
			INNER JOIN sso_sys_unidadeadministrativa uad
				ON (uad.ent_id = @ent_id_smesp
					AND uad.tua_id = @tua_id_dre
					AND uad.uad_codigo COLLATE Latin1_General_CI_AS = une.cd_unidade_educacao COLLATE Latin1_General_CI_AS)
			INNER JOIN #end_esc AS end_esc
				ON end_esc.nm_logradouro = une.nm_logradouro
			   AND cast(end_esc.end_cep as int) = cast(une.cd_cep as int)
			   AND end_esc.nm_bairro = une.nm_bairro
			   AND end_esc.nm_distrito_mec = une.nm_distrito_mec
		GROUP BY
			 uad.uad_id
			, end_esc.end_id
			, une.cd_nr_endereco
			, une.dc_complemento_endereco
			, end_esc.nm_logradouro 

	UPDATE SSO_SYS_UnidadeAdministrativaEndereco 
	   SET uae_dataAlteracao = GETDATE(),
		   uae_numero = cd_nr_endereco,
		   uae_complemento = dc_complemento_endereco
	  FROM SSO_SYS_UnidadeAdministrativaEndereco
		   INNER JOIN #TEMP_ENDER ON #TEMP_ENDER.ent_id  = SSO_SYS_UnidadeAdministrativaEndereco.ent_id
								 AND #TEMP_ENDER.uad_id = SSO_SYS_UnidadeAdministrativaEndereco.uad_id
			
	INSERT INTO SSO_SYS_UnidadeAdministrativaEndereco (ent_id,uad_id,end_id,uae_numero,uae_complemento, uae_situacao)
	SELECT ent_id, uad_id, end_id, cd_nr_endereco, dc_complemento_endereco, 1 as situacao
	  FROM #TEMP_ENDER
	 WHERE not exists (select * from SSO_SYS_UnidadeAdministrativaEndereco 
						where #TEMP_ENDER.ent_id  = SSO_SYS_UnidadeAdministrativaEndereco.ent_id
						  AND #TEMP_ENDER.uad_id = SSO_SYS_UnidadeAdministrativaEndereco.uad_id)
		
	/*UPDATE SSO_SYS_UnidadeAdministrativa
	   SET uad_nome = esc.nm_unidade_educacao
	 FROM  SSO_SYS_UnidadeAdministrativa uad
	 INNER JOIN tmp_escola esc 
	    ON esc.cd_unidade_educacao = uad_codigo
  	 WHERE esc.cd_unidade_educacao = uad.uad_codigo
 	   AND esc.nm_unidade_educacao <> uad.uad_nome*/
 
	 UPDATE CoreSME..SYS_UnidadeAdministrativa_TipoEscola
	    SET tes_id = te2.tes_id
	   FROM SSO_SYS_UnidadeAdministrativa uad
			INNER JOIN tmp_escola esc 
		 ON esc.cd_unidade_educacao COLLATE SQL_Latin1_General_CP1_CI_AS =  uad_codigo COLLATE SQL_Latin1_General_CP1_CI_AS
			INNER JOIN CoreSME..SYS_UnidadeAdministrativa_TipoEscola  uat
		 ON uat.uad_id = uad.uad_id 
			INNER JOIN CoreSME..SYS_TipoEscola te
		 ON te.tes_id = uat.tes_id
			inner join coresme..SYS_TipoEscola te2
		 on te2.tes_desc = esc.sg_tp_escola
	WHERE uad.uad_id = uat.uad_id
	and te.tes_desc <> esc.sg_tp_escola

	--- Cadastrar os telefones e e-mails da escola
	DECLARE @tmc_fone UNIQUEIDENTIFIER, @tmc_mail UNIQUEIDENTIFIER, @tua_id UNIQUEIDENTIFIER
	select @tmc_fone = tmc_id from CoreSSO..SYS_TipoMeioContato where tmc_nome = 'TELEFONE' and tmc_situacao = 1
	select @tmc_mail = tmc_id from CoreSSO..SYS_TipoMeioContato where tmc_nome = 'E-MAIL' and tmc_situacao = 1
	select @tua_id = tua_id from CoreSSO..SYS_TipoUnidadeAdministrativa where tua_nome = 'Escola' and tua_situacao = 1

	MERGE INTO CoreSSO..SYS_UnidadeAdministrativaContato _target
	USING (SELECT ent_id, uad_id, isnull(uac_id, newid()) uac_id, tmc_id, uac_contato
	         from (select UAD.ent_id, UAD.uad_id, uac.uac_id, @tmc_mail as tmc_id, 
                          uac_contato = CASE WHEN PATINDEX('%@%',dcu.dc_dispositivo) <> 0 THEN dcu.dc_dispositivo
                                        ELSE nm_contato END,
                          ROW_NUMBER() OVER (PARTITION BY UAD.ent_id, UAD.uad_id
                            ORDER BY dcu.dc_dispositivo) AS ord_dispositivo
                     from BD_PRODAM..v_disp_contato_unidades_mstech dcu inner join
                          CoreSSO..SYS_UnidadeAdministrativa uad with (nolock)
                          on dcu.cd_unidade_educacao = uad.uad_codigo
                          and @tua_id = uad.tua_id
                          LEFT JOIN CoreSSO..SYS_UnidadeAdministrativaContato uac with (nolock)
                           on uad.ent_id = uac.ent_id
                          and uad.uad_id = uac.uad_id
                          and @tmc_mail = uac.tmc_id
                    where uad.uad_situacao = 1
                      and dcu.dc_tipo_dispositivo_comunicacao = 'EMAIL') dados
               where ord_dispositivo = 1) _source
	 ON _target.ent_id = _source.ent_id
	AND _target.uad_id = _source.uad_id
	AND _target.uac_id = _source.uac_id
	WHEN MATCHED and ((_target.uac_situacao = 3) or (_target.uac_contato <> _source.uac_contato)) THEN
		 UPDATE SET uac_contato = _source.uac_contato,
		            uac_situacao = 1,
		            uac_dataAlteracao = GETDATE()
	WHEN NOT MATCHED THEN
	     INSERT (ent_id, uad_id, uac_id, tmc_id, uac_contato, uac_situacao, uac_dataCriacao, uac_dataAlteracao)
	     VALUES (_source.ent_id, _source.uad_id, _source.uac_id, _source.tmc_id, _source.uac_contato,
	             1, GETDATE(), GETDATE());
	
	declare @disp_contato table
	 (ent_id UNIQUEIDENTIFIER,
	  uad_id UNIQUEIDENTIFIER,
	  uac_id UNIQUEIDENTIFIER,
	  tmc_id UNIQUEIDENTIFIER,
	  uac_contato varchar(200))
	
	insert into @disp_contato
	select ent_id, uad_id, isnull(uac_id, newid()) uac_id, tmc_id, uac_contato
	  from (select UAD.ent_id, UAD.uad_id, uac.uac_id, @tmc_fone as tmc_id, 
                   dcu.dc_dispositivo as uac_contato,
                   ROW_NUMBER() OVER (PARTITION BY UAD.ent_id, UAD.uad_id
                                ORDER BY dcu.dc_dispositivo) AS ord_dispositivo
              from BD_PRODAM..v_disp_contato_unidades_mstech dcu inner join
                   CoreSSO..SYS_UnidadeAdministrativa uad with (nolock)
                    on dcu.cd_unidade_educacao = uad.uad_codigo
                   and @tua_id = uad.tua_id
                   LEFT JOIN CoreSSO..SYS_UnidadeAdministrativaContato uac with (nolock)
                    on uad.ent_id = uac.ent_id
                   and uad.uad_id = uac.uad_id
                   and @tmc_fone = uac.tmc_id
             where uad.uad_situacao = 1
               and dcu.dc_tipo_dispositivo_comunicacao = 'TELEFONE FIXO DE VOZ'
	           and dcu.nm_contato IN ('secretária', 'secretaria')) dados
     where ord_dispositivo = 1
	
	insert into @disp_contato
	select ent_id, uad_id, isnull(uac_id, newid()) uac_id, tmc_id, uac_contato
	  from (select UAD.ent_id, UAD.uad_id, uac.uac_id, @tmc_fone as tmc_id, 
                   dcu.dc_dispositivo as uac_contato,
                   ROW_NUMBER() OVER (PARTITION BY UAD.ent_id, UAD.uad_id
                                ORDER BY dcu.dc_dispositivo) AS ord_dispositivo
              from BD_PRODAM..v_disp_contato_unidades_mstech dcu inner join
                   CoreSSO..SYS_UnidadeAdministrativa uad with (nolock)
                    on dcu.cd_unidade_educacao = uad.uad_codigo
                   and @tua_id = uad.tua_id
                   LEFT JOIN CoreSSO..SYS_UnidadeAdministrativaContato uac with (nolock)
                    on uad.ent_id = uac.ent_id
                   and uad.uad_id = uac.uad_id
                   and @tmc_fone = uac.tmc_id
             where uad.uad_situacao = 1
               and dcu.dc_tipo_dispositivo_comunicacao = 'TELEFONE FIXO DE VOZ') dados
     where ord_dispositivo = 1
       and uad_id not in (select uad_id from @disp_contato)

	insert into @disp_contato
	select ent_id, uad_id, isnull(uac_id, newid()) uac_id, tmc_id, uac_contato
	  from (select UAD.ent_id, UAD.uad_id, uac.uac_id, @tmc_fone as tmc_id, 
                   dcu.dc_dispositivo as uac_contato,
                   ROW_NUMBER() OVER (PARTITION BY UAD.ent_id, UAD.uad_id
                                ORDER BY dcu.dc_dispositivo) AS ord_dispositivo
              from BD_PRODAM..v_disp_contato_unidades_mstech dcu inner join
                   CoreSSO..SYS_UnidadeAdministrativa uad with (nolock)
                    on dcu.cd_unidade_educacao = uad.uad_codigo
                   and @tua_id = uad.tua_id
                   LEFT JOIN CoreSSO..SYS_UnidadeAdministrativaContato uac with (nolock)
                    on uad.ent_id = uac.ent_id
                   and uad.uad_id = uac.uad_id
                   and @tmc_fone = uac.tmc_id
             where uad.uad_situacao = 1
               and dcu.dc_tipo_dispositivo_comunicacao = 'FAX') dados
     where ord_dispositivo = 1
       and uad_id not in (select uad_id from @disp_contato)

	insert into @disp_contato
	select ent_id, uad_id, isnull(uac_id, newid()) uac_id, tmc_id, uac_contato
	  from (select UAD.ent_id, UAD.uad_id, uac.uac_id, @tmc_fone as tmc_id, 
                   dcu.dc_dispositivo as uac_contato,
                   ROW_NUMBER() OVER (PARTITION BY UAD.ent_id, UAD.uad_id
                                ORDER BY dcu.dc_dispositivo) AS ord_dispositivo
              from BD_PRODAM..v_disp_contato_unidades_mstech dcu inner join
                   CoreSSO..SYS_UnidadeAdministrativa uad with (nolock)
                    on dcu.cd_unidade_educacao = uad.uad_codigo
                   and @tua_id = uad.tua_id
                   LEFT JOIN CoreSSO..SYS_UnidadeAdministrativaContato uac with (nolock)
                    on uad.ent_id = uac.ent_id
                   and uad.uad_id = uac.uad_id
                   and @tmc_fone = uac.tmc_id
             where uad.uad_situacao = 1
               and dcu.dc_tipo_dispositivo_comunicacao = 'PABX') dados
     where ord_dispositivo = 1
       and uad_id not in (select uad_id from @disp_contato)
	
	insert into @disp_contato
	select ent_id, uad_id, isnull(uac_id, newid()) uac_id, tmc_id, uac_contato
	  from (select UAD.ent_id, UAD.uad_id, uac.uac_id, @tmc_fone as tmc_id, 
                   dcu.dc_dispositivo as uac_contato,
                   ROW_NUMBER() OVER (PARTITION BY UAD.ent_id, UAD.uad_id
                                ORDER BY dcu.dc_dispositivo) AS ord_dispositivo
              from BD_PRODAM..v_disp_contato_unidades_mstech dcu inner join
                   CoreSSO..SYS_UnidadeAdministrativa uad with (nolock)
                    on dcu.cd_unidade_educacao = uad.uad_codigo
                   and @tua_id = uad.tua_id
                   LEFT JOIN CoreSSO..SYS_UnidadeAdministrativaContato uac with (nolock)
                    on uad.ent_id = uac.ent_id
                   and uad.uad_id = uac.uad_id
                   and @tmc_fone = uac.tmc_id
             where uad.uad_situacao = 1
               and dcu.dc_tipo_dispositivo_comunicacao = 'PUBLICO') dados
     where ord_dispositivo = 1
       and uad_id not in (select uad_id from @disp_contato)

	MERGE INTO CoreSSO..SYS_UnidadeAdministrativaContato _target
	USING @disp_contato _source
	 ON _target.ent_id = _source.ent_id
	AND _target.uad_id = _source.uad_id
	AND _target.uac_id = _source.uac_id
	WHEN MATCHED and ((_target.uac_situacao = 3) or (_target.uac_contato <> _source.uac_contato)) THEN
		 UPDATE SET uac_contato = _source.uac_contato,
		            uac_situacao = 1,
		            uac_dataAlteracao = GETDATE()
	WHEN NOT MATCHED THEN
	     INSERT (ent_id, uad_id, uac_id, tmc_id, uac_contato, uac_situacao, uac_dataCriacao, uac_dataAlteracao)
	     VALUES (_source.ent_id, _source.uad_id, _source.uac_id, _source.tmc_id, _source.uac_contato,
	             1, GETDATE(), GETDATE());

END
GO

/****** Object:  StoredProcedure [dbo].[STP_SMESP_ESCOLA_UAD_IMPORT]    Script Date: 05/12/2014 10:35:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_SMESP_ESCOLA_UAD_IMPORT]
AS
BEGIN
    DECLARE @ent_id UNIQUEIDENTIFIER, @tua_id_escola UNIQUEIDENTIFIER, @tua_id_setor UNIQUEIDENTIFIER,
            @tua_id_biblioteca UNIQUEIDENTIFIER
    
    SET @ent_id = (SELECT ent_id FROM CoreSSO..SYS_Entidade WHERE LOWER(ent_sigla) = 'smesp')
    SET @tua_id_escola = (SELECT tua_id FROM CoreSSO..SYS_TipoUnidadeAdministrativa WHERE LOWER(tua_nome) = 'escola')
    SET @tua_id_setor = (SELECT tua_id FROM CoreSSO..SYS_TipoUnidadeAdministrativa WHERE LOWER(tua_nome) = 'setor')
    SET @tua_id_biblioteca = (SELECT tua_id FROM CoreSSO..SYS_TipoUnidadeAdministrativa WHERE LOWER(tua_nome) = 'Biblioteca')
    
    MERGE CoreSSO..SYS_UnidadeAdministrativa _target
    USING (SELECT cd_unidade_educacao AS uad_codigo, dc_tipo_unidade_educacao, nm_unidade_educacao AS uad_nome,
                  nm_logradouro, cd_nr_endereco, nm_bairro, cd_setor_distrito, nm_micro_regiao AS nm_setor,
                  LEFT(cd_setor_distrito, 2) as cd_distrito, nm_distrito_mec AS nm_distrito,
                  setor.uad_id AS uad_idSuperior, cd_unidade_administrativa_referencia as cd_dre,
                  CASE sg_tipo_situacao_unidade WHEN 'ATIVA' THEN 1 ELSE 3 END AS uad_situacao,
                  @tua_id_escola AS tua_id_escola, @ent_id AS ent_id, cd_endereco_grh
             FROM tmp_CoreSME_unidade_educacao_dados_gerais ueg WITH(READUNCOMMITTED)
                  INNER JOIN
                  (SELECT uad_id, uad_codigo, uad_nome,
                          ROW_NUMBER() OVER (PARTITION BY uad_codigo ORDER BY uad_dataCriacao) AS rowNum
                     FROM CoreSSO..SYS_UnidadeAdministrativa WITH(READUNCOMMITTED)
                    WHERE tua_id = @tua_id_setor) AS setor
                   ON RTRIM(LTRIM(setor.uad_codigo)) = ueg.cd_setor_distrito
                  AND setor.rowNum = 1
            WHERE ((dc_tipo_unidade_educacao = 'ESCOLA')
                   -- filtro para pegar os “CEUs Puros”
                   or (cd_unidade_educacao like '200%'
                       and dc_tipo_unidade_educacao = 'UNIDADE ADMINISTRATIVA'))
            GROUP BY cd_unidade_educacao, dc_tipo_unidade_educacao, nm_unidade_educacao, nm_logradouro,
                     cd_nr_endereco, nm_bairro, cd_setor_distrito, nm_micro_regiao, nm_distrito_mec,
                     setor.uad_id, sg_tipo_situacao_unidade, cd_unidade_administrativa_referencia,
                     cd_endereco_grh) AS _source
     ON _source.uad_codigo = _target.uad_codigo
    AND _source.tua_id_escola = _target.tua_id
    AND _source.ent_id = _target.ent_id
    WHEN MATCHED THEN
         UPDATE SET uad_nome = _source.uad_nome,
                    uad_dataAlteracao = GETDATE(),
                    uad_idSuperior = _source.uad_idSuperior,
                    uad_codigoIntegracao = _source.cd_endereco_grh,
                    uad_situacao = _source.uad_situacao
    WHEN NOT MATCHED THEN
         INSERT (ent_id, tua_id, uad_codigo, uad_nome, uad_idSuperior, uad_situacao)
         VALUES (@ent_id, @tua_id_escola, _source.uad_codigo, _source.uad_nome,
                 _source.uad_idSuperior, _source.uad_situacao)
    WHEN NOT MATCHED BY SOURCE AND ((_target.tua_id = @tua_id_escola) AND (_target.uad_nome not like 'LAB DRE%'))
         THEN
         UPDATE SET uad_situacao = 3, uad_dataAlteracao = GETDATE();
    
    -- Insere a biblioteca da escola.
    MERGE CoreSSO..SYS_UnidadeAdministrativa _target
    USING (select isnull(bib.uad_id, newid()) as uad_id, esc.ent_id, @tua_id_biblioteca as tua_id,
                  esc.uad_nome, esc.uad_id as uad_idSuperior, esc.uad_situacao
             from CoreSSO..SYS_UnidadeAdministrativa esc
                  left join CoreSSO..SYS_UnidadeAdministrativa bib
					     on esc.uad_id = bib.uad_idSuperior
						and bib.tua_id = @tua_id_biblioteca
            where esc.tua_id = @tua_id_escola
              ) as _source
    ON _source.uad_id = _target.uad_id
    WHEN MATCHED AND (_target.uad_nome <> _source.uad_nome) THEN
         UPDATE SET uad_nome = _source.uad_nome,
                    uad_dataAlteracao = GETDATE()
    WHEN NOT MATCHED THEN
         INSERT (uad_id, ent_id, tua_id, uad_codigo, uad_nome, uad_idSuperior, uad_situacao)
         VALUES (_source.uad_id, _source.ent_id, _source.tua_id, '', _source.uad_nome,
                 _source.uad_idSuperior, _source.uad_situacao);    
    
    MERGE CoreSME..SYS_TipoEscola _target
    USING (select isnull(sg_tp_escola, 'CEU') sg_tp_escola
             from tmp_CoreSME_unidade_educacao_dados_gerais
            where ((dc_tipo_unidade_educacao = 'ESCOLA')
                   -- filtro para pegar os “CEUs Puros”
                   or (cd_unidade_educacao like '200%'
                       and dc_tipo_unidade_educacao = 'UNIDADE ADMINISTRATIVA'))
            group by isnull(sg_tp_escola, 'CEU')) AS _source
    ON _target.tes_desc = _source.sg_tp_escola
    WHEN NOT MATCHED THEN
         INSERT (tes_id, tes_desc, tes_data, tes_excluido)
         VALUES (NEWID(), _source.sg_tp_escola, GETDATE(), 0);
    
    MERGE CoreSME..SYS_UnidadeAdministrativa_TipoEscola _target
    USING (SELECT uad_id, tes_id
             FROM CoreSSO..SYS_UnidadeAdministrativa ua
                  INNER JOIN
                  (select cd_unidade_educacao, isnull(sg_tp_escola, 'CEU') sg_tp_escola
                     from tmp_CoreSME_unidade_educacao_dados_gerais
                    where ((dc_tipo_unidade_educacao = 'ESCOLA')
                          -- filtro para pegar os “CEUs Puros”
                          or (cd_unidade_educacao like '200%'
                              and dc_tipo_unidade_educacao = 'UNIDADE ADMINISTRATIVA'))) dg
                  ON ua.uad_codigo = dg.cd_unidade_educacao
                  INNER JOIN CoreSME..SYS_TipoEscola tp
                  ON tp.tes_desc = dg.sg_tp_escola
            WHERE ua.tua_id = @tua_id_escola
            GROUP BY uad_id, tes_id) AS _source
    ON _source.uad_id = _target.uad_id
    WHEN MATCHED THEN
         UPDATE SET tes_id = _source.tes_id
    WHEN NOT MATCHED THEN
         INSERT (uad_id, tes_id)
         VALUES (_source.uad_id, _source.tes_id);

	--if adicionado para rodar em ambientes internos sem este banco
	if db_id('PortalInstitutional') is not null
	BEGIN
		MERGE PortalInstitutional..AdministrativeUnitType _target
		USING (SELECT tua_id, tua_nome, tua_situacao
				 FROM CoreSSO..SYS_TipoUnidadeAdministrativa tua
					  INNER JOIN  BD_PRODAM..v_unidade_educacao_dados_gerais esc
					  on tua.tua_nome = esc.sg_tp_escola
				GROUP BY tua_id, tua_nome, tua_situacao) AS _source
		ON _target.Id = _source.tua_id
		WHEN NOT MATCHED THEN
			 INSERT (Id, Code, Name, CreationDate, UpdateDate, State)
			 VALUES (_source.tua_id, _source.tua_nome, _source.tua_nome, getdate(), getdate(), _source.tua_situacao);
	END 
	--update adicionado conforme solicitação em 14/05/2015, para resolvermos problemas de diferenças entre a base do portal e do core
	--MERGE adicionado conforme solicitação em 18/06/2015
	
	 -- cria tabela em memória para fazer recursividade até chegar na DRE
	 DECLARE @ESCOLA TABLE
       (ent_id uniqueidentifier,
        uad_id uniqueidentifier,
        uad_codigo varchar(20),
        uad_nome varchar(200),
        tua_id uniqueidentifier,
        uad_idSuperior uniqueidentifier,
        Latitude decimal (9,6),
        Longitude decimal (9,6),
        uad_situacao tinyint)
 
     INSERT INTO @ESCOLA
     SELECT ent_id, uad_id, uad_codigo, uad_nome, tua.tua_id, uad_idSuperior, esc.cd_coordenada_geo_x Latitude,
	        esc.cd_coordenada_geo_y Longitude, uad_situacao
	   FROM CoreSSO..SYS_UnidadeAdministrativa uad
	        inner join BD_PRODAM..v_unidade_educacao_dados_gerais esc
	        on uad.uad_codigo = esc.cd_unidade_educacao
	        inner join CoreSSO..SYS_TipoUnidadeAdministrativa tua
	        on esc.sg_tp_escola = tua.tua_nome
	  WHERE uad.tua_id = @tua_id_escola
	    and uad_situacao = 1
	    and tua_situacao = 1
	  group by ent_id, uad_id, uad_codigo, uad_nome, tua.tua_id, uad_idSuperior, esc.cd_coordenada_geo_x,
	        esc.cd_coordenada_geo_y, uad_situacao
	        
	 WHILE EXISTS (SELECT uad.uad_id
	                 from CoreSSO..SYS_UnidadeAdministrativa uad
	                      inner join @ESCOLA esc
	                      on uad.uad_id = esc.uad_idSuperior
	                where uad.uad_idSuperior is not null
	                  and uad.uad_situacao = 1)
	    update esc
	       set uad_idSuperior = uad.uad_idSuperior
 	      from @ESCOLA esc
	           inner join CoreSSO..SYS_UnidadeAdministrativa uad
	           on esc.uad_idSuperior = uad.uad_id
	     where uad.uad_situacao = 1
	
	--if adicionado para rodar em ambientes internos sem este banco
	if db_id('PortalInstitutional') is not null
	BEGIN
	
		MERGE PortalInstitutional..School _target
		USING @ESCOLA _source
		ON _target.AdministrativeUnitId = _source.uad_id
		WHEN MATCHED AND ((_target.Name <> _source.uad_nome) or (_target.State <> _source.uad_situacao)
						   or (_target.AdministrativeUnitSuperiorId <> _source.uad_idSuperior)) THEN
			 UPDATE SET Name = _source.uad_nome,
						State = _source.uad_situacao,
						AdministrativeUnitSuperiorId = _source.uad_idSuperior,
						UpdateDate = GETDATE()
		WHEN NOT MATCHED THEN
			 INSERT (EntityId, AdministrativeUnitId, Code, Name, AdministrativeUnitTypeId,
					 AdministrativeUnitSuperiorId, CreationDate, UpdateDate, State, Latitude, Longitude)
			 VALUES (_source.ent_id, _source.uad_id, _source.uad_codigo, _source.uad_nome, _source.tua_id,
					 _source.uad_idSuperior, GETDATE(), GETDATE(), _source.uad_situacao, _source.Latitude, _source.Longitude)
		WHEN NOT MATCHED BY SOURCE THEN
			 UPDATE SET State = 3,
						UpdateDate = GETDATE();
	END
END
GO

/****** Object:  StoredProcedure [dbo].[STP_SMESP_GP_UsuarioGrupo_IMPORT]    Script Date: 05/12/2014 10:35:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_SMESP_GP_UsuarioGrupo_IMPORT]
AS 
BEGIN     
    DECLARE @ent_id UNIQUEIDENTIFIER, @sis_id INT, @gru_idProfessor UNIQUEIDENTIFIER 
            
    -- Temporária para armazenar os usuários
    CREATE TABLE #tmp_Usuario
        (usu_id UNIQUEIDENTIFIER, 
         gru_id UNIQUEIDENTIFIER)            
    
    -- ID da entidade
    SELECT @ent_id = ent_id FROM SSO_SYS_Entidade WITH ( NOLOCK ) WHERE ent_sigla = 'SMESP'
    
    -- ID do sistema
    SELECT  @sis_id = 102

    -- IDs dos grupos 
	SELECT @gru_idProfessor = gru_idUsadoIntegracao FROM DEPARA_GRUPOS_INTEGRACAO 
     WHERE nomeUsadoIntegracao = 'Docente' and sis_id = @sis_id

    -- insere na tmp_usuario
    INSERT INTO #tmp_Usuario (usu_id, gru_id)
    SELECT usu.usu_id, serv.gru_id
           -- Professores
      FROM (select rf, @gru_idProfessor AS gru_id
              from TMP_PROFESSOR prof
             where rf not in 
                   (select rf
                      from (select srv.cd_registro_funcional as rf, cb.lotacao as cd_escola
                              from bd_prodam..v_servidor_mstech srv
                                   inner join bd_prodam..v_cargobase_mstech cb
                                   on srv.cd_registro_funcional = cb.cd_registro_funcional 
                                   inner join GE_RHU_Cargo RHU_Cargo
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
                                   inner join BD_PRODAM..v_unidade_educacao_dados_gerais esc
                                   on gc.cd_escola = esc.cd_unidade_educacao
                                   inner join DEPARA_DISCIPLINAS dd
                                   on gc.Cod_Comp_Curr = dd.cd_componente_curricular
                             where esc. dc_tipo_unidade_educacao = 'ESCOLA' 
                               and esc.sg_tp_escola in ('EMEF','EMEFM','CEU EMEF','EMEBS','CIEJA',
									 'EMEI','CECI','CEMEI','CEI DIRET', 'CCI/CIPS', 'CEI INDIR', 'CEU CEI', 'CEU EMEI', 'CR.P.CONV')
                             group by prf.rf, gc.cd_escola) doc
                       where doc.rf = prof.rf
                         and doc.cd_escola = prof.cd_escola)) serv
           INNER JOIN SSO_SYS_Usuario usu WITH (NOLOCK)
           ON serv.rf = usu.usu_login
     GROUP BY usu_id, gru_id
     
    -- Manutenção da tabela SSIS_LoginImportado
    MERGE SSIS_LoginImportado AS _target
    USING (SELECT usu.usu_id, usu.usu_login, tmp.gru_id
             FROM #tmp_Usuario tmp WITH ( NOLOCK )
                  INNER JOIN SSO_SYS_Usuario usu WITH ( NOLOCK ) ON tmp.usu_id = usu.usu_id
            GROUP BY usu.usu_id, usu.usu_login, tmp.gru_id) AS _source
     ON _source.usu_id = _target.usu_id
    AND _source.usu_login = _target.ssi_login
    AND _source.gru_id = _target.gru_id
    WHEN NOT MATCHED THEN
	     INSERT (usu_id, ssi_login, gru_id, ssi_situacao)
         VALUES (_source.usu_id, _source.usu_login, _source.gru_id, 1)
    WHEN MATCHED AND _target.ssi_situacao = 3 AND _target.gru_id = @gru_idProfessor THEN
	     UPDATE SET ssi_situacao = 1, ssi_dataAlteracao = GETDATE()
    WHEN NOT MATCHED BY SOURCE AND _target.ssi_situacao = 1 AND _target.gru_id = @gru_idProfessor THEN
	     UPDATE SET ssi_situacao = 3,
                    ssi_dataAlteracao = GETDATE();	
			 
    -- UsuarioGrupo
    -- Deleta a relação UsuarioGrupo para os registros que estão na tmp de servidores importados automaticamente
    DELETE ug
      FROM SSO_SYS_UsuarioGrupo ug
           INNER JOIN SSIS_LoginImportado lo
            ON ug.usu_id = lo.usu_id
           AND ug.gru_id = lo.gru_id
     WHERE lo.gru_id = @gru_idProfessor  
       AND lo.ssi_situacao = 3
    
    MERGE SSO_SYS_UsuarioGrupo AS _target
    USING (SELECT usu_id, gru_id
             FROM #tmp_Usuario
            GROUP BY usu_id, gru_id) AS _source
     ON _source.usu_id = _target.usu_id
    AND _source.gru_id = _target.gru_id
    WHEN NOT MATCHED THEN
         INSERT (usu_id, gru_id, usg_situacao)
         VALUES (_source.usu_id, _source.gru_id, 1)
    WHEN MATCHED THEN
         UPDATE SET usg_situacao = 1;
END
GO

/****** Object:  StoredProcedure [dbo].[STP_SMESP_LIMPA_TABELA]    Script Date: 05/12/2014 10:35:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_SMESP_LIMPA_TABELA]
	@tableName VARCHAR(100)
AS
BEGIN
	DECLARE @sqlStatement VARCHAR(MAX)
	
	SET @sqlStatement = 'TRUNCATE TABLE ' + @tableName
	EXEC(@sqlStatement)
END
GO

/****** Object:  StoredProcedure [dbo].[STP_SMESP_Periodo_IMPORT]    Script Date: 05/12/2014 10:35:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_SMESP_Periodo_IMPORT]
AS
BEGIN
MERGE INTO BC_VD_Periodo _target
USING
(
	SELECT
		dc_tipo_periodicidade
		, recorrencia
		, an_letivo
	FROM
	(
		SELECT
			CASE
				WHEN CHARINDEX('SEMES', UPPER(dc_tipo_periodicidade), 1) > 0 THEN
					'Semestral'
				WHEN CHARINDEX('TRIMES', UPPER(dc_tipo_periodicidade), 1) > 0 THEN
					'Trimestral'
				WHEN CHARINDEX('MENSAL', UPPER(dc_tipo_periodicidade), 1) > 0 THEN
					'Mensal'
				ELSE
					'Bimestral'
			END	AS dc_tipo_periodicidade
			, CASE
				WHEN CHARINDEX('SEMES', UPPER(dc_tipo_periodicidade), 1) > 0 THEN
					2
				WHEN CHARINDEX('TRIMES', UPPER(dc_tipo_periodicidade), 1) > 0 THEN
					4
				WHEN CHARINDEX('MENSAL', UPPER(dc_tipo_periodicidade), 1) > 0 THEN
					12
				ELSE
					4
			END	AS recorrencia
			, an_letivo
		FROM
			tmp_turma
	) AS per
	GROUP BY
		dc_tipo_periodicidade
		, recorrencia
		, an_letivo
) AS _source
ON (UPPER(_source.dc_tipo_periodicidade) COLLATE Latin1_General_CI_AS  = UPPER(_target.per_periodo) COLLATE Latin1_General_CI_AS)
WHEN NOT MATCHED THEN
	INSERT
	(
		per_periodo
		, per_recorrencia		
	)
	VALUES
	(
		_source.dc_tipo_periodicidade
		, _source.recorrencia
	);
END
GO

/****** Object:  StoredProcedure [dbo].[STP_SMESP_Professor_DadosCadastrais]    Script Date: 05/12/2014 10:35:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_SMESP_Professor_DadosCadastrais]
AS
BEGIN
SET XACT_ABORT ON
BEGIN TRAN
	DECLARE
		@ent_id	UNIQUEIDENTIFIER
		, @gru_id UNIQUEIDENTIFIER
		, @tdo_id_cpf UNIQUEIDENTIFIER
		
	/*
		Seleciona a entidade do cliente e o grupo de usuário
	*/
	SELECT
		@ent_id = ent_id
	FROM
		SSO_SYS_Entidade
	WHERE
		ent_sigla = 'SMESP'
		
	SELECT @gru_id = gru_idUsadoIntegracao FROM DEPARA_GRUPOS_INTEGRACAO 
     WHERE nomeUsadoIntegracao = 'Professor (Educador)' and sis_id = 46
	
	SET @tdo_id_cpf = (SELECT TOP 1 tdo_id FROM SSO_SYS_TipoDocumentacao WHERE tdo_sigla = 'CPF')
	
	IF OBJECT_ID('tempdb..#professor_table') > 0 DROP TABLE #professor_table
	CREATE TABLE #professor_table
	(
		pes_id			UNIQUEIDENTIFIER
		, rf		    VARCHAR(70)
	)
	
	IF OBJECT_ID('tempdb..#usu_table') > 0 
	DROP TABLE #usu_table
	CREATE TABLE #usu_table
	(
		usu_id			UNIQUEIDENTIFIER
		, rf			VARCHAR(50)
	)
	
		
	 INSERT INTO SSO_PES_Pessoa
			( pes_nome ,
			  pes_dataNascimento ,
			  pes_situacao ,
			  pes_integridade ,
			  pes_naturalizado
			)
	 OUTPUT INSERTED.pes_id ,
			INSERTED.pes_naturalizado INTO #professor_table
			SELECT  DISTINCT
					nm_pessoa ,
					dt_nascimento_pessoa,
					1 ,
					1 ,
					rf
			FROM    dbo.TMP_PROFESSOR tmp
					LEFT JOIN SSO_PES_PessoaDocumento psd 
						   ON ( psd.psd_numero COLLATE Latin1_General_CI_AI = tmp.cpf COLLATE Latin1_General_CI_AI
						  AND psd.tdo_id = @tdo_id_cpf
						  AND psd.psd_situacao = 1)
			WHERE   psd.pes_id IS NULL 
			
			
	UPDATE CoreSSO..PES_Pessoa SET pes_naturalizado = NULL
	 WHERE pes_id in (SELECT pes_id FROM #professor_table)

	 INSERT INTO SSO_PES_PessoaDocumento
			( pes_id ,
			  psd_numero,
			  tdo_id 
			)
			SELECT DISTINCT
					prof.pes_id ,
					tmp.cpf ,
					@tdo_id_cpf AS tdo_id
			FROM    #professor_table prof
					INNER JOIN dbo.TMP_PROFESSOR tmp ON ( tmp.rf COLLATE Latin1_General_CI_AI = prof.rf COLLATE Latin1_General_CI_AI )
			WHERE   prof.pes_id NOT IN ( SELECT pes.pes_id
										 FROM   SSO_PES_PessoaDocumento pes
										 WHERE  prof.pes_id = pes.pes_id
												AND pes.psd_numero = tmp.cpf
												AND pes.tdo_id =@tdo_id_cpf 
												AND pes.psd_situacao = 1)
	                                                      
	 INSERT INTO SSO_Sys_Usuario
			( pes_id ,
			  usu_senha ,
			  usu_login ,
			  usu_situacao ,
			  usu_integridade ,
			  ent_id ,
			  usu_criptografia
			
			)		OUTPUT INSERTED.usu_id, INSERTED.usu_login INTO #usu_table
			SELECT  DISTINCT tmp.pes_id ,
					senha ,
					tmp.rf ,
					5 ,
					1 ,
					@ent_id ,
					3
			FROM    #professor_table tmp
					INNER JOIN TMP_PROFESSOR prof ON ( prof.rf COLLATE Latin1_General_CI_AI = tmp.rf COLLATE Latin1_General_CI_AI )
			WHERE   tmp.pes_id IS NOT NULL 
				AND tmp.rf NOT IN ( SELECT  usu.usu_login
									FROM    SSO_SYS_Usuario usu WHERE usu.usu_login = tmp.rf )

	UPDATE TMP_PROFESSOR
	SET pes_id = usu.pes_id
-- SELECT *
 FROM   dbo.TMP_PROFESSOR prof
        INNER JOIN ( SELECT pes_id ,
                            usu_id ,
                            usu_login
                     FROM   ( SELECT    pes_id ,
                                        usu_id ,
                                        usu_login ,
                                        usu_situacao ,
                                        ROW_NUMBER() OVER ( PARTITION BY usu_login,
                                                            pes_id ORDER BY usu_situacao ) AS RowNum
                              FROM      SSO_sys_usuario usu
                             -- WHERE     usu.usu_login = prof.rf
                            ) usu_
                     WHERE  usu_.RowNum = 1
                   ) AS usu ON prof.rf = usu.usu_login
			
	
	
	 INSERT INTO SSO_SYS_UsuarioGrupo
			( usu_id ,
			  gru_id ,
			  usg_situacao
			)
			SELECT  DISTINCT tmp.usu_id ,
					@gru_id,
					1
			FROM    #usu_table tmp
					INNER JOIN dbo.TMP_PROFESSOR prof ON ( prof.rf COLLATE Latin1_General_CI_AI = tmp.rf COLLATE Latin1_General_CI_AI )
			WHERE   usu_id IS NOT NULL 
			and		usu_id NOT IN  ( SELECT usu_id
								 FROM   SSO_SYS_UsuarioGrupo ug
								 WHERE  tmp.usu_id = ug.usu_id
										AND ug.gru_id = @gru_id)
					AND @gru_id IS NOT NULL
					
	                   
		INSERT INTO SSO_NewUsers
		(usu_id, usu_login, usu_status_sinc)
		SELECT
			u.usu_id
			, u.rf
			, 1 
		FROM
			#usu_table u
			LEFT JOIN SSO_NewUsers n
				ON n.usu_login = u.rf
		WHERE
			n.usu_login IS NULL
	                                    
	 INSERT INTO BC_VD_Professor
			( pes_id ,
			  ent_id ,
			  prof_numeroMatricula ,
			  prof_codigoIntegracao ,
			  prof_ativo ,
			  prof_dataCriacao ,
			  prof_dataAlteracao
			
			)
			SELECT DISTINCT
					isnull(tmp.pes_id,alt.pes_id),
					@ent_id ,
					tmp.rf ,
					NULL ,
					1 ,
					GETDATE() ,
					GETDATE()
			FROM    dbo.TMP_PROFESSOR tmp
					LEFT JOIN #professor_table alt ON ( alt.rf COLLATE Latin1_General_CI_AI = tmp.rf COLLATE Latin1_General_CI_AI )
					--LEFT JOIN BC_VD_Professor prof WITH ( NOLOCK ) ON ( prof.prof_numeroMatricula COLLATE Latin1_General_CI_AI = tmp.rf COLLATE Latin1_General_CI_AI
					--											  AND prof.ent_id = @ent_id
					--											  )
					LEFT JOIN BC_VD_Professor prof WITH ( NOLOCK ) ON ( prof.pes_id  = tmp.pes_id
																  AND prof.ent_id = @ent_id
																  )
			WHERE   prof.pes_id IS NULL 
			and tmp.pes_id is not null  
			
			UPDATE  BC_VD_ProfessorEscola
			SET     pfe_ativo = 0
			FROM    BC_VD_ProfessorEscola pe
					LEFT JOIN ( SELECT  pes_id ,
										uad.tua_id ,
										uad.uad_id
								FROM    tmp_professor prof
										INNER JOIN SSO_SYS_UnidadeAdministrativa uad ON uad_codigo = prof.cd_escola
																		  AND uad.tua_id = ( SELECT
																		  tua_id
																		  FROM
																		 SSO_SYS_TipoUnidadeAdministrativa
																		  WHERE
																		  tua_nome = 'escola'
																		  )
								AND ent_id = @ent_id
							  ) AS tmp ON pe.pes_id = tmp.pes_id
										  AND pe.uad_id = tmp.uad_id
							AND pe.ent_id = @ent_id
			WHERE tmp.pes_id IS NULL 			 
			AND  pe.pfe_ativo = 1

IF (@@TRANCOUNT > 0)
BEGIN
	COMMIT TRAN
END

END
GO

/****** Object:  StoredProcedure [dbo].[STP_SMESP_Professor_DadosEscola]    Script Date: 05/12/2014 10:35:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_SMESP_Professor_DadosEscola]
AS
BEGIN
	DECLARE 
		@ent_id UNIQUEIDENTIFIER

	DECLARE @tua_id UNIQUEIDENTIFIER
	SET @tua_id = (SELECT tua_id FROM SSO_SYS_TipoUnidadeAdministrativa WHERE tua_nome = 'Escola')
	
	--Pega o código da SMESP
	SELECT @ent_id = ent_id FROM SSO_SYS_Entidade WHERE ent_sigla = 'SMESP'	
	
	MERGE INTO BC_VD_ProfessorEscola _target
	USING
	(
		SELECT
			prof.pes_id
			, prof.ent_id
			, esc.uad_id
		FROM
			dbo.TMP_PROFESSOR tmp
			INNER JOIN SSO_SYS_UnidadeAdministrativa esc
				ON (esc.uad_codigo COLLATE Latin1_General_CI_AI = tmp.cd_escola COLLATE Latin1_General_CI_AI
				AND esc.ent_id = @ent_id
				AND esc.tua_id = @tua_id)
			INNER JOIN BC_VD_Professor prof
				ON (prof.prof_numeroMatricula COLLATE Latin1_General_CI_AI = CAST(tmp.rf AS VARCHAR(50)) COLLATE Latin1_General_CI_AI
				AND prof.ent_id = @ent_id)
		WHERE
			prof.ent_id = @ent_id
		GROUP BY
			prof.pes_id
			, prof.ent_id
			, esc.uad_id
	) AS _source
	ON (_source.pes_id = _target.pes_id
		AND	_source.ent_id = _target.ent_id
		AND _source.uad_id = _target.uad_id)
	WHEN MATCHED AND _target.pfe_ativo = 0 THEN
		UPDATE SET pfe_ativo = 1,
				   pfe_dataAlteracao = GETDATE()		
	WHEN NOT MATCHED THEN
		INSERT
		(
			pes_id
			, ent_id
			, uad_id
			, pfe_situacao
			, pfe_ativo
			, pfe_dataCriacao
			, pfe_dataAlteracao
		)
		VALUES
		(
			_source.pes_id
			, _source.ent_id
			, _source.uad_id
			, 0
			, 1
			, GETDATE()
			, GETDATE()
		);
END
GO

/****** Object:  StoredProcedure [dbo].[STP_SMESP_Professor_Disciplina_IMPORT]    Script Date: 05/12/2014 10:35:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_SMESP_Professor_Disciplina_IMPORT]
AS
BEGIN
SET XACT_ABORT ON
BEGIN TRAN

DECLARE
	@ent_id UNIQUEIDENTIFIER
SET @ent_id = (SELECT ent_id FROM SSO_SYS_Entidade WHERE ent_sigla = 'SMESP')

DECLARE @tua_id UNIQUEIDENTIFIER
SET @tua_id = (SELECT tua_id FROM SSO_SYS_TipoUnidadeAdministrativa WHERE tua_nome = 'Escola')


MERGE INTO BC_VD_Professor_Disciplina _target
USING
(
	SELECT
		tmp.rf
		, prof.pes_id
		, dis.dis_id
		, tmp.cod_comp_curr
	FROM
		tmp_grade tmp
		INNER JOIN SSO_SYS_UnidadeAdministrativa uad
			ON (uad.uad_codigo COLLATE Latin1_General_CI_AI = tmp.cd_escola COLLATE Latin1_General_CI_AI
				AND uad.ent_id = @ent_id
				AND uad.tua_id = @tua_id)
		INNER JOIN BC_VD_Disciplina dis
			ON (dis.dis_descricao COLLATE Latin1_General_CI_AI = CONVERT(VARCHAR(40), tmp.cod_comp_curr) COLLATE Latin1_General_CI_AI
				AND dis.ent_id = @ent_id
				AND dis.uad_id = uad.uad_id)
		INNER JOIN BC_VD_Professor prof
			ON (prof.prof_numeroMatricula COLLATE Latin1_General_CI_AI = tmp.rf COLLATE Latin1_General_CI_AI
				AND prof.ent_id = @ent_id)
	GROUP BY
		tmp.rf
		, prof.pes_id
		, dis.dis_id
		, tmp.cod_comp_curr
) AS _source
ON (_source.dis_id = _target.dis_id
	AND _source.pes_id = _target.pes_id
	AND @ent_id = _target.ent_id)
WHEN NOT MATCHED THEN
	INSERT
	(
		pes_id
		, dis_id
		, ent_id
		, prd_dataCriacao
		, prd_dataAlteracao
	)
	VALUES
	(
		pes_id
		, dis_id
		, @ent_id
		, GETDATE()
		, GETDATE()
	);

IF (@@TRANCOUNT > 0)
BEGIN
	COMMIT TRAN
END

END
GO

/****** Object:  StoredProcedure [dbo].[STP_SMESP_Professor_Disciplina_Turma_IMPORT]    Script Date: 05/12/2014 10:35:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_SMESP_Professor_Disciplina_Turma_IMPORT]
AS
BEGIN
SET XACT_ABORT ON
BEGIN TRAN

DECLARE
	@ent_id UNIQUEIDENTIFIER

SET @ent_id = (SELECT ent_id FROM SSO_SYS_Entidade WHERE ent_sigla = 'SMESP')

DECLARE @tua_id UNIQUEIDENTIFIER
SET @tua_id = (SELECT tua_id FROM SSO_SYS_TipoUnidadeAdministrativa WHERE tua_nome = 'Escola')

MERGE INTO BC_VD_Professor_Disciplina_Turma _target
USING
(
	SELECT
		dt.dit_id
		, prof.pes_id
	FROM
		tmp_grade tmp
		INNER JOIN BC_VD_Turma tur
			ON (tur.tur_salaAula COLLATE Latin1_General_CI_AI = CONVERT(VARCHAR(50), tmp.cd_turma_escola) COLLATE Latin1_General_CI_AI
				AND tur.ent_id = @ent_id)
		INNER JOIN SSO_SYS_UnidadeAdministrativa uad
			ON (uad.uad_codigo COLLATE Latin1_General_CI_AI = tmp.cd_escola COLLATE Latin1_General_CI_AI
				AND uad.ent_id = @ent_id
				AND uad.tua_id = @tua_id)
		INNER JOIN BC_VD_Disciplina dis
			ON (dis.dis_descricao COLLATE Latin1_General_CI_AI = CONVERT(VARCHAR(40), tmp.cod_comp_curr) COLLATE Latin1_General_CI_AI
				AND dis.ent_id = @ent_id
				AND dis.uad_id = uad.uad_id)
		INNER JOIN BC_VD_Professor prof
			ON (prof.prof_numeroMatricula COLLATE Latin1_General_CI_AI = tmp.rf COLLATE Latin1_General_CI_AI
				AND prof.ent_id = @ent_id)
		INNER JOIN BC_VD_Disciplina_Turma dt
			ON (dt.dis_id = dis.dis_id
				AND dt.tur_id = tur.tur_id)
	GROUP BY
		dt.dit_id
		, prof.pes_id

) AS _source
ON (_source.dit_id = _target.dit_id
	AND _source.pes_id = _target.pes_id
	AND @ent_id = _target.ent_id)
WHEN NOT MATCHED THEN
	INSERT
	(
		dit_id
		, pes_id
		, ent_id
		, pdt_dataCriacao
		, pdt_dataAlteracao
	)
	VALUES
	(
		dit_id
		, pes_id
		, @ent_id
		, GETDATE()
		, GETDATE()
	);

IF (@@TRANCOUNT > 0)
BEGIN
	COMMIT TRAN
END

END
GO

/****** Object:  StoredProcedure [dbo].[STP_SMESP_SAV_Avaliacao_Alunos_IMPORT]    Script Date: 05/12/2014 10:35:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_SMESP_SAV_Avaliacao_Alunos_IMPORT]
AS
BEGIN
	MERGE INTO SistemadeAvaliacao..SAV_Aluno _target 
	USING
	(
		SELECT    tmp.CL_ALU_CODIGO ,
                            atm.ALU_NOME
                  FROM      ( SELECT    atm.cl_alu_codigo ,
                                        cl_tur_codigo ,
                                        ROW_NUMBER() OVER ( PARTITION BY atm.cl_alu_codigo ORDER BY atm.cl_datst DESC, alu.cl_datst desc  ) AS rowNum
                              FROM      tmp_CoreSME_alunos_matriculados alu
										INNER JOIN dbo.tmp_CoreSME_alunos_da_turma_MSTECH atm WITH ( NOLOCK ) ON alu.cl_alu_codigo = atm.CL_ALU_CODIGO
										AND alu.cl_tur_codigo = atm.cd_turma_escola
                                        INNER JOIN tmp_CoreSME_turma_MSTECH tur ON alu.cl_tur_codigo = tur.cd_turma_escola
                              WHERE     atm.cl_st IN ( 'I', 'S' )
										AND alu.cl_st IN ( 'I', 'S' )
                                        AND tur.cd_tipo_turma = 1 --(Turma REGULAR)          
										AND tur.cd_modalidade_ensino = 1
										AND tur.cd_etapa_ensino IN (2,3,4,5,11)
										AND tur.cd_ciclo_ensino IN (1,2,3,4,5,6,7,8,9,14,15,16,18,19,24,25,26,27)
										AND tur.an_letivo = (SELECT CAST(VALOR as int) FROM _PARAMETROS WHERE CHAVE = 'ANO_BASE')
                            ) tmp
                            INNER JOIN tmp_CoreSME_alunos_da_turma_MSTECH atm ON tmp.cl_alu_codigo = atm.CL_ALU_CODIGO
                                                              AND tmp.cl_tur_codigo = atm.cd_turma_escola
                  WHERE     rowNum = 1  
                  GROUP BY  tmp.CL_ALU_CODIGO ,
                            atm.ALU_NOME
	) AS _source
	ON (_source.CL_ALU_CODIGO = _target.alu_codigo)
	WHEN MATCHED THEN
		UPDATE SET
			alu_nome = _source.ALU_NOME ,
			alu_dataAlteracao = GETDATE()
	WHEN NOT MATCHED THEN	
		INSERT
		(
			alu_nome
			, alu_codigo
			, alu_dataInclusao
			, alu_dataAlteracao
		)
		VALUES
		(
			_source.ALU_NOME
			, _source.CL_ALU_CODIGO
			, GETDATE()
			, GETDATE()
		);
END
GO

/****** Object:  StoredProcedure [dbo].[STP_SMESP_SAV_Avaliacao_AnoSerie_IMPORT]    Script Date: 05/12/2014 10:35:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_SMESP_SAV_Avaliacao_AnoSerie_IMPORT]
AS
BEGIN
	MERGE INTO SistemadeAvaliacao..SAV_AnoSerie _target 
	USING
	(		
		SELECT  cd_serie_eol98 ,
				sg_serie_eol98
		FROM    tmp_CoreSME_turma_MSTECH tur
		WHERE   cd_tipo_turma = 1 --REGULAR 
				AND cd_modalidade_ensino = 1 --ENSINO REGULAR 
				AND cd_etapa_ensino IN (2,3,4,5,11) --ENSINO FUNDAMENTAL DE 8 ANOS, ENSINO FUNDAMENTAL DE 9 ANOS 
				AND cd_ciclo_ensino IN (1,2,3,4,5,6,7,8,9,14,15,16,18,19,24,25,26,27) --ENSINO FUNDAMENTAL DE 8 ANOS CICLO I, ENSINO FUNDAMENTAL DE 8 ANOS CICLO II, ENSINO FUNDAMENTAL DE 9 ANOS CICLO I 
		GROUP BY 
			cd_serie_eol98, sg_serie_eol98		
	) AS _source
	ON (_source.cd_serie_eol98 = _target.ase_id)
	WHEN MATCHED THEN
		UPDATE SET
			ase_nome = _source.sg_serie_eol98
	WHEN NOT MATCHED THEN	
		INSERT
		(
			ase_id
			, ase_nome
		)
		VALUES
		(
			_source.cd_serie_eol98
			, _source.sg_serie_eol98
		);
END
GO

/****** Object:  StoredProcedure [dbo].[STP_SMESP_SAV_Avaliacao_Turma_IMPORT]    Script Date: 05/12/2014 10:35:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_SMESP_SAV_Avaliacao_Turma_IMPORT]	
AS
BEGIN
        DECLARE @ent_id UNIQUEIDENTIFIER
	    
	    DECLARE @tua_id UNIQUEIDENTIFIER
        SET @tua_id = (SELECT tua_id FROM SSO_SYS_TipoUnidadeAdministrativa WHERE tua_nome = 'Escola')
        
        SELECT  @ent_id = ent_id
        FROM    SSO_SYS_Entidade --SSO_SYS_Entidade
        WHERE   ent_sigla = 'SMESP'
			
        MERGE INTO SistemadeAvaliacao..SAV_Turma _target
            USING 
                ( SELECT    ua.uad_id ,
                            cd_turma_escola ,
                            dc_turma_escola ,
                            ase_id ,
                            t.an_letivo ,
                            @ent_id AS ent_id ,
                            t.st_turma_escola ,
                            t.dc_tipo_turno
                  FROM      tmp_coresme_turma_MSTECH t
                            INNER JOIN tmp_CoreSME_alunos_matriculados am ON t.cd_turma_escola = am.cl_tur_codigo -- garantir que serão importadas apenas as turmas com alunos matriculados.
                            INNER JOIN SistemadeAvaliacao..SAV_AnoSerie a ON a.ase_id = t.cd_serie_eol98
                            INNER JOIN SSO_SYS_UnidadeAdministrativa ua
                             ON ua.uad_codigo COLLATE Latin1_General_CI_AS = t.cd_escola COLLATE Latin1_General_CI_AS
                            AND ua.tua_id = @tua_id
                  WHERE     t.an_letivo = (SELECT CAST(VALOR as int) FROM _PARAMETROS WHERE CHAVE = 'ANO_BASE')
							AND cd_tipo_turma = 1 --REGULAR 
                            AND cd_modalidade_ensino = 1 --ENSINO REGULAR 
                            AND cd_etapa_ensino IN (2,3,4,5,11) --ENSINO FUNDAMENTAL DE 8 ANOS, ENSINO FUNDAMENTAL DE 9 ANOS 
                            AND cd_ciclo_ensino IN (1,2,3,4,5,6,7,8,9,14,15,16,18,19,24,25,26,27 ) --ENSINO FUNDAMENTAL DE 8 ANOS CICLO I, ENSINO FUNDAMENTAL DE 8 ANOS CICLO II, ENSINO FUNDAMENTAL DE 9 ANOS CICLO I 
				  GROUP BY  ua.uad_id ,
                            cd_turma_escola ,
                            dc_turma_escola ,
                            ase_id ,
                            t.an_letivo ,
                            t.st_turma_escola ,
                            t.dc_tipo_turno
                ) AS _source
            ON ( _source.cd_turma_escola = _target.tur_codigo)
            WHEN MATCHED 
                THEN
		UPDATE  SET
                    tur_nome = _source.dc_turma_escola ,
                    tur_anoLetivo = _source.an_letivo ,
                    ase_id = _source.ase_id ,
                    tur_status = _source.st_turma_escola ,
                    tur_turno = _source.dc_tipo_turno,
                    uad_id = _source.uad_id
            WHEN NOT MATCHED 
                THEN	
		INSERT  (
                      uad_id ,
                      ent_id ,
                      ase_id ,
                      tur_nome ,
                      tur_codigo ,
                      tur_anoLetivo ,
                      tur_status ,
                      tur_turno
		        )
                    VALUES
                    ( _source.uad_id ,
                      _source.ent_id ,
                      _source.ase_id ,
                      _source.dc_turma_escola ,
                      _source.cd_turma_escola ,
                      _source.an_letivo ,
                      _source.st_turma_escola ,
                      _source.dc_tipo_turno
		        )
		      WHEN NOT MATCHED BY SOURCE THEN
				UPDATE  SET 
						tur_status = 'E'; --Excluído
END
GO

/****** Object:  StoredProcedure [dbo].[STP_SMESP_SAV_Avaliacao_TurmasAlunos_IMPORT]    Script Date: 05/12/2014 10:35:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_SMESP_SAV_Avaliacao_TurmasAlunos_IMPORT]
	
AS
  BEGIN
    -- Verfica e deleta registro duplicados na tabela TurmaAlunos
        SELECT  tur_id ,
                alu_id ,
                COUNT(alu_id) AS qtd
        INTO    #aux1
        FROM    SistemadeAvaliacao..SAV_TurmaAlunos
        GROUP BY tur_id ,
                alu_id
        HAVING  COUNT(alu_id) > 1

	
        SELECT  ta.tur_id ,
                ta.alu_id ,
                ta.tal_chamada ,
                ta.tal_situacao
        INTO    #final
        FROM    SistemadeAvaliacao..SAV_TurmaAlunos ta
                INNER JOIN #aux1 aux ON aux.tur_id = ta.tur_id
                                        AND aux.alu_id = ta.alu_id
        GROUP BY ta.tur_id ,
                ta.alu_id ,
                ta.tal_chamada ,
                ta.tal_situacao
        ORDER BY ta.tur_id ,
                ta.alu_id

        DELETE  SistemadeAvaliacao..SAV_TurmaAlunos
        FROM    SistemadeAvaliacao..SAV_TurmaAlunos t
                INNER JOIN ( SELECT ta.tur_id ,
                                    ta.alu_id ,
                                    ta.tal_chamada ,
                                    ta.tal_situacao
                             FROM   SistemadeAvaliacao..SAV_TurmaAlunos ta
                                    INNER JOIN #aux1 aux ON aux.tur_id = ta.tur_id
                                                            AND aux.alu_id = ta.alu_id
                             GROUP BY ta.tur_id ,
                                    ta.alu_id ,
                                    ta.tal_chamada ,
                                    ta.tal_situacao
                           ) a ON t.tur_id = a.tur_id
                                  AND t.alu_id = a.alu_id
	
       
	
	-- Insere ou atualiza infomações na tabela TurmaAlunos

        MERGE INTO SistemadeAvaliacao..SAV_TurmaAlunos _target
            USING 
                ( --2.674.876
                  SELECT    tur_id ,
                            alu_id ,
                            cl_cham ,
                            cl_st
                  FROM      ( SELECT    alu_id ,
                                        tur_id ,
                                        cl_cham ,
                                        atm.cl_st ,
                                        ROW_NUMBER() OVER ( PARTITION BY atm.cl_alu_codigo ORDER BY atm.cl_datst DESC, am.cl_datst desc  ) AS rowNum
                              FROM      tmp_coresme_alunos_matriculados am WITH ( NOLOCK )
										INNER JOIN dbo.tmp_CoreSME_alunos_da_turma_MSTECH atm WITH ( NOLOCK ) ON am.cl_alu_codigo = atm.CL_ALU_CODIGO
                                        INNER JOIN SistemadeAvaliacao..SAV_Aluno a WITH ( NOLOCK ) ON am.cl_alu_codigo = a.alu_codigo
                                        INNER JOIN SistemadeAvaliacao..SAV_Turma t WITH ( NOLOCK ) ON am.cl_tur_codigo = t.tur_codigo
                                        INNER JOIN tmp_CoreSME_turma_MSTECH tur WITH ( NOLOCK ) ON t.tur_codigo = tur.cd_turma_escola
                              WHERE     atm.cl_st IN ( 'I', 'S' )
										AND am.cl_st IN ( 'I', 'S' )
                                        AND tur.cd_tipo_turma = 1 --(Turma REGULAR)        
										AND tur.cd_modalidade_ensino = 1
										AND tur.cd_etapa_ensino IN (2,3,4,5,11)
										AND tur.cd_ciclo_ensino IN (1,2,3,4,5,6,7,8,9,14,15,16,18,19,24,25,26,27)
										AND tur.an_letivo = (SELECT CAST(VALOR as int) FROM _PARAMETROS WHERE CHAVE = 'ANO_BASE')
										
                            ) tmp
                  WHERE     tmp.rowNum = 1
                ) AS _source
            ON ( _target.tur_id = _source.tur_id
                 AND _target.alu_id = _source.alu_id
               )
            WHEN NOT MATCHED BY SOURCE
				THEN UPDATE
					SET tal_situacao = 'X'
					, tal_dataAlteracao = GETDATE()
            WHEN MATCHED 
                THEN
			UPDATE
                    SET     tal_chamada = _source.cl_cham ,
                            tal_situacao = _source.cl_st ,
                            tal_dataAlteracao = GETDATE()
			                            
            WHEN NOT MATCHED 
                THEN	
			INSERT    (
                              tur_id ,
                              alu_id ,
                              tal_chamada ,
                              tal_situacao ,
                              tal_dataInclusao ,
                              tal_dataAlteracao
			          )
                    VALUES  ( _source.tur_id ,
                              _source.alu_id ,
                              _source.cl_cham ,
                              _source.cl_st ,
                              GETDATE() ,
                              GETDATE()
			          ) ;
    END
GO

/****** Object:  StoredProcedure [dbo].[STP_SMESP_SAV_Avaliacao_UsuarioGrupo_IMPORT]    Script Date: 05/12/2014 10:35:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_SMESP_SAV_Avaliacao_UsuarioGrupo_IMPORT]
AS 
    BEGIN     
    DECLARE @ent_id UNIQUEIDENTIFIER ,
            @sis_id INT ,
            @gru_idProfessor UNIQUEIDENTIFIER ,
            @gru_idGestor UNIQUEIDENTIFIER
    
	DECLARE @TipoUAD table (tua_id UNIQUEIDENTIFIER)
	
	insert into @TipoUAD
	SELECT tua_id FROM SSO_SYS_TipoUnidadeAdministrativa
	 WHERE tua_nome in ('Diretoria Regional de Educação','Escola')
	
-- Temporária para armazenar os usuários
        IF ( OBJECT_ID('tempdb..#tmp_Usuario') > 0 ) 
            DROP TABLE #tmp_Usuario
        CREATE TABLE #tmp_Usuario
            (
              usu_id UNIQUEIDENTIFIER ,
              gru_id UNIQUEIDENTIFIER ,
              uad_id UNIQUEIDENTIFIER
            )
    
-- Apenas os cargos de Diretor e Coordenador pedagógio    
        DECLARE @DiretorCoordenador TABLE
            (
              cd_cargo INT ,
              dc_cargo VARCHAR(50)
            )
        INSERT  INTO @DiretorCoordenador
                SELECT DISTINCT
                        cd_cargo ,
                        dc_cargo
                FROM    tmp_cargobase_mstech
                WHERE   dc_cargo = 'COORDENADOR PEDAGOGICO'
                        OR dc_cargo = 'DIRETOR DE ESCOLA'

-- ID da entidade
        SELECT  @ent_id = ent_id
        FROM    SSO_SYS_Entidade WITH ( NOLOCK )
        WHERE   ent_sigla = 'SMESP'

-- ID do sistema
        SELECT  @sis_id = sis_id
        FROM    SSO_SYS_Sistema WITH ( NOLOCK )
        WHERE   sis_nome = 'Sistema de Avaliação'

-- IDs dos grupos 
		SELECT @gru_idProfessor = gru_idUsadoIntegracao FROM DEPARA_GRUPOS_INTEGRACAO 
		WHERE nomeUsadoIntegracao = 'Professor' and sis_id = @sis_id
		
		SELECT @gru_idGestor = gru_idUsadoIntegracao FROM DEPARA_GRUPOS_INTEGRACAO 
		WHERE nomeUsadoIntegracao = 'Gestor (Diretores UE, Coordenadores Pedagógicos)' and sis_id = @sis_id

-- insere na tmp_usuario
        INSERT  INTO #tmp_Usuario
                ( usu_id ,
                  gru_id ,
                  uad_id 
                )
                SELECT  usu.usu_id ,
                        serv.gru_id ,
                        uad.uad_id
                FROM    (
		-- Professores
                          SELECT DISTINCT
                                    rf ,
                                    @gru_idProfessor AS gru_id ,
                                    cd_escola
                          FROM      tmp_cadastro_professor prof WITH ( NOLOCK )
                         -- o filtro abaixo foi colocado pelo Júlio para trazer apenas os docentes
                         -- que não são CP e não estão lotados em escolas que não são tratadas pelo
                         -- sistema.
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
                                               inner join BD_PRODAM..v_unidade_educacao_dados_gerais esc
                                               on gc.cd_escola = esc.cd_unidade_educacao
                                         where esc. dc_tipo_unidade_educacao = 'ESCOLA' 
                                           and esc.sg_tp_escola in ('EMEF','EMEFM','CEU EMEF','EMEBS','CIEJA',
									 'EMEI','CECI','CEMEI','CEI DIRET', 'CCI/CIPS', 'CEI INDIR', 'CEU CEI', 'CEU EMEI', 'CR.P.CONV')
                                         group by prf.rf, gc.cd_escola) doc
                                   where doc.rf = prof.rf
                                     and doc.cd_escola = prof.cd_escola)                          
                          UNION ALL
		-- Servidores que possuem cargo base de diretor ou coordenador pedagógio e não possuem cargo sobreposto
                          SELECT  DISTINCT
                                    crg.cd_registro_funcional rf ,
                                    @gru_idGestor AS gru_id ,
                                    CRG.lotacao
                          FROM      tmp_cargobase_mstech crg WITH ( NOLOCK )
                                    INNER JOIN @DiretorCoordenador dir ON crg.cd_cargo = dir.cd_cargo
                                    LEFT JOIN tmp_cargosobreposto_mstech cgs
                                    WITH ( NOLOCK ) ON crg.cd_cargo_base_servidor = cgs.cd_cargo_base_servidor
                          WHERE     cgs.cd_cargo IS NULL
                          UNION ALL
		-- Servidores que passaram a ser coordenadores pedagógicos ou diretores através do cargo sobreposto
                          SELECT  DISTINCT
                                    crg.cd_registro_funcional rf ,
                                    @gru_idGestor AS gru_id ,
                                    CRS.cd_unidade_local_servico
                          FROM      tmp_cargosobreposto_mstech crs WITH ( NOLOCK )
                                    INNER JOIN @DiretorCoordenador dir ON crs.cd_cargo = dir.cd_cargo
                                    INNER JOIN tmp_cargobase_mstech crg WITH ( NOLOCK ) ON crs.cd_cargo_base_servidor = crg.cd_cargo_base_servidor
                          UNION ALL
         -- Outros Docentes que não estão na cadastro_professor
         -- Colocado pelo Júlio em 15/05/2014
                          SELECT DISTINCT tmp_DiarioSupervisor_Servidor.cd_registro_funcional AS rf,
                                 @gru_idProfessor AS gru_id, v_cargobase_mstech.lotacao
                            FROM tmp_DiarioSupervisor_Servidor
                                 inner join bd_prodam..v_cargobase_mstech 
                                 on tmp_DiarioSupervisor_Servidor.cd_registro_funcional = v_cargobase_mstech.cd_registro_funcional 
                                 inner join GestaoPedagogica..RHU_Cargo 
                                 on v_cargobase_mstech.cd_cargo = RHU_Cargo.crg_codigo
                                 and isnull(v_cargobase_mstech.cd_situacao_funcional,1) = RHU_Cargo.tvi_id
                           where crg_situacao <> 3 and crg_cargoDocente = 1
                             and dc_cargo <> 'COORDENADOR PEDAGOGICO'
                             and tmp_DiarioSupervisor_Servidor.cd_registro_funcional not in
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
                                   where prof.rf = tmp_DiarioSupervisor_Servidor.cd_registro_funcional
                                     and prof.cd_escola = v_cargobase_mstech.lotacao)
                        ) serv
                        INNER JOIN SSO_SYS_Usuario usu WITH ( NOLOCK ) ON serv.rf = usu.usu_login
                        INNER JOIN SSO_SYS_UnidadeAdministrativa uad WITH ( NOLOCK ) ON serv.cd_escola = uad.uad_codigo
                        INNER JOIN @TipoUAD tua ON uad.tua_id = tua.tua_id
                GROUP BY usu_id ,
                        gru_id ,
                        uad_id
 
-- Manutenção da tabela SSIS_LoginImportado
        MERGE SSIS_LoginImportado AS _target
            USING 
                ( SELECT    usu.usu_id ,
                            usu.usu_login ,
                            tmp.gru_id ,
                            tmp.uad_id
                  FROM      #tmp_Usuario tmp WITH ( NOLOCK )
                            INNER JOIN SSO_SYS_Usuario usu WITH ( NOLOCK ) ON tmp.usu_id = usu.usu_id
                  GROUP BY  usu.usu_id ,
                            usu.usu_login ,
                            tmp.gru_id ,
							tmp.uad_id
                ) AS _source
            ON ( _source.usu_login = _target.ssi_login
                 AND _source.gru_id = _target.gru_id
                 AND _source.uad_id = _target.uad_id
                 AND _source.usu_id = _target.usu_id
               )
            WHEN NOT MATCHED 
                THEN
	INSERT    (
                  usu_id ,
                  ssi_login ,
                  gru_id ,
                  uad_id ,
                  ssi_situacao			 
			
                )   VALUES
                ( _source.usu_id ,
                  _source.usu_login ,
                  _source.gru_id ,
                  _source.uad_id ,
                  1
			
                )
            WHEN MATCHED AND _target.ssi_situacao = 3 AND (_target.gru_id = @gru_idProfessor OR _target.gru_id = @gru_idGestor) AND _target.uad_id = _source.uad_id
                THEN
	UPDATE        SET
                ssi_situacao = 1 ,
                ssi_dataAlteracao = GETDATE()
            WHEN NOT MATCHED BY SOURCE AND _target.ssi_situacao = 1 AND (_target.gru_id = @gru_idProfessor OR _target.gru_id = @gru_idGestor)
                THEN
	UPDATE        SET
                ssi_situacao = 3 ,
                ssi_dataAlteracao = GETDATE() ;	
			 
-- UsuarioGrupo    
-- Deleta a relação UsuarioGrupo para os registros que estão na tmp de servidores importados automaticamente
        DELETE  ug
        FROM    SSO_SYS_UsuarioGrupo ug
                INNER JOIN SSIS_LoginImportado lo ON ( ug.usu_id = lo.usu_id
                                                       AND ug.gru_id = lo.gru_id
                                                     )
        WHERE lo.gru_id IN (@gru_idProfessor, @gru_idGestor) 
          AND lo.ssi_situacao = 3

              
        MERGE SSO_SYS_UsuarioGrupo AS _target
            USING 
                ( SELECT    usu_id ,
                            gru_id
                  FROM      #tmp_Usuario
                  GROUP BY  usu_id ,
                            gru_id
                ) AS _source
            ON ( _source.usu_id = _target.usu_id
                 AND _source.gru_id = _target.gru_id
               )
            WHEN NOT MATCHED 
                THEN
INSERT  (
          usu_id ,
          gru_id ,
          usg_situacao
        )           VALUES
        ( _source.usu_id ,
          _source.gru_id ,
          1
        )
            WHEN MATCHED 
                THEN
			UPDATE
                    SET     usg_situacao = 1 ;
-- UsuarioGrupoUA

-- Deleta a relação UsuarioGrupoUA para os registros que estão na tmp de servidores importados automaticamente
        DELETE  ugu
        FROM    SSO_SYS_UsuarioGrupoUA ugu
                INNER JOIN SSIS_LoginImportado lo ON ( ugu.usu_id = lo.usu_id
                                                       AND ugu.gru_id = lo.gru_id
                                                       AND ugu.uad_id = lo.uad_id
                                                     )
        WHERE   lo.gru_id IN (@gru_idProfessor, @gru_idGestor) 
          AND   lo.ssi_situacao = 3

-- Atualiza a tabela SSIS_RFImportado para inativar os registros que foram deletados em UsuarioGrupo

        MERGE SSO_SYS_UsuarioGrupoUA AS _target
            USING 
                ( SELECT    usu_id ,
                            gru_id ,
                            uad_id
                  FROM      #tmp_Usuario
                  GROUP BY  usu_id ,
                            gru_id ,
                            uad_id
                ) AS _source
            ON ( _source.usu_id = _target.usu_id
                 AND _source.gru_id = _target.gru_id
                 AND _source.uad_id = _target.uad_id
               )
            WHEN NOT MATCHED 
                THEN
INSERT  (
          usu_id ,
          gru_id ,
          ent_id ,
          uad_id           
        )           VALUES
        ( _source.usu_id ,
          _source.gru_id ,
          @ent_id ,
          _source.uad_id
        ) ;
END
GO

/****** Object:  StoredProcedure [dbo].[STP_SMESP_Setor_IMPORT]    Script Date: 05/12/2014 10:35:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_SMESP_Setor_IMPORT]
AS
BEGIN
    DECLARE @ent_id UNIQUEIDENTIFIER, @tua_id_distrito UNIQUEIDENTIFIER, @tua_id_setor UNIQUEIDENTIFIER,
            @qtdSetorInicio INT, @qtdSetorFinal INT, @tua_id_dre UNIQUEIDENTIFIER
    
    SET @ent_id = (SELECT ent_id FROM CoreSSO..SYS_Entidade WHERE LOWER(ent_sigla) = 'smesp')
    SET @tua_id_distrito = (SELECT tua_id FROM CoreSSO..SYS_TipoUnidadeAdministrativa WHERE LOWER(tua_nome) = 'distrito')
    SET @tua_id_setor = (SELECT tua_id FROM CoreSSO..SYS_TipoUnidadeAdministrativa WHERE LOWER(tua_nome) = 'setor')
    SET @qtdSetorInicio = (SELECT COUNT(*) FROM CoreSSO..SYS_UnidadeAdministrativa WHERE tua_id = @tua_id_setor)
    
    MERGE INTO CoreSSO..SYS_UnidadeAdministrativa _target
    USING (SELECT DISTINCT nm_distrito, nm_setor, cd_setor, uad_idDistrito, tua_id_setor,
                  ent_id, uad_situacao, setor.cd_endereco_grh
             FROM tmp_distrito_setor
                  inner join BD_PRODAM..v_unidade_educacao_dados_gerais setor
                  ON tmp_distrito_setor.cd_setor = setor.cd_unidade_educacao) AS _source
     ON _source.cd_setor = LTRIM(RTRIM(_target.uad_codigo))
    AND _source.uad_idDistrito = _target.uad_idSuperior
    AND _source.tua_id_setor = _target.tua_id
    AND _source.ent_id = _target.ent_id
    WHEN MATCHED THEN
         UPDATE SET uad_nome = _source.nm_setor,
                    uad_dataAlteracao = GETDATE(),
                    uad_idSuperior = _source.uad_idDistrito,
                    uad_codigoIntegracao = _source.cd_endereco_grh
    WHEN NOT MATCHED THEN
         INSERT (ent_id, tua_id, uad_codigo, uad_nome, uad_idSuperior, uad_situacao, uad_codigoIntegracao)
         VALUES (_source.ent_id, _source.tua_id_setor, _source.cd_setor, _source.nm_setor,
                 _source.uad_idDistrito, _source.uad_situacao, _source.cd_endereco_grh);
    
    SET @qtdSetorFinal = (SELECT COUNT(*) FROM CoreSSO..SYS_UnidadeAdministrativa WHERE tua_id = @tua_id_setor)
    SELECT @qtdSetorInicio, @qtdSetorFinal
END
GO

/****** Object:  StoredProcedure [dbo].[STP_SMESP_TipoUnidadeAdm_CREATE]    Script Date: 05/12/2014 10:35:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_SMESP_TipoUnidadeAdm_CREATE]
AS
BEGIN
IF NOT EXISTS(SELECT * FROM sso_sys_tipounidadeadministrativa WHERE UPPER(tua_nome) = 'DIRETORIA REGIONAL DE EDUCAÇÃO')
BEGIN
	INSERT INTO sso_sys_tipounidadeadministrativa (tua_nome, tua_situacao, tua_dataCriacao, tua_dataAlteracao, tua_integridade)
	VALUES ('Diretoria Regional de Educação', 1, GETDATE(), GETDATE(), 0)
END

IF NOT EXISTS(SELECT * FROM sso_sys_tipounidadeadministrativa WHERE UPPER(tua_nome) = 'DISTRITO')
BEGIN
	INSERT INTO sso_sys_tipounidadeadministrativa (tua_nome, tua_situacao, tua_dataCriacao, tua_dataAlteracao, tua_integridade)
	VALUES ('Distrito', 1, GETDATE(), GETDATE(), 0)
END

IF NOT EXISTS(SELECT * FROM sso_sys_tipounidadeadministrativa WHERE UPPER(tua_nome) = 'SETOR')
BEGIN
	INSERT INTO sso_sys_tipounidadeadministrativa (tua_nome, tua_situacao, tua_dataCriacao, tua_dataAlteracao, tua_integridade)
	VALUES ('Setor', 1, GETDATE(), GETDATE(), 0)
END

IF NOT EXISTS(SELECT * FROM sso_sys_tipounidadeadministrativa WHERE UPPER(tua_nome) = 'ESCOLA')
BEGIN
	INSERT INTO sso_sys_tipounidadeadministrativa (tua_nome, tua_situacao, tua_dataCriacao, tua_dataAlteracao, tua_integridade)
	VALUES ('Escola', 1, GETDATE(), GETDATE(), 0)
END

END
GO

/****** Object:  StoredProcedure [dbo].[STP_SMESP_Turma_IMPORT]    Script Date: 05/12/2014 10:35:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STP_SMESP_Turma_IMPORT]
AS
BEGIN
DECLARE
	@ent_id UNIQUEIDENTIFIER

SET @ent_id = (SELECT ent_id FROM sso_sys_entidade WHERE ent_sigla = 'SMESP')

DECLARE @tua_id UNIQUEIDENTIFIER
SET @tua_id = (SELECT tua_id FROM SSO_SYS_TipoUnidadeAdministrativa WHERE tua_nome = 'Escola')

UPDATE tmp_turma SET
	cd_escola = RIGHT('000000' + cd_escola, 6)

MERGE INTO BC_VD_Turma _target
USING
(
	SELECT
		dc_turma_escola
		, ase_id
		, an_letivo
		, ent_id
		, uad_id
		, cd_turma_escola
	FROM
		(
		SELECT
			tmp.cd_turma_escola
			, tmp.ase_id
			, tmp.cur_id
			, tmp.an_letivo
			, tmp.cd_escola
			, SUBSTRING(tmp.dc_turma_escola, 1, 2) AS dc_turma_escola
			, uad.uad_id
			, uad.uad_codigo
			, @ent_id AS ent_id
		FROM
			tmp_turma tmp
			INNER JOIN tmp_CoreSME_alunos_matriculados am WITH(NOLOCK) ON tmp.cd_turma_escola = am.cl_tur_codigo -- garantir que serão importadas apenas as turmas com alunos matriculados.
            INNER JOIN sso_sys_unidadeadministrativa uad WITH(NOLOCK)
				 ON (uad.uad_codigo COLLATE Latin1_General_CI_AS = tmp.cd_escola COLLATE Latin1_General_CI_AS)
				AND uad.tua_id = @tua_id
			INNER JOIN BC_VD_AnoSerie ase WITH(NOLOCK)
				ON (ase.ase_id = tmp.ase_id) 
			INNER JOIN BC_VD_Curso cur WITH(NOLOCK)
				ON ase.cur_id = cur.cur_id 
				AND  (cur.cur_nome COLLATE Latin1_General_CI_AS = tmp.dc_etapa_ensino COLLATE Latin1_General_CI_AS)
				
		WHERE
			uad.ent_id = @ent_id
		) AS t
	GROUP BY
		dc_turma_escola
		, ase_id
		, an_letivo
		, ent_id
		, uad_id
		, cd_turma_escola
) AS _source
ON (_source.ent_id = _target.ent_id
	AND _source.uad_id = _target.uad_id
	AND _source.ase_id = _target.ase_id
	AND CONVERT(VARCHAR(50), _source.cd_turma_escola) = _target.tur_salaAula)
WHEN MATCHED THEN
	UPDATE SET
		tur_salaAula = _source.cd_turma_escola
		, tur_dataAlteracao = GETDATE()
		, tur_anoLetivo = _source.an_letivo
WHEN NOT MATCHED THEN
	INSERT
	(
		tur_nome
		, ase_id
		, tur_anoLetivo
		, ent_id
		, uad_id
		, tur_salaAula
		, tur_ativo
		, tur_dataCriacao
		, tur_dataAlteracao	
	)
	VALUES
	(
		_source.dc_turma_escola
		, _source.ase_id
		, _source.an_letivo
		, _source.ent_id
		, _source.uad_id
		, _source.cd_turma_escola
		, 1
		, GETDATE()
		, GETDATE()
	);
END
GO
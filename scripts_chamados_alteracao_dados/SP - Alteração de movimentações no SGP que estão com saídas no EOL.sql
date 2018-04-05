USE GestaoPedagogica
GO

--select tm.dc_turma_escola, tm.cd_escola, * 
--  from BD_PRODAM..v_alunos_turma_matriculados_historico_movimentacao a
--	   inner join BD_PRODAM..v_turma_mstech tm on tm.cd_turma_escola = a.cl_tur_codigo
-- where a.an_letivo = 2017 and cl_alu_codigo in (2930532,4908729)
-- order by a.cl_alu_Codigo, cl_datst desc

SET XACT_ABORT ON
BEGIN TRAN

--Aluno Ewerton Alves da Costa, EOL 2930532, da EMEF Antônio Alves da Silva Sargento/ DRE CL, EJA 4B:
--Excluindo a movimentação, excluindo as matriculas nas turmas e reativando a matriula conforme chamado
update GestaoPedagogica..MTR_Movimentacao set mov_situacao = 3, mov_DataAlteracao = GETDATE() where alu_id = 1366839 and mov_id in (6,7)
update GestaoPedagogica..MTR_MatriculaTurma set mtu_situacao = 3, mtu_DataAlteracao = GETDATE() where alu_id = 1366839 and mtu_id = 5
update GestaoPedagogica..MTR_MatriculaTurma set mtu_situacao = 1, mtu_dataSaida = null, mtu_DataAlteracao = GETDATE() where alu_id = 1366839 and mtu_id = 4

update GestaoPedagogica..ACA_AlunoCurriculo set alc_situacao = 3, alc_DataAlteracao = GETDATE() where alu_id = 1366839 and alc_id = 5
update GestaoPedagogica..ACA_AlunoCurriculo set alc_situacao = 1, alc_dataSaida = null, alc_DataAlteracao = GETDATE() where alu_id = 1366839 and alc_id = 4

update GestaoPedagogica..MTR_MatriculaTurmaDisciplina set mtd_situacao = 3, mtd_DataAlteracao = GETDATE() where alu_id = 1366839 and mtu_id = 5
update GestaoPedagogica..MTR_MatriculaTurmaDisciplina set mtd_situacao = 1, mtd_dataSaida = null, mtd_DataAlteracao = GETDATE() where alu_id = 1366839 and mtu_id = 4 and mtd_situacao <> 3

--Aluna Evellyn da Silva Moura Código EOL: 4908729, 5ºAno D, da EMEF Raul de Leoni da DRE JT.:
--Excluindo a movimentação, excluindo as matriculas nas turmas e reativando a matriula conforme chamado
update GestaoPedagogica..MTR_Movimentacao set mov_situacao = 3, mov_DataAlteracao = GETDATE() where alu_id = 963299 and mov_id in (8,9)
update GestaoPedagogica..MTR_MatriculaTurma set mtu_situacao = 3, mtu_DataAlteracao = GETDATE() where alu_id = 963299 and mtu_id = 7
update GestaoPedagogica..MTR_MatriculaTurma set mtu_situacao = 1, mtu_dataSaida = null, mtu_DataAlteracao = GETDATE() where alu_id = 963299 and mtu_id = 6

update GestaoPedagogica..ACA_AlunoCurriculo set alc_situacao = 3, alc_DataAlteracao = GETDATE() where alu_id = 963299 and alc_id = 7
update GestaoPedagogica..ACA_AlunoCurriculo set alc_situacao = 1, alc_dataSaida = null, alc_DataAlteracao = GETDATE() where alu_id = 963299 and alc_id = 6

update GestaoPedagogica..MTR_MatriculaTurmaDisciplina set mtd_situacao = 3, mtd_DataAlteracao = GETDATE() where alu_id = 963299 and mtu_id = 7
update GestaoPedagogica..MTR_MatriculaTurmaDisciplina set mtd_situacao = 1, mtd_dataSaida = null, mtd_DataAlteracao = GETDATE() where alu_id = 963299 and mtu_id = 6 and mtd_situacao <> 3

COMMIT TRANSACTION
SET XACT_ABORT ON
USE GestaoPEdagogica
GO 

SET XACT_ABORT ON
BEGIN TRAN
	--aproximadamente 996 registros
	update tud set tud.tud_situacao = 3, tud.tud_dataAlteracao = GETDATE()
	  from TUR_turma tur
		   inner join TUR_TurmaCurriculo tcr on tcr.tur_id = tur.tur_id and tcr.tcr_situacao = 1 and tcr.cur_id in (59,60)
		   inner join TUR_TurmaRelTurmaDisciplina trel on trel.tur_id = tur.tur_id
		   inner join TUR_TurmaDisciplina tud on tud.tud_id = trel.tud_id and tud.tud_nome like '%Educação f%'
	 where cal_id = 10 and tur.tur_tipo = 1  --and tur.tur_codigoEOL = 1861384

	--aproximadamente 996 registros
	delete
	  from TUR_TurmaRelTurmaDisciplina
	 where exists ( select tur.tur_id
					  from TUR_turma tur
						   inner join TUR_TurmaCurriculo tcr on tcr.tur_id = tur.tur_id and tcr.tcr_situacao = 1 and tcr.cur_id in (59,60)
						   inner join TUR_TurmaRelTurmaDisciplina trel on trel.tur_id = tur.tur_id
						   inner join TUR_TurmaDisciplina tud on tud.tud_id = trel.tud_id and tud.tud_nome like '%Educação f%'
					 where cal_id = 10 and tur.tur_tipo = 1  --and tur.tur_codigoEOL = 1861384
					   and TUR_TurmaRelTurmaDisciplina.tur_id = tur.tur_id
					   and TUR_TurmaRelTurmaDisciplina.tud_id = tud.tud_id)

	   --and exists (select * from TUR_TurmaDocente tdt where tdt.tud_id = tud.tud_id and tdt.tdt_situacao <> 3)
	   --and exists (select * from CLS_TurmaNotaAluno tna where tna.tud_id = tud.tud_id and tna.tna_situacao <> 3)
	   --and exists (select * from CLS_TurmaAulaAluno taa where taa.tud_id = tud.tud_id and taa.taa_situacao <> 3)

	update crd set crd.crd_tipo = 14, crd.crd_dataAlteracao = GETDATE()
	  from ACA_CurriculoDisciplina crd
		   inner join ACA_Disciplina dis on dis.dis_id = crd.dis_id and dis.dis_nome like 'Educ%'
	 where cur_id in (59,60)

COMMIT

USE Manutencao
GO

--tabela temporaria pra identificar quais escolas possuem EJA, pra podermos criar as turmas de Educação Física pra elas também,
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EscolasComEJA]') AND type in (N'U'))
	CREATE TABLE EscolasComEJA (esc_id int)

update DEPARA_NIVEL_MODALIDADE_ENSINO set tme_id = 6, tme_nome = 'EJA Regular' where cd_Etapa_ensino = 3
update DEPARA_NIVEL_MODALIDADE_ENSINO set tme_id = 4, tme_nome = 'EJA Especial' where cd_Etapa_ensino = 11
update DEPARA_NIVEL_MODALIDADE_ENSINO set tme_id = 8, tme_nome = 'CIEJA' where cd_Etapa_ensino = 2

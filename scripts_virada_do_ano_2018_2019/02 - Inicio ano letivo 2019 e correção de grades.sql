use [GestaoPedagogica]
go

SET XACT_ABORT ON
BEGIN TRAN --rollback

update Manutencao.._PARAMETROS set VALOR = '2019' where chave = 'ANO_BASE'
update Manutencao.._PARAMETROS set VALOR = '2019-02-05' where chave = 'DATA_CORTE'

SET IDENTITY_INSERT ACA_CalendarioAnual ON
insert into ACA_CalendarioAnual 
(cal_id, ent_id, cal_padrao, cal_ano, cal_descricao, cal_dataInicio, cal_dataFim, cal_situacao, cal_dataCriacao, cal_dataAlteracao)
select cal_id + 5, ent_id, 1 as cal_padrao, 2019 as cal_ano, replace(cal_descricao,'2018','2019'), 
	   DATEADD("DAY", -1, DATEADD("YEAR", 1, cal_dataInicio)), DATEADD("DAY", -1, DATEADD("YEAR", 1, cal_dataFim)), 1, GETDATE(), GETDATE()
  from ACA_CalendarioAnual 
 where cal_descricao like '%2018%'
SET IDENTITY_INSERT ACA_CalendarioAnual OFF

insert into ACA_CalendarioCurso (cal_id, cur_id)
select cal_id + 5, cur_id + 20
  from ACA_CalendarioCurso 
 where cal_id >= 12;

DISABLE TRIGGER TRG_ACA_CalendarioPeriodo_Identity on ACA_CalendarioPeriodo;
insert into ACA_CalendarioPeriodo 
(cal_id, cap_id, cap_descricao, tpc_id, cap_dataInicio, cap_dataFim, cap_situacao,cap_dataCriacao, cap_dataAlteracao)
select cal_id + 5, cap_id, cap_descricao, tpc_id,  DATEADD("DAY", -1, DATEADD("YEAR", 1, cap_dataInicio)),  DATEADD("DAY", -1, DATEADD("YEAR", 1, cap_dataFim)), cap_situacao,cap_dataCriacao, cap_dataAlteracao
  from ACA_CalendarioPeriodo
 where cal_id >= 12;

ENABLE TRIGGER TRG_ACA_CalendarioPeriodo_Identity on ACA_CalendarioPeriodo

update TUR_Turma set tur_dataEncerramento = '2018-12-22', tur_situacao = 5, tur_dataAlteracao = GETDATE() 
 where cal_id in (12,12,14,15,16) and tur_situacao = 1

COMMIT

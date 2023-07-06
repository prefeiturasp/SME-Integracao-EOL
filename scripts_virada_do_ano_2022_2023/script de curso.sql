use [GestaoPedagogica]
go



SET XACT_ABORT OFF
BEGIN TRAN --rollback

SET IDENTITY_INSERT ACA_Curso ON 
insert into ACA_Curso
       (cur_id, ent_id, cur_padrao, tne_id, tme_id, cur_codigo, cur_nome, cur_nome_abreviado,
        cur_exclusivoDeficiente, cur_vigenciaInicio, cur_efetivacaoSemestral,
        cur_situacao, cur_dataCriacao, cur_dataAlteracao)
select cur_id + 22 as cur_id , ent_id, cur_padrao, tne_id, tme_id, cur_codigo, 
	   replace(cur_nome,'2022','2023'), cur_nome_abreviado, cur_exclusivoDeficiente, 
	   '2023-01-01' as cur_vigenciaInicio, cur_efetivacaoSemestral, cur_situacao, GETDATE(), GETDATE()
  from ACA_Curso
 where cur_nome like '2022%'

if @@ERROR <> 0
begin
   PRINT 'Erro na criacao dos cursos'
   ROLLBACK
   SET IDENTITY_INSERT ACA_Curso OFF
   RETURN
end

SET IDENTITY_INSERT ACA_Curso OFF;

DISABLE TRIGGER TRG_ACA_Curriculo_Identity on ACA_Curriculo;
insert into ACA_Curriculo
       (cur_id, crr_id, crr_codigo, crr_regimeMatricula, crr_periodosNormal, crr_diasLetivos,
        crr_vigenciaInicio, crr_situacao, crr_dataCriacao, crr_dataAlteracao)
select cur_id + 22 as cur_id, crr_id, crr_codigo, crr_regimeMatricula, crr_periodosNormal, crr_diasLetivos,
       crr_vigenciaInicio, crr_situacao, GETDATE(), GETDATE()
  from ACA_Curriculo
 where cur_id in (select cur_id from ACA_Curso where cur_nome like '2022%')

if @@ERROR <> 0
begin
   PRINT 'Erro na criacao de curriculos'
   ROLLBACK
   RETURN
end;
ENABLE TRIGGER TRG_ACA_Curriculo_Identity on ACA_Curriculo;

DISABLE TRIGGER TRG_ACA_CurriculoPeriodo_Identity on ACA_CurriculoPeriodo;

INSERT INTO ACA_CurriculoPeriodo
       (cur_id, crr_id, crp_id, crp_ordem, crp_descricao, crp_controleTempo, crp_qtdeDiasSemana,
        crp_qtdeTemposDia, crp_qtdeTemposSemana, crp_qtdeHorasDia, crp_qtdeMinutosDia,
        crp_qtdeEletivasAlunos, crp_ciclo, crp_turmaAvaliacao, crp_concluiNivelEnsino,
        crp_situacao, crp_dataCriacao, crp_dataAlteracao, tci_id, tcp_id)
select cur_id + 22, crr_id, crp_id, crp_ordem, crp_descricao, crp_controleTempo, crp_qtdeDiasSemana, crp_qtdeTemposDia, 
	   crp_qtdeTemposSemana, crp_qtdeHorasDia, crp_qtdeMinutosDia, crp_qtdeEletivasAlunos, crp_ciclo, crp_turmaAvaliacao, 
	   crp_concluiNivelEnsino, crp_situacao, GETDATE(), GETDATE(), tci_id, tcp_id
  from ACA_CurriculoPeriodo
 where cur_id in (select cur_id from ACA_Curso where cur_nome like '2022%')
 
if @@ERROR <> 0
begin
   PRINT 'Erro na criacao de periodos para os novos curriculos'
   ROLLBACK
   RETURN
end;
ENABLE TRIGGER TRG_ACA_CurriculoPeriodo_Identity on ACA_CurriculoPeriodo;

--drop table #TB_DISCIPL
CREATE TABLE #TB_DISCIPL (dis_id int NULL, dis_id_novo int NULL, tds_id int, 
dis_nome varchar(50), dis_nomeAbreviado varchar(10), dis_codigo varchar(5), 
crd_tipo tinyint, cur_id int, crp_id int, dis_cargaHorariaTeorica int)

insert into #TB_DISCIPL (dis_id, dis_nome, dis_nomeAbreviado, tds_id, dis_codigo, crd_tipo, cur_id, crp_id, dis_cargaHorariaTeorica) 
select dis.dis_id, dis_nome, dis_nomeAbreviado, tds_id, dis_codigo, crd_tipo, cur_id + 22, crp_id, dis_cargaHorariaTeorica
  from ACA_Disciplina dis
	   inner join ACA_CurriculoDisciplina crd on crd.dis_id = dis.dis_id 
											 and crd.cur_id in (select cur_id from ACA_Curso where cur_nome like '2022%')
											 and crd.crd_situacao <> 3
 where dis.dis_situacao <> 3
   and dis.dis_id in (select dis_id from ACA_CurriculoDisciplina where cur_id = crd.cur_id and crd_situacao <> 3)
 
DECLARE @dis_id_max int
select @dis_id_max = MAX(dis_id) from ACA_Disciplina
update #TB_DISCIPL set @dis_id_max = dis_id_novo = @dis_id_max + 1

--select * from #TB_DISCIPL order by cur_id, dis_id

SET IDENTITY_INSERT ACA_Disciplina ON 
insert into ACA_Disciplina
       (dis_id, tds_id, dis_codigo, dis_nome, dis_nomeAbreviado, dis_cargaHorariaTeorica,
        dis_situacao, dis_dataCriacao, dis_dataAlteracao)
select dis_id_novo, tds_id, dis_codigo, dis_nome, dis_nomeAbreviado, dis_cargaHorariaTeorica, 1, GETDATE(), GETDATE()
  from #TB_DISCIPL 

if @@ERROR <> 0
begin
   PRINT 'Erro na criacao de disciplinas'
   ROLLBACK
   SET IDENTITY_INSERT ACA_Disciplina OFF
   RETURN
end;

SET IDENTITY_INSERT ACA_Disciplina OFF

insert into ACA_CurriculoDisciplina
       (cur_id, crr_id, crp_id, dis_id, crd_tipo, crd_situacao, crd_dataCriacao, crd_dataAlteracao)
select cur_id, 1 as crr_id, crp_id, dis_id_novo, crd_tipo, 1 as crd_situacao, GETDATE(), GETDATE()
  from #TB_DISCIPL
 order by cur_id, dis_id

if @@ERROR <> 0
begin
   PRINT 'Erro na criacao de disciplinas para os novos curriculos'
   ROLLBACK
   RETURN
end;

update ACA_CurriculoDisciplina set crd_situacao = 3, crd_dataAlteracao = GETDATE()
  from ACA_CurriculoDisciplina
	   inner join ACA_Disciplina dis on dis.dis_id = ACA_CurriculoDisciplina.dis_id and dis.dis_situacao = 3
 where crd_situacao = 1
 
--select cur_id, COUNT(*) from ACA_CurriculoDisciplina where crd_situacao = 1 group by cur_id order by 1
--select * from Manutencao..DEPARA_CURSOS_DIVIDIDOS order by cur_id
--select * from ACA_Curso where cur_id in (select cur_id from Manutencao..DEPARA_CURSOS_DIVIDIDOS)

update Manutencao..DEPARA_CURSOS_DIVIDIDOS set cur_id = cur_id + 22 where cur_id in (select cur_id from ACA_Curso where cur_nome like '2022%')

COMMIT


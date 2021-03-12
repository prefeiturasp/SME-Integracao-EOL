use [GestaoPedagogica]
go

SET XACT_ABORT OFF
BEGIN TRAN --rollback

SET IDENTITY_INSERT ACA_Curso ON 
 Insert into  GestaoPedagogica..ACA_CURSO 
    (cur_id, ent_id                                , cur_padrao, tne_id, tme_id, cur_codigo, cur_nome                         , cur_nome_abreviado, cur_concluiNivelEnsino, cur_exclusivoDeficiente, tne_idProximo, cur_vigenciaInicio, cur_vigenciaFim, cur_efetivacaoSemestral, cur_conflitoTurnoSR, cur_situacao, cur_dataCriacao, cur_dataAlteracao, cur_cargaHoraria) values 
	(   145, '6CF424DC-8EC3-E011-9B36-00155D033206',   0       ,   3   ,   2   ,  17       ,  '2021 - Ensino Médio Especial'  , 'ESPEC ENS MEDIO' ,        null           ,        1               ,    null      ,   '2021-01-01'    , null           ,    0                   ,   null             ,     1       ,   GETDATE()    ,    GETDATE()     ,     null  ) 

	if @@ERROR <> 0
begin
   PRINT 'Erro na criacao dos cursos'
   ROLLBACK
   SET IDENTITY_INSERT ACA_Curso OFF
   RETURN
end

commit
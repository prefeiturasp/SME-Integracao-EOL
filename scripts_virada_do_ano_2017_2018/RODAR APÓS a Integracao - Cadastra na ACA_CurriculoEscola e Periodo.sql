USE GestaoPedagogica
GO

UPDATE ACA_CurriculoEscola set ces_vigenciaFim = '2017-12-31' where ces_vigenciaFim is null and ces_situacao <> 3

insert into ACA_CurriculoEscola
select distinct cur_id, crr_id, tur.esc_id, uni_id, 1 as ces_id, '2018-01-01' as ces_vigenciaInicio,
       cast(null as date) as ces_vigenciafim, 1 as ces_situacao, GETDATE() as ces_DataCriacao,
       GETDATE() as ces_DataAlteracao, 1 as vis_id
  from TUR_Turma tur
       inner join TUR_TurmaCurriculo tcr
       on tur.tur_id = tcr.tur_id and tcr.tcr_situacao <> 3
       inner join ESC_Escola esc
       on tur.esc_id = esc.esc_id
       inner join ACA_CalendarioAnual cal
       on tur.cal_id = cal.cal_id
 where tur.tur_situacao <> 3
   and tcr.tcr_situacao <> 3
   and esc.esc_situacao <> 3
   and cal.cal_situacao <> 3
   and cal.cal_ano = 2018
   and cur_id not in (select cur_id from ACA_CurriculoEscola ces
                       where ces.cur_id = tcr.cur_id
                         and ces.crr_id = tcr.crr_id
                         and ces.esc_id = tur.esc_id
                         and ces.uni_id = tur.uni_id)
 
 insert into ACA_CurriculoEscolaPeriodo
select distinct ces.cur_id, ces.crr_id, ces.esc_id, ces.uni_id, ces.ces_id, tcr.crp_id, ces_situacao
  from TUR_Turma tur
       inner join TUR_TurmaCurriculo tcr
       on tur.tur_id = tcr.tur_id and tcr.tcr_situacao <> 3
       inner join ESC_Escola esc
       on tur.esc_id = esc.esc_id
       inner join ACA_CalendarioAnual cal
       on tur.cal_id = cal.cal_id
       inner join ACA_CurriculoEscola  ces
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
   and ces.cur_id not in (select cur_id from ACA_CurriculoEscolaPeriodo cep
                           where cep.cur_id = ces.cur_id
                             and cep.crr_id = ces.crr_id
                             and cep.esc_id = ces.esc_id
                             and cep.uni_id = ces.uni_id
                             and cep.ces_id = ces.ces_id
                             and cep.crp_id = tcr.crp_id)

--update ACA_CurriculoEscola set ces_vigenciaFim = '2016-12-31' 
-- where ces_vigenciaInicio < '2017-01-01' and ces_situacao = 1 and ces_vigenciaFim is null
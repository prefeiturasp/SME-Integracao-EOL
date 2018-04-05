USE GestaoPedagogica
GO

SET XACT_ABORT ON
BEGIN TRAN --rollback

--update para turmas de EJA que vieram do EOL como PRIMEIRO SEMESTRE e depois de cadastradas no SGP sofreram alteração de semestre no EOL,
--a integração não pode colocar na sua regra essa alteração pois precisa de uma análise turma a turma 
--pra ver se não vai afetar outros dados que dependem da turma e calendario e etc
update tur 
   set cal_id = 10, tur_dataAlteracao = GETDATE()
--select *
  from TUR_Turma tur
	   inner join TUR_TurmaCurriculo tcr on tcr.tur_id = tur.tur_id
	   inner join ACA_Curso cur on cur.cur_id = tcr.cur_id
	   INNER JOIN ACA_CalendarioAnual cal ON cal.cal_id = tur.cal_id
	   inner join BD_PRODAM..v_turma_mstech tm on tm.cd_turma_escola = tur.tur_codigoEOL
 where tur.cal_id = 9
   AND (tm.dc_etapa_ensino like '%EJA%' and tm.dc_tipo_periodicidade = 'SEMESTRAL INICIO NO 2º SEMESTRE' and cal.cal_id <> 10)


--Após alterar o calendário, precisa refazer a tabela MTR_MatriculasBoletim e MTR_MastriculasBoletimDisciplina 
--pra esses alunos que estao matriculados nessas 10 turmas

-------------------------------------ATUALIZACAO MTR_MatriculasBoletim -----------------------------------
USE Manutencao
GO

    DELETE MTB
      FROM GestaoPedagogica..MTR_MatriculasBoletim MTB
     WHERE MTB.cal_ano = (SELECT CAST(VALOR as int) FROM _PARAMETROS WHERE CHAVE = 'ANO_BASE')
	   and MTB.alu_id in (select distinct mtu.alu_id from GestaoPedagogica..MTR_MatriculaTurma mtu
						  inner join GestaoPedagogica..TUR_Turma tur on tur.tur_id = mtu.tur_id 
								 and tur.tur_id in (188101,188099,188100,188055,188228,188344,188343,188229,188202,188199)
						   where mtu.mtu_situacao <> 3)
		   
	CREATE TABLE #INSERIR (alu_id int, mtu_id int, controle int)

	 while exists (select mtu.alu_id, mtu.mtu_id
					 from GE_ACA_AlunoCurriculo alc
						  inner join GE_MTR_MatriculaTurma mtu on mtu.alu_id = alc.alu_id and mtu.alc_id = alc.alc_id
						  inner join GE_TUR_Turma tur on tur.tur_id = mtu.tur_id and tur.cal_id > 6
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
					inner join GE_TUR_Turma tur on tur.tur_id = mtu.tur_id and tur.cal_id > 6
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

	------------------------------------ATUALIZACAO MTR_MatriculasBoletimDisciplina -----------------------------------
     
    DELETE MTB
      FROM GestaoPedagogica..MTR_MatriculasBoletimDisciplina MTB
     WHERE MTB.cal_ano = (SELECT CAST(VALOR as int) FROM _PARAMETROS WHERE CHAVE = 'ANO_BASE')
	   and MTB.alu_id in (select distinct mtu.alu_id from GestaoPedagogica..MTR_MatriculaTurma mtu
						  inner join GestaoPedagogica..TUR_Turma tur on tur.tur_id = mtu.tur_id 
								 and tur.tur_id in (188101,188099,188100,188055,188228,188344,188343,188229,188202,188199)
						   where mtu.mtu_situacao <> 3)

	 CREATE TABLE #INSERIR2 (alu_id int, mtu_id int, controle int)

	 while exists (select mtu.alu_id, mtu.mtu_id
					 from GestaoPedagogica..ACA_AlunoCurriculo alc
						  inner join GestaoPedagogica..MTR_MatriculaTurma mtu on mtu.alu_id = alc.alu_id and mtu.alc_id = alc.alc_id
						  inner join GestaoPedagogica..TUR_Turma tur on tur.tur_id = mtu.tur_id and tur.cal_id > 6
						  inner join GestaoPedagogica..MTR_MatriculasBoletim mb 
								  on mb.alu_id = mtu.alu_id and mb.mtu_origemDados = mtu.mtu_id
							     and mb.mtu_id is not null
						  INNER JOIN GestaoPedagogica..MTR_MatriculaTurma mtu2 on mtu2.alu_id = alc.alu_id and mtu2.mtu_id = mb.mtu_id
																			  and mtu2.cur_id not in (63,64) --cursos sem TUD E MTD
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
				    inner join GestaoPedagogica..TUR_Turma tur on tur.tur_id = mtu.tur_id and tur.cal_id > 6
				    inner join GestaoPedagogica..MTR_MatriculasBoletim mb 
							on mb.alu_id = mtu.alu_id and mb.mtu_origemDados = mtu.mtu_id
						   and mb.mtu_id is not null
					INNER JOIN GestaoPedagogica..MTR_MatriculaTurma mtu2 on mtu2.alu_id = alc.alu_id and mtu2.mtu_id = mb.mtu_id
																			  and mtu2.cur_id not in (63,64) --cursos sem TUD E MTD
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
						inner join GestaoPedagogica..TUR_Turma tur on tur.tur_id = mtu.tur_id and tur.cal_id > 6
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

COMMIT TRANSACTION
SET XACT_ABORT ON
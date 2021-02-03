USE [Manutencao]
GO
/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_Carrega_DEPARAS]    Script Date: 20/01/2021 18:31:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[STP_QuadroHorario_Carrega_DEPARAS]
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
				   or (cur.cur_id = 109 and _out.crr_nome = 'Ensino Fundamental Especial de 9 Anos')
				   or (cur.cur_id = 111 and _out.crr_nome = 'Ensino Médio Regular')
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
	
	
	UPDATE #curCurriculoPeriodo SET cur_id = 121 where cur_id = 41
		
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
		        case when crr.cur_id = 110 then 249 + crp_ordem
				else 
						case crp_ordem 
						  WHEN 1 THEN 84 WHEN 2 THEN 86 WHEN 3 THEN 88 WHEN 4 THEN 235 WHEN 5 THEN 236
						  WHEN 6 THEN 232 WHEN 7 THEN 237 WHEN 8 THEN 238 WHEN 9 THEN 239 END
				 end 
	  FROM GE_ACA_Curriculo crr
		   INNER JOIN DEPARA_CURSOS_DIVIDIDOS div ON div.cur_id = crr.cur_id
		   , (select distinct crp_ordem from #curCurriculoPeriodo where crp_ordem <= 9) as crp 
	 where div.cur_id not in (109,111,112,119,120,121,41,42,123,124)
 
	-- Marca como concluído o nivel de ensino quando for o último nível do curso
    UPDATE #curCurriculoPeriodo SET crp_concluiNivelEnsino = 1
	  FROM #curCurriculoPeriodo a
	WHERE crp_ordem = (SELECT MAX(crp_ordem) FROM #curCurriculoPeriodo b WHERE a.cur_id = b.cur_id)
	
	delete from #curCurriculoPeriodo where cur_id in (105,106,107,108)
	
	INSERT INTO #curCurriculoPeriodo
	values (1, 'Fundamental I Libras', 13, 'Ensino Fundamental 9 Anos', 2, 5, 'CICLO I', 0, 1, 112, 1, 1, 1, 0, 226)
		  ,(1, 'Fundamental I Libras', 13, 'Ensino Fundamental 9 Anos', 2, 5, 'CICLO I', 0, 1, 113, 1, 1, 1, 0, 226)
		,(1, '1ª EJA Modular',  3, 'Educação de Jovens e Adultos (EJA - Modular)', 2, 5, 'CICLO I', 0, 1, 42, 1, 4, 1, 0, 212)
		,(2, '2ª EJA Modular',  3, 'Educação de Jovens e Adultos (EJA - Modular)', 2, 5, 'CICLO I', 0, 1, 42, 1, 4, 2, 0, 213)
		,(3, '3ª EJA Modular',  3, 'Educação de Jovens e Adultos (EJA - Modular)', 2, 5, 'CICLO II', 0, 1, 42, 1, 4, 3, 0, 210)
		,(4, '4ª EJA Modular',  3, 'Educação de Jovens e Adultos (EJA - Modular)', 2, 5, 'CICLO II', 0, 1, 42, 1, 4, 4, 1, 211)	
		
		,(1, 'EJA ALFABETIZACAO I',	3, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO I', 0, 1, 119, 1, 8, 1, 0, 274)
		,(2, 'EJA ALFABETIZACAO II',3, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO I', 0, 1, 119, 1, 8, 2, 0, 275)	
		,(3, 'EJA BASICA I',		3, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO I', 0, 1, 119, 1, 8, 3, 0, 278)	
		,(4, 'EJA BASICA II',		3, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO I', 0, 1, 119, 1, 8, 4, 0, 280)	
		,(5, 'EJA COMPLEMENTAR I',  3, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO II', 0, 1, 119, 1, 8, 5, 0, 246)	
		,(6, 'EJA COMPLEMENTAR II', 3, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO II', 0, 1, 119, 1, 8, 6, 0, 247)	
		,(7, 'EJA FINAL I',			3, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO II', 0, 1, 119, 1, 8, 7, 0, 248)	
		,(8, 'EJA FINAL II',		3, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO II', 0, 1, 119, 1, 8, 8, 1, 249)	
		
		,(1, 'EJA ALFABETIZACAO I',	3, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO I', 0, 1, 119, 1, 8, 1, 0, 276)
		,(2, 'EJA ALFABETIZACAO II',3, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO I', 0, 1, 119, 1, 8, 2, 0, 277)	
		,(3, 'EJA BASICA I',		3, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO I', 0, 1, 119, 1, 8, 3, 0, 279)	
		,(4, 'EJA BASICA II',		3, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO I', 0, 1, 119, 1, 8, 4, 0, 281)	
		,(5, 'EJA COMPLEMENTAR I',  3, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO II', 0, 1, 119, 1, 8, 5, 0, 265)	
		,(6, 'EJA COMPLEMENTAR II', 3, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO II', 0, 1, 119, 1, 8, 6, 0, 266)	
		,(7, 'EJA FINAL I',			3, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO II', 0, 1, 119, 1, 8, 7, 0, 267)	
		,(8, 'EJA FINAL II',		3, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO II', 0, 1, 119, 1, 8, 8, 1, 268)	
		
		,(3, 'EJA BASICA I',		11, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO I', 0, 1, 120, 1, 8, 3, 0, 292)	
		,(4, 'EJA BASICA II',		11, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO I', 0, 1, 120, 1, 8, 4, 0, 294)	
		,(4, 'EJA BASICA II',		11, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO I', 0, 1, 120, 1, 8, 4, 0, 295)	
		,(5, 'EJA COMPLEMENTAR I',  11, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO II', 0, 1, 120, 1, 8, 5, 0, 261)	
		,(6, 'EJA COMPLEMENTAR II', 11, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO II', 0, 1, 120, 1, 8, 6, 0, 270)	
		,(6, 'EJA COMPLEMENTAR II', 11, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO II', 0, 1, 120, 1, 8, 6, 0, 262)	
		,(7, 'EJA FINAL I',			11, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO II', 0, 1, 120, 1, 8, 7, 0, 263)	
		,(8, 'EJA FINAL II',		11, 'EJA - Educação de Jovens e Adultos', 2, 5, 'CICLO II', 0, 1, 120, 1, 8, 8, 1, 272)	
		
		,(5, 'Infantil I'   ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 105, 1, 6, 5, 0, 23)	
		,(5, 'Infantil I'   ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 105, 1, 6, 5, 0, 24)	
		,(5, 'Infantil I'   ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 105, 1, 6, 5, 0, 225)
		,(6, 'Infantil II'  ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 105, 1, 6, 6, 1, 118)
		,(6, 'Infantil II'  ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 105, 1, 6, 6, 1, 25)	
		,(6, 'Infantil II'  ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 105, 1, 6, 6, 1, 26)	
		
		,(5, 'Infantil I'   ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 106, 1, 6, 5, 0, 23)	
		,(5, 'Infantil I'   ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 106, 1, 6, 5, 0, 24)	
		,(5, 'Infantil I'   ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 106, 1, 6, 5, 0, 225)
		,(6, 'Infantil II'  ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 106, 1, 6, 6, 1, 118)
		,(6, 'Infantil II'  ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 106, 1, 6, 6, 1, 25)	
		,(6, 'Infantil II'  ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 106, 1, 6, 6, 1, 26)	
		
		,(4, 'Mini grupo II',  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 107, 1, 6, 4, 0, 28)	
		,(4, 'Mini grupo II',  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 107, 1, 6, 4, 0, 29)
		,(5, 'Infantil I'   ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 107, 1, 6, 5, 0, 23)	
		,(5, 'Infantil I'   ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 107, 1, 6, 5, 0, 24)
		,(5, 'Infantil I'   ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 107, 1, 6, 5, 0, 225)
		,(6, 'Infantil II'  ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 107, 1, 6, 6, 1, 118)
		,(6, 'Infantil II'  ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 107, 1, 6, 6, 1, 25)	
		,(6, 'Infantil II'  ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 107, 1, 6, 6, 1, 26)	
		
		,(1, 'Berçario I'   ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 108, 1, 6, 1, 0, 1)
		,(1, 'Berçario I'   ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 108, 1, 6, 1, 0, 3)
		,(2, 'Berçario II'  ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 108, 1, 6, 2, 0, 4)
		,(2, 'Berçario II'  ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 108, 1, 6, 2, 0, 6)
		,(3, 'Mini grupo I' ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 108, 1, 6, 3, 0, 11)
		,(3, 'Mini grupo I' ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 108, 1, 6, 3, 0, 27)
		,(4, 'Mini grupo II',  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 108, 1, 6, 4, 0, 28)
		,(4, 'Mini grupo II',  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 108, 1, 6, 4, 0, 29)
		,(5, 'Infantil I'   ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 108, 1, 6, 5, 0, 23)	
		,(5, 'Infantil I'   ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 108, 1, 6, 5, 0, 24)
		,(5, 'Infantil I'   ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 108, 1, 6, 5, 0, 225)
		,(6, 'Infantil II'  ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 108, 1, 6, 6, 1, 118)		
		,(6, 'Infantil II'  ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 108, 1, 6, 6, 1, 25)	
		,(6, 'Infantil II'  ,  1, 'Ensino infantil', 2, 5, 'Infantil', 0, 1, 108, 1, 6, 6, 1, 26)
		
		,(1, '1º Modulo'   , 14, 'Técnico Médio', 2, 5, 'SEM CICLO', 0, 1, 123, 1, 3, 1, 0, 194)
		,(2, '2º Modulo'   , 14, 'Técnico Médio', 2, 5, 'SEM CICLO', 0, 1, 123, 1, 3, 2, 0, 196)
		,(3, '3º Modulo'   , 14, 'Técnico Médio', 2, 5, 'SEM CICLO', 0, 1, 123, 1, 3, 3, 1, 198)

		,(1, '1º Modulo'   , 14, 'Técnico Médio', 2, 5, 'SEM CICLO', 0, 1, 123, 1, 3, 1, 0, 282)
		,(2, '2º Modulo'   , 14, 'Técnico Médio', 2, 5, 'SEM CICLO', 0, 1, 123, 1, 3, 2, 0, 284)
		,(3, '3º Modulo'   , 14, 'Técnico Médio', 2, 5, 'SEM CICLO', 0, 1, 123, 1, 3, 3, 1, 286)
		
		,(1, '1º Modulo'   , 14, 'Técnico Médio', 2, 5, 'SEM CICLO', 0, 1, 123, 1, 3, 1, 0, 283)
		,(2, '2º Modulo'   , 14, 'Técnico Médio', 2, 5, 'SEM CICLO', 0, 1, 123, 1, 3, 2, 0, 285)
		,(3, '3º Modulo'   , 14, 'Técnico Médio', 2, 5, 'SEM CICLO', 0, 1, 123, 1, 3, 3, 1, 287)

		,(1, '1º Ano'   ,  9, 'Ensino Médio Magistério', 2, 5, 'SEM CICLO', 0, 1, 124, 1, 4, 1, 0, 101)
		,(2, '2º Ano'   ,  9, 'Ensino Médio Magistério', 2, 5, 'SEM CICLO', 0, 1, 124, 1, 4, 2, 0, 103)
		,(3, '3º Ano'   ,  9, 'Ensino Médio Magistério', 2, 5, 'SEM CICLO', 0, 1, 124, 1, 4, 3, 0, 105)
		,(4, '4º Ano'	,  9, 'Ensino Médio Magistério', 2, 5, 'SEM CICLO', 0, 1, 124, 1, 4, 4, 1, 107)	


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
					  and depSer.cur_id in (116,109,111,112,119,120,121,41,42,108)
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
					  and depSer.cur_id in (123,124)
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
	   SET cur_id = 115, crr_id = 1, crp_id = dep.crp_id
	  FROM DEPARA_CURSO_GRADES
		   INNER JOIN DEPARA_SERIE dep ON dep.cd_serie_ensino = DEPARA_CURSO_GRADES.cd_serie_ensino
	 WHERE listaDisciplinas like '%territ%'
	   AND cd_etapa_ensino = 5 --adicionado para tirar o caso da grade 4285 q é das turmas SA e SB mas tem territórios também

	UPDATE DEPARA_CURSO_GRADES 
	   SET cur_id = CASE WHEN soma_horas > 40 and cd_etapa_ensino = 5 THEN 118
					 WHEN soma_horas between 32 and 40 and cd_etapa_ensino = 5 and dep.crp_ordem <= 5 THEN 117
					 WHEN soma_horas between 30 and 40 and cd_etapa_ensino = 5 and dep.crp_ordem >= 6 THEN 117
					 WHEN soma_horas < 32 and cd_etapa_ensino = 5 and dep.crp_ordem <= 5 THEN 116
					 WHEN soma_horas < 30 and cd_etapa_ensino = 5 and dep.crp_ordem >= 6 THEN 116
					 WHEN soma_horas >= 31 and cd_grade not in (3541,3542,4285) and cd_etapa_ensino = 13 and dep.crp_ordem <= 6 THEN 110
					 WHEN soma_horas >= 30 and cd_grade not in (3541,3542,4285) and cd_etapa_ensino = 13 and dep.crp_ordem >= 7 THEN 110
					 WHEN soma_horas <= 30 and cd_grade not in (3541,3542,4285) and cd_etapa_ensino = 13 and dep.crp_ordem <= 6 THEN 109
					 WHEN soma_horas <= 29 and cd_grade not in (3541,3542,4285) and cd_etapa_ensino = 13 and dep.crp_ordem >= 7 THEN 109
					 WHEN soma_horas >= 51 and cd_etapa_ensino = 1 THEN 108
					 WHEN soma_horas between 37 and 50 and cd_etapa_ensino = 1 THEN 107
					 WHEN soma_horas between 26 and 36 and cd_etapa_ensino = 1 THEN 106
					 WHEN soma_horas <= 25 and cd_etapa_ensino = 1 THEN 105
					 WHEN cd_etapa_ensino = 6 THEN 111
					 WHEN DEPARA_CURSO_GRADES.cd_serie_ensino = 226 and cd_grade not in (4285) THEN 112
					 WHEN DEPARA_CURSO_GRADES.cd_serie_ensino = 226 and cd_grade = 4285 THEN 113
				 END, 
		   crr_id = 1, crp_id = dep.crp_id
	  FROM DEPARA_CURSO_GRADES
		   INNER JOIN DEPARA_SERIE dep ON dep.cd_serie_ensino = DEPARA_CURSO_GRADES.cd_serie_ensino
	 WHERE dep.cur_id in (select cur_id from DEPARA_CURSOS_DIVIDIDOS) 
	   and DEPARA_CURSO_GRADES.cur_id is null
	   and dep.cur_id not in (119,120,121,41,42) -- já não entrariam por causa da DEPARA_CURSOS_DIVIDIDOS mas só pra garantir
	
	UPDATE DEPARA_CURSO_GRADES 
	   SET cur_id = dep.cur_id, 
		   crr_id = 1, crp_id = dep.crp_id
	  FROM DEPARA_CURSO_GRADES
		   INNER JOIN DEPARA_SERIE dep ON dep.cd_serie_ensino = DEPARA_CURSO_GRADES.cd_serie_ensino
	 WHERE dep.cur_id in (119,120,121,41,42,123,124)
	   and DEPARA_CURSO_GRADES.cur_id is null
	
	-- COMPONENTE_CURRICULAR = 1112 está vindo do EOL com carga-horaria errada, por isso o acerto manual
	UPDATE DEPARA_CURSO_GRADES 
	   SET cur_id = 116,
		   crr_id = 1, crp_id = dep.crp_id
	 FROM DEPARA_CURSO_GRADES
		   INNER JOIN DEPARA_SERIE dep ON dep.cd_serie_ensino = DEPARA_CURSO_GRADES.cd_serie_ensino
		   INNER JOIN tmp_grade_mstech gra ON gra.cd_grade = DEPARA_CURSO_GRADES.cd_grade
	 WHERE dep.cur_id in (116,117,118)   
	   and exists (select tg.cd_grade from tmp_grade_componente_mstech tg 
					where tg.cd_grade = gra.cd_grade and tg.cd_componente_curricular = 1112)   

     UPDATE DEPARA_CURSO_GRADES
		SET fl_edFisica = 0 
	  WHERE cur_id in (110,112,113,115,117,118,41,42,105,106,107,108,123,124)
	  
	 UPDATE DEPARA_CURSO_GRADES
		SET fl_edFisica = 0 
	  WHERE cur_id = 116 and crp_id < 6
/**************************************FINAL DEPARAS_SERIE_e_GRADES*******************************************/
					
END

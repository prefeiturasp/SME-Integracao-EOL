USE [Manutencao]
GO
/****** Object:  StoredProcedure [dbo].[STP_QuadroHorario_ACA_CalendarioPeriodo_IMPORT]    Script Date: 20/01/2021 18:26:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[STP_QuadroHorario_ACA_CalendarioPeriodo_IMPORT]  
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

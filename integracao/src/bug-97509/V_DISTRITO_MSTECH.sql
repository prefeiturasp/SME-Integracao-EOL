/****** Script do comando SelectTopNRows de SSMS  ******/
SELECT TOP (1000) [cd_distrito_mec]
      ,[cd_municipio]
      ,[nm_distrito_mec]
      ,[dt_atualizacao_tabela]
      ,[cd_operador]
      ,[dt_cancelamento]
      ,[dc_zona_distrito]
  FROM [BD_PRODAM_MSTECH].[dbo].[v_distrito_mec_MSTECH]

  ALTER TABLE [BD_PRODAM].[dbo].[v_distrito_mec_MSTECH] 
  DROP COLUMN DC_ZONA_DISTRITO

   [cd_distrito_mec]
      ,[cd_municipio]
      ,[nm_distrito_mec]
      ,[dt_atualizacao_tabela]
      ,[cd_operador]
      ,[dt_cancelamento]
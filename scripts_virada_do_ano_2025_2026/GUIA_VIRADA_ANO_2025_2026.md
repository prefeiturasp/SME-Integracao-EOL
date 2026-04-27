# Guia de Virada de Ano 2025-2026

## 📋 Visão Geral

Este documento descreve as alterações necessárias para criar os scripts de virada de ano letivo 2025-2026 (ano letivo 2026), baseado nos scripts da virada 2024-2025.

### ✅ Contexto

- **Ano letivo atual:** 2025 (virada já executada)
- **Próximo ano letivo:** 2026 (virada a ser criada)
- **Base para cópia:** `scripts_virada_do_ano_2024_2025/`
- **Pasta a criar:** `scripts_virada_do_ano_2025_2026/`
- **Principais alterações:** Substituir referências de 2025 → 2026 e 2024 → 2025

---

## 📁 Estrutura de Pastas

### Criar a pasta:

```
scripts_virada_do_ano_2025_2026/
```

### Arquivos necessários:

#### **Padrão Atual (2022-2023 em diante):**

1. ✅ `script de Calendario.sql`
2. ✅ `script de curso.sql`
3. ✅ `ManutProcedures.sql`
4. ✅ `RODAR APÓS a Integracao - Cadastra na ACA_CurriculoEscola e Periodo.sql`
5. ✅ Subpasta `Ajustes e Correções/` (se necessário)

#### **Padrão Antigo (até 2021-2022):**

- ❌ `01 - Cria novos cursos - XXXX.sql` (descontinuado)
- ❌ `02 - Inicio ano letivo XXXX e correção de grades.sql` (descontinuado)

---

## 🔄 Alterações Obrigatórias

### 1. **script de Calendario.sql**

Este script cria os calendários acadêmicos para o novo ano letivo.

#### 🎯 Alteração 1: Parâmetro ANO_BASE

**Alterar de:**

```sql
update Manutencao.._PARAMETROS set VALOR = '2025' where chave = 'ANO_BASE'
```

**Para:**

```sql
update Manutencao.._PARAMETROS set VALOR = '2026' where chave = 'ANO_BASE'
```

#### 🎯 Alteração 2: Parâmetro DATA_CORTE

**Alterar de:**

```sql
update Manutencao.._PARAMETROS set VALOR = '2025-02-04' where chave = 'DATA_CORTE'
```

**Para:**

```sql
update Manutencao.._PARAMETROS set VALOR = '2026-02-04' where chave = 'DATA_CORTE'
```

**Nota:** Ajustar a data conforme necessidade específica do ano letivo.

#### 🎯 Alteração 3: Ano do Calendário

**Alterar de:**

```sql
select cal_id + 5, ent_id, 1 as cal_padrao, 2025 as cal_ano, replace(cal_descricao,'2024','2025'),
```

**Para:**

```sql
select cal_id + 5, ent_id, 1 as cal_padrao, 2026 as cal_ano, replace(cal_descricao,'2025','2026'),
```

#### 🎯 Alteração 4: Filtro de Descrição do Calendário

**Alterar de:**

```sql
where cal_descricao like '%2024%'
```

**Para:**

```sql
where cal_descricao like '%2025%'
```

#### 🎯 Alteração 5: Data de Encerramento de Turmas

**Alterar de:**

```sql
update TUR_Turma set tur_dataEncerramento = '2024-12-22', tur_situacao = 5
```

**Para:**

```sql
update TUR_Turma set tur_dataEncerramento = '2025-12-22', tur_situacao = 5
```

**Contexto completo:**

```sql
update TUR_Turma set tur_dataEncerramento = '2025-12-22', tur_situacao = 5, tur_dataAlteracao = GETDATE()
 where cal_id in (32,33,34,35,36) and tur_situacao = 1
```

**Nota:** Validar os IDs de calendário (cal_id) conforme ambiente.

---

### 2. **script de curso.sql**

Este script cria os cursos para o novo ano letivo baseado nos cursos do ano anterior.

#### 🎯 Alteração 1: Replace no Nome do Curso

**Alterar de:**

```sql
replace(cur_nome,'2024','2025')
```

**Para:**

```sql
replace(cur_nome,'2025','2026')
```

**Contexto completo:**

```sql
select cur_id + 22 as cur_id , ent_id, cur_padrao, tne_id, tme_id, cur_codigo,
       replace(cur_nome,'2025','2026'), cur_nome_abreviado, cur_exclusivoDeficiente,
       '2026-01-01' as cur_vigenciaInicio, cur_efetivacaoSemestral, cur_situacao, GETDATE(), GETDATE()
```

#### 🎯 Alteração 2: Vigência de Início do Curso

**Alterar de:**

```sql
'2025-01-01' as cur_vigenciaInicio
```

**Para:**

```sql
'2026-01-01' as cur_vigenciaInicio
```

#### 🎯 Alteração 3: Filtros de Curso (3 ocorrências)

**Todas as ocorrências:**

**Alterar de:**

```sql
where cur_nome like '2024%'
```

**Para:**

```sql
where cur_nome like '2025%'
```

**Localizações:**

1. Na criação de cursos (ACA_Curso)
2. Na criação de currículos (ACA_Curriculo)
3. Na criação de períodos (ACA_CurriculoPeriodo)
4. Na criação de disciplinas (#TB_DISCIPL)

**Exemplo de contexto:**

```sql
from ACA_Curso
where cur_nome like '2025%'
```

```sql
where cur_id in (select cur_id from ACA_Curso where cur_nome like '2025%')
```

#### ⚠️ Atenção Especial

- **Incremento de IDs:** O script usa `cur_id + 22` - verificar se esse valor ainda é apropriado
- **Disciplinas:** Valida e cria novas disciplinas automaticamente
- **Triggers:** Desabilita e habilita triggers durante inserção

---

### 3. **ManutProcedures.sql**

Este script atualiza as stored procedures do sistema.

#### 🎯 Alterações de Ano Letivo

**Localização:** Múltiplas ocorrências ao longo do arquivo

**Alterar de:**

```sql
where an_letivo = 2025
```

**Para:**

```sql
where an_letivo = 2026
```

---

#### 🎯 Alterações de Data de Vigência de Início

**Localização:** Procedures que inserem em `GE_ACA_CurriculoEscola`

**Alterar de:**

```sql
'2025-01-01' as ces_vigenciaInicio
```

**Para:**

```sql
'2026-01-01' as ces_vigenciaInicio
```

**Contexto do código:**

```sql
insert into GE_ACA_CurriculoEscola
select distinct cur_id, crr_id, tur.esc_id, uni_id, 1 as ces_id, '2026-01-01' as ces_vigenciaInicio,
       cast(null as date) as ces_vigenciafim, 1 as ces_situacao, GETDATE() as ces_DataCriacao,
       GETDATE() as ces_DataAlteracao, 1 as vis_id
```

---

#### 🎯 Alterações de Data de Fim de Vigência

**Localização:** Procedures relacionadas a `TUR_TurmaDisciplinaTerritorio`

**Alterar de:**

```sql
'2024-12-20' as tte_vigenciaFim
```

**Para:**

```sql
'2025-12-20' as tte_vigenciaFim
```

**Contexto do código:**

```sql
insert into GestaoPedagogica..TUR_TurmaDisciplinaTerritorio
(tud_idExperiencia, tud_idTerritorio, tte_vigenciaInicio, tte_vigenciaFim, tte_situacao, tte_dataCriacao, tte_dataAlteracao)
select tudExp.tud_id as tud_idExperiencia, tudTer.tud_id as tud_idTerritorio,
       GETDATE() as tte_vigenciaInicio, '2025-12-20' as tte_vigenciaFim,
       1 as tte_situacao, GETDATE() as tte_dataCriacao, GETDATE() as tte_dataAlteracao
```

---

#### 🎯 Alterações de Ano do Calendário

**Localização:** JOINs com tabela `GE_ACA_CalendarioAnual`

**Alterar de:**

```sql
and cal.cal_ano = 2025
```

**Para:**

```sql
and cal.cal_ano = 2026
```

**Contexto do código:**

```sql
inner join GE_ACA_CalendarioAnual cal
on tur.cal_id = cal.cal_id
and cal.cal_situacao <> 3
and cal.cal_ano = 2026
```

---

#### 🎯 Comentários de Data (Opcional)

**Localização:** Comentários de alteração no código

**Alterar de:**

```sql
-- 16/03/2025  **
```

**Para:**

```sql
-- [DATA_ATUAL]/2026  **
```

---

### 4. **RODAR APÓS a Integracao - Cadastra na ACA_CurriculoEscola e Periodo.sql**

Ajustar inserções nas tabelas de currículo escolar.

**Principais alterações:**

- Referenciar ano letivo 2026
- Ajustar datas de vigência
- Validar relacionamentos entre cursos e escolas

---

## � Validação e Ajuste de IDs Hardcoded

> **⚠️ CRÍTICO:** Os scripts contêm valores de IDs que podem precisar ser ajustados conforme o ambiente atual do banco de dados.

### 1. **Incremento de IDs de Cursos: `cur_id + 22`**

**Localização:** `script de curso.sql`

**Contexto:**

```sql
select cur_id + 22 as cur_id , ent_id, cur_padrao, tne_id, tme_id, cur_codigo,
       replace(cur_nome,'2025','2026'), ...
  from ACA_Curso
 where cur_nome like '2025%'
```

**Validação Necessária:**

Execute esta query para verificar se o incremento de `+22` é adequado:

```sql
-- Verificar quantidade atual de cursos
SELECT COUNT(*) AS 'Total Cursos 2025'
  FROM ACA_Curso
 WHERE cur_nome LIKE '2025%'

-- Verificar maior cur_id atual
SELECT MAX(cur_id) AS 'Maior cur_id Atual'
  FROM ACA_Curso

-- Verificar se cur_id + 22 causará conflito
SELECT cur_id, cur_id + 22 AS 'Novo cur_id', cur_nome
  FROM ACA_Curso
 WHERE cur_nome LIKE '2025%'
 ORDER BY cur_id

-- Verificar se os novos IDs já existem
SELECT COUNT(*) AS 'IDs que já existem'
  FROM ACA_Curso c1
 WHERE EXISTS (SELECT 1 FROM ACA_Curso c2
               WHERE c2.cur_id = c1.cur_id + 22
                 AND c1.cur_nome LIKE '2025%')
```

**Se necessário ajustar:**

Altere `cur_id + 22` para um valor que não cause conflito (ex: `cur_id + 25`, `cur_id + 30`).

---

### 2. **Incremento de IDs de Calendários: `cal_id + 5`**

**Localização:** `script de Calendario.sql`

**Contexto:**

```sql
select cal_id + 5, ent_id, 1 as cal_padrao, 2026 as cal_ano,
       replace(cal_descricao,'2025','2026'), ...
  from ACA_CalendarioAnual
 where cal_descricao like '%2025%'
```

**Validação Necessária:**

```sql
-- Verificar quantidade de calendários 2025
SELECT COUNT(*) AS 'Total Calendários 2025'
  FROM ACA_CalendarioAnual
 WHERE cal_descricao LIKE '%2025%'

-- Verificar maior cal_id atual
SELECT MAX(cal_id) AS 'Maior cal_id Atual'
  FROM ACA_CalendarioAnual

-- Verificar se cal_id + 5 causará conflito
SELECT cal_id, cal_id + 5 AS 'Novo cal_id', cal_descricao
  FROM ACA_CalendarioAnual
 WHERE cal_descricao LIKE '%2025%'
 ORDER BY cal_id

-- Verificar se os novos IDs já existem
SELECT COUNT(*) AS 'IDs que já existem'
  FROM ACA_CalendarioAnual c1
 WHERE EXISTS (SELECT 1 FROM ACA_CalendarioAnual c2
               WHERE c2.cal_id = c1.cal_id + 5
                 AND c1.cal_descricao LIKE '%2025%')
```

**Se necessário ajustar:**

Altere `cal_id + 5` para um valor adequado no script de Calendario.sql.

---

### 3. **IDs de Calendários para Copiar Períodos: `where cal_id >= 37`**

**Localização:** `script de Calendario.sql` (inserção em `ACA_CalendarioCurso` e `ACA_CalendarioPeriodo`)

**Contexto:**

```sql
insert into ACA_CalendarioCurso (cal_id, cur_id)
select cal_id + 5, cur_id + 22
  from ACA_CalendarioCurso
 where cal_id >= 37;
```

**Validação Necessária:**

```sql
-- Verificar quais são os cal_id dos calendários de 2025
SELECT cal_id, cal_ano, cal_descricao
  FROM ACA_CalendarioAnual
 WHERE cal_ano = 2025
 ORDER BY cal_id

-- Verificar relacionamentos existentes
SELECT cal_id, COUNT(*) AS 'Qtd Cursos Relacionados'
  FROM ACA_CalendarioCurso
 WHERE cal_id IN (SELECT cal_id FROM ACA_CalendarioAnual WHERE cal_ano = 2025)
 GROUP BY cal_id
 ORDER BY cal_id
```

**Ajuste Necessário:**

Substitua `where cal_id >= 37` pelo menor `cal_id` dos calendários de 2025:

```sql
where cal_id >= [MENOR_CAL_ID_2025]
```

**Exemplo:**

Se os calendários de 2025 tiverem `cal_id` = 42, 43, 44, 45, 46, altere para:

```sql
where cal_id >= 42
```

---

### 4. **IDs de Calendários para Encerrar Turmas: `where cal_id in (32,33,34,35,36)`**

**Localização:** `script de Calendario.sql` (atualização de `TUR_Turma`)

**Contexto:**

```sql
update TUR_Turma set tur_dataEncerramento = '2025-12-22', tur_situacao = 5, tur_dataAlteracao = GETDATE()
 where cal_id in (32,33,34,35,36) and tur_situacao = 1
```

**Validação Necessária:**

```sql
-- Identificar os cal_id dos calendários de 2025 (ano a ser encerrado)
SELECT cal_id, cal_ano, cal_descricao
  FROM ACA_CalendarioAnual
 WHERE cal_ano = 2025
 ORDER BY cal_id

-- Verificar turmas ativas nesses calendários
SELECT cal_id, COUNT(*) AS 'Turmas Ativas'
  FROM TUR_Turma
 WHERE cal_id IN (SELECT cal_id FROM ACA_CalendarioAnual WHERE cal_ano = 2025)
   AND tur_situacao = 1
 GROUP BY cal_id
 ORDER BY cal_id
```

**Ajuste Necessário:**

Substitua `(32,33,34,35,36)` pelos IDs reais dos calendários de 2025:

```sql
where cal_id in ([CAL_ID_1], [CAL_ID_2], [CAL_ID_3], ...)
```

**Exemplo:**

Se os calendários de 2025 forem 42, 43, 44, 45, 46:

```sql
where cal_id in (42,43,44,45,46)
```

---

### 5. **Tabela `Manutencao..DEPARA_CURSOS_DIVIDIDOS`**

**Localização:** `script de curso.sql` (final do script)

**Contexto:**

```sql
update Manutencao..DEPARA_CURSOS_DIVIDIDOS set cur_id = cur_id + 22
 where cur_id in (select cur_id from ACA_Curso where cur_nome like '2025%')
```

**Validação:**

```sql
-- Verificar se existem cursos divididos para 2025
SELECT * FROM Manutencao..DEPARA_CURSOS_DIVIDIDOS
 WHERE cur_id IN (SELECT cur_id FROM ACA_Curso WHERE cur_nome LIKE '2025%')
```

**Ajuste:**

Garantir que o incremento (`+22`) seja o mesmo usado na criação de cursos.

---

### 📋 Checklist de Validação de IDs

Antes de executar os scripts, valide:

- [ ] **cur_id + 22**: Verificar se não causa conflito de IDs ao criar cursos 2026
- [ ] **cal_id + 5**: Verificar se não causa conflito de IDs ao criar calendários 2026
- [ ] **cal_id >= 37**: Atualizar para o menor cal_id dos calendários 2025
- [ ] **cal_id in (32,33,34,35,36)**: Atualizar com os cal_id reais dos calendários 2025
- [ ] **Executar queries de validação**: Documentar os valores corretos antes de alterar os scripts

---

## �🔍 Checklist de Validação

### ⚠️ PRÉ-REQUISITO CRÍTICO

- [ ] **CONFIRMAR: A pasta `scripts_virada_do_ano_2024_2025/` existe e contém os scripts corretos**
- [ ] **CONFIRMAR: A virada 2024-2025 já foi executada com sucesso no banco de dados**
- [ ] **CONFIRMAR: Ano letivo atual no sistema é 2025**

### Antes de Executar:

- [ ] Verificar se todos os arquivos foram criados na pasta `scripts_virada_do_ano_2025_2026/`
- [ ] Confirmar que todas as referências a `2025` foram alteradas para `2026`
- [ ] Validar datas de vigência (início e fim)
- [ ] Revisar ano do calendário acadêmico
- [ ] Verificar se há novos cursos ou turmas exclusivos de 2026
- [ ] Fazer backup do banco de dados antes da execução
- [ ] Testar em ambiente de homologação primeiro

### Durante a Execução:

#### Ordem de Execução Recomendada:

> **⚠️ IMPORTANTE:** Os scripts de **calendário** e **curso** DEVEM ser executados ANTES do ManutProcedures.sql, pois as procedures dependem dos dados criados por esses scripts. O calendário deve ser criado PRIMEIRO.

1. **script de Calendario.sql** ← **EXECUTAR PRIMEIRO**
   - [ ] Executar com transação (BEGIN TRAN)
   - [ ] Verificar atualização do ANO_BASE
   - [ ] Validar criação dos calendários
   - [ ] Confirmar criação dos períodos do calendário
   - [ ] Verificar encerramento de turmas do ano anterior
   - [ ] Fazer COMMIT apenas após validação
   - [ ] Consulta de validação:

   ```sql
   SELECT * FROM Manutencao.._PARAMETROS WHERE CHAVE IN ('ANO_BASE', 'DATA_CORTE')
   SELECT * FROM ACA_CalendarioAnual WHERE cal_ano = 2026
   SELECT * FROM ACA_CalendarioPeriodo WHERE cal_id IN (SELECT cal_id FROM ACA_CalendarioAnual WHERE cal_ano = 2026)
   ```

2. **script de curso.sql** ← **EXECUTAR EM SEGUNDO**
   - [ ] Executar com transação (BEGIN TRAN)
   - [ ] Verificar se não houve erro na criação de cursos
   - [ ] Validar criação de currículos e períodos
   - [ ] Confirmar criação de disciplinas
   - [ ] Fazer COMMIT apenas após validação
   - [ ] Consulta de validação:

   ```sql
   SELECT * FROM ACA_Curso WHERE cur_nome LIKE '2026%'
   SELECT COUNT(*) FROM ACA_CurriculoDisciplina WHERE cur_id IN (SELECT cur_id FROM ACA_Curso WHERE cur_nome LIKE '2026%')
   ```

3. **ManutProcedures.sql** ← **EXECUTAR EM TERCEIRO**
   - [ ] Executar script completo
   - [ ] Verificar se todas as procedures foram criadas/atualizadas
   - [ ] Não há transação manual (script gerencia internamente)
   - [ ] Consulta de validação:

   ```sql
   SELECT name, modify_date FROM sys.procedures WHERE name LIKE 'STP_%' ORDER BY modify_date DESC
   ```

4. **RODAR APÓS a Integracao - Cadastra na ACA_CurriculoEscola e Periodo.sql** ← **EXECUTAR POR ÚLTIMO**
   - [ ] Executar APÓS processo de integração completo
   - [ ] Validar inserções em ACA_CurriculoEscola
   - [ ] Validar inserções em ACA_CurriculoEscolaPeriodo
   - [ ] Consulta de validação:
   ```sql
   SELECT COUNT(*) FROM GE_ACA_CurriculoEscola WHERE ces_vigenciaInicio >= '2026-01-01'
   ```

### Após a Execução:

- [ ] Validar registros criados nas tabelas principais
- [ ] Verificar logs de erro
- [ ] Conferir integridade referencial
- [ ] Testar consultas básicas
- [ ] Documentar ajustes necessários na pasta `Ajustes e Correções/`

---

## 📊 Histórico de Mudanças por Virada

### 2017-2018 até 2019-2020

- ✅ Estrutura básica com 3 scripts
- ✅ Scripts numerados (01, 02)
- ❌ Sem `ManutProcedures.sql`

### 2020-2021

- ✅ Introdução do `ManutProcedures.sql`
- ✅ Adição de subpasta `PROCEDURES ALTERADAS/`
- ✅ Mais complexidade nas stored procedures

### 2021-2022

- ✅ Subpasta `Ajustes e correções/` com pacotes DTSX
- ✅ Foco em cargas e processos de integração

### 2022-2023 e 2023-2024

- ✅ Mudança de nomenclatura (scripts sem numeração)
- ✅ `script de Calendario.sql` e `script de curso.sql`
- ✅ Foco em ajustes de avaliação (Gestão Avaliação)
- ✅ Refinamento das procedures

---

## 🎯 Localizações Específicas no ManutProcedures.sql

### Buscar e Substituir (Find & Replace)

Use estes critérios para localizar todas as ocorrências:

| Buscar               | Substituir           | Descrição                        |
| -------------------- | -------------------- | -------------------------------- |
| `an_letivo = 2025`   | `an_letivo = 2026`   | Ano letivo em filtros WHERE      |
| `'2025-01-01'`       | `'2026-01-01'`       | Data início vigência             |
| `'2024-12-20'`       | `'2025-12-20'`       | Data fim vigência (ano anterior) |
| `'2025-12-20'`       | `'2026-12-20'`       | Data fim vigência (ano atual)    |
| `cal.cal_ano = 2025` | `cal.cal_ano = 2026` | Ano do calendário acadêmico      |

---

### Buscar e Substituir - script de curso.sql

| Buscar                               | Substituir                           | Descrição                        |
| ------------------------------------ | ------------------------------------ | -------------------------------- |
| `'2024','2025'`                      | `'2025','2026'`                      | Replace no nome do curso         |
| `'2025-01-01' as cur_vigenciaInicio` | `'2026-01-01' as cur_vigenciaInicio` | Vigência de início               |
| `cur_nome like '2024%'`              | `cur_nome like '2025%'`              | Filtro de cursos (4 ocorrências) |

---

### Buscar e Substituir - script de Calendario.sql

| Buscar            | Substituir        | Descrição                      |
| ----------------- | ----------------- | ------------------------------ |
| `VALOR = '2025'`  | `VALOR = '2026'`  | Parâmetro ANO_BASE             |
| `'2025-02-04'`    | `'2026-02-04'`    | Parâmetro DATA_CORTE           |
| `2025 as cal_ano` | `2026 as cal_ano` | Ano do calendário              |
| `'2024','2025'`   | `'2025','2026'`   | Replace na descrição           |
| `'%2024%'`        | `'%2025%'`        | Filtro de descrição            |
| `'2024-12-22'`    | `'2025-12-22'`    | Data de encerramento de turmas |

---

## 📊 Tabelas Impactadas

### script de Calendario.sql

| Tabela                    | Operação | Descrição                        |
| ------------------------- | -------- | -------------------------------- |
| `Manutencao.._PARAMETROS` | UPDATE   | Atualiza ANO_BASE e DATA_CORTE   |
| `ACA_CalendarioAnual`     | INSERT   | Cria calendários para 2026       |
| `ACA_CalendarioCurso`     | INSERT   | Relaciona calendários com cursos |
| `ACA_CalendarioPeriodo`   | INSERT   | Define períodos do calendário    |
| `TUR_Turma`               | UPDATE   | Encerra turmas do ano anterior   |

### script de curso.sql

| Tabela                    | Operação | Descrição                            |
| ------------------------- | -------- | ------------------------------------ |
| `ACA_Curso`               | INSERT   | Cria novos cursos para 2026          |
| `ACA_Curriculo`           | INSERT   | Cria currículos para os novos cursos |
| `ACA_CurriculoPeriodo`    | INSERT   | Define períodos dos currículos       |
| `ACA_Disciplina`          | INSERT   | Cria novas disciplinas               |
| `ACA_CurriculoDisciplina` | INSERT   | Relaciona disciplinas com currículos |

### ManutProcedures.sql

| Objeto                  | Operação     | Descrição                                  |
| ----------------------- | ------------ | ------------------------------------------ |
| Stored Procedures       | CREATE/ALTER | Atualiza todas as procedures de integração |
| `STP_DiarioClasse_*`    | ALTER        | Procedures do Diário de Classe             |
| `STP_QuadroHorario_*`   | ALTER        | Procedures de Quadro de Horário            |
| `STP_GestaoAvaliacao_*` | ALTER        | Procedures de Gestão de Avaliação          |
| `STP_CentralProjetos_*` | ALTER        | Procedures do Central de Projetos          |

### RODAR APÓS a Integracao

| Tabela                          | Operação | Descrição                     |
| ------------------------------- | -------- | ----------------------------- |
| `GE_ACA_CurriculoEscola`        | INSERT   | Associa currículos às escolas |
| `GE_ACA_CurriculoEscolaPeriodo` | INSERT   | Define períodos por escola    |

---

## ⚠️ Atenções Especiais

### 1. **Cursos EJA (Educação de Jovens e Adultos)**

```sql
--estes insert abaixo foi adicionado em 16/09 para que o processo insira as novas series de EJA segundo semestre
insert into tmpTipoSerieEOL (cd_serie_eol98)
select distinct cd_serie_eol98 from BD_PRODAM..v_turma_MSTECH tm
where an_letivo = 2026 and cd_serie_ensino is not null
```

### 2. **Território do Saber (Ensino Infantil)**

- Validar vigências de território-experiência
- Conferir relacionamentos entre disciplinas

### 3. **Parâmetro ANO_BASE**

Verificar se existe referência à tabela `_PARAMETROS`:

```sql
where cal.cal_ano = (select VALOR from _PARAMETROS where CHAVE = 'ANO_BASE')
```

---

## 📝 Notas Adicionais

### Diferenças de Tamanho

Os arquivos `ManutProcedures.sql` têm crescido ao longo dos anos:

- 2020-2021: 948.110 bytes
- 2021-2022: 948.435 bytes
- 2022-2023: 950.434 bytes
- 2023-2024: 951.168 bytes
- **2025-2026: [A definir após criação]**

### Backup Recomendado

```sql
-- Criar backup antes de executar
BACKUP DATABASE [GestaoPedagogica] TO DISK = 'C:\Backup\GestaoPedagogica_Pre_Virada_2026.bak'
BACKUP DATABASE [GestaoAvaliacao_SGP] TO DISK = 'C:\Backup\GestaoAvaliacao_Pre_Virada_2026.bak'
```

---

## 🚀 Comandos PowerShell Úteis

### Copiar estrutura da virada anterior:

```powershell
# ** PASSO 1: Copiar pasta completa da virada 2024-2025 como base **
Copy-Item -Path ".\scripts_virada_do_ano_2024_2025" -Destination ".\scripts_virada_do_ano_2025_2026" -Recurse

# Verificar se a cópia foi bem-sucedida
Get-ChildItem ".\scripts_virada_do_ano_2025_2026" | Select-Object Name, Length
```

### Buscar e substituir em todos os arquivos:

```powershell
# ** PASSO 2: Substituir automaticamente os anos em todos os .sql **
Get-ChildItem -Path ".\scripts_virada_do_ano_2025_2026" -Filter *.sql -Recurse | ForEach-Object {
    Write-Host "Processando: $($_.Name)"
    $content = Get-Content $_.FullName -Raw

    # Substituições de ano letivo (2025 → 2026)
    $content = $content -replace 'an_letivo = 2025', 'an_letivo = 2026'
    $content = $content -replace 'cal_ano = 2025', 'cal_ano = 2026'
    $content = $content -replace 'VALOR = ''2025''', 'VALOR = ''2026'''
    $content = $content -replace "2025 as cal_ano", "2026 as cal_ano"

    # Substituições de datas de vigência início (2025 → 2026)
    $content = $content -replace "'2025-01-01'", "'2026-01-01'"
    $content = $content -replace "'2025-02-04'", "'2026-02-04'"

    # Substituições de datas de vigência fim (2024 → 2025 e 2025 → 2026)
    $content = $content -replace "'2024-12-20'", "'2025-12-20'"
    $content = $content -replace "'2024-12-22'", "'2025-12-22'"
    $content = $content -replace "'2025-12-20'", "'2026-12-20'"

    # Substituições em replace de cursos e nomes (2024→2025 e 2023→2024)
    $content = $content -replace "replace\(cur_nome,'2024','2025'\)", "replace(cur_nome,'2025','2026')"
    $content = $content -replace "replace\(cal_descricao,'2024','2025'\)", "replace(cal_descricao,'2025','2026')"

    # Substituições em filtros LIKE
    $content = $content -replace "cur_nome like '2024%'", "cur_nome like '2025%'"
    $content = $content -replace "cal_descricao like '%2024%'", "cal_descricao like '%2025%'"

    $content | Set-Content $_.FullName -NoNewline
}

Write-Host "Substituições concluídas!" -ForegroundColor Green
```

### Validar alterações:

```powershell
# ** PASSO 3: Validar se as substituições foram feitas corretamente **

# Verificar se ainda existem referências a 2024 que deveriam ser 2025
Write-Host "`n=== Verificando referências a 2024 ==="
Get-ChildItem -Path ".\scripts_virada_do_ano_2025_2026" -Filter *.sql -Recurse |
    Select-String -Pattern "2024" |
    Where-Object { $_.Line -match "(an_letivo|cal_ano|cur_nome like|cal_descricao like)" } |
    Select-Object Path, LineNumber, Line | Format-Table -AutoSize

# Verificar se as referências a 2025 foram mantidas onde necessário (datas de encerramento)
Write-Host "`n=== Verificando datas de encerramento 2025 ==="
Get-ChildItem -Path ".\scripts_virada_do_ano_2025_2026" -Filter *.sql -Recurse |
    Select-String -Pattern "2025-12" |
    Select-Object Path, LineNumber, Line | Format-Table -AutoSize

# Verificar se ano 2026 foi inserido corretamente
Write-Host "`n=== Verificando referências a 2026 ==="
Get-ChildItem -Path ".\scripts_virada_do_ano_2025_2026" -Filter *.sql -Recurse |
    Select-String -Pattern "2026" |
    Select-Object Path, LineNumber, Line | Format-Table -AutoSize

Write-Host "`nValidação concluída!" -ForegroundColor Green
```

---

## 📞 Contatos e Referências

- **Repositório:** prefeiturasp/SME-Integracao-EOL
- **Branch:** master
- **Documentação Complementar:** Verificar documentos na pasta `documentacao/`

---

## � Consultas Úteis de Validação

### Validar Parâmetros do Sistema

```sql
-- Verificar parâmetros configurados
SELECT * FROM Manutencao.._PARAMETROS
WHERE CHAVE IN ('ANO_BASE', 'DATA_CORTE')
```

### Validar Cursos Criados

```sql
-- Contar cursos de 2026
SELECT COUNT(*) as Total_Cursos_2026
FROM ACA_Curso
WHERE cur_nome LIKE '2026%'

-- Listar cursos criados
SELECT cur_id, cur_codigo, cur_nome, cur_vigenciaInicio, cur_situacao
FROM ACA_Curso
WHERE cur_nome LIKE '2026%'
ORDER BY cur_nome

-- Verificar currículos dos novos cursos
SELECT c.cur_nome, cr.crr_id, cr.crr_codigo, cr.crr_periodosNormal
FROM ACA_Curso c
INNER JOIN ACA_Curriculo cr ON c.cur_id = cr.cur_id
WHERE c.cur_nome LIKE '2026%'
```

### Validar Calendários Criados

```sql
-- Calendários de 2026
SELECT cal_id, cal_ano, cal_descricao, cal_dataInicio, cal_dataFim, cal_situacao
FROM ACA_CalendarioAnual
WHERE cal_ano = 2026
ORDER BY cal_descricao

-- Períodos dos calendários de 2026
SELECT cp.cal_id, ca.cal_descricao, cp.cap_id, cp.cap_descricao,
       cp.cap_dataInicio, cp.cap_dataFim, cp.cap_situacao
FROM ACA_CalendarioPeriodo cp
INNER JOIN ACA_CalendarioAnual ca ON cp.cal_id = ca.cal_id
WHERE ca.cal_ano = 2026
ORDER BY cp.cal_id, cp.cap_id

-- Relação calendário-curso
SELECT cc.cal_id, ca.cal_descricao, cc.cur_id, c.cur_nome
FROM ACA_CalendarioCurso cc
INNER JOIN ACA_CalendarioAnual ca ON cc.cal_id = ca.cal_id
INNER JOIN ACA_Curso c ON cc.cur_id = c.cur_id
WHERE ca.cal_ano = 2026
```

### Validar Disciplinas

```sql
-- Disciplinas dos cursos 2026
SELECT c.cur_nome, d.dis_id, d.dis_codigo, d.dis_nome,
       cd.crd_tipo, cd.crp_id
FROM ACA_Curso c
INNER JOIN ACA_CurriculoDisciplina cd ON c.cur_id = cd.cur_id
INNER JOIN ACA_Disciplina d ON cd.dis_id = d.dis_id
WHERE c.cur_nome LIKE '2026%'
AND cd.crd_situacao <> 3
ORDER BY c.cur_nome, cd.crp_id, d.dis_nome

-- Contar disciplinas por curso
SELECT c.cur_nome, COUNT(DISTINCT cd.dis_id) as Total_Disciplinas
FROM ACA_Curso c
INNER JOIN ACA_CurriculoDisciplina cd ON c.cur_id = cd.cur_id
WHERE c.cur_nome LIKE '2026%'
AND cd.crd_situacao <> 3
GROUP BY c.cur_nome
ORDER BY c.cur_nome
```

### Validar Turmas Encerradas

```sql
-- Turmas encerradas do ano anterior
SELECT COUNT(*) as Turmas_Encerradas_2025
FROM TUR_Turma t
INNER JOIN ACA_CalendarioAnual c ON t.cal_id = c.cal_id
WHERE c.cal_ano = 2025
AND t.tur_situacao = 5
AND t.tur_dataEncerramento IS NOT NULL

-- Listar turmas que ainda não foram encerradas
SELECT t.tur_id, t.tur_codigo, c.cal_ano, c.cal_descricao,
       t.tur_situacao, t.tur_dataEncerramento
FROM TUR_Turma t
INNER JOIN ACA_CalendarioAnual c ON t.cal_id = c.cal_id
WHERE c.cal_ano = 2025
AND t.tur_situacao = 1
```

### Validar Stored Procedures

```sql
-- Listar procedures atualizadas recentemente
SELECT name, create_date, modify_date,
       DATEDIFF(hour, modify_date, GETDATE()) as horas_desde_modificacao
FROM sys.procedures
WHERE name LIKE 'STP_%'
AND modify_date >= CAST(GETDATE() AS DATE)
ORDER BY modify_date DESC

-- Verificar se procedures específicas existem
SELECT name, type_desc, create_date, modify_date
FROM sys.procedures
WHERE name IN (
    'STP_DiarioClasse_MTR_MatriculaTurma_IMPORT',
    'STP_QuadroHorario_TUR_Turma_IMPORT',
    'STP_GestaoAvaliacao_Import'
)
```

### Validar Integridade Referencial

```sql
-- Cursos sem currículo
SELECT c.cur_id, c.cur_nome
FROM ACA_Curso c
WHERE c.cur_nome LIKE '2026%'
AND NOT EXISTS (SELECT 1 FROM ACA_Curriculo cr WHERE cr.cur_id = c.cur_id)

-- Cursos sem calendário associado
SELECT c.cur_id, c.cur_nome
FROM ACA_Curso c
WHERE c.cur_nome LIKE '2026%'
AND NOT EXISTS (
    SELECT 1 FROM ACA_CalendarioCurso cc
    INNER JOIN ACA_CalendarioAnual ca ON cc.cal_id = ca.cal_id
    WHERE cc.cur_id = c.cur_id AND ca.cal_ano = 2026
)

-- Cursos sem disciplinas
SELECT c.cur_id, c.cur_nome
FROM ACA_Curso c
WHERE c.cur_nome LIKE '2026%'
AND NOT EXISTS (
    SELECT 1 FROM ACA_CurriculoDisciplina cd
    WHERE cd.cur_id = c.cur_id AND cd.crd_situacao <> 3
)
```

---

## �🔧 Troubleshooting - Problemas Comuns

### Erro: "Violation of PRIMARY KEY constraint"

**Causa:** IDs já existem no banco de dados.

**Solução:**

```sql
-- Verificar último ID utilizado
SELECT MAX(cur_id) FROM ACA_Curso
SELECT MAX(cal_id) FROM ACA_CalendarioAnual

-- Ajustar incremento no script conforme necessário
-- Exemplo: se usar cur_id + 22 e houver conflito, testar cur_id + 23
```

### Erro: "Cannot insert explicit value for identity column"

**Causa:** IDENTITY_INSERT não foi habilitado.

**Solução:** Verificar se as linhas `SET IDENTITY_INSERT [tabela] ON/OFF` estão presentes no script.

### Erro no script de Calendário: "Cannot update identity column"

**Causa:** Tentativa de atualizar coluna identity.

**Solução:** Verificar se está usando INSERT e não UPDATE para tabelas com identity.

### Turmas não foram encerradas corretamente

**Causa:** IDs de calendário (cal_id) incorretos no UPDATE.

**Solução:**

```sql
-- Verificar IDs corretos dos calendários de 2025
SELECT cal_id, cal_ano, cal_descricao FROM ACA_CalendarioAnual WHERE cal_ano = 2025

-- Ajustar o UPDATE com os IDs corretos
update TUR_Turma set tur_dataEncerramento = '2025-12-22', tur_situacao = 5, tur_dataAlteracao = GETDATE()
where cal_id in ([IDs_CORRETOS_AQUI]) and tur_situacao = 1
```

### Disciplinas não foram criadas para os novos cursos

**Causa:** Falta de registros em ACA_CurriculoDisciplina do ano anterior.

**Solução:** Verificar se o ano base usado no filtro está correto:

```sql
SELECT COUNT(*) FROM ACA_CurriculoDisciplina
WHERE cur_id IN (SELECT cur_id FROM ACA_Curso WHERE cur_nome LIKE '2025%')
```

### Stored Procedures não foram atualizadas

**Causa:** Erro de sintaxe ou permissões insuficientes.

**Solução:**

```sql
-- Verificar permissões
USE master;
EXEC sp_helprotect NULL, NULL, 'seu_usuario';

-- Verificar erros de sintaxe no output do SQL
-- Executar procedures individualmente para isolar erros
```

### Parâmetros ANO_BASE não atualizados

**Causa:** Tabela \_PARAMETROS não existe ou está em banco diferente.

**Solução:**

```sql
-- Verificar existência da tabela
SELECT * FROM Manutencao.INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = '_PARAMETROS'

-- Se não existir, criar:
CREATE TABLE Manutencao.._PARAMETROS (
    CHAVE VARCHAR(50) PRIMARY KEY,
    VALOR VARCHAR(50),
    DESCRICAO VARCHAR(200)
)
```

---

## ✅ Conclusão

### 📝 Resumo das Alterações Principais

Este guia cobre a virada de **2025 para 2026** com base nos scripts já existentes de **2024-2025**.

#### Substituições Globais Necessárias:

| De                      | Para                    | Onde                        |
| ----------------------- | ----------------------- | --------------------------- |
| `an_letivo = 2025`      | `an_letivo = 2026`      | Todos os arquivos           |
| `cal_ano = 2025`        | `cal_ano = 2026`        | Calendário e procedures     |
| `'2025-01-01'`          | `'2026-01-01'`          | Datas de início de vigência |
| `'2025-12-20'`          | `'2026-12-20'`          | Datas de fim de vigência    |
| `'2024-12-20'`          | `'2025-12-20'`          | Encerramento ano anterior   |
| `cur_nome like '2024%'` | `cur_nome like '2025%'` | Filtros de curso            |
| `VALOR = '2025'`        | `VALOR = '2026'`        | Parâmetro ANO_BASE          |

#### Arquivos a Serem Criados/Modificados:

1. ✅ **script de Calendario.sql** - Cria calendários para 2026
2. ✅ **script de curso.sql** - Cria cursos para 2026
3. ✅ **ManutProcedures.sql** - Atualiza procedures de integração
4. ✅ **RODAR APÓS a Integracao** - Associa currículos às escolas

#### Lembretes Finais:

1. **Testar em ambiente de homologação primeiro**
2. **Fazer backup completo do banco antes de executar**
3. **Validar cada script individualmente com BEGIN TRAN/ROLLBACK**
4. **Documentar ajustes específicos na pasta `Ajustes e Correções/`**
5. **Verificar IDs de calendário antes de encerrar turmas**
6. **Confirmar que DATA_CORTE está correta (pode variar por ano)**

**Data de criação deste guia:** 10/04/2026

---

> **⚠️ IMPORTANTE:** Este é um guia baseado no padrão das viradas anteriores. Como a virada 2024-2025 já foi executada, use aquela pasta como base. Ajustes específicos podem ser necessários conforme particularidades do ano letivo 2026.

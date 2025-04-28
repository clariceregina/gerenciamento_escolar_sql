# 📊 Sistema de Gerenciamento Escolar com SQL

Este projeto consiste na manipulação de um banco de dados relacional voltado para o gerenciamento de uma instituição de ensino. O sistema contempla o cadastro de **alunos, professores, disciplinas, turmas** e o controle de **notas**.

As consultas foram realizadas no SQLite Online.

---

## 🧱 Estrutura do Banco de Dados

O banco de dados é composto pelas seguintes tabelas:

- `tabela_alunos`
- `tabela_professores`
- `tabela_disciplinas`
- `tabela_turmas`
- `tabela_turma_disciplinas` (relacionamento N:N entre turmas e disciplinas)
- `tabela_turma_alunos` (relacionamento N:N entre turmas e alunos)
- `tabela_notas`

As relações entre as tabelas são feitas através de **chaves estrangeiras**, garantindo a integridade referencial dos dados.

---

## 🛠️ Scripts Incluídos

### 🔨 Criação de Tabelas

Scripts para criação de todas as tabelas necessárias para o sistema:

- `CREATE TABLE tabela_alunos (...)`
- `CREATE TABLE tabela_professores (...)`
- `CREATE TABLE tabela_disciplinas (...)`
- `CREATE TABLE tabela_turmas (...)`
- `CREATE TABLE tabela_turma_disciplinas (...)`
- `CREATE TABLE tabela_turma_alunos (...)`
- `CREATE TABLE tabela_notas (...)`

### 🧾 Inserção de Dados

População inicial das tabelas com dados de exemplo:

- Alunos (18 registros)
- Professores (5 registros)
- Disciplinas (6 registros)
- Notas (diversos registros para múltiplos alunos e disciplinas)
- Turmas e seus relacionamentos com alunos e disciplinas

### 🔍 Consultas SQL

Consultas para explorar os dados:

- Listagem de todos os alunos ordenados por nome
- Disciplinas com carga horária maior que 40 horas
- Notas entre 6 e 8
- Seleção de todos os registros das tabelas para verificação

---

## 💡 Exemplos de Consultas

```sql
-- Alunos ordenados por nome
SELECT * FROM tabela_alunos ORDER BY nome_aluno;

-- Disciplinas com carga horária > 40
SELECT id_disciplina, nome_disciplina, carga_horaria 
FROM tabela_disciplinas 
WHERE carga_horaria > 40;

-- Notas entre 6 e 8
SELECT valor_nota 
FROM tabela_notas 
WHERE valor_nota > 6 AND valor_nota < 8;

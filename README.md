# 📚 Plataforma de Cursos Online - Banco de Dados (PostgreSQL)

Projeto da 2ª nota da disciplina de Banco de Dados (Engenharia de Software), com foco em **modelagem e implementação** de um banco de dados para uma **plataforma de cursos online** usando **PostgreSQL**.

---

## 🔖 Cenário

Funcionalidades principais:

- Cadastro de cursos, módulos, instrutores e alunos.
- Matrículas e emissão de certificados.

---

## ✅ O que foi feito

- **Modelagem:**
  - Conceitual (DER) e Relacional completas (`Alunos`, `Instrutores`, `Cursos`, `Módulos`, `Matrículas`, `Certificados`).
  - Diagramas PlantUML.

- **Desenvolvimento:**
  - Scripts DDL com todas as constraints.
  - DML: 10 registros por tabela + `UPDATE` e `DELETE`.
  - IDs resetados para iniciar em 1.

- **Consultas SQL:**
  - 10 consultas com `JOINs`, filtros, agrupamentos e funções agregadas.
  - Exemplos: listar alunos por curso, contar cursos por instrutor, cursos com +2 módulos.

---

## 📂 Estrutura

- `/ddl/`: Scripts de criação.
- `/dml/`: Inserção, atualização, exclusão, consultas.
- `/diagramas/`: PlantUML (conceitual/lógico).
- `README.md`: Este arquivo.

---

## 📊 Diagramas

![Modelo Conceitual](https://raw.githubusercontent.com/ddecry/db_ecourses/main/prints/models/concept_model.png)

![Modelo Lógico](https://raw.githubusercontent.com/ddecry/db_ecourses/main/prints/models/logical_model.png)

---

## 🎥 Apresentação

🛠 **Em andamento:** Vídeo (até 5 min) explicando o projeto e consultas.

---

🚀 **Objetivo:** Criar uma solução sólida e realista para gerenciar cursos online.

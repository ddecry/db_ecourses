CREATE TABLE alunos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    data_nascimento DATE,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE instrutores (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    especialidade VARCHAR(100),
    data_contratacao DATE
);

CREATE TABLE cursos (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    descricao TEXT,
    instrutor_id INT REFERENCES instrutores(id),
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (titulo, instrutor_id)
);

CREATE TABLE modulos (
    id SERIAL PRIMARY KEY,
    curso_id INT REFERENCES cursos(id),
    titulo VARCHAR(100) NOT NULL,
    ordem INT CHECK (ordem > 0),
    UNIQUE (curso_id, ordem)
);

CREATE TABLE matriculas (
    id SERIAL PRIMARY KEY,
    aluno_id INT REFERENCES alunos(id),
    curso_id INT REFERENCES cursos(id),
    data_matricula TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20) DEFAULT 'ativa',
    UNIQUE (aluno_id, curso_id)
);

CREATE TABLE certificados (
    id SERIAL PRIMARY KEY,
    matricula_id INT REFERENCES matriculas(id) UNIQUE,
    data_emissao DATE,
    codigo VARCHAR(50) UNIQUE NOT NULL
);
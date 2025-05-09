SELECT alunos.nome FROM alunos
JOIN matriculas ON alunos.id = matriculas.aluno_id
JOIN cursos ON matriculas.curso_id = cursos.id
WHERE cursos.titulo = 'Python para Iniciantes';
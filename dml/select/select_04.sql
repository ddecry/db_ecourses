SELECT instrutores.nome, COUNT(cursos.id) AS total_cursos
FROM instrutores
LEFT JOIN cursos ON instrutores.id = cursos.instrutor_id
GROUP BY instrutores.nome;

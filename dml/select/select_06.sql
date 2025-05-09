SELECT cursos.titulo, instrutores.nome
FROM cursos
JOIN instrutores ON cursos.instrutor_id = instrutores.id
ORDER BY cursos.titulo;

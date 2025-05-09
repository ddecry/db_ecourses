SELECT cursos.titulo FROM cursos
JOIN instrutores ON cursos.instrutor_id = instrutores.id
WHERE instrutores.nome = 'Lucas Martins';

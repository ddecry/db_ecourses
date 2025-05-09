SELECT cursos.titulo, COUNT(matriculas.id) AS total_matriculados
FROM cursos
LEFT JOIN matriculas ON cursos.id = matriculas.curso_id
GROUP BY cursos.titulo;
SELECT cursos.titulo, COUNT(modulos.id) AS total_modulos
FROM cursos
JOIN modulos ON cursos.id = modulos.curso_id
GROUP BY cursos.titulo
HAVING COUNT(modulos.id) > 2;

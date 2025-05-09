-- DELETE: Excluir um aluno que nunca se matriculou
DELETE FROM alunos
WHERE id NOT IN (SELECT aluno_id FROM matriculas)
AND nome = 'João Almeida';
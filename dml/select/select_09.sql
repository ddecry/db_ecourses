SELECT certificados.codigo, certificados.data_emissao, alunos.nome
FROM certificados
JOIN matriculas ON certificados.matricula_id = matriculas.id
JOIN alunos ON matriculas.aluno_id = alunos.id;
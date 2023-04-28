CREATE VIEW num_atividades AS
SELECT cod_responsavel, COUNT(*) AS num_atividades
FROM atividade
GROUP BY cod_responsavel;

SELECT f.nome AS nome_funcionario, na.num_atividades
FROM funcionario f
INNER JOIN num_atividades na ON f.codigo = na.cod_responsavel
WHERE na.num_atividades > 0;

CREATE VIEW total_funcionarios_por_depto AS 
SELECT d.codigo, COUNT(f.codigo) AS total_funcionarios
FROM departamento d
LEFT JOIN funcionario f ON d.codigo = f.cod_depto
GROUP BY d.codigo;

SELECT d.descricao AS departamento, 
       COALESCE(g.nome, 'Sem gerente') AS gerente, 
       COALESCE(tf.total_funcionarios, 0) AS num_funcionarios
FROM departamento d
LEFT JOIN funcionario g ON d.cod_gerente = g.codigo
LEFT JOIN total_funcionarios_por_depto tf ON d.codigo = tf.codigo
ORDER BY d.codigo;


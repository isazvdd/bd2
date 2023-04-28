CREATE VIEW v_func_dept AS
SELECT codDepto, COUNT(*) AS num_func
FROM funcionario
GROUP BY codDepto;

SELECT d.descricao AS departamento, f.nome AS gerente,
COALESCE(v.num_func, 0) AS num_func
FROM departamento d
LEFT JOIN funcionario f ON d.codGerente = f.codigo
LEFT JOIN v_func_dept v ON d.codigo = v.codDepto;
SELECT f.nome, f.salario, d.codigo
FROM funcionario f
JOIN departamento d ON f.cod_depto = d.codigo
WHERE f.codigo NOT IN (SELECT cod_gerente FROM departamento)
ORDER BY d.codigo;
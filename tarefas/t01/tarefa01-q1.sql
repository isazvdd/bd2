SELECT f.nome
FROM funcionario f
WHERE f.salario > (
  SELECT AVG(f2.salario)
  FROM funcionario f2
  WHERE f2.cod_depto = 2
);

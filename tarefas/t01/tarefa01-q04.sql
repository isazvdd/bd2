SELECT f.nome, f.salario, f.codDepto, d.sigla
FROM funcionario f, departamento d
WHERE f.nome NOT IN (SELECT f.nome
  FROM funcionario f, departamento d
  WHERE f.codigo = d.codGerente)

GROUP BY nome
ORDER BY f.codDepto ASC

SELECT f.nome, f.salario, f.codDepto
FROM funcionario f, departamento d
WHERE f.nome NOT IN (SELECT f.nome
  FROM funcionario f, departamento d
  WHERE f.codigo = d.codGerente)

GROUP BY nome;

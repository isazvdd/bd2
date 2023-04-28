SELECT p.nome AS "Nome do Projeto", 
       d1.nome AS "Departamento do Projeto", 
       f1.nome AS "Funcionário Responsável",
       d2.nome AS "Departamento do Funcionário Responsável"
FROM projeto p
INNER JOIN departamento d1 ON p.coddepto = d1.codigo
INNER JOIN funcionario f1 ON p.codresponsavel = f1.codigo
INNER JOIN departamento d2 ON f1.coddepto = d2.codigo;
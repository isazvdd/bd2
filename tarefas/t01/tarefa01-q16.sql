-- Criação da view de gerentes de departamento e seus salários
CREATE VIEW gerentes AS
SELECT f.codigo, f.nome, f.salario, d.cod_gerente
FROM funcionario f
INNER JOIN departamento d ON f.codigo = d.cod_gerente;

-- Consulta dos responsáveis por projeto que também são gerentes de departamento ou ganham mais que o gerente de seu departamento
SELECT f.nome AS "Responsável por Projeto"
FROM funcionario f
INNER JOIN projeto p ON f.codigo = p.cod_responsavel
LEFT JOIN gerentes g ON f.cod_depto = g.cod_gerente
WHERE f.salario > g.salario OR g.codigo IS NOT NULL;

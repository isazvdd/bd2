SELECT p.nome AS "Nome do Projeto", 
       p.data_inicio AS "Data de Início do Projeto",
       p.data_fim AS "Data de Fim do Projeto", 
       a.nome AS "Nome da Atividade", 
       a.data_inicio AS "Data de Início da Atividade", 
       a.data_fim AS "Data de Fim da Atividade"
FROM projeto p
JOIN atividade_projeto ap ON p.codigo = ap.cod_projeto
JOIN atividade a ON ap.cod_atividade = a.codigo
WHERE a.data_inicio < p.data_inicio OR a.data_fim > p.data_fim;

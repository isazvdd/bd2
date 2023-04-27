SELECT p.nome AS nome_projeto, p.data_inicio, p.data_fim, a.nome AS nome_atividade, a.data_inicio, a.data_fim
FROM projeto p
INNER JOIN atividade_projeto ap ON p.codigo = ap.cod_projeto
INNER JOIN atividade a ON ap.cod_atividade = a.codigo
WHERE a.data_inicio < p.data_inicio OR a.data_fim > p.data_fim;
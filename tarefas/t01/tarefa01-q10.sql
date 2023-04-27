SELECT p.nome as "Nome do Projeto", 
       d_proj.descricao as "Departamento do Projeto", 
       f_resp.nome as "Responsável pelo Projeto", 
       d_resp.descricao as "Departamento do Responsável"
FROM projeto p 
JOIN departamento d_proj ON p.cod_depto = d_proj.codigo
JOIN funcionario f_resp ON p.cod_responsavel = f_resp.codigo
JOIN departamento d_resp ON f_resp.cod_depto = d_resp.codigo;
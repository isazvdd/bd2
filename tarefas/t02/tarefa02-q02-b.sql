CREATE OR REPLACE FUNCTION media_idade_por_depto() RETURNS TABLE(depto INT, media_idade NUMERIC) AS $$
BEGIN
    RETURN QUERY SELECT depto, AVG(EXTRACT(YEAR FROM age(NOW(), dataNasc))) AS media_idade FROM funcionario GROUP BY depto;
END;
$$ LANGUAGE plpgsql;


-- Exemplo de uso:
--  SELECT * FROM media_idade_por_depto();
-- Isso retornará uma tabela com duas colunas: depto e media_idade, onde cada linha representa um departamento e sua respectiva média de idade dos funcionários. 
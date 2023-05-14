CREATE OR REPLACE FUNCTION media_idade_por_depto() RETURNS TABLE(depto INT, media_idade NUMERIC) AS $$
BEGIN
    RETURN QUERY SELECT depto, AVG(EXTRACT(YEAR FROM age(NOW(), dataNasc))) AS media_idade FROM funcionario GROUP BY depto;
END;
$$ LANGUAGE plpgsql;

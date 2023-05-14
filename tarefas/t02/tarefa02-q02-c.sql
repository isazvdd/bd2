CREATE OR REPLACE FUNCTION funcionarios_acima_media_idade()
RETURNS TABLE (nome VARCHAR(15), idade INTEGER, depto INT) AS $$
BEGIN
    RETURN QUERY
    SELECT f.nome, DATE_PART('year', age(CURRENT_DATE, f.dataNasc)) AS idade, f.depto
    FROM funcionario f
    INNER JOIN (
        SELECT depto, AVG(DATE_PART('year', age(CURRENT_DATE, dataNasc))) AS media_idade
        FROM funcionario
        GROUP BY depto
    ) m ON f.depto = m.depto
    WHERE DATE_PART('year', age(CURRENT_DATE, f.dataNasc)) > m.media_idade;
END;
$$ LANGUAGE plpgsql;

-- Para executar o procedimento e exibir os funcionários com idade acima da média de seu departamento, basta executar o seguinte comando:
-- EXEC funcionarios_acima_media_idade;
CREATE OR REPLACE FUNCTION quantas_atividades_membro(cod_membro INT, cod_projeto INT)
RETURNS INTEGER AS $$
DECLARE
    qtd_atividades INTEGER;
BEGIN
    SELECT COUNT(*) INTO qtd_atividades
    FROM atividade_membro am
    INNER JOIN atividade a ON am.codAtividade = a.codigo
    INNER JOIN projeto p ON a.codProjeto = p.codigo
    WHERE am.codMembro = cod_membro AND p.codigo = cod_projeto;
    
    RETURN qtd_atividades;
END;
$$ LANGUAGE plpgsql;

-- Para usar a função, basta chamá-la passando o código do membro e o código do projeto desejado, por exemplo:
--  SELECT quantas_atividades_membro(1, 2);
-- Isso retornará o número de atividades do membro com código 1 no projeto com código 2.

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


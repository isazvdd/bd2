CREATE OR REPLACE FUNCTION porcentagem_atividades_membro(cod_membro INT, cod_projeto INT)
RETURNS NUMERIC
AS $$
DECLARE
  total_atividades INT;
  atividades_membro INT;
BEGIN
  SELECT COUNT(*) INTO total_atividades FROM atividade_projeto WHERE codProjeto = cod_projeto;
  SELECT COUNT(*) INTO atividades_membro FROM atividade_projeto ap JOIN atividade_membro am ON ap.codAtividade = am.codAtividade WHERE ap.codProjeto = cod_projeto AND am.codMembro = cod_membro;
  RETURN atividades_membro::NUMERIC / total_atividades::NUMERIC * 100.0;
END;
$$
LANGUAGE PLPGSQL;

CREATE OR REPLACE FUNCTION calcular_atraso_projeto(cod_projeto INT) 
RETURNS INTEGER AS $$
DECLARE
  data_final DATE;
  dias_atraso INTEGER;
BEGIN
  SELECT dataFim INTO data_final FROM projeto WHERE codigo = cod_projeto;
  IF data_final IS NULL THEN -- Projeto sem data de fim
    RETURN NULL;
  ELSE
    dias_atraso := DATE_PART('day', current_date - data_final);
    RETURN dias_atraso;
  END IF;
END;
$$ LANGUAGE plpgsql;

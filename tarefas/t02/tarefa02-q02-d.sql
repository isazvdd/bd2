CREATE OR REPLACE FUNCTION calcular_atraso(cod_atividade INT) RETURNS INTEGER AS $$
DECLARE
  data_final DATE;
  dias_atraso INTEGER;
BEGIN
  SELECT dataFim INTO data_final FROM atividade WHERE codigo = cod_atividade;
  dias_atraso := DATE_PART('day', current_date - data_final);
  RETURN dias_atraso;
END;
$$ LANGUAGE plpgsql;

-- a função irá retornar um valor negativo se a atividade estiver atrasada e positivo se estiver em dia. Se a atividade ainda não tiver sido concluída, o resultado será 0.
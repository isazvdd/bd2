CREATE OR REPLACE FUNCTION calcular_idade(data_nascimento date)
RETURNS integer AS $$
BEGIN
    RETURN extract(year from age(current_date, data_nascimento));
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE PROCEDURE exibir_equipe_projeto(cod_projeto INT)
LANGUAGE plpgsql
AS $$
BEGIN
    SELECT projeto.descricao AS projeto, funcionario.nome AS funcionario, departamento.sigla AS departamento
    FROM projeto
    INNER JOIN equipe ON projeto.equipe = equipe.codigo
    INNER JOIN membro ON equipe.codigo = membro.codEquipe
    INNER JOIN funcionario ON membro.codFuncionario = funcionario.codigo
    INNER JOIN departamento ON funcionario.depto = departamento.codigo
    WHERE projeto.codigo = cod_projeto;
END;
$$ LANGUAGE plpgsql;

-- Para chamar a procedure e exibir a equipe do projeto, basta executar o seguinte comando:
--  CALL exibir_equipe_projeto(cod_projeto); 

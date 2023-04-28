-- Povoamento inicial

INSERT INTO departamento
(sigla, descricao, codGerente)
VALUES ('DHC', 'Dep História', null);

INSERT INTO departamento
(sigla, descricao, codGerente)
VALUES ('DCT', 'Dep Computação', null);

INSERT INTO departamento
(sigla, descricao, codGerente)
VALUES ('DGC', 'Dep Geografia', null);

INSERT INTO departamento
(sigla, descricao, codGerente)
VALUES ('DXT', null, null);


-- Adicionando Gerentes

INSERT INTO funcionario
(nome, sexo, dtNasc, salario, codSupervisor, codDepto)
VALUES ('Ana', 'F', '1988-05-07', 2500.00, null, 1);

INSERT INTO funcionario
(nome, sexo, dtNasc, salario, codSupervisor, codDepto)
VALUES ('Taciano', 'M', '1980-01-25', 2500.00, null, 2);

UPDATE departamento SET codGerente = 1 WHERE sigla = 'DHC';
UPDATE departamento SET codGerente = 2 WHERE sigla = 'DCT';


-- Adicionando Funcionários

INSERT INTO funcionario
(nome, sexo, dtNasc, salario, codSupervisor, codDepto)
VALUES ('Maria', 'F', '1981-07-01', 2500.00, 1, 1);

INSERT INTO funcionario
(nome, sexo, dtNasc, salario, codSupervisor, codDepto)
VALUES ('Josefa', 'F', '1986-09-17', 2500.00, 1, 1);

INSERT INTO funcionario
(nome, sexo, dtNasc, salario, codSupervisor, codDepto)
VALUES ('Carlos', 'M', '1985-11-21', 2500.00, 1, 1);

INSERT INTO funcionario
(nome, sexo, dtNasc, salario, codSupervisor, codDepto)
VALUES ('Humberto', 'M', '1970-05-07', 1500.00, 2, 2);

INSERT INTO funcionario
(nome, sexo, dtNasc, salario, codSupervisor, codDepto)
VALUES ('José', 'M', '1979-07-12', 3500.00, 2, 2);

INSERT INTO funcionario
(nome, sexo, dtNasc, salario, codSupervisor, codDepto)
VALUES ('Xuxa', 'F', '1970-03-28', 13500.00, null, null);

INSERT INTO funcionario
(nome, sexo, dtNasc, salario, codSupervisor, codDepto)
VALUES ('Sasha', 'F', '1970-03-28', 1500.00, 3, 1);

INSERT INTO funcionario
(nome, sexo, dtNasc, salario, codSupervisor, codDepto)
VALUES ('Victor', 'M', '1970-03-28', 500.00, 4, 1);

INSERT INTO funcionario
(nome, sexo, dtNasc, salario, codSupervisor, codDepto)
VALUES ('Doisberto', 'M', '1980-07-14', 2500.00, 3, 3);

INSERT INTO funcionario
(nome, sexo, dtNasc, salario, codSupervisor, codDepto)
VALUES ('Tresberta', 'F', '1992-09-01', 3000.00, 4, 3);


-- Adicionando projetos

INSERT INTO projeto(nome, descricao, codDepto, codResponsavel, dataInicio, dataFim)
VALUES ('APF', 'Analisador de Ponto de Função', 2, 2, '2018-02-26', '2019-06-30');

INSERT INTO projeto(nome, descricao, codDepto, codResponsavel, dataInicio, dataFim)
VALUES ('Monitoria', 'Projeto de Monitoria 2019.1', 1, 6, '2019-02-26', '2019-12-30');

INSERT INTO projeto(nome, descricao, codDepto, codResponsavel, dataInicio, dataFim)
VALUES ('BD', 'Projeto de Banco de Dados', 3, 5, '2018-02-26', '2018-06-30');

INSERT INTO projeto(nome, descricao, codDepto, codResponsavel, dataInicio, dataFim)
VALUES ('ES', 'Projeto de Engenharia de Software', 1, 1, '2018-02-26', '2018-06-30');


--  Adicionando Atividades
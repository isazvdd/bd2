INSERT INTO funcionario 
(nome, sexo, dataNasc, salario, supervisor, depto) 
VALUES ('Maria', 'F', '1981-07-01', 2500.00, 1, 1);

INSERT INTO funcionario 
(nome, sexo, dataNasc, salario, supervisor, depto) 
VALUES ('Josefa', 'F', '1986-09-17', 2500.00, 1, 1);

INSERT INTO funcionario 
(nome, sexo, dataNasc, salario, supervisor, depto) 
VALUES ('Carlos', 'M', '1985-11-21', 2500.00, 1, 1);

INSERT INTO funcionario 
(nome, sexo, dataNasc, salario, supervisor, depto) 
VALUES ('Humberto', 'M', '1970-05-07', 1500.00, 2, 2);

INSERT INTO funcionario 
(nome, sexo, dataNasc, salario, supervisor, depto) 
VALUES ('José', 'M', '1979-07-12', 3500.00, 2, 2);

INSERT INTO funcionario 
(nome, sexo, dataNasc, salario, supervisor, depto) 
VALUES ('Xuxa', 'F', '1970-03-28', 13500.00, NULL, NULL);

INSERT INTO funcionario 
(nome, sexo, dataNasc, salario, supervisor, depto) 
VALUES ('Sasha', 'F', '1970-03-28', 1500.00, 2, 1);

INSERT INTO funcionario 
(nome, sexo, dataNasc, salario, supervisor, depto) 
VALUES ('Victor', 'M', '1970-03-28', 500.00, 4, 1);

INSERT INTO equipe 
(nomeEquipe) 
VALUES ('BSI');

INSERT INTO membro 
(codEquipe, codFuncionario) 
VALUES (1, 1);

INSERT INTO membro 
(codEquipe, codFuncionario) 
VALUES (1, 2);

INSERT INTO membro 
(codEquipe, codFuncionario) 
VALUES (1, 3);

INSERT INTO membro 
(codEquipe, codFuncionario) 
VALUES (1, 4);

INSERT INTO equipe 
(nomeEquipe) 
VALUES ('Amazon');

INSERT INTO membro 
(codEquipe, codFuncionario) 
VALUES (2, 7);

INSERT INTO membro 
(codEquipe, codFuncionario) 
VALUES (2, 8);

INSERT INTO membro 
(codEquipe, codFuncionario) 
VALUES (2, 9);

INSERT INTO membro 
(codEquipe, codFuncionario) 
VALUES (2, 10);

INSERT INTO projeto 
(descricao, depto, responsavel, dataInicio, dataFim, situacao, equipe) 
VALUES ('APF', 2, 2, '2018-02-26', '2018-06-30', 'Em andamento', 2);

INSERT INTO projeto 
(descricao, depto, responsavel, dataInicio, dataFim, situacao, equipe) 
VALUES ('Monitoria', 1, 2, '2018-02-26', '2018-06-30', 'Planejado', 1);

INSERT INTO projeto 
(descricao, depto, responsavel, dataInicio, dataFim, dataConclusao, situacao, equipe) 
VALUES ('BD', 2, 1, '2018-02-26', '2018-02-30', 'Em andamento', 1);

INSERT INTO projeto 
(descricao, depto, responsavel, DataInicio, DataFim, situacao, equipe)
VALUES ('ES', 1, 1, '2018-02-26', '2018-06-30', '2018-05-29', 'Concluído', 1);

INSERT INTO atividade(descricao, dataInicio, dataFim, situacao, dataConclusao)
VALUES ('Preparar calendário', '2018-02-26', '2020-11-01', 'Concluído', '2020-10-01');
INSERT INTO atividade(descricao, dataInicio, dataFim, situacao, dataConclusao)
VALUES ('Preparar calendário', '2018-02-26', '2020-11-10', 'Concluído', '2020-10-02');
INSERT INTO atividade(descricao, dataInicio, dataFim, situacao, dataConclusao)
VALUES ('Consultar direção', '2018-02-26', '2020-11-02', 'Planejado', CURRENT_DATE);
INSERT INTO atividade(descricao, dataInicio, dataFim, situacao, dataConclusao)
VALUES ('Consultar direção', '2018-02-26', '2020-11-03', 'Em andamento', CURRENT_DATE);
INSERT INTO atividade(descricao, dataInicio, dataFim, situacao, dataConclusao)
VALUES ('Consultar direção', '2018-02-26', '2020-11-04', 'Planejado', CURRENT_DATE);
INSERT INTO atividade(descricao, dataInicio, dataFim, situacao, dataConclusao)
VALUES ('Emitir prestação de contas', '2018-02-26', '2020-11-10', 'Em andamento', CURRENT_DATE);

INSERT INTO atividade_membro(codAtividade, codMembro)
VALUES (1, 1);

INSERT INTO atividade_membro(codAtividade, codMembro)
VALUES (2, 2);

INSERT INTO atividade_membro(codAtividade, codMembro)
VALUES (3, 3);

INSERT INTO atividade_membro(codAtividade, codMembro)
VALUES (4, 4);

INSERT INTO atividade_membro(codAtividade, codMembro)
VALUES (5, 5);

INSERT INTO atividade_membro(codAtividade, codMembro)
VALUES (1, 6);

INSERT INTO atividade_membro(codAtividade, codMembro)
VALUES (1, 7);

INSERT INTO atividade_membro(codAtividade, codMembro)
VALUES (2, 8);

INSERT INTO atividade_projeto(codAtividade, codProjeto)
VALUES (1, 1);

INSERT INTO atividade_projeto(codAtividade, codProjeto)
VALUES (2, 2);

INSERT INTO atividade_projeto(codAtividade, codProjeto)
VALUES (3, 2);

INSERT INTO atividade_projeto(codAtividade, codProjeto)
VALUES (4, 3);

INSERT INTO atividade_projeto(codAtividade, codProjeto)
VALUES (5, 4);

INSERT INTO atividade_projeto(codAtividade, codProjeto)
VALUES (6, 2);
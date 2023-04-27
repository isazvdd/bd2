-- Inserir 5 linhas na tabela funcionario
INSERT INTO funcionario (codigo, nome, sexo, dt_nasc, salario, cod_depto)
VALUES
  (1, 'João', 'M', '1990-01-01', 5000.00, 1),
  (2, 'Maria', 'F', '1995-06-30', 4000.00, 1),
  (3, 'Pedro', 'M', '1985-03-15', 6000.00, 2),
  (4, 'Ana', 'F', '1992-11-20', 4500.00, 2),
  (5, 'Lucas', 'M', '1999-05-02', 3500.00, 1);

-- Inserir 5 linhas na tabela departamento
INSERT INTO departamento (codigo, descricao, cod_gerente)
VALUES
  (1, 'Vendas', 1),
  (2, 'Produção', 3),
  (3, 'Marketing', 2),
  (4, 'RH', 5),
  (5, 'TI', 4);

-- Inserir 5 linhas na tabela projeto
INSERT INTO projeto (codigo, nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim)
VALUES
  (1, 'Projeto 1', 'Descrição do projeto 1', 1, 1, '2022-01-01', '2022-06-30'),
  (2, 'Projeto 2', 'Descrição do projeto 2', 2, 3, '2022-02-01', '2022-09-30'),
  (3, 'Projeto 3', 'Descrição do projeto 3', 1, 2, '2022-03-01', '2022-12-31'),
  (4, 'Projeto 4', 'Descrição do projeto 4', 3, 4, '2022-04-01', '2022-08-31'),
  (5, 'Projeto 5', 'Descrição do projeto 5', 2, 5, '2022-05-01', '2022-11-30');

-- Inserir 5 linhas na tabela atividade
INSERT INTO atividade (codigo, nome, descricao, cod_responsavel, data_inicio, data_fim)
VALUES
  (1, 'Atividade 1', 'Descrição da atividade 1', 1, '2022-01-01', '2022-02-28'),
  (2, 'Atividade 2', 'Descrição da atividade 2', 3, '2022-03-01', '2022-04-30'),
  (3, 'Atividade 3', 'Descrição da atividade 3', 2, '2022-05-01', '2022-06-30'),
  (4, 'Atividade 4', 'Descrição da atividade 4', 4, '2022-07-01', '2022-08-31'),
  (5, 'Atividade 5', 'Descrição da atividade 5', 5, '2022-09-01', '2022-10-31');



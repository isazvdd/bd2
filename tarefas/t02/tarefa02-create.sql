
CREATE TABLE funcionario (
codigo SERIAL,
nome VARCHAR(15) NOT NULL,
sexo CHAR(1) DEFAULT NULL,
dataNasc DATE DEFAULT NULL,
salario DECIMAL(10,2) DEFAULT NULL,
supervisor INT,
depto INT,
PRIMARY KEY (codigo),
CONSTRAINT funcSuperFK FOREIGN KEY (supervisor) REFERENCES funcionario(codigo) ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE departamento (
codigo SERIAL,
sigla VARCHAR(15) NOT NULL UNIQUE,
descricao VARCHAR(25) NOT NULL,
gerente INT,
PRIMARY KEY (codigo),
CONSTRAINT depGerenteFK FOREIGN KEY (gerente) REFERENCES funcionario(codigo) ON DELETE SET NULL ON UPDATE CASCADE
);

ALTER TABLE funcionario ADD CONSTRAINT funcDeptoFK FOREIGN KEY (depto) REFERENCES departamento(codigo) ON DELETE SET NULL ON UPDATE CASCADE;

CREATE TABLE equipe (
codigo SERIAL,
nomeEquipe VARCHAR(45) DEFAULT NULL,
PRIMARY KEY (codigo)
);

CREATE TABLE membro (
codigo SERIAL,
codEquipe INT,
codFuncionario INT,
PRIMARY KEY (codigo),
FOREIGN KEY (codEquipe) REFERENCES equipe(codigo) ON DELETE SET NULL,
FOREIGN KEY (codFuncionario) REFERENCES funcionario(codigo) ON DELETE SET NULL
);

CREATE TABLE projeto (
codigo SERIAL,
descricao VARCHAR(45) DEFAULT NULL,
depto INT,
responsavel INT,
dataInicio DATE DEFAULT NULL,
dataFim DATE DEFAULT NULL,
situacao VARCHAR(45) DEFAULT NULL,
dataConclusao DATE DEFAULT NULL,
equipe INT,
PRIMARY KEY (codigo),
FOREIGN KEY (depto) REFERENCES departamento(codigo) ON DELETE SET NULL,
FOREIGN KEY (responsavel) REFERENCES funcionario(codigo) ON DELETE SET NULL,
FOREIGN KEY (equipe) REFERENCES equipe(codigo) ON DELETE SET NULL
);

CREATE TABLE atividade (
codigo SERIAL,
descricao VARCHAR(45) DEFAULT NULL,
dataInicio DATE DEFAULT NULL,
dataFim DATE DEFAULT NULL,
situacao VARCHAR(45) DEFAULT NULL,
dataConclusao DATE DEFAULT NULL,
PRIMARY KEY (codigo)
);

CREATE TABLE atividade_projeto (
codAtividade INT,
codProjeto INT,
PRIMARY KEY (codProjeto, codAtividade),
FOREIGN KEY (codAtividade) REFERENCES atividade(codigo),
FOREIGN KEY (codProjeto) REFERENCES projeto(codigo)
);

CREATE TABLE atividade_membro (
codAtividade INT,
codMembro INT,
PRIMARY KEY (codAtividade, codMembro),
FOREIGN KEY (codAtividade) REFERENCES atividade(codigo),
FOREIGN KEY (codMembro) REFERENCES membro(codigo)
);

CREATE DATABASE Biblioteca
USE Biblioteca

-- Criação da Tabela Livro
CREATE TABLE Livro (
    codigoLivro INT IDENTITY(1,1) NOT NULL,
    titulo VARCHAR(40) NOT NULL,
    genero VARCHAR(40) NOT NULL,
    editora VARCHAR(40) NOT NULL,
    PRIMARY KEY(codigoLivro),
    CHECK(genero IN ('Terror', 'Comédia', 'Romance', 'Ação', 'Drama'))
);

-- Criação da Tabela Cliente
CREATE TABLE Cliente (
    cpf VARCHAR(20) NOT NULL,
    nome VARCHAR(40) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    sexo CHAR(1) NOT NULL,
    dataNascimento DATETIME,
    PRIMARY KEY(cpf),
    CHECK(sexo IN ('M', 'F'))
);

-- Criação da Tabela Aluguel
CREATE TABLE Aluguel (
    cpfCliente VARCHAR(20) NOT NULL,
    codigoLivro INT identity(1,1),
    codigoAluguel VARCHAR(6) NOT NULL,
    dataRetirada DATETIME,
    dataDevolucao DATETIME,
    PRIMARY KEY(codigoAluguel),
    FOREIGN KEY (cpfCliente) REFERENCES Cliente(cpf),
    FOREIGN KEY (codigoLivro) REFERENCES Livro(codigoLivro)
);

SET DATEFORMAT YMD

-- Inserção de Dados na Tabela Livro
INSERT INTO Livro (titulo, genero, editora) VALUES ('O matador de cachorro', 'Terror', 'Cachorrada Cinematográfica');
INSERT INTO Livro (titulo, genero, editora) VALUES ('Terra do Sangue', 'Terror', 'Sangsuga');
INSERT INTO Livro (titulo, genero, editora) VALUES ('Valdemort Sem Nariz', 'Ação', 'Harry Pouvora');
INSERT INTO Livro (titulo, genero, editora) VALUES ('Besouro do Amor', 'Romance', 'Besourada Alegante');
INSERT INTO Livro (titulo, genero, editora) VALUES ('Gato com lutas', 'Comédia', 'Gatuxo');
INSERT INTO Livro (titulo, genero, editora) VALUES ('Veado Alado', 'Comédia', 'Distribuição Worn bross');
INSERT INTO Livro (titulo, genero, editora) VALUES ('Esqueleto Assado', 'Terror', 'Turma da fome');
INSERT INTO Livro (titulo, genero, editora) VALUES ('Dinheirou faltou, o besta levou', 'Drama', 'Disney pictures');
INSERT INTO Livro (titulo, genero, editora) VALUES ('Ronaldo Arnaldo', 'Comédia', 'Xulalaxu');
INSERT INTO Livro (titulo, genero, editora) VALUES ('Amor sem sal', 'Romance', 'Amantes do amor');


INSERT INTO Cliente(cpf, nome, endereco, sexo, dataNascimento) VALUES('999.999.999-64','Daniel Casca','Rua da Pitaia','M','1999-08-25')
INSERT INTO Cliente(cpf, nome, endereco, sexo, dataNascimento) VALUES('111.111.111-11', 'Ana Silva', 'Avenida Brasil, 1000', 'F', '1985-05-15');
INSERT INTO Cliente(cpf, nome, endereco, sexo, dataNascimento) VALUES('222.222.222-22', 'Carlos Oliveira', 'Rua das Flores, 55', 'M', '1990-12-01');
INSERT INTO Cliente(cpf, nome, endereco, sexo, dataNascimento) VALUES('333.333.333-33', 'Mariana Costa', 'Travessa do Sol, 12', 'F', '1988-07-22');
INSERT INTO Cliente(cpf, nome, endereco, sexo, dataNascimento) VALUES('444.444.444-44', 'João Pedro Santos', 'Rua da Paz, 45', 'M', '1995-03-10');
INSERT INTO Cliente(cpf, nome, endereco, sexo, dataNascimento) VALUES('555.555.555-55', 'Patrícia Lima', 'Rua das Acácias, 78', 'F', '1992-11-30');
INSERT INTO Cliente(cpf, nome, endereco, sexo, dataNascimento) VALUES('666.666.666-66', 'Rodrigo Almeida', 'Avenida dos Estados, 200', 'M', '1987-06-18');
INSERT INTO Cliente(cpf, nome, endereco, sexo, dataNascimento) VALUES('777.777.777-77', 'Juliana Ferreira', 'Rua do Horizonte, 3', 'F', '1993-09-09');
INSERT INTO Cliente(cpf, nome, endereco, sexo, dataNascimento) VALUES('888.888.888-88', 'Ricardo Martins', 'Rua das Palmeiras, 20', 'M', '1984-02-25');
INSERT INTO Cliente(cpf, nome, endereco, sexo, dataNascimento) VALUES('999.999.999-99', 'Fernanda Pereira', 'Avenida Central, 500', 'F', '1997-10-05');

INSERT INTO Aluguel(cpfCliente, codigoLivro, codigoAluguel, dataRetirada, dataDevolucao)VALUES('111.111.111-11', 1, '123456', '2024-02-12', '2024-03-01');
INSERT INTO Aluguel (cpfCliente, codigoLivro, codigoAluguel, dataRetirada, dataDevolucao)VALUES ('222.222.222-22', 6, 'AL0002', '2024-03-05', '2024-04-05');
INSERT INTO Aluguel (cpfCliente, codigoLivro, codigoAluguel, dataRetirada, dataDevolucao)VALUES ('333.333.333-33', 8, 'AL0003', '2024-01-20', '2024-02-20');
INSERT INTO Aluguel (cpfCliente, codigoLivro, codigoAluguel, dataRetirada, dataDevolucao)VALUES ('444.444.444-44', 10, 'AL0004', '2024-02-15', '2024-03-15');
INSERT INTO Aluguel (cpfCliente, codigoLivro, codigoAluguel, dataRetirada, dataDevolucao)VALUES ('555.555.555-55', 4, 'AL0005', '2024-04-01', '2024-05-01');
INSERT INTO Aluguel (cpfCliente, codigoLivro, codigoAluguel, dataRetirada, dataDevolucao)VALUES ('666.666.666-66', 3, 'AL0006', '2024-02-20', '2024-03-20');
INSERT INTO Aluguel (cpfCliente, codigoLivro, codigoAluguel, dataRetirada, dataDevolucao)VALUES ('777.777.777-77', 5, 'AL0007', '2024-03-10', '2024-04-10');
INSERT INTO Aluguel (cpfCliente, codigoLivro, codigoAluguel, dataRetirada, dataDevolucao)VALUES ('888.888.888-88', 7, 'AL0008', '2024-01-30', '2024-02-28');
INSERT INTO Aluguel (cpfCliente, codigoLivro, codigoAluguel, dataRetirada, dataDevolucao)VALUES ('999.999.999-99', 2, 'AL0009', '2024-02-01', '2024-03-01');

-- Seleção dos Dados
SELECT * FROM Livro;
SELECT * FROM Cliente;
SELECT * FROM Aluguel;

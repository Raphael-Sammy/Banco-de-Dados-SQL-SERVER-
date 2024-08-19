SELECT * FROM Hospedes

SELECT * FROM Quartos

SELECT * FROM Estadias

SELECT nome, sexo From Hospedes

SELECT tipo, valorDiaria, valorDiaria + valorDiaria * 0.1 'No crédito'FROM Quartos

SELECT MAX(valorDiaria)'Maior valor', Min(valorDiaria)'Menor valor', AVG(valorDiaria)'Média Aritmétrica' FROM Quartos

SELECT COUNT(CPF)'Quantidade de Hospedes' FROM Hospedes

select COUNT(dataNascimento) 'Quantidade de informantes sobre data de nascimento' FROM Hospedes

SELECT * FROM Hospedes WHERE sexo = 'M' 
SELECT * FROM Hospedes WHERE sexo = 'F' 
SELECT * FROM Quartos WHERE valorDiaria >= 350 
SELECT * FROM Quartos WHERE valorDiaria <= 700
SELECT * FROM Quartos WHERE valorDiaria >= 350 and valorDiaria <= 700
SELECT * FROM Quartos WHERE valorDiaria BETWEEN 350 and 700
SELECT * FROM Quartos WHERE valorDiaria = 520 or valorDiaria = 700
SELECT * FROM Quartos WHERE valorDiaria in(520,700)
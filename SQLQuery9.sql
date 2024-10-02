use Hotel

select * from Hospedes

Create View hospede_dados AS
select nome, datanascimento
from Hospedes

select * from hospede_dados

insert into Hospedes values('222222','Renata Viegas','Rua X','F',GETDATE())


Create Procedure Dados_Estadias_ano
@ano int as Begin

select h.*
from Hospedes h JOIN Estadias e
			  on h.CPF = e.hospede
where DATEPART(yy,e.dataEntrada) = @ano end


exec Dados_Estadias_ano 2023



Alter Procedure Dados_Hospedes_datas 
@nome varchar(80) as Begin


select e.dataEntrada 
from Estadias e JOIN Hospedes h on h.CPF = e.hospede 
where h.nome = @nome end

exec Dados_Hospedes_datas 'Maria dos Santos' 

select * from Dados_Estadias_ano

select * from Hospedes


CREATE PROCEDURE SP1
@descricao varchar(80), @ano int as 

select h.nome
from Hospedes h JOIN Solicitacoes so on h.CPF = so.hospede 
JOIN Servicos se on se.codServico = so.servico
where se.descricao = @descricao and DATEPART(yy,so.data) = @ano

EXEC SP1 'Babá', 2022
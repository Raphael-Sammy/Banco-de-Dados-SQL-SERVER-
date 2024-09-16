select * from Estadias e, Hospedes h 
where	e.dataEntrada between '01-01-2018'
and '31-12-2018' and h.CPF = e.Hospede;

select * from Servicos s, Solicitacoes so
where	so.data between '01-09-2023'
and '30-09-2023' and s.codServico = so.servico;

select  nome, hora from Hospedes h, Servicos s, Solicitacoes so
where s.descricao in ('Lavandeira','Babá') and h.CPF = so.hospede and so.servico = s.codServico;


select hospede, servico
From Hospedes h, Servicos s, Solicitacoes so
where h.sexo = 'M' and h.CPF = so.hospede and s.codServico = so.servico;



select h.nome, s.descricao
from Hospedes h, Servicos s, Solicitacoes so
where h.CPF = so.hospede and s.codServico = so.servico and so.data between '01-01-2012' and '30-06-2012'


select s.*, h.*
from Hospedes h, Servicos s, Solicitacoes so
where h.nome like '%Santos%' and h.CPF = so.hospede and so.servico = s.codServico;


select h.nome, e.dataEntrada 
from Hospedes h, Estadias e, Quartos q
where q.tipo in ('Standard','Luxo superior') and e.dataEntrada between '01-01-2012' and '31-12-2012'
and h.CPF = e.hospede and e.quarto = q.numero

select e.dataEntrada, e.dataSaida
from Hospedes h, Estadias e
where h.CPF = e.hospede 
order by e.dataEntrada DESC;



select h.nome, so.data, so.hora
from Hospedes h, Servicos s, Solicitacoes so
where h.sexo = 'F' and h.CPF = so.hospede and s.codServico = so.servico;



select distinct h.nome
from Hospedes h, Estadias e, Servicos s, Solicitacoes so, Quartos q
where h.CPF = e.hospede and q.numero = e.quarto and s.codServico = so.servico and h.CPF =  so.hospede
and q.valorDiaria > '500' and s.descricao in('Lanchonete','Passadeira');




select * from Solicitacoes


select sexo, count(*)
from Hospedes 
group by sexo;


select h.nome, count(*)
from Hospedes h, Estadias e
where h.CPF = e.hospede and e.dataEntrada Between '01-01-2018' and '31-12-2021'
group by h.nome
having count(*) >= 2;



select descricao, preco, count(*) quantidade, sum(preco) valorTotal
from  Servicos se, Solicitacoes so
where se.codServico = so.servico 
group by se.descricao, se.preco
having sum(se.preco) > 500;

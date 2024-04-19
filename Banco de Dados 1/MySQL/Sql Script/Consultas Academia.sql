-- 1.a) --
-- concat junta diferentes atributos numa mesma tabela
select concat(Nome, ' ' , Sobrenome) as nome_completo,
concat(Logradouro,', ' , Numero,', ', Bairro,', ', CEP) as Endereco, Telefone_contato, Telefone_Emergencia
from Pessoa_Associada
join Endereco on Pessoa_Associada.Endereco_ID = Endereco.Endereco_ID
join Telefone on Pessoa_Associada.Telefone_ID = Telefone.Telefone_ID;

-- 1.b) --
select concat(Nome, ' ', Sobrenome) as Nome 
from pessoa_associada
join Treino on pessoa_associada.pessoa_associada_ID = Treino.pessoa_associada_ID
where Treino.Modalidade_ID is not null
and Treino.Horario_ID is not null;

-- 1.c) --
select concat(Nome, ' ', Sobrenome) as Nome 
from pessoa_associada
join Treino on pessoa_associada.pessoa_associada_ID = Treino.pessoa_associada_ID
where Treino.Modalidade_ID is not null;

-- 1.d) --
select pl.Nome_plano as Plano, COUNT(pass.Pessoa_Associada_ID) as Quantidade
from Plano as pl
join Pessoa_associada as pass ON pl.plano_ID = pass.plano_ID
group by pl.Nome_plano;

-- 1.e) --
select concat(pessoa_treinadora.nome, ' ', pessoa_treinadora.sobrenome) as Treinador,
modalidade.nome_modalidade as Modalidade, horario.periodo as Periodo
from Aula
join pessoa_treinadora on aula.pessoa_treinadora_ID = pessoa_treinadora.pessoa_treinadora_ID
join modalidade on aula.modalidade_ID = modalidade.modalidade_id
join horario on aula.horario_ID = horario.horario_ID
where horario.periodo = 'Manhã';

-- l.f) -- 
select concat(avg(plano.valor), ',00 R$') as Valor_medio
from Pessoa_associada
join plano on pessoa_associada.plano_ID = plano.plano_ID;

-- 1.g) --
select concat(pessoa_associada.nome, ' ', pessoa_associada.sobrenome) as Associado, modalidade.nome_modalidade as Modalidade,
concat(pessoa_treinadora.nome, ' ', pessoa_treinadora.sobrenome) as Treinador
from Treino
join pessoa_associada on treino.pessoa_associada_ID = pessoa_associada.pessoa_associada_ID
join modalidade on treino.modalidade_ID = modalidade.modalidade_id
join pessoa_treinadora on treino.horario_ID = pessoa_treinadora.pessoa_treinadora_ID;

-- 1.h) --
select concat(pessoa_associada.nome, ' ', pessoa_associada.sobrenome) as Nome,
concat(endereco.logradouro, ', ', endereco.numero, ', ', endereco.bairro) as Endereco,
modalidade.nome_modalidade as Modalidade,
horario.periodo as Horario

from Pessoa_associada

join Endereco on pessoa_associada.endereco_ID = endereco.endereco_ID
join Treino on pessoa_associada.pessoa_associada_ID = treino.pessoa_associada_ID
join Modalidade on treino.modalidade_ID = modalidade.modalidade_ID
join Horario on treino.horario_ID = horario.horario_ID

where Pessoa_associada.nome like 'A%';

-- 1.i) --
select concat(pessoa_associada.nome, ' ', pessoa_associada.sobrenome) as Nome,
concat(endereco.logradouro, ', ', endereco.numero, ', ', endereco.bairro) as Endereco,
plano.nome_plano as Plano,
modalidade.nome_modalidade as Modalidade,
concat(plano.valor, ' R$') as Valor

from pessoa_associada

join Endereco on pessoa_associada.endereco_ID = endereco.endereco_ID
join Plano on pessoa_associada.plano_ID = plano.plano_ID
join Treino on pessoa_associada.pessoa_associada_ID = treino.pessoa_associada_ID
join Modalidade on treino.modalidade_ID = modalidade.modalidade_ID

where pessoa_associada.nome like 'S%';

-- 1.j) --
set foreign_key_checks = 0;
insert into Pessoa_Associada (Pessoa_Associada_ID, Nome, Sobrenome, Endereco_ID, Telefone_ID, Plano_ID)
values (33, 'Leonardo', 'Barreto', 40, null, 4);
select * from pessoa_associada;

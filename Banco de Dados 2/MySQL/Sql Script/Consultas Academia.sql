use academia;

-- a
create view nomeS as
select nome, sobrenome
from Pessoa_Associada;
select * from nomeS;

-- b
create view nomeSob as
select p.Pessoa_Associada_ID, CONCAT(p.Nome, ' ', p.Sobrenome) as Nome, concat(e.Logradouro,' ', e.Numero, ' ', e.Bairro) as Endereco
from Pessoa_Associada as p
inner join Endereco as e on p.Endereco_ID = e.Endereco_ID;
select * from nomeSob;
    
-- c
create view endC as
select nome, sobrenome
from Pessoa_Treinadora;
select * from endC;

-- d
create view tudo as
select p.Pessoa_Associada_ID, CONCAT(p.Nome, ' ', p.Sobrenome) as Nome, concat(e.Logradouro,' ', e.Numero, ' ', e.Bairro, ' ', e.CEP) as Endereco, concat(t.telefone_contato,' ', t.telefone_emergencia) as Contato
from Pessoa_Associada p
inner join Endereco e on p.Endereco_ID = e.Endereco_ID
inner join Telefone t on p.Telefone_ID = t.Telefone_ID;
select * from tudo;

-- e
create view modal as
select p.pessoa_associada_id, concat(p.nome, ' ', p.sobrenome) as NomeAssociado, m.nome_modalidade, concat(tr.nome, ' ', tr.sobrenome) as NomeTreinador
from pessoa_associada as p
inner join treino as t on p.pessoa_associada_id = t.pessoa_associada_id
inner join modalidade as m on t.modalidade_id = m.modalidade_id
inner join aula as a on t.modalidade_id = a.modalidade_id and t.horario_id = a.horario_id
inner join pessoa_treinadora as tr on a.pessoa_treinadora_id = tr.pessoa_treinadora_id;
select * from modal;

-- f
CREATE VIEW turno AS
SELECT CONCAT(pa.Nome, ' ', pa.Sobrenome) AS Nome_Completo, CONCAT(e.Logradouro, ', ', e.Numero, ' - ', e.Bairro) AS Endereco_Completo, m.Nome_modalidade AS Modalidade, h.Periodo AS Horario
FROM Pessoa_Associada AS pa
INNER JOIN Treino AS t ON pa.Pessoa_Associada_ID = t.Pessoa_Associada_ID
INNER JOIN Modalidade AS m ON t.Modalidade_ID = m.Modalidade_ID
INNER JOIN Horario AS h ON t.Horario_ID = h.Horario_ID
INNER JOIN Endereco AS e ON pa.Endereco_ID = e.Endereco_ID
WHERE pa.Nome LIKE 'A%';

-- g
CREATE VIEW valor AS
SELECT CONCAT(pa.Nome, ' ', pa.Sobrenome) AS Nome_Completo, CONCAT(e.Logradouro, ', ', e.Numero, ' - ', e.Bairro) AS Endereco_Completo, pl.Nome_plano AS Plano, m.Nome_modalidade AS Modalidade, pl.Valor AS Valor_Pago
FROM Pessoa_Associada AS pa
INNER JOIN Plano AS pl ON pa.Plano_ID = pl.Plano_ID
INNER JOIN Treino AS t ON pa.Pessoa_Associada_ID = t.Pessoa_Associada_ID
INNER JOIN Modalidade AS m ON t.Modalidade_ID = m.Modalidade_ID
INNER JOIN Endereco AS e ON pa.Endereco_ID = e.Endereco_ID
WHERE pa.Nome LIKE '%S%';

-- h
CREATE VIEW gasto AS
SELECT ROUND(AVG(Valor),2) AS Valor_Medio_Gasto
FROM Pessoa_Associada AS pa
INNER JOIN Plano AS pl ON pa.Plano_ID = pl.Plano_ID;
SELECT * FROM gasto;

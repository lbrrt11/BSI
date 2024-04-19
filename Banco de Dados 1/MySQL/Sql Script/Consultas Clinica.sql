select * from clinica;

-- QUESTÃO 1 -- A Mostrar os registros da tabela Medico.
select *
from medico;

-- QUESTÃO 1 B -- Mostrar os Pacientes da cidade Salvador.
select *
from paciente
where cidade = 'Salvador';

-- QUESTÃO 1 C -- Buscar as especialidades distintas dos médicos.
select distinct(especialidade)
from medico;

-- QUESTÃO 1 D -- Qual o salário líquido dos funcionários (desconto de 10%).
select nome, salario*0.9 as salario_liquido
from funcionario;

-- QUESTÃO 1 E -- Informar o total de médicos ortopedistas.
select count(cdMed)
from medico
where especialidade = 'ortopedia';

-- QUESTÃO 1 F -- Total de médicos que atendem em ambulatórios.
select count(cdAmb) -- count(cdAmb) conta as ocorrências
from medico
where cdAmb is not null;

-- QUESTÃO 1 G -- Informar a capacidade total dos ambulatórios do primeiro andar.
select sum(capacidade)
from ambulatorio
where andar = '1';

-- QUESTÃO 1 H -- Informar a média de idade dos pacientes de Itapetinga.
select round(avg(idade),1) -- avg() calcula média
from paciente
where cidade = 'Itapetinga';

-- QUESTÃO 1 I -- Informar o menor e o maior salário pagos aos Funcionários com mais de 35 anos
select min(salario) as mínimo, max(salario) as máximo
from funcionario
where idade > '35';

-- QUESTÃO 1 J -- Informar a quantidade de especialidades diferentes de médicos.
select count(distinct (especialidade)) as especialidades
from medico;

-- QUESTÃO 1 K -- Informar a média de salários distintos dos funcionários.
select avg(distinct(salario))
from funcionario;

-- QUESTÃO 1 L -- Crie uma instrução SQL para buscar o nome e o CPF dos médicos com menos de 40 anos ou com especialidade diferente de ortopedia ordenando a seleção por nome em ordem decrescente.
select nome, CPF
from medico
where idade < '40'
or especialidade <> 'ortopedia';

-- QUESTÃO 1 M -- Crie uma instrução SQL para buscar todos os dados das consultas marcadas no período da tarde após o dia 01/01/2023.
select cdCons, cdMed, cdPac, cdFunc_Marcacao, data, hora, Obs
from consulta
where hora between '13:00' and '19:00';
--- and data after '01/01/2023';

-- QUESTÃO 1 N -- Crie uma instrução SQL para buscar o nome e a idade dos pacientes que não residem em Itapetinga.
select nome, idade, cidade
from paciente
where cidade <> 'Itapetinga';

-- QUESTÃO 1 O -- Crie uma instrução SQL para buscar a hora das consultas marcadas antes do dia 30/04/2023 e depois do dia 10/05/2023.
select hora
from consulta
where data < '2023-04-30' or data > '2023-05-10';

-- QUESTÃO 1 P -- Crie uma instrução SQL para buscar o nome e a especialidade dos médicos cuja segunda e a última letra de seu nome seja a letra “o”.
select nome, especialidade
from medico
where nome like '_o%o';

-- QUESTÃO 1 Q -- Crie uma instrução SQL para mostrar quantidade de paciente por cidade.
select count(cdPac), cidade
from paciente
group by cidade;

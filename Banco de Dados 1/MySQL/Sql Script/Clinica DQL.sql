select * from clinica;

-- QUESTÃO 1 A
select *
from medico;

-- QUESTÃO 1 B
select *
from paciente
where cidade = 'Salvador';

-- QUESTÃO 1 C
select distinct(especialidade)
from medico;

-- QUESTÃO 1 D
select nome, salario*0.9 as salario_liquido
from funcionario;

-- QUESTÃO 1 E
select count(cdMed)
from medico
where especialidade = 'ortopedia';

-- QUESTÃO 1 F
select count(cdAmb) -- count(cdAmb) conta as ocorrências
from medico
where cdAmb is not null;

-- QUESTÃO 1 G
select sum(capacidade)
from ambulatorio
where andar = '1';

-- QUESTÃO 1 H
select round(avg(idade),1) -- avg() calcula média
from paciente
where cidade = 'Itapetinga';

-- QUESTÃO 1 I
select min(salario) as mínimo, max(salario) as máximo
from funcionario
where idade > '35';

-- QUESTÃO 1 J
select count(distinct (especialidade)) as especialidades
from medico;

-- QUESTÃO 1 K
select avg(distinct(salario))
from funcionario;

-- QUESTÃO 1 L
select nome, CPF
from medico
where idade < '40'
or especialidade <> 'ortopedia';

-- QUESTÃO 1 M
select cdCons, cdMed, cdPac, cdFunc_Marcacao, data, hora, Obs
from consulta
where hora between '13:00' and '19:00';
--- and data after '01/01/2023';

-- QUESTÃO 1 N
select nome, idade, cidade
from paciente
where cidade <> 'Itapetinga';

-- QUESTÃO 1 O
select hora
from consulta
where data < '2023-04-30' or data > '2023-05-10';

-- QUESTÃO 1 P
select nome, especialidade
from medico
where nome like '_o%o';

-- QUESTÃO 1 Q
select count(cdPac), cidade
from paciente
group by cidade;

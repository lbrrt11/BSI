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
from ambulatorio;

-- QUESTÃO 1 G
select count(capacidade)
from ambulatorio
where andar = '1';

-- QUESTÃO 1 H
select avg(idade) -- avg() calcula média
from paciente
where cidade = 'Itapetinga';

-- QUESTÃO 1 I
select min(salario), max(salario)
from funcionario
where idade > '35';

-- QUESTÃO 1 J
select count(especialidade)
from medico;

-- QUESTÃO 1 K
select distinct avg(salario)
from funcionario;

-- QUESTÃO 1 L
select nome, CPF
from medico
where idade < '40'
and especialidade != 'ortopedia';

-- QUESTÃO 1 M
select cdCons, cdMed, cdPac, cdFunc_Marcacao, data, hora, Obs
from consulta
where hora between '13:00' and '19:00';
--- and data after '01/01/2023';

-- QUESTÃO 1 Q
select count(cdPac), cidade
from paciente
group by cidade;
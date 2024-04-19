-- 1 --
select primeironome, segundonome, ultimonome
from funcionarios
order by ultimonome;

-- 2 --
select *
from funcionarios
order by cidade;

-- 3 --
select *
from funcionarios
where salario > 1000
order by primeironome, segundonome, ultimonome;

-- 4 --
select datanasci, primeironome
from funcionarios
order by datanasci desc;

-- 5 --
select ultimonome as Ultimo_Nome, primeironome as Primeiro_Nome, segundonome as Segundo_Nome
from funcionarios;

-- 6 --
select sum(salario) as Folha_de_Pagamento
from funcionarios;

-- 7 --
select primeironome, funcao, departamentos.nome
from funcionarios, departamentos
where funcionarios.codigo = departamentos.codigo
order by primeironome;

-- 8 --
select nome, codigofuncionariogerente, primeironome
from departamentos, funcionarios
where codigofuncionariogerente = funcionarios.codigo
order by nome;

-- 9 --
select departamentos.codigo, nome, sum(salario)
from departamentos
join Funcionarios on departamentos.Codigo = funcionarios.codigodepartamento
group by departamentos.codigo, departamentos.Nome;

-- 10 --
select departamentos.nome, funcionarios.primeironome, funcionarios.ultimonome, funcionarios.Funcao
from funcionarios
inner join departamentos on funcionarios.codigodepartamento = departamentos.codigo
where funcionarios.funcao = 'Supervisor'
order by departamentos.nome;

-- 11 --
select count(*) as quantidadefuncionarios
from Funcionarios;

-- 12 --
select avg(salario) as media_salarial
from funcionarios;

-- 13 --
select departamentos.Nome, min(funcionarios.salario)
from funcionarios
inner join departamentos on funcionarios.codigodepartamento = departamentos.codigo
group by departamentos.nome;

-- 14 --
select concat(PrimeiroNome, ' ', UltimoNome) as Nome_completo
from funcionarios
where segundonome is null or segundonome = '';

-- 15 --
select departamentos.nome as departamento, concat(funcionarios.primeironome, ' ', funcionarios.ultimonome) as funcionario
from Funcionarios
inner join departamentos on funcionarios.codigodepartamento = departamentos.codigo
order by departamento, funcionario;

-- 16 --
select concat(primeironome, ' ', ultimonome) as nome_funcionario
from funcionarios
where cidade = 'Recife' and funcao = 'Telefonista';

create database clinica;
use clinica;

create table Ambulatorio(
 cdAmb int auto_increment, 
 andar numeric(3) not null,
 capacidade smallint,
 
 primary key (cdAmb)
 );
 
 create table Medico(
 cdMed int auto_increment,
 nome varchar(40) not null,
 idade smallint not null,
 especialidade char(45), 
 CPF numeric(11) unique not null,
 cidade varchar(30),
 cdAmb int,
 
 primary key (cdMed),
 foreign key (cdAmb) references Ambulatorio (cdAmb)
 on delete cascade
 on update cascade
 );

create table Paciente(
cdPac int auto_increment,
nome varchar(40) not null,
idade smallint not null,
cidade char(30),
CPF numeric(11) unique,
doenca varchar(40) not null,

primary key (cdPac)
);

create table Funcionario(
cdFunc int,
nome varchar(40) not null, 
idade smallint, 
CPF numeric(11) unique,
cidade varchar(30), 
salario float,
cargo varchar(20),
cdAmb int,

primary key(cdFunc),
foreign key(cdAmb) references Ambulatorio(cdAmb)
);

create table Consulta(
cdCons int,
cdMed int, 
cdPac int,
cdFunc_Marcacao int,
data date, 
hora time, 
Obs varchar(100),

primary key(cdCons),
foreign key (cdMed) references Medico(cdMed),
foreign key (cdPac) references Paciente(cdPac),
foreign key (cdFunc_Marcacao) references Funcionario(cdFUnc)
on delete cascade
on update cascade
);

insert into Ambulatorio(cdAmb, andar, capacidade) values (1, 1, 30);
insert into Ambulatorio(cdAmb, andar, capacidade) values (2, 1, 30);
insert into Ambulatorio(cdAmb, andar, capacidade) values (3, 2, 50);
insert into Ambulatorio(cdAmb, andar, capacidade) values (4, 2, 50);
insert into Ambulatorio(cdAmb, andar, capacidade) values (5, 2, 15);

insert into Medico(cdMed, nome, idade, especialidade, CPF, cidade, cdAmb) values (1, 'Joao', 40, 'ortopedia', 10000100000, 'Salvador', 1);
insert into Medico(cdMed, nome, idade, especialidade, CPF, cidade, cdAmb) values (2, 'Maria', 42, 'ortopedia', 10000110000, 'Salvador', 1);
insert into Medico(cdMed, nome, idade, especialidade, CPF, cidade, cdAmb) values (3, 'Pedro', 51, 'pediatria', 11000100000, 'Conquista', 2);
insert into Medico(cdMed, nome, idade, especialidade, CPF, cidade, cdAmb) values (4, 'Carlos', 28, 'pediatria', 11000110000, 'Itapetinga', 3);
insert into Medico(cdMed, nome, idade, especialidade, CPF, cidade, cdAmb) values (5, 'Marcia', 33, 'pediatria', 11000111000, 'Itapetinga', 3);

insert into Paciente(cdPac, nome, idade, cidade, CPF, doenca) values (1, 'Ana', 20, 'Itapetinga', 20000200000, 'Gripe');
insert into Paciente(cdPac, nome, idade, cidade, CPF, doenca) values (2, 'Paulo', 24, 'Conquista', 20000220000, 'Fratura');
insert into Paciente(cdPac, nome, idade, cidade, CPF, doenca) values (3, 'Lucia', 30, 'Itapetinga', 22000200000, 'Fratura');
insert into Paciente(cdPac, nome, idade, cidade, CPF, doenca) values (4, 'Kauã', 28, 'Itambé', 11000110000, 'Sarampo');

insert into Funcionario(cdfunc, nome, idade, cidade, salario, CPF) values (1, 'Rita', 32, 'Itapetinga', 1200, 20000100000);
insert into Funcionario(cdfunc, nome, idade, cidade, salario, CPF) values (2, 'Mariana', 55, 'Conquista', 1220, 30000110000);
insert into Funcionario(cdfunc, nome, idade, cidade, salario, CPF) values (3, 'Caio', 45, 'Salvador', 2000, 41000100000);
insert into Funcionario(cdfunc, nome, idade, cidade, salario, CPF) values (4, 'Luis', 44, 'Conquista', 1200, 51000110000);
insert into Funcionario(cdfunc, nome, idade, cidade, salario, CPF) values (5, 'Fabiana', 33, 'Salvador', 2500, 61000111000);

insert into Consulta(cdCons, cdMed, cdPac, cdFunc_Marcacao, data, hora, obs) values (1, 1, 1, 1, 12/06/2023, '19:20', 'AGENDADO');
insert into Consulta(cdCons, cdMed, cdPac, cdFunc_Marcacao, data, hora, obs) values (2, 1, 4, 1, 13/06/2023, '13:20', 'AGENDADO');
insert into Consulta(cdCons, cdMed, cdPac, cdFunc_Marcacao, data, hora, obs) values (3, 2, 1, 2, 09/05/2023, '13:30', 'CONFIRMADO');
insert into Consulta(cdCons, cdMed, cdPac, cdFunc_Marcacao, data, hora, obs) values (4, 2, 2, 2, 13/05/2023, '12:30', 'CONFIRMADO');
insert into Consulta(cdCons, cdMed, cdPac, cdFunc_Marcacao, data, hora, obs) values (5, 2, 3, 2, 10/05/2023, '15:00', 'CONFIRMADO');
insert into Consulta(cdCons, cdMed, cdPac, cdFunc_Marcacao, data, hora, obs) values (6, 2, 4, 3, 13/05/2023, '10:00', 'CONFIRMADO');
insert into Consulta(cdCons, cdMed, cdPac, cdFunc_Marcacao, data, hora, obs) values (7, 3, 1, 3, 19/06/2023, '11:00', 'AGENDADO');
insert into Consulta(cdCons, cdMed, cdPac, cdFunc_Marcacao, data, hora, obs) values (8, 3, 3, 4, 12/06/2023, '12:20', 'AGENDADO');
insert into Consulta(cdCons, cdMed, cdPac, cdFunc_Marcacao, data, hora, obs) values (9, 3, 4, 4, 19/07/2023, '13:20', 'AGENDADO');
insert into Consulta(cdCons, cdMed, cdPac, cdFunc_Marcacao, data, hora, obs) values (10, 2, 4, 4, 10/05/2023, '19:40', 'CONFIRMADO');
insert into Consulta(cdCons, cdMed, cdPac, cdFunc_Marcacao, data, hora, obs) values (11, 4, 4, 4, 22/05/2023, '19:20', 'CONFIRMADO');

/*insert into Aluno values (null, 'Leonardo');

select*from Aluno;

set @@auto_increment_increment = 5;*/

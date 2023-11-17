create database Faculdade2;
use Faculdade2;

create table Aluno(
matricula int unique,
nome VarChar(45) not null,
curso varchar(45) not null,
tipo varchar(45) not null,

primary key (matricula)
);

create table Disciplina(
dnumero int auto_increment,
nome varchar(45) not null,
carga_horaria int not null,
depnumero int not null,

primary key (dnumero)
);

create table Departamento(
nome varchar(45) not null,
depnumero int unique,

primary key (depnumero)
);

create table Pre_requisito(
disciplina_dnumero int unique,
dnumero_pre int unique,

primary key (dnumero_pre, disciplina_dnumero),
foreign key (disciplina_dnumero) references Disciplina (dnumero)
);

create table Professor(
pnumero int unique,
nome varchar (45) not null,
departamento_depnumero int not null,

primary key (pnumero),
foreign key (departamento_depnumero) references Departamento (depnumero)
);

create table Turma(
tnumero int unique,
disciplina_dnumero int unique,
ano int not null,
semestre int not null,
professor_pnumero int unique,

primary key (tnumero, disciplina_dnumero, professor_pnumero),
foreign key (disciplina_dnumero) references Disciplina (dnumero),
foreign key (professor_pnumero) references Professor (pnumero)
);

create table Historico(
aluno_matricula int unique,
turma_tnumero int unique,
nota int not null,

primary key (aluno_matricula, turma_tnumero),
foreign key (aluno_matricula) references Aluno (matricula),
foreign key (turma_tnumero) references Turma (tnumero)
);

insert into Aluno(nome, matricula, tipo, curso) values ('Carlos', '001', 'Graduação', 'Sistemas de Informação');
insert into Aluno(nome, matricula, tipo, curso) values ('Rafael', '101', 'Pós-Graduação', 'Mestrado em Filosofia');
insert into Aluno(nome, matricula, tipo, curso) values ('Laura', '002', 'Graduação', 'Sistemas de Informação');

insert into Disciplina(dnumero, nome, carga_horaria, depnumero) values ('03', 'Banco de Dados', '64', '02');
insert into Disciplina(dnumero, nome, carga_horaria, depnumero) values ('02', 'Filosofia, Ética e Desenvolvimento', '16', '03');
insert into Disciplina(dnumero, nome, carga_horaria, depnumero) values ('01', 'Inglês Instrumental', '32', '01');

insert into Departamento(nome, depnumero) values ('Departamento A', '01');
insert into Departamento(nome, depnumero) values ('Departamento B', '02');
insert into Departamento(nome, depnumero) values ('Departamento C', '03');

insert into Pre_requisito(disciplina_dnumero, dnumero_pre) values ('03', '02');
insert into Pre_requisito(disciplina_dnumero, dnumero_pre) values ('02', '01');
insert into Pre_requisito(disciplina_dnumero, dnumero_pre) values ('01', '03');

insert into Professor(pnumero, nome, departamento_depnumero) values ('04', 'Alvaro', '01');
insert into Professor(pnumero, nome, departamento_depnumero) values ('09', 'Gisele', '02');
insert into Professor(pnumero, nome, departamento_depnumero) values ('03', 'Paulo', '03');

insert into Turma(tnumero, disciplina_dnumero, ano, semestre, professor_pnumero) values ('01', '03', '2020', '6', '04');
insert into Turma(tnumero, disciplina_dnumero, ano, semestre, professor_pnumero) values ('02', '02', '2021', '4', '09');
insert into Turma(tnumero, disciplina_dnumero, ano, semestre, professor_pnumero) values ('03', '01', '2022', '2', '03');

insert into Historico(aluno_matricula, turma_tnumero, nota) values ('001', '01', '8.5');
insert into Historico(aluno_matricula, turma_tnumero, nota) values ('101', '02', '6.8');
insert into Historico(aluno_matricula, turma_tnumero, nota) values ('002', '03', '9.4');

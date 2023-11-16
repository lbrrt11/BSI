create database Faculdade2;
use Faculdade;

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
dnumero_pre date unique,

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
-- create database Empresa;
use Empresa;

create table Empregado7(
pnome VarChar(45),
minicial VarChar(45),
unome Varchar(45),
ssn int auto_increment,
datanasc date,
endereço varchar(100),
sexo varchar(45),
salario float,
dnumero int,
superssn int,

primary key (ssn),
foreign key (superssn) references Empregado7 (ssn)
);

create table Departamento7(
dnome VarChar(45),
dnumero int auto_increment,
gerssn int,
gerdatainicio date,

primary key (dnumero),
foreign key (gerssn) references Empregado7 (ssn)
);

create table Depto_localizacoes7(
dnumro int,
dlocalizacao VarChar(45),

primary key (dnumro, dlocalizacao),
foreign key (dnumro) references Departamento7 (dnumero)
);

create table Projeto7(
pjnome VarChar(45),
pnumero int auto_increment,
plocalizacao varchar(45),
dnum int,

primary key (pnumero),
foreign key (dnum) references Departamento7 (dnumero)
);

create table Trabalha_em7(
essn int auto_increment,
pn int,
horas int,

primary key (essn, pn),
foreign key (essn) references Empregado7 (ssn),
foreign key (pn) references Projeto7 (pnumero)
);

create table Dependente7(
essn int,
nome_dependente VarChar(45),
sexo varchar(45),
datanasc date,
parentesco varchar(45),

primary key (essn, nome_dependente),
foreign key (essn) references Empregado7 (ssn)
);

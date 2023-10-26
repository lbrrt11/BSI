create database Teste;
use Teste;

create table Aluno13(
no_cartao int,
nome VarChar(45),

primary key (no_cartao)
);

create table Sala13(
num_predio int auto_increment,
num_sala int,
capacidade int,

primary key (num_predio, num_sala)
);

create table Aula13(
dia date,
hora time,
sala_num_predio int,
sala_num_sala int,

primary key (dia, hora, sala_num_predio, sala_num_sala),
foreign key (sala_num_predio) references Sala13 (num_predio),
foreign key (sala_num_sala) references Sala13 (num_sala)
);

create table Presença13(
aluno_no_cartao int,
aula_dia date,
aula_hora time,

primary key (aluno_no_cartao, aula_dia, aula_hora),
foreign key (aluno_no_cartao) references Aluno13 (no_cartao),
foreign key (aula_dia) references Aula13 (dia),
foreign key (aula_hora) references Aula13 (hora)
);
create database Hospital;
use Hospital;

create table medicamento(
NomeVenda varchar(45),
principioAtivo varchar(45),

primary key (NomeVenda)
);


create table virus(
Nome_Cientifico varchar (45),
nomePopular varchar (45),
refMedicamento varchar (45),

primary key (Nome_Cientifico),
foreign key (refMedicamento) references medicamento (NomeVenda)
);


create table paciente(
idPaciente int auto_increment,
nome varchar(45),

primary key (idPaciente)
);


create table trata(
refMedicamento varchar(45),
refVirus varchar(45),
refPaciente int,

primary key (refMedicamento, refVirus, refPaciente),
foreign key (refMedicamento) references medicamento (NomeVenda),
foreign key (refVirus) references virus (Nome_Cientifico),
foreign key (refPaciente) references paciente (idPaciente)
)

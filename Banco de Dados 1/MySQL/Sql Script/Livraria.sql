Drop schema if exists Livraria;

Create schema if not exists Livraria;
Use Livraria;

Create table Cliente(
    Codigo int not null auto_increment,
    Nome varchar(45) not null,
    Rua varchar(45) not null,
    Cep int not null,
    Bairro varchar(45) not null,
    RG int not null,
    Email varchar(100) not null,
    
    primary key(Codigo)
);

Create table Editora(
    Codigo int not null auto_increment,
    Nome varchar(45) not null,
    
    primary key(Codigo)
);

create table Livros(
    ISBN int not null auto_increment,
    Edicao int not null,
    Custo double not null,
    Titulo varchar(45) not null,
    Editora_Codigo int not null,
    
    primary key(ISBN),
    foreign key(Editora_Codigo) references Editora(Codigo)
    on delete cascade
    on update cascade
);

Create table Exemplares(
    Codigo int not null auto_increment,
    DataAquisicao date,
    Livros_ISBN int not null,
    
    primary key(Codigo),
    foreign key(Livros_ISBN) references Livros(ISBN)
    on delete cascade
    on update cascade
);

Create table Autores(
    Codigo int not null auto_increment,
    Email varchar(100) not null,
    Nome varchar(45) not null,
    
    primary key(Codigo)
);

Create table Emprestimo(
	Data date,
	Exemplares_Codigo int not null,
    Cliente_Codigo int not null,
    
    primary key(Data),
    foreign key (Exemplares_Codigo) references Exemplares(Codigo),
    foreign key (Cliente_Codigo) references Cliente(Codigo)
    on delete cascade
    on update cascade
);

Create table Autoria(
	Livros_ISBN int not null,
    Autores_Codigo int not null,
    
    foreign key(Livros_ISBN) references Livros(ISBN),
    foreign key(Autores_Codigo) references Autores(Codigo)
    on delete cascade
    on update cascade
);

insert into Cliente (Nome, Rua, Cep, Bairro, RG, Email) values
('João', 'Rua A', 45700000, 'Clodoaldo Costa', 123456789, 'joao@email.com'),
('Bianca', 'Rua B', 45700000, 'Centro', 987654321, 'bianca@email.com'),
('Carlos', 'Rua C', 45028626, 'Candeias', 465138907, 'carlos@email.com'),
('Anna', 'Rua D', 45140000, 'Bela Vista', 312478976, 'anna@email.com'),
('Roberto', 'Rua E', 45700000, 'Camacã', 132648975, 'roberto@email.com'),
('Julia', 'Rua F', 45028626, 'Candeias', 975613488, 'julia@email.com'),
('Fernando', 'Rua G', 45140000, 'Humberto Lopes', 776213849, 'fernando@email.com'),
('Pedro', 'Rua H', 45700000, 'Centro', 421649975, 'pedro@email.com'),
('Lucas', 'Rua I', 45700000, 'Morumbi', 789510416, 'lucas@email.com'),
('Patricia', 'Rua J', 45028626, 'Boa Vista', 421894701, 'patricia@email.com');

insert into Editora (Nome, Codigo) values
('Editora A', '1'),
('Editora B', '2'),
('Editora C', '3'),
('Editora D', '4'),
('Editora E', '5'),
('Editora F', '6'),
('Editora G', '7'),
('Editora H', '8'),
('Editora I', '9'),
('Editora J', '10');

insert into Livros (ISBN, Edicao, Custo, Titulo, Editora_Codigo) values
(1, 2, 34.99, 'Livro 1', 1),
(2, 3, 39.99, 'Livro 2', 2),
(3, 1, 19.99, 'Livro 3', 3),
(4, 4, 54.99, 'Livro 4', 4),
(5, 1, 49.99, 'Livro 5', 5),
(6, 3, 34.99, 'Livro 6', 6),
(7, 4, 44.99, 'Livro 7', 7),
(8, 1, 29.99, 'Livro 8', 8),
(9, 5, 64.99, 'Livro 9', 9),
(10, 2, 49.99, 'Livro 10', 10);
-- (11, 2, 11.99, 'Livro 11', 11)

insert into Exemplares (DataAquisicao, Livros_ISBN) values
('2023-03-20', 10),
('2023-03-20', 9),
('2023-04-11', 8),
('2023-04-05', 7),
('2023-05-19', 6),
('2023-06-02', 5),
('2023-07-28', 4),
('2023-08-12', 3),
('2023-09-30', 2),
('2023-10-30', 1);

insert into Autores (Email, Nome) values
('autora@email.com // autora2@email.com', 'Autor A'),
('autorb@email.com', 'Autor B'),
('autorc@email.com', 'Autor C'),
('autord@email.com', 'Autor D'),
('autore@email.com', 'Autor E'),
('autorf@email.com // autorf2@email.com', 'Autor F'),
('autorg@email.com', 'Autor G'),
('autorh@email.com', 'Autor H'),
('autori@email.com // autori2@email.com', 'Autor I'),
('autorj@email.com', 'Autor J');

insert into Emprestimo(Data, Exemplares_Codigo, Cliente_Codigo) values
('2023-03-02', 1, 10),
('2023-03-29', 2, 9),
('2023-04-18', 3, 8),
('2023-05-06', 4, 7),
('2023-05-11', 5, 6),
('2023-06-21', 6, 5),
('2023-07-01', 7, 4),
('2023-08-30', 8, 3),
('2023-09-27', 9, 2),
('2023-10-16', 10, 1);

insert into Autoria(Livros_ISBN, Autores_Codigo) values
(10, 1),
(9, 2),
(8, 3),
(7, 4),
(6, 5),
(5, 6),
(4, 7),
(3, 8),
(2, 9),
(1, 10);
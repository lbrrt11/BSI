Drop schema if exists Livraria;

Create schema if not exists Livraria;
Use Livraria;

Create table Cliente(
    Codigo int not null auto_increment,
    Nome varchar(45) not null,
    Rua varchar(45),
    Cep int,
    Bairro varchar(45),
    RG int not null,
    Email varchar(100) not null,
    
    primary key(Codigo)
);

Create table Editora(
    Codigo int auto_increment,
    Nome varchar(45),
    
    primary key(Codigo)
);

create table Livros(
    IBSN int not null auto_increment,
    Edicao int,
    Custo float,
    Titulo varchar(45) not null,
    Editora_Codigo int not null,
    
    primary key(IBSN),
    foreign key(Editora_Codigo) references Editora(Codigo)
);

Create table Exemplares(
    Codigo int auto_increment,
    DataAquisicao date,
    Livros_IBSN int not null,
    
    primary key(Codigo),
    foreign key(Livros_IBSN) references Livros(IBSN)
);

Create table Autores(
    Codigo int auto_increment,
    Email varchar(100) not null,
    Nome varchar(45),
    
    primary key(Codigo)
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

insert into Livros (Edicao, Custo, Titulo, Editora_Codigo) values
(2, 34.99, 'Livro 1', 1),
(3, 39.99, 'Livro 2', 2),
(1, 19.99, 'Livro 3', 3),
(4, 54.99, 'Livro 4', 4),
(1, 49.99, 'Livro 5', 5),
(3, 34.99, 'Livro 6', 6),
(4, 44.99, 'Livro 7', 7),
(1, 29.99, 'Livro 8', 8),
(5, 64.99, 'Livro 9', 9),
(2, 49.99, 'Livro 10', 10);

insert into Exemplares (DataAquisicao, Livros_IBSN) values
('2023-03-20', 1),
('2023-03-20', 2),
('2023-04-11', 3),
('2023-04-05', 4),
('2023-05-19', 5),
('2023-06-02', 6),
('2023-07-28', 7),
('2023-08-12', 8),
('2023-09-30', 9),
('2023-10-30', 10);

insert into Autores (Email, Nome) values
('autora@email.com', 'Autor A'),
('autorb@email.com', 'Autor B'),
('autorc@email.com', 'Autor C'),
('autord@email.com', 'Autor D'),
('autore@email.com', 'Autor E'),
('autorf@email.com', 'Autor F'),
('autorg@email.com', 'Autor G'),
('autorh@email.com', 'Autor H'),
('autori@email.com', 'Autor I'),
('autorj0@email.com', 'Autor J');

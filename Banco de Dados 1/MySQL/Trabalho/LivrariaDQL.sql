-- 5.1 --
select *
from Emprestimo
where data = '2023-03-29';

-- 5.2 --
select email
from Autores
where Nome = 'Autor D';

-- 5.3 --
select *
from Cliente
where Bairro = 'Centro';

-- 5.4 --
Select Livros.Titulo, Exemplares.*
From Exemplares, Livros
Where Exemplares.Livros_ISBN = Livros.ISBN
and Exemplares.DataAquisicao = '2023-03-20';

-- 5.5 --
Select Codigo, Nome, Email
From Autores;

-- 5.6 --
Select Codigo, Nome, Email
From Cliente;

-- 5.7 --
Select Nome
From Autores
Inner join Livros on Autores.Codigo = Livros.ISBN
Where Livros.Titulo = 'Livro 8';

-- 5.8 --
Select AVG(Custo) as Media_Precos_R$
From Livros;

-- 5.9 --
Select Nome as Nome_Da_Editora
From Editora
Inner join Livros on Editora.Codigo = Livros.Editora_Codigo
where Livros.Titulo = 'Livro 6';

-- 5.10 --
Select Titulo, DataAquisicao
From Livros
Inner join Exemplares on Livros.ISBN = Exemplares.Livros_ISBN
where Livros.Titulo = 'Livro 10';
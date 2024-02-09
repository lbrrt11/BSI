Drop schema if exists empresa;
Create schema if not exists empresa;
Use empresa;

create table Funcionarios (
    Codigo INT PRIMARY KEY,
    PrimeiroNome VARCHAR(50),
    SegundoNome VARCHAR(50),
    UltimoNome VARCHAR(50),
    DataNasci DATE,
    CPF VARCHAR(14),
    RG VARCHAR(20),
    Endereco VARCHAR(100),
    CEP VARCHAR(10),
    Cidade VARCHAR(50),
    Fone VARCHAR(20),
    CodigoDepartamento INT,
    Funcao VARCHAR(50),
    Salario DECIMAL(10, 2)
);

create table Departamentos (
    Codigo INT PRIMARY KEY,
    Nome VARCHAR(100),
    Localizacao VARCHAR(100),
    CodigoFuncionarioGerente INT,
    FOREIGN KEY (CodigoFuncionarioGerente) REFERENCES Funcionarios(Codigo)
);

insert into Funcionarios (Codigo, PrimeiroNome, SegundoNome, UltimoNome, DataNasci, CPF, RG, Endereco, CEP, Cidade, Fone, CodigoDepartamento, Funcao, Salario)
values
    (1, 'João', 'Santos', 'Souza', '1990-05-15', '123.456.789-10', '1234567', 'Rua A, 123', '12345-678', 'Floripa', '(11) 98765-4321', 1, 'Analista de Vendas', 1000.00),
    (2, 'Maria', 'Carvalho', 'Oliveira', '1985-10-20', '987.654.321-00', '7654321', 'Av. B, 456', '54321-876', 'Rio de Janeiro', '(21) 12345-6789', 2, 'Gerente de Marketing', 6000.00),
    (3, 'Pedro', 'Melo', 'Lima', '1987-07-08', '456.789.123-45', '9876543', 'Rua C, 789', '98765-432', 'Recife', '(71) 56789-0123', 3, 'Telefonista', 3800.00),
    (4, 'Ana', 'Silva', 'Pereira', '1993-02-28', '789.012.345-67', '5432109', 'Rua D, 987', '87654-321', 'São Paulo', '(11) 23456-7890', 2, 'Analista de Marketing', 5000.00),
    (5, 'Lucas', 'Fernandes', 'Oliveira', '1980-12-10', '234.567.890-12', '8765432', 'Av. E, 654', '76543-210', 'Belo Horizonte', '(31) 3456-7890', 1, 'Desenvolvedor Web', 1000.00),
    (6, 'Julia', '', 'Costa', '1995-09-03', '890.123.456-78', '1098765', 'Rua F, 321', '23456-789', 'Salvador', '(51) 98765-4321', 3, 'Supervisor', 4600.00);
    
insert into Departamentos (Codigo, Nome, Localizacao, CodigoFuncionarioGerente)
values
    (1, 'Vendas', 'Andar 1', 1),
    (2, 'Marketing', 'Andar 2', 2),
    (3, 'Tecnologia', 'Andar 3', 3);
Drop schema if exists conta;
Create schema if not exists conta;
use conta;

create table CONTA(
 nro_conta int primary key,
 nome_titular varchar(30) not null,
 saldo real default 0
);

insert into conta(nro_conta, nome_titular, saldo) 
 values(1, 'Marta', 25400.00);
insert into conta(nro_conta, nome_titular, saldo) 
 values(2, 'Lucas', 1281.34);
insert into conta(nro_conta, nome_titular, saldo) 
 values(3, 'Ana', 85.12);
insert into conta(nro_conta, nome_titular, saldo) 
 values(4, 'Fábio', 172191.23);
insert into conta(nro_conta, nome_titular, saldo) 
 values(5, 'Bruna', -125);
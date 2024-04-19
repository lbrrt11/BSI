set @@autocommit = 0;

select * from conta;

start transaction;
update conta set saldo = saldo - 200
where nro_conta = 1;
savepoint Marta;

update conta set saldo = saldo + 200
where nro_conta = 5;
rollback to Marta;

select * from conta;

rollback;
select * from conta where nro_conta = 5;

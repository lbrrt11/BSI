-- 1.
delimiter $$
create procedure calcula_imc (altura double, peso double)
begin
declare imc double;
-- set altura = altura * altura; cálculo do quadrado da altura
-- set imc = peso/altura; divisão do peso pelo quadrado da altura
set imc = peso/altura/altura;

-- select 'O imc é: ' as msg, round(imc,1);

if (imc < 18.5) then
	select concat('O imc é: ' , round(imc,1), ' Abaixo do peso.') as Resultado;
end if;
	if (imc >= 18.5) and (imc <= 24.9) then
		select concat('O imc é: ', round(imc,1), ' Peso normal.') as Resultado;
end if;
	if (imc >= 25) and (imc <= 29.9) then
		select concat('O imc é: ' , round(imc,1), ' Excesso de peso.') as Resultado;
end if;
if (imc >= 30) and (imc <= 34.9) then
	select concat('O imc é: ', round(imc,1), 'Obesidade classe I.') as Resultado;
end if;
if (imc >= 35) and (imc <= 39.9) then
	select concat('O imc é: ', round(imc,1), ' Obesidade classe II.') as Resultado;
end if;
if (imc >= 40) then
	select concat('O imc é: ', round(imc,1), ' Obesidade classe III.') as Resultado;
end if;
end; $$

call calcula_imc (1.7, 70);

-- 2. a)
USE BANCO;
DELIMITER $$
CREATE PROCEDURE CONSULTA_CLIENTE (num_conta int)
BEGIN
SELECT * FROM CONTA_CORRENTE
WHERE NUM_CONTA = NUMERO;
END; $$
 
CALL CONSULTA_CLIENTE (201);

-- b)
DELIMITER $$
CREATE PROCEDURE INCLUIR (num int, saldoC decimal(10,2), nomeC varchar(100), sexoC char(1))
BEGIN
INSERT INTO CONTA_CORRENTE VALUES (num, saldoC, nomeC, sexoC);
END $$
DELIMITER;

CALL INCLUIR(200, 100, 'Pedro', 'M');
select * from conta_corrente;

-- c)
DROP PROCEDURE SELECIONA;
DELIMITER $$
CREATE PROCEDURE SELECIONA (NUMERO INT)
IF (NUMERO = 1) THEN
	SELECT * FROM CONTA_CORRENTE
    WHERE SEXO = 'M';
ELSEIF (NUMERO = 2) THEN 
	SELECT * FROM CONTA_CORRENTE
    WHERE SEXO = 'F';
ELSE
	SELECT 'OPÇÃO INVÁLIDA.';
END IF;
END$$

CALL SELECIONA(2);

-- d)
USE BANCO;
DELIMITER $$
CREATE PROCEDURE TRANSFERENCIA (conta1 int, conta2 int, valor decimal(10,2))
BEGIN
declare result double;
set result = (select saldo from conta_corrente where numero = conta1);
if (result < valor) then
	select 'Saldo insuficiente.' as mensagem;
else
	update conta_corrente
    set saldo = saldo - valor
    where numero = conta1;
    
    update conta_corrente
    set saldo = saldo + valor
    where numero = conta2; 
end if;
end $$
	
SELECT * FROM CONTA_CORRENTE;

CALL TRANSFERENCIA(200,105,10);
CALL TRANSFERENCIA(105,106,50);

-- 3. a)
use academia;
DELIMITER $$
create procedure incluir_modalidade (id int, nome varchar(45))
begin
insert into modalidade values (id, nome);
end $$
DELIMITER ;

SELECT * FROM MODALIDADE;

CALL INCLUIR_MODALIDADE (6, 'MUAY THAI');

-- b)
drop procedure reajuste;
DELIMITER $$
create procedure reajuste (percentual int)
begin
	update plano
    set valor = valor * (1+percentual/100);
end $$
DELIMITER ;

set sql_safe_updates = 0;

SELECT * FROM PLANO;
INSERT INTO PLANO VALUES (5, 'Bimestral', 100);

CALL REAJUSTE (10);
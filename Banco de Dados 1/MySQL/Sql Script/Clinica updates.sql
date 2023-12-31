SET SQL_SAFE_UPDATES = 0;

SELECT * FROM PACIENTE;

-- QUESTÃO 1 A
UPDATE PACIENTE
SET CIDADE = 'JEQUIÉ'
WHERE NOME = 'PAULO';

-- QUESTÃO 1 B
UPDATE FUNCIONARIO
SET IDADE = IDADE+1;

-- QUESTÃO 1 C
UPDATE MEDICO
SET CIDADE = 'ITAPETINGA'
WHERE cdAmb = 1;

-- QUESTÃO 1 D
UPDATE FUNCIONARIO
SET SALARIO = SALARIO + 1.20
WHERE SALARIO <= 1500;

-- QUESTÃO 1 E
SELECT * FROM CONSULTA;

UPDATE CONSULTA
SET DATA = DATA + 7
WHERE cdMed = 2;

-- QUESTÃO 1 F
UPDATE CONSULTA
SET HORA = '12:00'
WHERE (cdMed = 1 AND cdPac = 4);

-- QUESTÃO 1 G
UPDATE PACIENTE
SET DOENCA = 'Cancer'
WHERE NOME = 'ANA';

SELECT * FROM PACIENTE;

-- QUESTÃO 1 H
UPDATE CONSULTA
SET OBS = 'CONFIRMADO'
WHERE cdMed = 1;

SELECT * FROM CONSULTA;

-- QUESTÃO 1 I
DELETE FROM FUNCIONARIO
WHERE NOME = 'CARLOS';

SELECT * FROM FUNCIONARIO;

-- QUESTÃO 1 J
DELETE FROM CONSULTA
WHERE HORA > '19:00';

SELECT * FROM CONSULTA;

-- QUESTÃO 1 K
DELETE FROM MEDICO
WHERE CIDADE = 'SALVADOR';

SELECT * FROM MEDICO;
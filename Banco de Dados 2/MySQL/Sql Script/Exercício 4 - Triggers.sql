-- a)
use produtos;
DELIMITER $$
CREATE TRIGGER inserir_itens AFTER INSERT
ON itens_carrinho
FOR EACH ROW
BEGIN
	UPDATE Produtos SET Estoque = Estoque - NEW.Quantidade
WHERE id_produto = NEW.id_produto;
END $$
DELIMITER ;

-- b)
DELIMITER $$
CREATE TRIGGER atualizar_itens AFTER UPDATE
ON itens_carrinho
FOR EACH ROW
BEGIN
	IF (NEW.quantidade  > OLD.quantidade) THEN
		UPDATE Produtos SET estoque = estoque  - (NEW.quantidade  - OLD.quantidade)
        WHERE id_produto = id_produto;
	ELSE
		UPDATE Produtos SET estoque = estoque + (OLD.quantidade - NEW.quantidade)
        WHERE id_produto = id_produto;
	END IF;
END $$
DELIMITER ;

SELECT * FROM PRODUTOS;
SELECT * FROM ITENS_CARRINHO;

INSERT INTO ITENS_CARRINHO VALUES (2, 1, 100, 3);

UPDATE ITENS_CARRINHO SET quantidade = 20 WHERE ID_CARRINHO = 1;

-- c)
DELIMITER $$
CREATE TRIGGER excluir_itens AFTER DELETE
ON itens_carrinho
FOR EACH ROW
BEGIN
	UPDATE Produtos SET Estoque = Estoque + OLD.Quantidade
WHERE id_produto = id_produto;
END $$
DELIMITER ;

-- d)
SELECT * FROM PRODUTOS;
SELECT * FROM ITENS_CARRINHO;

INSERT INTO ITENS_CARRINHO VALUES (2, 1, 100, 3);

UPDATE ITENS_CARRINHO SET quantidade = 20 WHERE ID_CARRINHO = 1;

DELETE FROM ITENS_CARRINHO WHERE ID_CARRINHO = 2;
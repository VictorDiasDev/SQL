/* Comandos DML - Data Manipulation Language */

/* INSERT */

INSERT INTO CLIENTE VALUES(
	NULL, 'VICTOR', 'F', 'VICTOR@GMAIL.COM', '123323232'
);


/* FILTROS */

SELECT * FROM CLIENTE
WHERE SEXO = 'F';


/* UPDATE */

UPDATE CLIENTE
SET SEXO = 'M'
WHERE IDCLIENTE = 7;


/* DELETE */

DELETE FROM CLIENTE 
WHERE IDCLIENTE = 7;



/* Comandos DDL - Data Definition Language */


CREATE TABLE PRODUTO (
	IDPRODUTO INT PRIMARY KEY AUTO_INCREMENT,
	NOME_PRODUTO VARCHAR(30) NOT NULL,
	PRECO INT,
	FRETE FLOAT(10, 2) NOT NULL
);


/* Alter Table */

ALTER TABLE PRODUTO 
CHANGE PRECO VALOR_UNITARIO INT NOT NULL;



/* Modify */

ALTER TABLE PRODUTO 
MODIFY VALOR_UNITARIO VARCHAR(50) NOT NULL;


/* Adicionando colunas */

ALTER TABLE PRODUTO 
ADD PESO FLOAT(10, 2) NOT NULL;


/* Apagando uma coluna */

ALTER TABLE PRODUTO 
DROP COLUMN PESO;

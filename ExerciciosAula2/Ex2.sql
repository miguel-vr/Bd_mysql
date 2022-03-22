CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT,
nome VARCHAR (100) NOT NULL,
preco DECIMAL NOT NULL,
data_fabricao DATE,
quantidade INT,
marca VARCHAR (100),
PRIMARY KEY (id)
);

INSERT INTO tb_produtos (nome, preco, data_fabricao, quantidade, marca)
VALUES("Shampoo", 30.00, "2021-06-08", 380, "Pantene" );

INSERT INTO tb_produtos (nome, preco, data_fabricao, quantidade, marca)
VALUES("Condicionador", 35.00, "2021-10-28", 400, "Pantene" );

INSERT INTO tb_produtos (nome, preco, data_fabricao, quantidade, marca)
VALUES(" Máscara de Hidratação", 30.00, "2020-02-04", 100, "Tresemmé" );

INSERT INTO tb_produtos (nome, preco, data_fabricao, quantidade, marca)
VALUES("Sérum Facil", 250.00, "2020-09-25", 40, "La Roche-Posay" );

INSERT INTO tb_produtos (nome, preco, data_fabricao, quantidade, marca)
VALUES("Esfoliante Facial", 30.00, "2021-11-14", 80, "Dove" );

INSERT INTO tb_produtos (nome, preco, data_fabricao, quantidade, marca)
VALUES("Perfume", 1000.00, "2021-03-05", 10, "Chanel" );

INSERT INTO tb_produtos (nome, preco, data_fabricao, quantidade, marca)
VALUES("Protetor solar", 300.00, "2021-02-02", 95, "Dove" );

INSERT INTO tb_produtos (nome, preco, data_fabricao, quantidade, marca)
VALUES("Tônico Facial", 45.00, "2020-12-25", 19, "O Boticário" );

INSERT INTO tb_produtos (nome, preco, data_fabricao, quantidade, marca)
VALUES("Creme de pentear", 40.00, "2021-06-09", 18, "Pantene" );

SELECT * FROM tb_produtos;

SELECT nome, CONCAT('R$ ', FORMAT(preco, 'pt_br')) AS preço FROM tb_produtos;

SELECT * FROM tb_produtos where preco > 500;
SELECT * FROM tb_produtos where preco < 500;


UPDATE tb_produtos SET preco = 1000 WHERE id = 4;

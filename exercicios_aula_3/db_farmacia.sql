CREATE DATABASE db_farmacia_do_bem;

use db_farmacia_do_bem;

CREATE TABLE tb_categoria(
id bigint AUTO_INCREMENT,
tipo varchar(255),
PRIMARY KEY (id)
);



INSERT INTO tb_categoria (tipo)
VALUES	("Gripe");

INSERT INTO tb_categoria (tipo)
VALUES	("Febre");

INSERT INTO tb_categoria (tipo)
VALUES	("Cólica");

INSERT INTO tb_categoria (tipo)
VALUES	("Coluna");


CREATE TABLE tb_produto(
id bigint AUTO_INCREMENT,
nome varchar(255),
valor decimal (8,2),
quantidade int,
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);


INSERT INTO tb_produto (nome, valor, quantidade, categoria_id)
VALUES	("Ibuprofeno", 20, 100, 1);

INSERT INTO tb_produto (nome, valor, quantidade, categoria_id)
VALUES	("Paracetamol", 20, 30, 2);

INSERT INTO tb_produto (nome, valor, quantidade, categoria_id)
VALUES	("Novalgina", 30, 54, 1);

INSERT INTO tb_produto (nome, valor, quantidade, categoria_id)
VALUES	("Metamizol", 50, 10, 4);

INSERT INTO tb_produto (nome, valor, quantidade, categoria_id)
VALUES	("Piroxicam", 100, 10, 3);


SELECT * FROM tb_produto WHERE valor > 50;

SELECT * FROM tb_produto WHERE valor BETWEEN 3 AND 60;

SELECT * FROM tb_produto WHERE nome LIKE "%b%";

SELECT * FROM tb_produto INNER JOIN tb_categoria
ON tb_produto.categoria_id = tb_categoria.id;

SELECT * FROM tb_produto INNER JOIN tb_categoria
ON tb_produto.categoria_id = tb_categoria.id WHERE tb_categoria.id = 1;

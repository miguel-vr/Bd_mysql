
CREATE DATABASE db_pizzaria_legal;

use db_pizzaria_legal;

CREATE TABLE tb_categoria(
id bigint AUTO_INCREMENT,
tipo varchar(255),
PRIMARY KEY (id)
);


INSERT INTO tb_categoria (tipo)
VALUES	("PIZZA SALGADA");

INSERT INTO tb_categoria (tipo)
VALUES	("PIZZA TRADUCIONAL");

INSERT INTO tb_categoria (tipo)
VALUES	("PIZZA DOCE");





CREATE TABLE tb_pizza(
id bigint AUTO_INCREMENT,
nome varchar(255),
valor decimal (8,2),
quantidade int,
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_pizza (nome, valor, quantidade, categoria_id)
VALUES	("Calabresa", 50, 10, 1);

INSERT INTO tb_pizza (nome, valor, quantidade, categoria_id)
VALUES	("Portuguesa", 20, 10, 2);

INSERT INTO tb_pizza (nome, valor, quantidade, categoria_id)
VALUES	("Frango com catupiri", 40, 10, 1);

INSERT INTO tb_pizza (nome, valor, quantidade, categoria_id)
VALUES	("Quatro queijos", 50, 10, 2);

INSERT INTO tb_pizza (nome, valor, quantidade, categoria_id)
VALUES	("Sonho de valsa", 100, 10, 3);


SELECT * FROM tb_pizza WHERE valor > 45;

SELECT * FROM tb_pizza WHERE valor BETWEEN 29 AND 60;

SELECT * FROM tb_pizza WHERE nome LIKE "%c%";

SELECT * FROM tb_pizza INNER JOIN tb_categoria
ON tb_pizza.categoria_id = tb_categoria.id;

SELECT * FROM tb_pizza INNER JOIN tb_categoria
ON tb_pizza.categoria_id = tb_categoria.id WHERE tb_categoria.id = 2;

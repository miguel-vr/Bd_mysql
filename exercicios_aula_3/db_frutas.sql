CREATE DATABASE db_cidade_das_frutas;

use db_cidade_das_frutas;

CREATE TABLE tb_categoria(
id bigint AUTO_INCREMENT,
tipo varchar(255),
PRIMARY KEY (id)
);



INSERT INTO tb_categoria (tipo)
VALUES	("Frutas");

INSERT INTO tb_categoria (tipo)
VALUES	("Legumes");

INSERT INTO tb_categoria (tipo)
VALUES	("Ervas");

INSERT INTO tb_categoria (tipo)
VALUES	("Temperos");


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
VALUES	("Cominho", 2, 100, 4);

INSERT INTO tb_produto (nome, valor, quantidade, categoria_id)
VALUES	("Laranja", 15, 56, 1);

INSERT INTO tb_produto (nome, valor, quantidade, categoria_id)
VALUES	("Beterraba", 60, 70, 2);

INSERT INTO tb_produto (nome, valor, quantidade, categoria_id)
VALUES	("Folha de menta", 10, 102, 3);

INSERT INTO tb_produto (nome, valor, quantidade, categoria_id)
VALUES	("Cenoura", 9, 45, 2);


SELECT * FROM tb_produto WHERE valor > 50;

SELECT * FROM tb_produto WHERE valor BETWEEN 3 AND 60;

SELECT * FROM tb_produto WHERE nome LIKE "%c%";

SELECT * FROM tb_produto INNER JOIN tb_categoria
ON tb_produto.categoria_id = tb_categoria.id;

SELECT * FROM tb_produto INNER JOIN tb_categoria
ON tb_produto.categoria_id = tb_categoria.id WHERE tb_categoria.id = 2;

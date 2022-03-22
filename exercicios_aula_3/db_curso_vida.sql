
CREATE DATABASE  db_cursoDaMinhaVida;

USE  db_cursoDaMinhaVida;

CREATE TABLE tb_categoria(
id bigint AUTO_INCREMENT,
tipo varchar(255) NOT NULL,
PRIMARY KEY (id)
);


INSERT INTO tb_categoria (tipo)
Values ("React");

INSERT INTO tb_categoria (tipo)
Values ("Html5");

INSERT INTO tb_categoria (tipo)
Values ("Css3");


CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidadeVagas int, 
valor decimal (8,2),
categoria_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_produtos(id)
);

INSERT INTO tb_produtos (nome, quantidadeVagas, valor, categoria_id)
Values ("Inciante React", 50, 150.00, 1);

INSERT INTO tb_produtos (nome, quantidadeVagas, valor, categoria_id)
Values ("Avançado React", 25, 300.00, 1);

INSERT INTO tb_produtos (nome, quantidadeVagas, valor, categoria_id)
Values ("Iniciante Html5", 100, 55.00, 2);

INSERT INTO tb_produtos (nome, quantidadeVagas, valor, categoria_id)
Values ("Avançado Html5 ", 50, 110.00, 2);

INSERT INTO tb_produtos (nome, quantidadeVagas, valor, categoria_id)
Values ("Iniciante Css3 ", 120, 150.00, 3);

INSERT INTO tb_produtos (nome, quantidadeVagas, valor, categoria_id)
Values ("Avançado Css3 ", 60, 300.00, 3);

SELECT * FROM tb_produtos WHERE valor > 50.00;

SELECT * FROM tb_produtos WHERE valor > 3.00 AND valor < 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT nome, quantidadeVagas, valor FROM tb_produtos INNER JOIN tb_categoria
ON tb_produtos.categoria_id = tb_categoria.id; 
 
 SELECT nome, quantidadeVagas, valor FROM tb_produtos INNER JOIN tb_categoria
 ON tb_produtos.categoria_id = tb_categoria.id
 WHERE tb_categoria.tipo= "Html5"; 
CREATE DATABASE db_construindo_a_nossa_vida;

USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria(
id bigint auto_increment,
setor varchar(255) NOT NULL, 
PRIMARY KEY (id)
);

INSERT INTO tb_categoria (setor)
VALUE ("Ferramentas");

INSERT INTO tb_categoria (setor)
VALUE ("Geral");

INSERT INTO tb_categoria (setor)
VALUE ("Elétrica");

INSERT INTO tb_categoria (setor)
VALUE ("Pintura");

SELECT * FROM tb_categoria;

CREATE TABLE tb_produtos (
id bigint auto_increment,
nome varchar (255) NOT NULL,
marca varchar (255),
quantidade int,
valor decimal(8,2),
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_produtos (nome, marca, quantidade, valor, categoria_id)
VALUE ("Tinta vermelha", "Lukscolor", 50, 60.90, 4);

INSERT INTO tb_produtos (nome, marca, quantidade, valor, categoria_id)
VALUE ("Gesso", "Impercron", 200, 30.00, 2);

INSERT INTO tb_produtos (nome, marca, quantidade, valor, categoria_id)
VALUE ("Martelo", "Tramontina", 100, 39.90, 1);

INSERT INTO tb_produtos (nome, marca, quantidade, valor, categoria_id)
VALUE ("Fio", "Pirelli", 100, 12.90, 3);

INSERT INTO tb_produtos (nome, marca, quantidade, valor, categoria_id)
VALUE ("Tinta coral", "Lukscolor", 40, 60.90, 4); 

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor > 50.00;

SELECT * FROM tb_produtos WHERE valor BETWEEN 3 AND 60;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT nome, marca, valor, tb_categoria.setor FROM tb_produtos INNER JOIN tb_categoria 
ON tb_produtos.categoria_id = tb_categoria.id;

SELECT nome, marca, valor, tb_categoria.setor FROM tb_produtos INNER JOIN tb_categoria 
ON tb_produtos.categoria_id = tb_categoria.id WHERE tb_categoria.setor = "Pintura";


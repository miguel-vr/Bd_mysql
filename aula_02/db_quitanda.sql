-- Criar database
CREATE DATABASE db_quitanda;

-- Selecionar o database 
USE db_quitanda;

-- criando Tabela td_produtos
CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade int,
data_validade date,
preco decimal NOT NULL,
PRIMARY KEY (id)
);

-- Inserir dados na tabela 
INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("arroz", 50, "2023-04-29", 20.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("Chuchu", 20, "2022-04-18", 3.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("Tomate", 80, "2022-04-19", 20.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("Cenoura", 30, "2022-04-29", 13.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("Morango", 1, "2022-04-20", 8.50);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("Banana", 1000, "2022-04-20", 10.50);






-- chamar a tabela inteira, listar os produtos
SELECT * FROM tb_produtos;


-- FILTRANDO DADOS EXPECIFICOS

-- Só vai mostrar o nome e o proço
SELECT nome, preco FROM td_preodutos;

-- Só vai mostrar ONDE o preco é MAIOR que 10.00
SELECT * FROM tb_produtos where preco > 10.00;

-- Só vai mostrar ONDE o preco é MAIOR que 10.00 E a quantidade MENOR que 800
SELECT * FROM tb_produtos where preco > 10.00 AND quantidade < 800;

-- Selecione o nome, CONCATENE "R$" formantando o preço com 2 casas decimais, utilizando pt-br (,) / com apelido de preço 
-- VINDO DO tb_produtos
SELECT nome, CONCAT('R$ ', FORMAT(preco, 2, 'pt_br')) AS preço FROM tb_produtos;






-- alterar um produto expecifico WHERE posição id 5 
UPDATE tb_produtos SET preco = 8.50 WHERE id = 5;

-- alterar o atributo quatidade para 550 do id 4
UPDATE tb_produtos SET quantidade = 550 WHERE id = 4;


-- Deletar algo da tabela 
DELETE FROM tb_produtos WHERE id = 3;

-- Alterações na estrutura da table
-- altere tabela tb_produtos modificando os "precos" para decimal (8,2); assim não arredonda 
ALTER TABLE tb_produtos MODIFY preco decimal (8,2);


-- altere a tabela tb_produtos ADICIONANDO
ALTER TABLE tb_produtos ADD descricao varchar (255);
-- Se quiser apagar algum Atributo, como preco, nome, descrição...
-- ALTER TABLE tb_produtos DROP descricao;


UPDATE tb_produtos SET descricao = "Alimentos" WHERE id = 4;




-- colocar produtos dentro
-- chave primária escolhi o (id) 
-- Primary key é a chave primaira
-- bigint na chave primaria usar o inteiro grande 
-- AUTO_INCREMENT para incrementar o numero automaticamente 
-- varchar(255) seria a string (255 qnt de char)
-- NOT NULL forçar o usúario a colocar o nome do produto
--  int número inteiro
-- date armazenar data
-- decimal para trabalhar com valores com ,
-- INSERT INTO inserir dados na tabela
-- Values descrever os dados
-- data em Americano

-- SET SQL_SAFE_UPDATES = 0 para alterar tudo sem o where, ele tira a trava do UPDATE SEM WHERE
-- UPDATE tb_produtos SET descricao = "Alimentos"; MUDARA TODA A DESCRIÇÃO PARA "ALIMENTOS"

-- O NOME DO ATRIBUTO
-- Alteral a tabela td_produtos MUDANDO o nome do Atributo precov para preco (inserir as informaçoes do atributo) 
-- ALTER TABLE tb_produos CHANGE precov preco decimal (8,2);


-- DELETANDO MAIS DE UM ID da tabela
-- DELETE FROM tb_produtos WHERE id = 3 OR id = 4 OR id = 5;



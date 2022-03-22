CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
id bigint AUTO_INCREMENT,
classe varchar(255) NOT NULL,
arma varchar(255),
PRIMARY KEY (id)
);

INSERT INTO tb_classe (classe, arma)
VALUE ("Vastaia", "Espada");

INSERT INTO tb_classe (classe, arma)
VALUE ("Artesão", "martelo");

INSERT INTO tb_classe (classe, arma)
VALUE ("Vastaia", "Foice");

INSERT INTO tb_classe (classe, arma)
VALUE ("Mutante", "alma");

INSERT INTO tb_classe (classe, arma)
VALUE ("Monarko", "cetro");

SELECT * FROM tb_classe;

CREATE TABLE tb_personagem (
id bigint auto_increment,
nome varchar(255) NOT NULL,
poder varchar (255),
ataque int,
defesa int, 

-- A chave estrangeira sempre fica do lado do N 
-- criando a chave estrangeira com big int por conta do id da tb_classe
-- armazenar a chave primaria da classe 

classe_id bigint,
PRIMARY KEY (id),

-- declarando a chave
-- a chave estrangeira, refencia a table mãe, id
-- sempre a fk vai ser igual a primary key da primary key

FOREIGN KEY (classe_id) REFERENCES tb_classe(id)
);

INSERT INTO tb_personagem (nome, poder, ataque, defesa, classe_id)
VALUE ("Miss fortune", "fogo", 3500, 1000, 1);

INSERT INTO tb_personagem (nome, poder, ataque, defesa, classe_id)
VALUE ("Fizz", "gelo", 2000, 3000, 2);

INSERT INTO tb_personagem (nome, poder, ataque, defesa, classe_id)
VALUE ("Dr.mundo", "Ar", 1000, 5000, 3);

INSERT INTO tb_personagem (nome, poder, ataque, defesa, classe_id)
VALUE ("Warwick", "mar", 3000, 4000, 4);

INSERT INTO tb_personagem (nome, poder, ataque, defesa, classe_id)
VALUE ("Zyra", "natureza", 4000, 500, 5);

SELECT * FROM tb_personagem;

SELECT * FROM tb_personagem WHERE ataque > 2000;

SELECT * FROM tb_personagem WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagem WHERE nome LIKE "%C%";

SELECT nome, poder, ataque, defesa, tb_classe.classe FROM tb_personagem 
INNER JOIN tb_classe ON tb_personagem.classe_id = tb_classe.id;

SELECT nome, poder, ataque, defesa, tb_classe.classe FROM tb_personagem 
INNER JOIN tb_classe ON tb_personagem.classe_id = tb_classe.id WHERE tb_classe.classe = "Vastaia";


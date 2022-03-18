CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_alunos (
id BIGINT AUTO_INCREMENT,
nome VARCHAR (100) NOT NULL,
notas DECIMAL NOT NULL,
data_nascimento DATE,
matricula  BIGINT,
serie VARCHAR (100),
PRIMARY KEY (id)
);

INSERT INTO tb_alunos (nome, notas, data_nascimento, matricula, serie)
VALUES("Miguel", 10.00, "2003-02-12", 380101, "6º ano " );

INSERT INTO tb_alunos (nome, notas, data_nascimento, matricula, serie)
VALUES("Gabriela", 5.00, "2004-07-21", 380102, "6º ano " );

INSERT INTO tb_alunos (nome, notas, data_nascimento, matricula, serie)
VALUES("Pedro", 7.00, "2003-10-12", 380103, "6º ano " );

INSERT INTO tb_alunos (nome, notas, data_nascimento, matricula, serie)
VALUES("Gabriel", 3.00, "2003-05-22", 380104, "6º ano " );

INSERT INTO tb_alunos (nome, notas, data_nascimento, matricula, serie)
VALUES("Caio", 4.00, "2003-07-24", 380105, "6º ano " );

INSERT INTO tb_alunos (nome, notas, data_nascimento, matricula, serie)
VALUES("Amanda", 8.00, "2003-12-03", 380106, "6º ano " );

INSERT INTO tb_alunos (nome, notas, data_nascimento, matricula, serie)
VALUES("Bruna", 8.00, "2003-01-11", 380107, "6º ano " );

INSERT INTO tb_alunos (nome, notas, data_nascimento, matricula, serie)
VALUES("Matheus", 9.00, "2003-10-23", 380108, "6º ano " );


SELECT * FROM tb_alunos;
SELECT * FROM tb_alunos where notas > 7.0;
SELECT * FROM tb_alunos where notas < 7.0;

ALTER TABLE tb_alunos MODIFY notas decimal (8,2);


UPDATE tb_alunos SET notas = 10.00 WHERE id = 5;
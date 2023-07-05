CREATE DATABASE cineOnline;

USE cineOnline;

CREATE TABLE cinema
(
cinema_codigo int NOT NULL,
cinema_nome varchar(40) NOT NULL,
cinema_sala varchar(2) NOT NULL,
cinema_capacidade int NOT NULL,
cinema_cidade varchar(50) NOT NULL,
PRIMARY KEY(cinema_codigo)
);

INSERT INTO cinema (cinema_codigo, cinema_nome, cinema_sala, cinema_capacidade, cinema_cidade)
VALUES (1, 'Cinépolis RioMar Fortaleza', '01', 200, 'Fortaleza');

INSERT INTO cinema (cinema_codigo, cinema_nome, cinema_sala, cinema_capacidade, cinema_cidade)
VALUES (2, 'UCI Kinoplex Iguatemi Fortaleza', '02', 150, 'Fortaleza');

INSERT INTO cinema (cinema_codigo, cinema_nome, cinema_sala, cinema_capacidade, cinema_cidade)
VALUES (3, 'Cinemark North Shopping Fortaleza', '03', 180, 'Fortaleza');

INSERT INTO cinema (cinema_codigo, cinema_nome, cinema_sala, cinema_capacidade, cinema_cidade)
VALUES (4, 'Centerplex Via Sul Shopping', '04', 120, 'Fortaleza');

INSERT INTO cinema (cinema_codigo, cinema_nome, cinema_sala, cinema_capacidade, cinema_cidade)
VALUES (5, 'Arcoplex Aldeota', '05', 100, 'Fortaleza');

INSERT INTO cinema (cinema_codigo, cinema_nome, cinema_sala, cinema_capacidade, cinema_cidade)
VALUES (6, 'Cinema do Dragão', '01', 150, 'Fortaleza');

INSERT INTO cinema (cinema_codigo, cinema_nome, cinema_sala, cinema_capacidade, cinema_cidade)
VALUES (7, 'Cine Teatro São Luiz', '02', 200, 'Fortaleza');

INSERT INTO cinema (cinema_codigo, cinema_nome, cinema_sala, cinema_capacidade, cinema_cidade)
VALUES (8, 'Cineteatro Guarani', '01', 100, 'Fortaleza');

INSERT INTO cinema (cinema_codigo, cinema_nome, cinema_sala, cinema_capacidade, cinema_cidade)
VALUES (9, 'Cineteatro Nossa Senhora de Fátima', '01', 80, 'Fortaleza');

INSERT INTO cinema (cinema_codigo, cinema_nome, cinema_sala, cinema_capacidade, cinema_cidade)
VALUES (10, 'Cine São Luiz do Maracanaú', '01', 120, 'Maracanaú');

select * from cinema;

CREATE TABLE filmes
(
fil_codigo int NOT NULL,
fil_titulo varchar(50) NOT NULL,
fil_genero varchar(30) NOT NULL,
fil_censura char(8) NOT NULL DEFAULT 'Livre',
PRIMARY KEY(fil_codigo)
);

INSERT INTO filmes (fil_codigo, fil_titulo, fil_genero, fil_censura)
VALUES (1, 'Ponyo', 'Animação', 'Livre');

INSERT INTO filmes (fil_codigo, fil_titulo, fil_genero, fil_censura)
VALUES (2, 'Pânico 1', 'Terror', '16 anos');

INSERT INTO filmes (fil_codigo, fil_titulo, fil_genero, fil_censura)
VALUES (3, 'Avatar', 'Ação', '12 anos');

INSERT INTO filmes (fil_codigo, fil_titulo, fil_genero, fil_censura)
VALUES (4, 'Homem de Ferro 3', 'Ação', '12 anos');

INSERT INTO filmes (fil_codigo, fil_titulo, fil_genero, fil_censura)
VALUES (5, 'Elisa y Marcela', 'Drama', '16 anos');

INSERT INTO filmes (fil_codigo, fil_titulo, fil_genero, fil_censura)
VALUES (6, 'Shrek 3', 'Animação', 'Livre');

INSERT INTO filmes (fil_codigo, fil_titulo, fil_genero, fil_censura)
VALUES (7, 'A Sociedade dos Poetas Mortos', 'Drama', '12 anos');

INSERT INTO filmes (fil_codigo, fil_titulo, fil_genero, fil_censura)
VALUES (8, 'A Pequena Sereia', 'Animação', 'Livre');

INSERT INTO filmes (fil_codigo, fil_titulo, fil_genero, fil_censura)
VALUES (9, 'Me Chame Pelo Seu Nome', 'Romance', '16 anos');

INSERT INTO filmes (fil_codigo, fil_titulo, fil_genero, fil_censura)
VALUES (10, 'Garota do Século 20', 'Drama', '14 anos');

select * from filmes;

CREATE TABLE sessao
(
ses_codigo int NOT NULL,
ses_codfilme int NOT NULL,
ses_codcinema int NOT NULL,
ses_datahora datetime NOT NULL,
ses_preco numeric(9,2) NOT NULL,
PRIMARY KEY (ses_codigo),
FOREIGN KEY (ses_codfilme) REFERENCES filmes (fil_codigo),
FOREIGN KEY (ses_codcinema) REFERENCES cinema (cinema_codigo)
);

INSERT INTO sessao (ses_codigo, ses_codfilme, ses_codcinema, ses_datahora, ses_preco)
VALUES (1, 1, 1, '2023-07-05 18:00:00', 10.99);

INSERT INTO sessao (ses_codigo, ses_codfilme, ses_codcinema, ses_datahora, ses_preco)
VALUES (2, 2, 2, '2023-07-06 20:30:00', 12.50);

INSERT INTO sessao (ses_codigo, ses_codfilme, ses_codcinema, ses_datahora, ses_preco)
VALUES (3, 3, 3, '2023-07-07 15:45:00', 9.75);

INSERT INTO sessao (ses_codigo, ses_codfilme, ses_codcinema, ses_datahora, ses_preco)
VALUES (4, 4, 4, '2023-07-08 19:15:00', 11.00);

INSERT INTO sessao (ses_codigo, ses_codfilme, ses_codcinema, ses_datahora, ses_preco)
VALUES (5, 5, 5, '2023-07-09 14:00:00', 8.50);

INSERT INTO sessao (ses_codigo, ses_codfilme, ses_codcinema, ses_datahora, ses_preco)
VALUES (6, 6, 6, '2023-07-10 17:30:00', 10.25);

INSERT INTO sessao (ses_codigo, ses_codfilme, ses_codcinema, ses_datahora, ses_preco)
VALUES (7, 7, 7, '2023-07-11 21:00:00', 13.00);

INSERT INTO sessao (ses_codigo, ses_codfilme, ses_codcinema, ses_datahora, ses_preco)
VALUES (8, 8, 8, '2023-07-12 16:45:00', 9.99);

INSERT INTO sessao (ses_codigo, ses_codfilme, ses_codcinema, ses_datahora, ses_preco)
VALUES (9, 9, 9, '2023-07-13 18:30:00', 11.50);

INSERT INTO sessao (ses_codigo, ses_codfilme, ses_codcinema, ses_datahora, ses_preco)
VALUES (10, 10, 10, '2023-07-14 19:45:00', 12.75);

select * from sessao;


CREATE TABLE clientes (
cli_id INT PRIMARY KEY,
cli_nome VARCHAR(50),
cli_email VARCHAR(100),
cli_endereco VARCHAR(200)
);

INSERT INTO clientes (cli_id, cli_nome, cli_email, cli_endereco)
VALUES (1, 'Vanessa Mesquita', 'vanessa@example.com', 'Rua A, 123');

INSERT INTO clientes (cli_id, cli_nome, cli_email, cli_endereco)
VALUES (2, 'Renata Rios', 'renata@example.com', 'Rua B, 456');

INSERT INTO clientes (cli_id, cli_nome, cli_email, cli_endereco)
VALUES (3, 'Matheus Rabelo', 'matheus@example.com', 'Rua C, 789');

INSERT INTO clientes (cli_id, cli_nome, cli_email, cli_endereco)
VALUES (4, 'Davi Oliveira', 'davibjd@example.com', 'Rua D, 1011');

INSERT INTO clientes (cli_id, cli_nome, cli_email, cli_endereco)
VALUES (5, 'Maria Bianca', 'mariabia@example.com', 'Rua E, 1213');

INSERT INTO clientes (cli_id, cli_nome, cli_email, cli_endereco)
VALUES (6, 'Thays Ferreira', 'thaysfu@example.com', 'Rua F, 1415');

INSERT INTO clientes (cli_id, cli_nome, cli_email, cli_endereco)
VALUES (7, 'Wanderson Wendel', 'wendelwan@example.com', 'Rua G, 1617');

INSERT INTO clientes (cli_id, cli_nome, cli_email, cli_endereco)
VALUES (8, 'Laura Mendes', 'laurinha@example.com', 'Rua H, 1819');

INSERT INTO clientes (cli_id, cli_nome, cli_email, cli_endereco)
VALUES (9, 'Pedro Coelho', 'pedrocoelho@example.com', 'Rua I, 2021');

INSERT INTO clientes (cli_id, cli_nome, cli_email, cli_endereco)
VALUES (10, 'Tayane Cordeiro', 'taycordeiro@example.com', 'Rua J, 2223');

Select * from clientes;

CREATE TABLE compras(
com_codigo int auto_increment,
com_quantidadeInteira int,
com_quantidadeMeia int,
com_formaPagamento varchar(15) default 'dinheiro',
com_codCli int,
com_codSes int,
PRIMARY KEY (com_codigo),
FOREIGN KEY (com_codCli) REFERENCES clientes (cli_id),
FOREIGN KEY (com_codSes) REFERENCES sessao (ses_codigo)
);

INSERT INTO compras (com_quantidadeInteira, com_quantidadeMeia, com_formaPagamento, com_codCli, com_codSes)
VALUES (3,4,'Débito',1,1);

INSERT INTO compras(com_quantidadeInteira ,com_quantidadeMeia, com_formaPagamento, com_codCli, com_codSes)
VALUES (5,12,'Crédito',2,2);

INSERT INTO compras(com_quantidadeInteira, com_quantidadeMeia, com_formaPagamento,com_codCli, com_codSes)
Values (5,11,'Débito',3,3);

INSERT INTO compras(com_quantidadeInteira, com_quantidadeMeia, com_formaPagamento, com_codCli, com_codSes) 
Values (11,6,'Débito',4,4);

INSERT INTO  compras(com_quantidadeInteira, com_quantidadeMeia, com_formaPagamento, com_codCli, com_codSes) 
Values (9,2,'Débito',5,5);

INSERT INTO  compras(com_quantidadeInteira, com_quantidadeMeia, com_formaPagamento, com_codCli, com_codSes) 
Values (5,4,'Crédito',6,6);

INSERT INTO  compras(com_quantidadeInteira, com_quantidadeMeia, com_formaPagamento, com_codCli, com_codSes) 
Values (11,10,'Crédito',7,7);

INSERT INTO  compras(com_quantidadeInteira, com_quantidadeMeia, com_formaPagamento, com_codCli, com_codSes) 
Values (21,4,'Crédito',8,8);

INSERT INTO compras(com_quantidadeInteira,com_quantidadeMeia,com_codCli,com_codSes)
Values (4,18,9,9);

INSERT INTO compras(com_quantidadeInteira,com_quantidadeMeia,com_codCli,com_codSes)
Values (1,29,10,10);

select * from compras;

desc clientes;

desc compras;

SELECT cli_nome, fil_titulo
FROM clientes CROSS JOIN filmes;

SELECT cinema_nome, cinema_sala
FROM filmes, sessao, cinema
WHERE fil_titulo = 'Avatar'
AND ses_codfilme = fil_codigo
AND cinema_codigo = ses_codcinema;

SELECT fil_titulo, cinema_nome, cinema_sala
FROM filmes, sessao, cinema
WHERE fil_titulo <> 'A Sociedade dos Poetas Mortos'
AND ses_codfilme = fil_codigo
AND cinema_codigo = ses_codcinema;

SELECT ses_codfilme, cinema_nome, cinema_sala
FROM sessao, cinema
WHERE ses_codfilme IN (SELECT com_codigo FROM compras); 






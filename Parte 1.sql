CREATE DATABASE locadora;

USE locadora;

CREATE TABLE clientes
(
cli_codigo INT,
cli_nome VARCHAR(30),
cli_cpf CHAR(12),
cli_data_nasc DATE,
cli_sexo CHAR(1),
cli_email VARCHAR(50)
);

desc clientes;

INSERT INTO clientes ( cli_codigo, cli_nome, cli_cpf, cli_data_nasc, cli_sexo, cli_email)
VALUES ( 1, 'José da Silva', '123456789-10', '1980-12-10', 'M', 'joseSilva@cursoSQL.com');

INSERT INTO clientes (cli_codigo, cli_email, cli_nome, cli_cpf, cli_data_nasc, cli_sexo)
VALUES (2, 'mariaSilva@cursoSQL.com', 'Maria da Silva', "012345678-99", "1982-02-28", "F");

INSERT INTO clientes
VALUES (3, "Francisco da Silva" , "109876543-21", "1990-01-01", "M", "franciscoSilva@cursoSQL.com");

INSERT INTO clientes (cli_codigo, cli_nome, cli_sexo, cli_email)
VALUES (4, 'Francisca da Silva', 'F', 'franciscaSilva@cursoSQL.com');

SELECT *
FROM clientes;

SELECT cli_nome, cli_email
FROM clientes;

SELECT cli_nome, cli_email
FROM clientes
WHERE cli_nome="José da Silva";

SELECT cli_nome
FROM clientes WHERE cli_data_nasc >= "1990-1-1";

SELECT cli_nome, cli_cpf
FROM clientes;

SELECT cli_nome, cli_email
FROM clientes
WHERE cli_sexo = "M";

SELECT cli_email
FROM clientes WHERE cli_nome BETWEEN 'A' AND 'G';

SELECT cli_nome
FROM clientes
WHERE cli_data_nasc
BETWEEN "1990-1-1" AND "2000-1-1";

SELECT cli_nome, cli_email
FROM clientes
ORDER BY cli_nome;

SELECT cli_nome, cli_email
FROM clientes
ORDER BY cli_nome DESC;

SELECT cli_nome, cli_email
FROM clientes
WHERE cli_nome LIKE "F%"
ORDER BY cli_nome;

SELECT cli_nome, EXTRACT(year FROM cli_data_nasc)
FROM clientes
WHERE cli_sexo='F';

SELECT cli_nome, DATE_FORMAT(cli_data_nasc,'%d %m%Y')
FROM clientes
ORDER BY cli_nome;

SELECT cli_sexo, COUNT(cli_sexo)
FROM clientes
GROUP BY cli_sexo;

SELECT cli_nome, cli_cpf
FROM clientes
ORDER BY cli_nome ASC;

SELECT cli_nome, cli_email
FROM clientes
WHERE cli_sexo = 'M'
ORDER BY cli_nome DESC;

ALTER TABLE clientes ADD cli_endereco VARCHAR(100);

ALTER TABLE clientes CHANGE COLUMN cli_email
cli_endereco_eletronico varchar(80);

ALTER TABLE clientes MODIFY COLUMN cli_nome
varchar(50);

CREATE TABLE filmes
(
fil_codigo INT,
fil_titulo VARCHAR(40),
fil_genero VARCHAR(15),
fil_duracao TIME,
fil_situacao VARCHAR(12),
fil_preco NUMERIC(3,2)
);

desc filmes;

INSERT INTO filmes (fil_codigo, fil_titulo, fil_genero, fil_duracao,fil_situacao, fil_preco)
VALUES (1, 'E o vento Levou', 'romance', "0:02:00", "alugado", 5.00);

INSERT INTO filmes (fil_codigo, fil_titulo, fil_genero, fil_duracao,fil_situacao, fil_preco)
VALUES (2, 'O silêncio dos inocentes','policial', '0:02:00', 'disponível', 02.50);

INSERT INTO filmes
VALUES (3, 'Procurando Nemo', 'animação', "0:01:40" , "alugado", 02.50);

INSERT INTO filmes (fil_codigo, fil_titulo, fil_genero, fil_situacao, fil_duracao)
VALUES (4, 'Cidade de Deus', 'ação', 'disponível', '0:02:10');

SELECT *
FROM filmes;

SELECT fil_titulo
FROM filmes WHERE fil_preco < 3;

SELECT fil_titulo
FROM filmes
WHERE fil_situacao <> 'alugado';

SELECT fil_titulo
FROM filmes
WHERE fil_preco < 3 AND fil_situacao <> 'alugado';

SELECT fil_titulo
FROM filmes
WHERE fil_genero= 'romance' OR fil_genero = 'animação';

SELECT fil_titulo
FROM filmes
WHERE fil_codigo BETWEEN 2 AND 20;

SELECT fil_titulo
FROM filmes
WHERE fil_genero IN ('comedia', 'romance','acao');

SELECT *
FROM filmes
ORDER BY fil_codigo DESC;

SELECT fil_preco
FROM filmes
GROUP BY fil_preco;

SELECT COUNT(fil_titulo)
FROM filmes;

SELECT COUNT(DISTINCT fil_titulo)
FROM filmes; 

SELECT MIN(fil_preco), AVG(fil_preco), MAX(fil_preco)
FROM filmes;

SELECT fil_titulo, COUNT(fil_titulo) AS Unidades
FROM filmes
GROUP BY fil_titulo;

SELECT fil_titulo AS Titulo, COUNT(fil_titulo) AS Quantidade
FROM filmes
GROUP BY fil_titulo
HAVING COUNT(fil_titulo)>1;

SELECT DISTINCT ROUND(AVG(fil_preco),2)
FROM filmes;

SELECT DISTINCT UPPER(fil_titulo)
FROM filmes
WHERE fil_situacao='alugado';

ALTER TABLE filmes
ADD fil_atores VARCHAR(200)
AFTER fil_direcao;

ALTER TABLE filmes DROP COLUMN fil_direcao;

ALTER TABLE filmes DROP COLUMN fil_atores;

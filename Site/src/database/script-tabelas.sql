-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/*
comandos para mysql server
*/

CREATE DATABASE VoleiSports;
USE VoleiSports;

CREATE TABLE usuarioCadastro (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50),
    dtCadastro TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
insert into usuarioCadastro (nome, email, senha) values
('Gabriel', 'gabriel@sptech.school', 123456);

insert into usuarioCadastro (nome, email, senha, dtCadastro) values
('AAA', 'aa@sptech.school', 123456, '2024-06-01'),
('BBB', 'bbb@sptech.school', 123456, '2024-06-02'),
('CCC', 'ccc@sptech.school', 123456, '2024-06-02'),
('DDD', 'ddd@sptech.school', 123456, '2024-06-03'),
('EEE', 'eee@sptech.school', 123456, '2024-06-03'),
('FFF', 'fff@sptech.school', 123456, '2024-06-03');

select* from usuarioCadastro;
SELECT date_format(quantidade.dt, '%d-%m-%Y') as 'Data_de_Cadastro', count(quantidade.dt) as Quantidade 
from (SELECT DATE(dtCadastro) as dt from usuarioCadastro) as quantidade group by quantidade.dt order by dt;


CREATE TABLE interacao (
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
	descricao VARCHAR(200),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuarioCadastro(id)
);
select* from interacao;

-- DROP DATABASE VoleiSports;
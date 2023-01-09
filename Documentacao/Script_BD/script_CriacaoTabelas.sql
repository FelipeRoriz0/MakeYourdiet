CREATE DATABASE db_projeto;
USE db_projeto;

CREATE TABLE tb_user(
	id INT PRIMARY KEY AUTO_INCREMENT, 
    nomeCompleto varchar(60) NOT NULL,
    dataNasc DATE NOT NULL, 
    cel varchar(60) NOT NUll,
    email varchar(60) NOT NULL,
    senha varchar(60) NOT NUll
);

CREATE TABLE tb_tipoReceita(
	id int primary key auto_increment,
    tipo varchar(60) not null
);

create table tb_agenda(
	id int primary key auto_increment
    
);

create table tb_receitas(
	id int primary key auto_increment,
    nomeReceita varchar (100) not null,
    receita varchar(500) not null,
    preparo varchar(500) not null
);

create table tb_itemReceita(
	id int primary key auto_increment
);

create table tb_alimento(
	id int primary key auto_increment,
    nome varchar(60) not null
);

create table tb_tipoAlimento(
 id int primary key auto_increment, 
 categorias varchar(20) not null
 );
 
 create table tb_diasDaSemana(
	id int primary key auto_increment,
    dias varchar(20) not null
 );
 


ALTER TABLE tb_user ADD COLUMN id_tipoReceita INT;
ALTER TABLE tb_user ADD CONSTRAINT fk_tipoReceita FOREIGN KEY(id_tipoReceita) REFERENCES tb_tipoReceita(id) ON DELETE CASCADE;

ALTER TABLE tb_agenda ADD COLUMN id_user INT;
ALTER TABLE tb_agenda ADD CONSTRAINT fk_user1 FOREIGN KEY(id_user) REFERENCES tb_user(id) ON DELETE CASCADE;
ALTER TABLE tb_agenda ADD COLUMN id_receitas INT;
ALTER TABLE tb_agenda ADD CONSTRAINT fk_receitas1 FOREIGN KEY(id_receitas) REFERENCES tb_receitas(id) ON DELETE CASCADE;
ALTER TABLE tb_agenda ADD COLUMN id_diasDaSemana INT;
ALTER TABLE tb_agenda ADD CONSTRAINT fk_diasDaSemana FOREIGN KEY(id_diasDaSemana) REFERENCES tb_diasDaSemana(id) ON DELETE CASCADE;

ALTER TABLE tb_receitas ADD COLUMN id_tipoReceita INT;
ALTER TABLE tb_receitas ADD CONSTRAINT fk_tipoReceita1 FOREIGN KEY(id_tipoReceita) REFERENCES tb_tipoReceita(id) ON DELETE CASCADE;

ALTER TABLE tb_itemReceita ADD COLUMN id_receitas INT;
ALTER TABLE tb_itemReceita ADD CONSTRAINT fk_receitas2 FOREIGN KEY(id_receitas) REFERENCES tb_receitas(id) ON DELETE CASCADE;
ALTER TABLE tb_itemReceita ADD COLUMN id_alimento INT;
ALTER TABLE tb_itemReceita ADD CONSTRAINT fk_alimento FOREIGN KEY(id_alimento) REFERENCES tb_alimento(id) ON DELETE CASCADE;

ALTER TABLE tb_alimento ADD COLUMN id_tipoAlimento INT;
ALTER TABLE tb_alimento ADD CONSTRAINT fk_tipoAlimento FOREIGN KEY(id_tipoAlimento) REFERENCES tb_tipoAlimento(id) ON DELETE CASCADE;




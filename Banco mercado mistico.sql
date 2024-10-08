create database BDMM;
use BDMM;

create table usuariosCadastrar(
  id int not null primary key auto_increment,
  nome varchar(45) not null,
  telefone varchar(45) not null unique,
  aniversario date not null,
  email varchar(45) not null unique,
  senha varchar(45) not null,
  status enum('ativo', 'inativo') default 'ativo'
);

insert into usuariosCadastrar (nome, telefone, aniversario, email, senha, perfil)
VALUES ("Tur", "000000000", '2007-09-29', "tur@gmail.com", "321", "usuario");
SELECT id,email,senha,perfil FROM usuariosCadastrar WHERE email = "tur@gmail.com";
select * from usuariosCadastrar;


create table pedidos(
	id int not null primary key auto_increment,
	quantidade varchar(45) not null,
    data date not null
);
 
create table produtos(
	id int not null primary key auto_increment,
	produto varchar(45),
    preco int,
    quantidade int
);


create database together_tech;
use together_tech;
-- criando as tabelas 

-- tabela usuarios
create table usuario (
idUsuario int primary key auto_increment,
nomeUsuario varchar (40),
emailUsuario varchar (40),
senhaUsuario varchar (30) 
);

-- tabela empresas 
create table empresas (
idEmpresas int primary key auto_increment,
nomeEmpresa varchar (40),
contatoEmpresas varchar (40),
localização varchar (50),
fkVaga int,
foreign key (fkVaga) references vagas(idVaga) 
); -- relacionando a tabela de empresas com a de vagas 

-- tabela vagas 
create table vagas (
idVaga int primary key auto_increment,
tipoVaga varchar (30)
);

-- tabela contato
create table contato (
idContato int primary key auto_increment,
NomeContato varchar (40),
EmailContato varchar (40),
Assunto varchar (30),
Mensagem text 
);

desc empresas;

-- não é possivel realizar drop pois o usuario criado n tem permissão para ''drop''
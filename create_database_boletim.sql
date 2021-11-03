show tables;
drop table aluno;
use boletim;
show databases;
create table alunos(
id int(11) auto_increment primary key,
nome varchar (100) not null,
dtnascimento date not null,
cpf varchar (11) not null,
telefone varchar (11) not null,
email varchar (100) not null
);
create table turnos(
id int(11) auto_increment primary key,
descricao varchar (100) not null
);
create table turma(
id int(11) auto_increment primary key,
descricao varchar (100) not null,
idturno int (11) not null,
CONSTRAINT fk_idturno FOREIGN KEY (idturno) REFERENCES turnos (id)
);
select * from alunos;
insert into alunos(nome,dtnascimento,cpf,telefone,email) 
values
('Joao Pedro', '2008-06-02','02265003331',9234432431,'joaopedrobruxinho@gmail.com'),
('Gabriel', '2003-05-02','02532164731',9234432431,'joaopedrobruxinho@gmail.com'),
('pedro', '2007-01-08','02264321317',9234432431,'joaopedrobruxinho@gmail.com');

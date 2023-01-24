-- Script sobre Resília, com tabelas de aluno, turma, curso e professor(como complemento)


Create database resilia;


Create table aluno (
id int not null primary key auto_increment,
nome varchar(100),
email varchar(100)
);

create table turma (
id int not null primary key auto_increment,
turno varchar(30)
);

create table professor (
id int not null primary key auto_increment,
nome varchar(100),
cfep varchar(20)
);

create table cursos (
id int not null primary key auto_increment,
nome varchar(100),
tipo varchar(50),
duracao int
);


-- Relações/ligações entre as entidades


alter table cursos
add constraint id_fk_professor
FOREIGN KEY (id)
REFERENCES professor(id);

alter table professor
add constraint id_fk_turma
FOREIGN KEY (id)
REFERENCES turma(id);

alter table turma
add constraint id_fk_aluno
FOREIGN KEY (id)
REFERENCES aluno(id);
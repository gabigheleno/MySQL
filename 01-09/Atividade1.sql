CREATE DATABASE DB_RH;
USE DB_RH;
CREATE TABLE TB_Colaboradores (
id bigint auto_increment,
nome varchar(255) not null,
departamento varchar(255),
cargo varchar(255),
salario decimal (5,2),
primary key (id)
);
insert into TB_Colaboradores (nome, departamento, cargo, salario)
values ("Ana", "Recursos Humanos", "Analista Junior", 3500.00);
alter table TB_Colaboradores modify salario decimal (8,2);
insert into TB_Colaboradores (nome, departamento, cargo, salario)
values ("Ana", "Recursos Humanos", "Analista Junior", 3500.00);
insert into TB_Colaboradores (nome, departamento, cargo, salario)
values ("Daniel", "Marketing", "Coordenador", 15000.00);
insert into TB_Colaboradores (nome, departamento, cargo, salario)
values ("Gabriela", "Tech", "Desenvolvedora Mobile", 16000.00);
insert into TB_Colaboradores (nome, departamento, cargo, salario)
values ("João", "Financeiro", "Gerente", 8000.00);
insert into TB_Colaboradores (nome, departamento, cargo, salario)
values ("Eliza", "Recepção", "Recepcionista", 1800.00);
select * from TB_Colaboradores where salario > 2000;
select * from TB_Colaboradores where salario < 2000;
update TB_Colaboradores set salario = 1850.00 where id = 5;
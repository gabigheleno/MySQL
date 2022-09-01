CREATE DATABASE DB_Ecommerce;
USE DB_Ecommerce;
CREATE TABLE TB_Produtos (
id bigint auto_increment,
nome varchar (255) not null,
quantidade int,
cor varchar (255),
preco decimal (8,2),
primary key (id)
);
INSERT INTO TB_Produtos (nome, quantidade, cor, preco)
values ("Abajur", 10, "branco", 200.00);
INSERT INTO TB_Produtos (nome, quantidade, cor, preco)
values ("Mesa", 5, "marfim", 850.00);
INSERT INTO TB_Produtos (nome, quantidade, cor, preco)
values ("Vaso decorativo", 15, "preto", 350.00);
INSERT INTO TB_Produtos (nome, quantidade, cor, preco)
values ("Sofá", 2, "cinza", 2200.00);
INSERT INTO TB_Produtos (nome, quantidade, cor, preco)
values ("Painel", 3, "branco", 800.00);
INSERT INTO TB_Produtos (nome, quantidade, cor, preco)
values ("Lustre", 5, "transparente", 2500.00);
INSERT INTO TB_Produtos (nome, quantidade, cor, preco)
values ("Luminária de chão", 30, "vinho", 300.00);
INSERT INTO TB_Produtos (nome, quantidade, cor, preco)
values ("Quadro decorativo", 30, "branco", 100.00);

SELECT * FROM TB_Produtos WHERE preco > 500;
SELECT * FROM TB_Produtos WHERE preco < 500;

update TB_Produtos set nome = "Mesa decorativa" where id = 2;

SELECT * FROM TB_Produtos
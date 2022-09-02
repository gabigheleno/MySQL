CREATE DATABASE db_pizzaria;
USE db_pizzaria;
CREATE TABLE tb_categorias(
id bigint auto_increment,
tamanho varchar(255) not null,
primary key (id)
);

insert into tb_categorias (tamanho)
values ("Brotinho");
insert into tb_categorias (tamanho)
values ("Pequena");
insert into tb_categorias (tamanho)
values ("Média");
insert into tb_categorias (tamanho)
values ("Grande");
insert into tb_categorias (tamanho)
values ("Gigante");

create table tb_pizzas(
id bigint auto_increment,
sabor varchar(255) not null,
preco decimal(10,2),
borda varchar(255),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categorias(id)
);

insert into tb_pizzas(sabor, preco, borda, categoria_id)
values ("Portuguesa", 45.00, "sem borda", 3);
insert into tb_pizzas(sabor, preco, borda, categoria_id)
values ("Toscana", 30.00, "sem recheio", 1);
insert into tb_pizzas(sabor, preco, borda, categoria_id)
values ("Muçarela", 40.00, "borda recheada", 2);
insert into tb_pizzas(sabor, preco, borda, categoria_id)
values ("Gratinada", 50.00, "sem borda", 4);
insert into tb_pizzas(sabor, preco, borda, categoria_id)
values ("Bacon", 55.00, "sem recheio", 5);
insert into tb_pizzas(sabor, preco, borda, categoria_id)
values ("Marguerita", 45.00, "sem borda", 3);
insert into tb_pizzas(sabor, preco, borda, categoria_id)
values ("Milho", 40.00, "borda recheada", 2);
insert into tb_pizzas(sabor, preco, borda, categoria_id)
values ("Outono", 55.00, "sem recheio", 5);

select * from tb_pizzas where preco > 45;
select * from tb_pizzas where preco between 50.00 and 100;
select * from tb_pizzas where sabor like "%m%";

select sabor, preco, tb_categorias.tamanho
from tb_pizzas inner join tb_categorias
on tb_categorias.id = tb_pizzas.categoria_id;

select sabor, preco, tb_categorias.tamanho
from tb_pizzas inner join tb_categorias
on tb_categorias.id = tb_pizzas.categoria_id
where tb_categorias.id = 1;


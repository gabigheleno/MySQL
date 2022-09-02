CREATE DATABASE db_game_online;
USE db_game_online;
CREATE TABLE tb_classes(
id bigint auto_increment,
elemento varchar (255) not null,
primary key (id)
);
insert into tb_classes (elemento)
values ("Ar");
insert into tb_classes (elemento)
values ("Água");
insert into tb_classes (elemento)
values ("Fogo");
insert into tb_classes (elemento)
values ("Terra");
select * from tb_classes;
insert into tb_classes (elemento)
values ("Gelo");
select * from tb_classes;

create table tb_personagens(
id bigint auto_increment,
nome varchar (255) not null,
ataque int not null,
defesa int not null,
habilidade varchar (255) not null,
elemento_id bigint,
primary key (id),
foreign key (elemento_id) references tb_classes(id)
);

insert into tb_personagens(nome, ataque, defesa, habilidade, elemento_id)
values ("Helina", 50, 70, "Voar", 1);
insert into tb_personagens(nome, ataque, defesa, habilidade, elemento_id)
values ("Link", 20, 80, "Nadar", 2);
insert into tb_personagens(nome, ataque, defesa, habilidade, elemento_id)
values ("Burn", 60, 50, "Bolas de fogo", 3);
insert into tb_personagens(nome, ataque, defesa, habilidade, elemento_id)
values ("Terrine", 30, 65, "Escavar", 4);
insert into tb_personagens(nome, ataque, defesa, habilidade, elemento_id)
values ("Frezzy", 70, 60, "Raio congelante", 5);
insert into tb_personagens(nome, ataque, defesa, habilidade, elemento_id)
values ("Tempesta", 40, 60, "Raios e trovão", 2);
insert into tb_personagens(nome, ataque, defesa, habilidade, elemento_id)
values ("Vulcano", 65, 70, "Lava vulcônica", 3);
insert into tb_personagens(nome, ataque, defesa, habilidade, elemento_id)
values ("Falcon", 55, 50, "Falcon Punch", 1);
select * from tb_personagens;

select * from tb_personagens where ataque > 50;
select * from tb_personagens where defesa between 30 and 60 order by id;
select * from tb_personagens where nome like "%c%";
select nome, habilidade, tb_classes.elemento
from tb_personagens inner join tb_classes
on tb_classes.id = tb_personagens.elemento_id;

select nome, habilidade, tb_classes.elemento
from tb_personagens inner join tb_classes
on tb_classes.id = tb_personagens.elemento_id
where tb_classes.id = 1;

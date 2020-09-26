drop database db_generation_game_online;
create database db_generation_game_online;

use db_generation_game_online;

create table tb_personagem (
id_personagem int auto_increment,
nome varchar (20),
poderAtaque int,
poderDefesa int,
altura decimal (3,2),
forca int,
primary key (id_personagem)

);


create table tb_classe (
id_classe int auto_increment,
mago varchar (255),
necromante varchar (255),
invocador varchar (255),
primary key (id_classe),
id_personagem int,
constraint fk_chave foreign key (id_personagem) references tb_personagem(id_personagem));

INSERT INTO `db_generation_game_online`.`tb_classe`
(`mago`,
`necromante`,
`invocador`)
VALUES
('ilusão', 'especialista em ressurreicao', 'especialista em invocacao de animais'),
('Adivinhação', 'controlar Morto-Vivo', 'especialista em manipulacao'),
('Transmutação', 'aprisionar Alma', 'especialista em falar com animais');


INSERT INTO `db_generation_game_online`.`tb_personagem`
(`nome`,
`poderAtaque`,
`poderDefesa`,
 `altura`, 
 `forca`)

VALUES
('Akim', 500, 1200, 1.90, 6),
('Konos', 1000, 1500, 1.80, 7),
('Claus', 2000, 1200, 1.95, 8),
('Hebreu', 1500, 1200, 1.85, 8),
('Karma', 3000, 1800, 1.50, 10);


SELECT nome, poderAtaque from tb_personagem WHERE poderAtaque > (select max(2000) from tb_personagem);
SELECT nome, poderDefesa from tb_personagem WHERE poderDefesa > 1000 AND 2000 < poderDefesa;


select * from tb_personagem WHERE nome LIKE 'C%';

select * from tb_personagem inner join tb_classe on tb_personagem.id_personagem = tb_classe.id_classe;



drop database db_generation_game_online;
create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe (
id_classe int primary key auto_increment,
mago varchar (255),
necromante varchar (255),
invocador varchar (255)

);

INSERT INTO `db_generation_game_online`.`tb_classe`
(`mago`,
`necromante`,
`invocador`)
VALUES
('especialista de fogo', 'especialista em magia', 'especialista no tempo'),
('especialista em ressurreicao', 'criatura das trevas', 'especialista em feiticos'),
('especialista em invocacao de animais', 'especialista em manipulacao', 'especialista em falar com animais');


create table tb_personagem (
id_personagem int primary key auto_increment,
nome varchar (20),
poderAtaque int,
poderDefesa int,
altura decimal (3,2),
forca int,

constraint fk_tb_classe foreign key (id_classe) references tb_classe(id_classe));


INSERT INTO `db_generation_game_online`.`tb_personagem`
(`nome`,
`poderAtaque`,
`poderDefesa`,
 `altura`, 
 `forca`)

VALUES
('Akim', 500, 1200, 1.90, 6),
('Konos', 1000, 1200, 1.80, 7),
('Claus', 2000, 1200, 1.95, 8),
('Hebreu', 1500, 1200, 1.85, 8),
('Karma', 3000, 1200, 1.50, 10);


SELECT nome, poderAtaque from tb_personagem WHERE poderAtaque > (select max(2000) from tb_personagem);
SELECT nome, poderDefesa from tb_personagem WHERE poderDefesa > (1000) > num_min AND (2000) < num_max;

select * from tb_personagem WHERE nome LIKE '%C';

select * from tb_personagem inner join tb_classe on tb_personagem.id_classe = tb_classe.id_classe;







create database ESCOLA;

use ESCOLA;


create table alunes(
ID_alunes int PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(30),
ano VARCHAR(10),
nota DOUBLE,
turma CHAR,
sala INT
);


INSERT INTO `escola`.`alunes`
(`nome`,
`ano`,
`nota`,
`turma`,
`sala`)
VALUES
('Rebeca', '8º', 7.8, 'B', 12),
('Bruna', '7º', 5.0, 'B', 13),
('Mateus', '7º', 9.0, 'B', 13),
('Rodrigo', '8º', 4.0, 'A', 12),
('Carlos', '7º', 8.5, 'A', 13),
('Milena', '8º', 9.3, 'A', 12);




SELECT nome, turma, nota from alunes WHERE nota > (select max(7.0) from alunes);
SELECT nome, turma, nota from alunes WHERE nota < (select max(7.0) from alunes);

select * from alunes;


truncate alunes;
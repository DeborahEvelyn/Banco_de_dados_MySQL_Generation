create database RH;

use RH;


create table funcionarios(
ID_funcionario int PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(30),
nacionalidade VARCHAR(20),
matricula INT,
telefone INT,
salario DOUBLE
);

SHOW TABLE STATUS;
SHOW COLUMNS FROM  funcionarios;

INSERT INTO `rh`.`funcionarios`
(`nome`,
`nacionalidade`,
`matricula`,
`telefone`,
`salario`)
VALUES('Deborah', 'Brasileira', 7865, 981710081, 2000.00),
	  ('Bruno', 'Brasileiro', 7866, 981710089, 2500.00),
	  ('Camila', 'Brasileira', 7867, 981710086, 3000.00),
      ('Carol', 'Brasileira', 7868, 981713456, 3500.00),
      ('Helena', 'Brasileira', 7869, 981784098, 1500.00);
  


SELECT nome, matricula, salario from funcionarios WHERE salario > (select max(2000) from funcionarios);
SELECT nome, matricula, salario from funcionarios WHERE salario < (select max(2000) from funcionarios);

select * from Funcionarios;


truncate funcionarios;





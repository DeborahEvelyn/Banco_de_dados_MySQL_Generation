create database aula_select;
use aula_select;

create table clientes (
codigo_cliente int not null primary key,
nome varchar (50),
cidade varchar (10),
serie char (1)
);
CREATE table funcionarios (
		id int not null auto_increment,
		nome varchar(30) NOT NULL,
		nascimento date,
		sexo enum ('M','F'),
		peso decimal(5,2),
		altura decimal(3,2),
		nacionalidade varchar(20) DEFAULT 'Brasil',
		primary key (id));
        
        
Insert into funcionarios values ('1','Alex', '2018-02-03','M','68.5','2.50', 'Brasil');
Insert into funcionarios values ('2','Gabriela', '1998-02-03','F','58.5','1.60', 'Brasil'),     
		('3','Daniela', '1995-02-03','F','56.5','1.57', 'Brasil');

        
  select id, nome FROM funcionarios;
  
  select * from funcionarios WHERE id = 3;
  
  select * from funcionarios WHERE nome = 'Gabriela';
  
  select COUNT(*) FROM funcionarios;
  #quando começar com a letra g
  select * from funcionarios WHERE nome LIKE 'g%';
  #quando terminar com a letra a
  select * from funcionarios WHERE nome LIKE '%A';
  
  #quando for mulher e quando for brasileiro
  select * from funcionarios WHERE sexo = 'F' AND nacionalidade = 'Brasil';
  #quando quiser selecionar a segunda letra/ usar um _ para cada letra
  select * from funcionarios where nome like '_l%';
  #quando contiver o nome
  select * from funcionarios WHERE nome LIKE '%briel%';
  
  select * from funcionarios where altura > 2;
  
  truncate funcionarios;

  

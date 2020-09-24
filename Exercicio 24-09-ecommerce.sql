create database ECOMMERCE;

use ECOMMERCE;


create table produtos(
ID_produtos int PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(30),
preco DOUBLE,
codigo INT,
marca VARCHAR(30),
lancamento DOUBLE
);

INSERT INTO `ecommerce`.`produtos`
(`nome`,
`preco`,
`codigo`,
`marca`,
`lancamento`)
VALUES
('Notebook', 3000, 987653, 'PHP', 2020),
('Colchao', 2500, 989823, 'Portobel', 2017),
('SmartTV', 2699, 987888, 'Samsung', 2020),
('Camera', 499, 987342, 'Xtrax', 2019),
('Refrigerador', 2269, 980123, 'Brastemp', 2019),
('Batedeira', 129, 983453, 'Philips', 2018);

SELECT nome, lancamento, preco from produtos WHERE preco > (select max(500) from produtos);
SELECT nome, lancamento, preco from produtos WHERE preco < (select max(500) from produtos);

select * from produtos;


truncate produtos;





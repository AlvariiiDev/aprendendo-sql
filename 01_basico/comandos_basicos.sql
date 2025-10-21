CREATE TABLE clientes(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    cidade VARCHAR(50)
);

INSERT INTO clientes(nome,idade,cidade)
VALUE
('Altamir',45,'Chapeco'),
('Roger',21,'Xanxere'),
('Alvari',22,'Chapeco');

SELECT * FROM clientes;

SELECT nome FROM clientes WHERE cidade = 'Xanxere';

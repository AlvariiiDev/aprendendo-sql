CREATE TABLE clientes(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    cidade VARCHAR(50)
);

CREATE TABLE pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    produto VARCHAR(100),
    valor DECIMAL(10,2),
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

INSERT INTO clientes(nome,idade,cidade)
VALUES
('Altamir',45,'Chapeco'),
('Roger',21,'Xanxere'),
('Alvari',22,'Chapeco');

INSERT INTO pedidos(cliente_id,produto,valor)
VALUES
(1,'Camisa', 259.99),
(1,'Camiseta', 199.59),
(2,'Chuteira', 99.29);

UPDATE clientes
SET nome = 'Altamir Syship'
WHERE id = 1;

UPDATE clientes
SET cidade = "Chapeco"
WHERE id = 2;

INSERT INTO clientes (nome)
VALUES
('Maria');

DELETE FROM clientes
WHERE nome = 'Maria';

SELECT c.nome, p.produto, p.valor, c.cidade
FROM clientes c
INNER JOIN pedidos p ON c.id = p.cliente_id;

SELECT * FROM clientes;

USE bd2;

-- na alteração
CREATE TABLE produtos (
	id INT,
    nome VARCHAR(80)
);

ALTER TABLE produtos
ADD CONSTRAINT PRIMARY KEY (id);

ALTER TABLE produtos
MODIFY COLUMN id INT(11) NOT NULL AUTO_INCREMENT FIRST;

-- alteração
CREATE TABLE funcionarios(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(80)
);

ALTER TABLE funcionarios
MODIFY nome VARCHAR(80) NOT NULL;

-- O comando abaixo tem que dar erro porque coloquei o campo como nulo.
INSERT INTO funcionarios (nome) VALUES (NULL);

-- criação
CREATE TABLE usuarios(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    UNIQUE (email)	-- Garante que todos os valores em uma coluna sejam diferentes (sem valores repetidos)
);

INSERT INTO usuarios (nome, email) VALUES ('Bruno', 'bruno21santiagod@gmail.com');
INSERT INTO usuarios (nome, email) VALUES ('Bruno 2', 'brunosantiagod@icloud.com');
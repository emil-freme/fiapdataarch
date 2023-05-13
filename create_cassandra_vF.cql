-- Create the keyspace
CREATE KEYSPACE fiap5dts WITH REPLICATION = {'class' : 'SimpleStrategy', 'replication_factor' : 1};

-- Use the keyspace
USE fiap5dts;

-- criando a tabela produtos
CREATE TABLE Produtos (
  Codigo INT PRIMARY KEY,
  Nome TEXT,
  Modelo TEXT,
  Fabricante TEXT,
  Cor TEXT, --Aparentemente não existe enum no cassandra,
  Tam TEXT  --Então eles são tratados no "control"
);

-- criando a tabela clientes
CREATE TABLE Clientes (
  CPF TEXT PRIMARY KEY,
  Nome TEXT,
  Endereco TEXT,
  CEP INT,
  Email TEXT,
  Telefones SET<TEXT>
);

-- Criando a tabela pedidos 
CREATE TABLE Pedidos (
  ID_Pedido INT,
  Cliente TEXT,
  Endereco TEXT,
  CEP INT,
  Itens LIST<TEXT>,
  Qtds LIST<INT>,
  Valor_Pago DECIMAL,
  PRIMARY KEY (ID_Pedido)
);

--inserindo os clientes
INSERT INTO clientes (cpf, nome, endereco, cep, email, telefones)                   
VALUES ('28323428312', 'Roberto da costa', 'Rua Eduardo Siqueira,631',
    080010001, 'roberto@gmail.com', {'11973813232'});

INSERT INTO clientes (cpf, nome, endereco, cep, email, telefones)
VALUES ('14253627381', 'Ricardo Silverio', 'Rua Ferreira Alves,821',
    070012786, 'ricardo@gmail.com', {'11943536326'});

INSERT INTO clientes (cpf, nome, endereco, cep, email, telefones)
VALUES ('25463784311', 'Rafael Fonseca', 'Rua Joao Garcia,911',
    090045123, 'rafael@gmail.com', {'11943536326'});

INSERT INTO clientes (cpf, nome, endereco, cep, email, telefones)
VALUES ('45632781231', 'Ana Silva', 'Rua Bernadino de campos,261',
    89745123, 'ana.silva@hotmail.com', {'11973813232', '11943536326'});

INSERT INTO clientes (cpf, nome, endereco, cep, email, telefones)
VALUES ('65423173613', 'Pedro Henrique', 'Rua Mairiporã,121',
    83928384, 'pedro.henrique@gmail.com', {'11973813232', '11943536326'});

INSERT INTO clientes (cpf, nome, endereco, cep, email, telefones)
VALUES ('78346271536', 'Júlia Alves', 'Rua Doutor ALencar,371', 
    67564987, 'julia.alves@gmail.com', {'11943536326'});

INSERT INTO clientes (cpf, nome, endereco, cep, email, telefones)
VALUES ('86743567321', 'Lucas Souza', 'Rua Francisco Mello,481',
    98909784, 'lucas.souza@hotmail.com', {'11973813232'});

INSERT INTO clientes (cpf, nome, endereco, cep, email, telefones)
VALUES ('64532123456', 'Fernanda Santos', 'Rua Senador Magalhães,591',
    080023123, 'fernanda.santos@gmail.com', {'11943536326'});

INSERT INTO clientes (cpf, nome, endereco, cep, email, telefones)
VALUES ('31678240198', 'Márcia Gonçalves', 'Rua Edvaldo Lopes',
    080012342, 'marcia.goncalves@gmail.com', {'11973813232'});

INSERT INTO clientes (cpf, nome, endereco, cep, email, telefones)
VALUES ('56352612361', 'Gustavo Oliveira', 'Rua Tarcísio junqueira,281',
    080034123, 'gustavo.oliveira@gmail.com', {'11943536326'});

--inserindo produtos
INSERT INTO Produtos (Codigo, Nome, Modelo, Fabricante, Cor, Tam) 
VALUES (1, 'Blusa Ciganinha', 'Cropped', 'Renner', 'preto', 'pequena');

INSERT INTO Produtos (Codigo, Nome, Modelo, Fabricante, Cor, Tam)
VALUES (2, 'Jaqueta de couro', 'Jaqueta', 'Shein', 'azul', 'média');

INSERT INTO Produtos (Codigo, Nome, Modelo, Fabricante, Cor, Tam)
VALUES (3, 'Pantalona', 'Calça', 'YouCom', 'vermelho', 'grande');

INSERT INTO Produtos (Codigo, Nome, Modelo, Fabricante, Cor, Tam)
VALUES (4, 'Camiseta lisa', 'Camiseta', 'DeliriYou', 'branco', 'pequena');

INSERT INTO Produtos (Codigo, Nome, Modelo, Fabricante, Cor, Tam)
VALUES (5, 'Shorts jeans', 'Shorts', 'C&A', 'vermelho', 'extra-grande');

INSERT INTO Produtos (Codigo, Nome, Modelo, Fabricante, Cor, Tam)
VALUES (6, 'Bermuda tactel', 'Bermuda', 'Zara', 'branco', 'grande');

INSERT INTO Produtos (Codigo, Nome, Modelo, Fabricante, Cor, Tam)
VALUES (7, 'Vestido longo', 'Vestido', 'Adidas', 'azul', 'média');

INSERT INTO Produtos (Codigo, Nome, Modelo, Fabricante, Cor, Tam)
VALUES (8, 'Saia curta', 'Saia', 'Nike', 'preto', 'extra-grande');

INSERT INTO Produtos (Codigo, Nome, Modelo, Fabricante, Cor, Tam)
VALUES (9, 'Macacão de festa', 'Macacão', 'Oakley', 'azul', 'grande');

INSERT INTO Produtos (Codigo, Nome, Modelo, Fabricante, Cor, Tam)
VALUES (10, 'Frente única', 'Body', 'Puma', 'vermelho', 'média');


--inserindo pedidos

INSERT INTO Pedidos (ID_Pedido, Cliente, Endereco, CEP, Itens, Qtds, Valor_pago) 
VALUES (1, '28323428312', 'Rua Eduardo Siqueira,631', 080010001, ['Calça'], [12], 420.30);

INSERT INTO Pedidos (ID_Pedido, Cliente, Endereco, CEP, Itens, Qtds, Valor_pago) 
VALUES (2, '25463784311', 'Rua Joao Garcia,911', 090045123, ['Jaqueta'], [32], 2678.87);

INSERT INTO Pedidos (ID_Pedido, Cliente, Endereco, CEP, Itens, Qtds, Valor_pago) 
VALUES (3, '45632781231', 'Rua Bernadino de campos,261', 89745123, ['Cropped'],
[21], 176.21);

INSERT INTO Pedidos (ID_Pedido, Cliente, Endereco, CEP, Itens, Qtds, Valor_pago) 
VALUES (4, '14253627381', 'Rua Ferreira Alves,821', 070012786, ['Body'], [9], 67.88);

INSERT INTO Pedidos (ID_Pedido, Cliente, Endereco, CEP, Itens, Qtds, Valor_pago) 
VALUES (5, '61321664645', 'Rua Evandro, 521', 074612786, ['Cueca'], [3], 50.00);

INSERT INTO Pedidos (ID_Pedido, Cliente, Endereco, CEP, Itens, Qtds, Valor_pago) 
VALUES (6, '39845716645', 'Rua São Paulo, 841', 074644486, ['Camiseta'], [2], 75.00);

INSERT INTO Pedidos (ID_Pedido, Cliente, Endereco, CEP, Itens, Qtds, Valor_pago) 
VALUES (7, '68557716645', 'Rua Rio de Janeiro, 41', 074645788, ['Shorts'], [5], 30.00);

INSERT INTO Pedidos (ID_Pedido, Cliente, Endereco, CEP, Itens, Qtds, Valor_pago) 
VALUES (8, '32426716645', 'Rua Minas Gerais, 981', 074645223, ['Bermuda'], [2], 40.00);

INSERT INTO Pedidos (ID_Pedido, Cliente, Endereco, CEP, Itens, Qtds, Valor_pago) 
VALUES (9, '11116716645', 'Rua Bahia, 21', 242645223, ['Vestido'], [4], 55.00);

INSERT INTO Pedidos (ID_Pedido, Cliente, Endereco, CEP, Itens, Qtds, Valor_pago) 
VALUES (10, '68756716645', 'Rua Espirito Santo, 21', 242643320, ['Saia'], [10], 60.00);
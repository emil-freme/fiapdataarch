CREATE database Vendas;
USE Vendas; 

CREATE TABLE Produtos (
 Codigo int,
  Nome varchar(80),
  Modelo varchar(50),
  Fabricante varchar(80),
  Cor ENUM('preto','branco','azul','vermelho'),
 Tam ENUM('pequena','média','grande','extra-grande')
);

CREATE TABLE Clientes (
  CPF varchar(11),
  Nome varchar(80),
  Endereco varchar(50),
  CEP int,
  Email varchar(80),
  Telefones varchar(11)
);

CREATE TABLE Pedidos (
  Cliente varchar(11),
  Endereco varchar(50),
  CEP int,
  Itens varchar(80),
  Qtds int,
  Valor_pago decimal(18,2)
);

INSERT INTO Produtos VALUES (1,'Blusa Ciganinha', 'Cropped', 'Renner', 'preto', 'pequena');
INSERT INTO Produtos VALUES (2,'Jaqueta de couro', 'Jaqueta', 'Shein', 'azul', 'média');
INSERT INTO Produtos VALUES (3,'Pantalona', 'Calça', 'YouCom', 'vermelho', 'grande');
INSERT INTO Produtos VALUES (4,'Camiseta lisa', 'Camiseta', 'DeliriYou', 'branco', 'pequena');
INSERT INTO Produtos VALUES (5,'Shorts jeans', 'Shorts', 'C&A', 'vermelho', 'extra-grande');
INSERT INTO Produtos VALUES (6,'Bermuda tactel', 'Bermuda', 'Zara', 'branco', 'grande');
INSERT INTO Produtos VALUES (7,'Vestido longo', 'Vestido', 'Adidas', 'azul', 'média');
INSERT INTO Produtos VALUES (8,'Saia curta', 'Saia', 'Nike', 'preto', 'extra-grande');
INSERT INTO Produtos VALUES (9,'Macacão de festa', 'Macacão', 'Oakley', 'azul', 'grande');
INSERT INTO Produtos VALUES (10,'Frente única', 'Body', 'Puma', 'vermelho', 'média');

INSERT INTO Clientes VALUES('28323428312','Roberto da costa','Rua Eduardo Siqueira,631',080010001,'roberto@gmail.com','11973813232');
INSERT INTO Clientes VALUES('14253627381','Ricardo Silverio','Rua Ferreira Alves,821',070012786,'ricardo@gmail.com','11943536326');
INSERT INTO Clientes VALUES('25463784311','Rafael Fonseca','Rua Joao Garcia,911',090045123,'rafael@gmail.com','11943536326');
INSERT INTO Clientes VALUES('65423173613','Rodrigo Castanheiro','Rua Mairiporã,121',83928384,'rodrigo@gmail.com','11943536326');
INSERT INTO Clientes VALUES('45632781231','Gabriel Arcanjo','Rua Bernadino de campos,261',89745123,'gabriel@gmail.com','11943536326');
INSERT INTO Clientes VALUES('78346271536','Jurandir Souza','Rua Doutor ALencar,371',67564987,'jurandir@gmail.com','11943536326');
INSERT INTO Clientes VALUES('56352612361','Lazaro Silva','Rua Tarcísio junqueira,281',080034123,'lazaro@gmail.com','11943536326');
INSERT INTO Clientes VALUES('86743567321','Ataíde Da Silva','Rua Francisco Mello,481',98909784,'ataide@gmail.com','11943536326');
INSERT INTO Clientes VALUES('64532123456','Miguel Oliveira','Rua Senador Magalhães,591',080023123,'miguel@gmail.com','11943536326');
INSERT INTO Clientes VALUES('31678240198','Rodolfo Garcia','Rua Edvaldo Lopes',080012342,'rodolfo@gmail.com','11943536326');

INSERT INTO Pedidos VALUES ('28323428312','Rua Eduardo Siqueira,631',080010001, 'Calça', 12, 420.30);
INSERT INTO Pedidos VALUES ('25463784311','Rua Joao Garcia,911',090045123, 'Jaqueta', 32, 2678.87);
INSERT INTO Pedidos VALUES ('45632781231','Rua Bernadino de campos,261',89745123, 'Cropped', 21, 176.21);
INSERT INTO Pedidos VALUES ('14253627381','Rua Ferreira Alves,821',070012786, 'Body', 9, 67.88);
INSERT INTO Pedidos VALUES ('65423173613','Rua Mairiporã,121',83928384, 'Shorts', 327, 4719.55);
INSERT INTO Pedidos VALUES ('78346271536','Rua Doutor ALencar,371',67564987, 'Bermuda', 4, 89.90);
INSERT INTO Pedidos VALUES ('86743567321','Rua Francisco Mello,481',98909784, 'Vestido', 211, 653.77);
INSERT INTO Pedidos VALUES ('64532123456','Rua Senador Magalhães,591',080023123, 'Saia', 32, 890.44);
INSERT INTO Pedidos VALUES ('31678240198','Rua Edvaldo Lopes',080012342, 'Macacão', 62, 3561.82);
INSERT INTO Pedidos VALUES ('56352612361','Rua Tarcísio junqueira,281',080034123, 'Camiseta', 300, 6712.30);

LOAD DATA INFILE 'c:/Produtos.csv'
INTO TABLE Produtos
FIELDS TERMINATED BY ';'
ENCLOSED BY '''
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'c:/clientes.csv'
INTO TABLE Produtos
FIELDS TERMINATED BY ';'
ENCLOSED BY '''
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


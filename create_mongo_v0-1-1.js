/*************************
 * 2023
 * Script criado para matéria de 
 * Integrantes:
 *  - Emil Freme
 *  - Evandro Souza
 *  - Julia Gouveia
 *  - Caio Diniz
 ************************/
/*

print("---Criando Schemas---");

print("---------- Pedidos Schemas---");

const pedidosSchema = {
    "bsonType": "object",
    "properties": {
        "cliente_id": { "bsonType": "objectId" },
        "endereco":   { "bsonType": "string" },
        "cep":        { "bsonType": "int" }, 
        "itens":      { "bsonType": "array", 
                            "items": {"bsonType" :"objectId"} }
    }
}

print("---------- Produtos Schemas---");

const produtosSchema = {
    "bsonType": "object",
    "properties":{
        "code":       { "bsonType": "string" },
        "nome":       { "bsonType": "string" },
        "modelo":     { "bsonType": "string" },
        "fabricante": { "bsonType": "string" },
        "cor":        { "bsonType": "string" },
        "tam":        { "bsonType": "string" },
    }
}

print("---------- Cliente Schemas---");

const clienteSchema = {
    "bsonType": "object",
    "properties":{
        "cpf":        { "bsonType": "int" },
        "nome":       { "bsonType": "string" }, 
        "endereco":   { "bsonType": "object",
                        "additionalProperties": {
                            "bsonType": "object",
                            "title": "endereco",
                            "properties":{
                                "logradouro":  { "bsonType": "string" },
                                "numero":      { "bsonType": "string" }
                            }
                        }
                    }, 
        "cep":        { "bsonType": "int" }, 
        "email":      { "bsonType": "string" }, 
        "telefones":  { "bsonType": "array",
                        "items":   { "bsonType": "string" } 
                        } 
    }
}

*/


print("--- Criando as collection com validação ---");

db.createCollection("produtos");//, {"validator": {$jsonSchema: produtosSchema}});

db.createCollection("clientes");//, {"validator": {$jsonSchema: clienteSchema}});

db.createCollection("pedidos");//,  {"validator": {$jsonSchema: pedidosSchema}});


print("--- Inserindo base de clientes ---");

db.clientes.insertMany([
{
   "cpf":'28323428312',
   "nome":'Roberto da costa',
   "endereco":{"logradouro":"Rua Eduardo Siqueira",
                "numero":"631"},
   "cep":080010001,
   "email":'roberto@gmail.com',
   "telefones":["11973813232"]
    },

{
   "cpf":'14253627381',
   "nome":'Ricardo Silverio',
   "endereco":{"logradouro":"Rua Ferreira Alves",
                "numero":"821"},
   "cep":070012786,
   "email":'ricardo@gmail.com',
   "telefones":['11943536326']
    },
{
   "cpf":'25463784311',
   "nome":'Rafael Fonseca',
   "endereco":{"logradouro":'Rua Joao Garcia',
                "numero":"911"},
   "cep":090045123,
   "email":'rafael@gmail.com',
   "telefones":['11943536326']
    },
{
   "cpf":'65423173613',
   "nome":'Rodrigo Castanheiro',
   "endereco":{"logradouro":"Rua Mairiporã",
				"numero":"121"},
   "cep":83928384,
   "email":'rodrigo@gmail.com',
   "telefones":['11943536326']
    },
{
   "cpf":'45632781231',
   "nome":'Gabriel Arcanjo',
   "endereco":{"logradouro":"Rua Bernadino de campos",
				"numero":"261"},
   "cep":89745123,
   "email":'gabriel@gmail.com',
   "telefones":['11943536326']
    },
{
   "cpf":'78346271536',
   "nome":'Jurandir Souza',
   "endereco":{"logradouro":"Rua Doutor ALencar",
				"numero":"371"},
   "cep":67564987,
   "email":'jurandir@gmail.com',
   "telefones":['11943536326']
    },
{
   "cpf":'56352612361',
   "nome":'Lazaro Silva',
   "endereco":{"logradouro":"Rua Tarcísio junqueira",
				"numero":"281"},
   "cep":080034123,
   "email":'lazaro@gmail.com',
   "telefones":['11943536326']
    },
{
   "cpf":'86743567321',
   "nome":'Ataíde Da Silva',
   "endereco":{"logradouro":"Rua Francisco Mello",
				"numero":"481"},
   "cep":98909784,
   "email":'ataide@gmail.com',
   "telefones":['11943536326']
    },
{
   "cpf":'64532123456',
   "nome":'Miguel Oliveira',
   "endereco":{"logradouro":"Rua Senador Magalhães",
				"numero":"591"},
   "cep":080023123,
   "email":'miguel@gmail.com',
   "telefones":['11943536326']
    },
{
   "cpf":'31678240198',
   "nome":'Rodolfo Garcia',
   "endereco":{"logradouro":'Rua Edvaldo Lopes'},
   "cep":080012342,
   "email":'rodolfo@gmail.com',
   "telefones":['11943536326']
    },
]);


print("--- Inserindo base de produtos ---");

db.produtos.insertMany([
  {
    "Codigo": 1,
    "Nome": 'Blusa Ciganinha',
    "Modelo": 'Cropped',
    "Fabricante": 'Renner',
    "Cor": 'preto',
    "Tam": 'pequena'
  },
  {
    "Codigo": 2,
    "Nome": 'Jaqueta de couro',
    "Modelo": 'Jaqueta',
    "Fabricante": 'Shein',
    "Cor": 'azul',
    "Tam": 'média'
  },
  {
    "Codigo": 3,
    "Nome": 'Pantalona',
    "Modelo": 'Calça',
    "Fabricante": 'YouCom',
    "Cor": 'vermelho',
    "Tam": 'grande'
  },
  {
    "Codigo": 4,
    "Nome": 'Camiseta lisa',
    "Modelo": 'Camiseta',
    "Fabricante": 'DeliriYou',
    "Cor": 'branco',
    "Tam": 'pequena'
  },
  {
    "Codigo": 5,
    "Nome": 'Shorts jeans',
    "Modelo": 'Shorts',
    "Fabricante": 'C&A',
    "Cor": 'vermelho',
    "Tam": 'extra-grande'
  },
  {
    "Codigo": 6,
    "Nome": 'Bermuda tactel',
    "Modelo": 'Bermuda',
    "Fabricante": 'Zara',
    "Cor": 'branco',
    "Tam": 'grande'
  },
  {
    "Codigo": 7,
    "Nome": 'Vestido longo',
    "Modelo": 'Vestido',
    "Fabricante": 'Adidas',
    "Cor": 'azul',
    "Tam": 'média'
  },
  {
    "Codigo": 8,
    "Nome": 'Saia curta',
    "Modelo": 'Saia',
    "Fabricante": 'Nike',
    "Cor": 'preto',
    "Tam": 'extra-grande'
  },
  {
    "Codigo": 9,
    "Nome": 'Macacão de festa',
    "Modelo": 'Macacão',
    "Fabricante": 'Oakley',
    "Cor": 'azul',
    "Tam": 'grande'
  },
  {
    "Codigo": 10,
    "Nome": 'Frente única',
    "Modelo": 'Body',
    "Fabricante": 'Puma',
    "Cor": 'vermelho',
    "Tam": 'média'
  }
]);

print("--- Inserindo base de pedidos ---");

db.pedidos.insertMany([
{
   "cliente":"28323428312",
   "endereco":"Rua Eduardo Siqueira,631",
   "cep":80010001,
   "itens":"Calça",
   "qtds":12,
   "valor_pago":420.30
},
{
   "cliente":"25463784311",
   "endereco":"Rua Joao Garcia,911",
   "cep":90045123,
   "itens":"Jaqueta",
   "qtds":32,
   "valor_pago":2678.87
},
{
   "cliente":"45632781231",
   "endereco":"Rua Bernadino de campos,261",
   "cep":89745123,
   "itens":"Cropped",
   "qtds":21,
   "valor_pago":176.21
},
{
   "cliente":"14253627381",
   "endereco":"Rua Ferreira Alves,821",
   "cep":70012786,
   "itens":"Body",
   "qtds":9,
   "valor_pago":67.88
},
{
   "cliente":"65423173613",
   "endereco":"Rua Mairiporã,121",
   "cep":83928384,
   "itens":"Shorts",
   "qtds":327,
   "valor_pago":4719.55
},
{
   "cliente":"78346271536",
   "endereco":"Rua Doutor ALencar,371",
   "cep":67564987,
   "itens":"Bermuda",
   "qtds":4,
   "valor_pago":89.90
},
{
   "cliente":"86743567321",
   "endereco":"Rua Francisco Mello,481",
   "cep":98909784,
   "itens":"Vestido",
   "qtds":211,
   "valor_pago":653.77
},
{
   "cliente":"64532123456",
   "endereco":"Rua Senador Magalhães,591",
   "cep":80023123,
   "itens":"Saia",
   "qtds":32,
   "valor_pago":890.44
},
{
   "cliente":"31678240198",
   "endereco":"Rua Edvaldo Lopes",
   "cep":80012342,
   "itens":"Macacão",
   "qtds":62,
   "valor_pago":3561.82
},
{
   "cliente":"56352612361",
   "endereco":"Rua Tarcísio junqueira,281",
   "cep":80034123,
   "itens":"Camiseta",
   "qtds":300,
   "valor_pago":6712.30
}
]);

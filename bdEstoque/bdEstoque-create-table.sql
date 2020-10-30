CREATE DATABASE bdEstoque

USE bdEstoque

CREATE TABLE tbCliente(
	idCliente INT PRIMARY KEY IDENTITY (1,1)
	, nomeCliente VARCHAR (50) NOT NULL
	, cpfCliente VARCHAR (14) NOT NULL
	, emailCliente VARCHAR (50) NOT NULL
	, sexoCliente VARCHAR (1) NOT NULL
	, dataNascimentoCliente SMALLDATETIME NOT NULL
)

CREATE TABLE tbFabricante(
	idFabricante INT PRIMARY KEY IDENTITY (1,1)
	, nomeFabricante VARCHAR (50) NOT NULL
)

CREATE TABLE tbFornecedor(
	idFornecedor INT PRIMARY KEY IDENTITY (1,1)
	, nomeFornecedor VARCHAR (50) NOT NULL
	, contatoFornecedor VARCHAR (50) NOT NULL
)

CREATE TABLE tbProduto(
    idProduto INT PRIMARY KEY IDENTITY (1,1)
    , descricaoProduto VARCHAR (80) NOT NULL
    , valorProduto SMALLMONEY NOT NULL
    , quantidadeProduto INT NOT NULL
    , idFabricante INT FOREIGN KEY REFERENCES tbFabricante (idFabricante)
    , idFornecedor INT FOREIGN KEY REFERENCES tbFornecedor (idFornecedor)
)

CREATE TABLE tbVenda(
    idVenda INT PRIMARY KEY IDENTITY (1,1)
    , dataVenda SMALLDATETIME NOT NULL
    , valorTotalVenda SMALLMONEY NOT NULL
    , idCliente INT FOREIGN KEY REFERENCES tbCliente (idCliente)
)

CREATE TABLE tbItensVenda(
    idItensVenda INT PRIMARY KEY IDENTITY (1,1)
    , idVenda INT FOREIGN KEY REFERENCES tbVenda(idVenda)
    , idProduto INT FOREIGN KEY REFERENCES tbProduto(idProduto)
    , quantidadeItensVenda INT NOT NULL 
    , subTotalItensVenda SMALLMONEY NOT NULL 
)
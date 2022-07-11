

CREATE  TABLE cliente (
    IdCliente int,
    nome varchar(150),
    PRIMARY KEY (IdCliente)
);

CREATE  TABLE pedido (
    IdPedido int,
    IdProduto int,
    QuantidadeDoProduto int,
    PRIMARY KEY (IdPedido),
    FOREIGN KEY (IdProduto) REFERENCES produto(IdProduto)
);


CREATE TABLE produto (
    IdProduto int,
    NomeDoProduto varchar(150),
    PRIMARY KEY (IdProduto)
);

CREATE TABLE Endereco (
    IdEndereco int,
    CEP int,
    NomeDaRua varchar(150),
    NumeroDoComplemento varchar (150),
    PRIMARY KEY (IdEndereco)
    );


CREATE TABLE pagamento (
    IdPagamento int,
    IdPedido int,
    TotalDoPedido int,
    PRIMARY KEY (IdPagamento),
    FOREIGN KEY (IdPedido) REFERENCES pedido(IdPedido)
);


CREATE TABLE PIX (
    IdPIX int,
    IdPagamento int,
    ChavePIX int,
    PRIMARY KEY (IdPIX),
    FOREIGN KEY (IdPagamento) REFERENCES pagamento(IdPagamento)
);


CREATE TABLE CartaoDeCredito (
    IdCartao int,
    IdPagamento int,
    NumeroDoCartao int,
    NomeDoTitular varchar(150),
    DataDeVencimento varchar(150),
    CVV int,
    PRIMARY KEY (IdCartao),
    FOREIGN KEY (IdPagamento) REFERENCES pagamento(IdPagamento)
);


INSERT INTO cliente (idcliente,nome)
VALUES (1, 'teste');

INSERT INTO cliente (idcliente,nome)
VALUES (2, 'Christian');

INSERT INTO cliente (idcliente,nome)
VALUES (3, 'Paulo');

INSERT INTO cliente (idcliente,nome)
VALUES (4, 'Dudu');

INSERT INTO cliente (idcliente,nome)
VALUES (6, 'Andrew');

INSERT INTO cliente (idcliente,nome)
VALUES (7, 'Carlos');

INSERT INTO cliente (idcliente,nome)
VALUES (8, 'André');

INSERT INTO cliente (idcliente,nome)
VALUES (9, 'Lucas');

INSERT INTO cliente (idcliente,nome)
VALUES (10, 'Roberto')



SELECT * FROM cliente;

INSERT INTO endereco (idendereco,cep,nomedarua,numerodocomplemento)
VALUES (1, '8807281','rua das gaivotas','183')




INSERT INTO endereco (idendereco,cep,nomedarua,numerodocomplemento)
VALUES (2, '123414','rua das canoas','2183')


INSERT INTO endereco (idendereco,cep,nomedarua,numerodocomplemento)
VALUES (3, '412344','rua das canelas','113')

INSERT INTO endereco (idendereco,cep,nomedarua,numerodocomplemento)
VALUES (4, '412344','rua das mads','321');

INSERT INTO endereco (idendereco,cep,nomedarua,numerodocomplemento)
VALUES (5, '412344','rua das paratis','123');

INSERT INTO endereco (idendereco,cep,nomedarua,numerodocomplemento)
VALUES (6, '412344','rua das panelas','86');

INSERT INTO endereco (idendereco,cep,nomedarua,numerodocomplemento)
VALUES (7, '412344','rua das gatos','41');

INSERT INTO endereco (idendereco,cep,nomedarua,numerodocomplemento)
VALUES (8, '412344','rua das caes','71');

INSERT INTO endereco (idendereco,cep,nomedarua,numerodocomplemento)
VALUES (9, '412344','rua das camelos','75');

INSERT INTO endereco (idendereco,cep,nomedarua,numerodocomplemento)
VALUES (10, '412344','rua das ostras','451')

SELECT * FROM endereco;


INSERT INTO produto (idproduto,nomedoproduto)
VALUES (1,'banana')

INSERT INTO pedido (idpedido,idproduto, quantidadedoproduto)
VALUES (1,1, 30)

INSERT INTO pagamento (idpagamento,idpedido,totaldopedido)
VALUES (2, 1, 50)


INSERT INTO cartaodecredito (idcartao,idpagamento,numerodocartao,nomedotitular,datadevencimento,cvv)
VALUES (1, 2, 414151515, 'Chris', '23/09/2023', 124)



SELECT * FROM cliente
WHERE idcliente = 1;


SELECT * FROM cliente
WHERE idcliente = 7;

SELECT * FROM cliente
WHERE idcliente = null;


SELECT * FROM cliente
WHERE nome LIKE 'A%';


SELECT * FROM endereco
WHERE numerodocomplemento LIKE '1%';


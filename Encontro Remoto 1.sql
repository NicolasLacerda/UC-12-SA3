CREATE DATABASE TesteSegurançaUC12;

CREATE TABLE usuarios
(
	Id INT PRIMARY KEY IDENTITY,
	Email VARCHAR(100) UNIQUE NOT NULL,
	Senha VARCHAR(50) NOT NULL
);

INSERT INTO usuarios VALUES('email@email.com', 1234);

SELECT * FROM usuarios;

SELECT Id, Email, HASHBYTES('MD2',Senha) AS 'Senha Hash' FROM usuarios WHERE Id = 1;
SELECT Id, Email, HASHBYTES('MD4',Senha) AS 'Senha Hash' FROM usuarios WHERE Id = 1;
SELECT Id, Email, HASHBYTES('MD5',Senha) AS 'Senha Hash' FROM usuarios WHERE Id = 1;
SELECT Id, Email, HASHBYTES('SHA',Senha) AS 'Senha Hash' FROM usuarios WHERE Id = 1;
SELECT Id, Email, HASHBYTES('SHA1',Senha) AS 'Senha Hash' FROM usuarios WHERE Id = 1;
SELECT Id, Email, HASHBYTES('SHA2_256',Senha) AS 'Senha Hash' FROM usuarios WHERE Id = 1;
SELECT Id, Email, HASHBYTES('SHA2_512',Senha) AS 'Senha Hash' FROM usuarios WHERE Id = 1;

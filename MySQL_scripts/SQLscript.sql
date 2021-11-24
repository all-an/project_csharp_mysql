CREATE DATABASE mysqldb;

CREATE TABLE mysqldb.Departamento( DepartamentoId INT AUTO_INCREMENT, DepartamentoNome NVARCHAR(500), PRIMARY KEY(DepartamentoId) );

INSERT INTO mysqldb.departamento(DepartamentoNome) VALUES ('TI');
INSERT INTO mysqldb.departamento(DepartamentoNome) VALUES ('SUPORTE');

INSERT INTO mysqldb.departamento(DepartamentoNome) VALUES ('MARKETING');

INSERT INTO mysqldb.departamento(DepartamentoNome) VALUES ('DEV');

INSERT INTO mysqldb.departamento(DepartamentoNome) VALUES ('NEGOCIOS');

INSERT INTO mysqldb.departamento(DepartamentoNome) VALUES ('VENDAS');

ALTER TABLE mysqldb.departamento ADD COLUMN Responsavel VARCHAR(100) AFTER DepartamentoNome;

UPDATE mysqldb.departamento SET Responsavel = 'Forrest Gump' WHERE DepartamentoId = 1;

UPDATE mysqldb.departamento SET Responsavel = 'Indiana Jones' WHERE DepartamentoId = 2;

UPDATE mysqldb.departamento SET Responsavel = 'Luke Skywalker' WHERE DepartamentoId = 3;

UPDATE mysqldb.departamento SET Responsavel = 'Luke Cage' WHERE DepartamentoId = 4;

UPDATE mysqldb.departamento SET Responsavel = 'James Bond' WHERE DepartamentoId = 5;

UPDATE mysqldb.departamento SET Responsavel = 'Coheed Killgannon' WHERE DepartamentoId = 6;

SELECT * FROM mysqldb.departamento;

TRUNCATE TABLE mysqldb.departamento; /*resetei a TABLE e a primary key*/













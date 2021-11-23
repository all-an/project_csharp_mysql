create database mysqldb;

create table mysqldb.Departamento( DepartamentoId int auto_increment, DepartamentoNome nvarchar(500), PRIMARY KEY(DepartamentoId) );

insert into mysqldb.departamento(DepartamentoNome) values ('TI');
insert into mysqldb.departamento(DepartamentoNome) values ('SUPORTE');

insert into mysqldb.departamento(DepartamentoNome) values ('MARKETING');

insert into mysqldb.departamento(DepartamentoNome) values ('DEV');

insert into mysqldb.departamento(DepartamentoNome) values ('NEGOCIOS');

insert into mysqldb.departamento(DepartamentoNome) values ('VENDAS');

ALTER TABLE mysqldb.departamento ADD COLUMN Responsavel VARCHAR(100) AFTER DepartamentoNome;

UPDATE mysqldb.departamento SET Responsavel = 'Forrest Gump' WHERE DepartamentoId = 1;

UPDATE mysqldb.departamento SET Responsavel = 'Indiana Jones' WHERE DepartamentoId = 2;

UPDATE mysqldb.departamento SET Responsavel = 'Luke Skywalker' WHERE DepartamentoId = 3;

UPDATE mysqldb.departamento SET Responsavel = 'Luke Cage' WHERE DepartamentoId = 4;

UPDATE mysqldb.departamento SET Responsavel = 'James Bond' WHERE DepartamentoId = 5;

UPDATE mysqldb.departamento SET Responsavel = 'Coheed Killgannon' WHERE DepartamentoId = 6;

SELECT * FROM mysqldb.departamento













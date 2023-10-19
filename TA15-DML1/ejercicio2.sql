DROP DATABASE IF EXISTS ejercicio8;

CREATE DATABASE ejercicio8;

USE ejercicio8;

create table Proveedores(
	id varchar(4),
	nombre varchar(100),
	primary key (id)
);

insert into Proveedores values
('id1','proveedor1'),
('id2','proveedor2'),
('id3','proveedor3'),
('id4','proveedor4'),
('id5','proveedor5'),
('id6','proveedor6'),
('id7','proveedor7'),
('id8','proveedor8'),
('id9','proveedor9'),
('id10','proveedor10');

select * from Proveedores;

create table Piezas(
	codigo int auto_increment,
    nombre varchar(100),
    primary key (codigo)
);

insert into Piezas(nombre) values
('Sergi'),
('Juan'),
('Marc'),
('Jose'),
('Antonio'),
('Manel'),
('Ainara'),
('Ainoa'),
('Marc'),
('Rafa');

select * from Piezas;

create table Suministra(
	codigoPieza int,
    idProveedor varchar(4),
    precio double,
    primary key (codigoPieza,idProveedor),
    foreign key (codigoPieza) references Piezas (codigo) on delete cascade on update cascade,
    foreign key (idProveedor) references Proveedores (id) on delete cascade on update cascade
);

insert into Suministra values
(1,'id1',150),
(2,'id5',64),
(3,'id7',3),
(4,'id10',44),
(5,'id6',157),
(6,'id8',10.3),
(7,'id9',2.3),
(8,'id4',8.99),
(9,'id8',74.3),
(10,'id1',99.99);

select * from Suministra;

DROP DATABASE IF EXISTS ejercicio10;

CREATE DATABASE ejercicio10;

USE ejercicio10;

create table Cajeros(
	codigo int auto_increment,
	nom_apels varchar(255),
	primary key (codigo)
);

insert into Cajeros(nom_apels) values
('nombre1'),
('nombre2'),
('nombre3'),
('nombre4'),
('nombre5'),
('nombre6'),
('nombre7'),
('nombre8'),
('nombre9'),
('nombre10');

select * from Cajeros;

create table Productos(
	codigo int auto_increment,
	nombre varchar(100),
	precio double,
	primary key (codigo)
);

insert into Productos(nombre, precio) values
('nombre1', 10.3),
('nombre2', 0.5),
('nombre3', 80),
('nombre4', 12.3),
('nombre5', 10.5),
('nombre6', 17),
('nombre7', 99.9),
('nombre8', 103),
('nombre9', 100),
('nombre10', 1);

select * from Productos;

create table Maquinas_registradoras(
	codigo int auto_increment,
	piso int,
	primary key (codigo)
);

insert into Maquinas_registradoras(piso) values
(10),
(0),
(8),
(12),
(10),
(17),
(99),
(1),
(150),
(16);

select * from Maquinas_registradoras;

create table Asignado_a(
	codigo_cajero int,
	codigo_maquina int,
	codigo_producto int,
	primary key (codigo_cajero, codigo_maquina, codigo_producto),
	foreign key (codigo_cajero) references Cajeros (codigo) on delete cascade on update cascade,
	foreign key (codigo_maquina) references Maquinas_registradoras (codigo) on delete cascade on update cascade,
	foreign key (codigo_producto) references Productos (codigo) on delete cascade on update cascade
);
insert into Asignado_a values
(1,1,1),
(2,2,2),
(3,3,3),
(4,4,4),
(5,5,5),
(6,6,6),
(7,7,7),
(8,8,8),
(9,9,9),
(10,10,10);

select * from Asignado_a;

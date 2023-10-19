DROP DATABASE IF EXISTS ejercicio9;

CREATE DATABASE ejercicio9;

USE ejercicio9;

create table Cientificos(
	dni varchar(8),
	nom_apels varchar(255),
	primary key (dni)
);

insert into Cientificos values
('dni1','nombre1'),
('dni2','nombre2'),
('dni3','nombre3'),
('dni4','nombre4'),
('dni5','nombre5'),
('dni6','nombre6'),
('dni7','nombre7'),
('dni8','nombre8'),
('dni9','nombre9'),
('dni10','Sergi');

select * from Cientificos;

create table Proyecto(
	id char(4),
	nombre varchar(255),
	horas int,
	primary key (id)
);

insert into Proyecto values
('id1','proyecto1',10),
('id2','proyecto2',15),
('id3','proyecto3',6),
('id4','proyecto4',7),
('id5','proyecto5',8),
('id6','proyecto6',5),
('id7','proyecto7',1),
('id8','proyecto8',33),
('id9','proyecto9',4),
('id10','proyecto10',20);

select * from Proyecto;

create table Asignado_a(
	dni_cientifico varchar(8),
	id_proyecto char(4),
	primary key (dni_cientifico, id_proyecto),
	foreign key (dni_cientifico) references Cientificos (dni) on delete cascade on update cascade,
	foreign key (id_proyecto) references Proyecto (id) on delete cascade on update cascade
);

insert into Asignado_a values
('dni1','id1'),
('dni2','id2'),
('dni3','id3'),
('dni4','id4'),
('dni5','id5'),
('dni6','id6'),
('dni7','id7'),
('dni8','id8'),
('dni9','id9'),
('dni10','id10');

select * from Asignado_a;


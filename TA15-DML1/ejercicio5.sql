DROP DATABASE IF EXISTS ejercicio11;

CREATE DATABASE ejercicio11;

USE ejercicio11;

create table Facultad(
	codigo int auto_increment,
	nombre varchar(100),
	primary key (codigo)
);

insert into Facultad(nombre) values
('facultad1'),
('facultad2'),
('facultad3'),
('facultad4'),
('facultad5'),
('facultad6'),
('facultad7'),
('facultad8'),
('facultad9'),
('facultad10');

select * from Facultad;

create table Investigadores(
	dni varchar(8),
	nom_apels varchar(100),
	facultad int,
	primary key (dni),
    foreign key (facultad) references Facultad (codigo) on delete cascade on update cascade
);

insert into Investigadores values
('dni1','nombre1','1'),
('dni2','nombre2','2'),
('dni3','nombre3','3'),
('dni4','nombre4','4'),
('dni5','nombre5','5'),
('dni6','nombre6','6'),
('dni7','nombre7','7'),
('dni8','nombre8','8'),
('dni9','nombre9','9'),
('dni10','nombre10','10');

select * from Investigadores;

create table Equipos(
	num_serie char(10),
    nombre varchar(100),
	facultad int,
	primary key (num_serie),
    foreign key (facultad) references Facultad (codigo) on delete cascade on update cascade
);

insert into Equipos values
('num1','nombre1',1),
('num2','nombre2',2),
('num3','nombre3',3),
('num4','nombre4',4),
('num5','nombre5',5),
('num6','nombre6',6),
('num7','nombre7',7),
('num8','nombre8',8),
('num9','nombre9',9),
('num10','nombre10',10);

select * from Equipos;

create table Reserva(
	dni_investigador varchar(8),
	num_serie_equipo char(10),
	comienzo date,
    fin date,
	primary key (dni_investigador, num_serie_equipo),
	foreign key (dni_investigador) references Investigadores (dni) on delete cascade on update cascade,
	foreign key (num_serie_equipo) references Equipos (num_serie) on delete cascade on update cascade
);

insert into Reserva values
('dni1','num1','2023-10-01','2023-10-30'),
('dni2','num2','2023-10-01','2023-10-30'),
('dni3','num3','2023-10-01','2023-10-30'),
('dni4','num4','2023-10-01','2023-10-30'),
('dni5','num5','2023-10-01','2023-10-30'),
('dni6','num6','2023-10-01','2023-10-30'),
('dni7','num7','2023-10-01','2023-10-30'),
('dni8','num8','2023-10-01','2023-10-30'),
('dni9','num9','2023-10-01','2023-10-30'),
('dni10','num10','2023-10-01','2023-10-30');

select * from Reserva;

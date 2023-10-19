DROP DATABASE IF EXISTS ejercicio10;

CREATE DATABASE ejercicio10;

USE ejercicio10;

create table Equipo(
	id_equipo int auto_increment,
	nombre varchar(20),
	presidente varchar(50),
	primary key (id_equipo)
);
create table Jugador(
	id_jugador int auto_increment,
	nombre varchar(20),
	edad int,
	id_equipo int,
	primary key (id_jugador),
	foreign key (id_equipo) references Equipo (id_equipo) on delete cascade on update cascade
);
create table Estadio(
	id_estadio int auto_increment,
	nombre varchar(20),
	primary key (id_estadio)
);
create table Partido(
	id_partido int auto_increment,
	jornada varchar(20),
	fecha date,
	id_estadio int,
	primary key (id_partido),
	foreign key (id_estadio) references Estadio (id_estadio) on delete cascade on update cascade
);
create table Jugar(
	id_equipo int,
	id_partido int,
	resultado int,
	primary key (id_equipo,id_partido),
	foreign key (id_equipo) references Equipo (id_equipo) on delete cascade on update cascade,
	foreign key (id_partido) references Partido (id_partido) on delete cascade on update cascade
);
create table Arbitro(
	id_arbitro int auto_increment,
	nombre varchar(20),
	primary key (id_arbitro)
);
create table Arbitrar(
	id_partido int,
	id_arbitro int,
	primary key (id_partido,id_arbitro),
	foreign key (id_partido) references Partido (id_partido) on delete cascade on update cascade,
	foreign key (id_arbitro) references Arbitro (id_arbitro) on delete cascade on update cascade
);

-- INSERTS DE EQUIPO --
insert into Equipo values (0,'Equipo1','Presidente del Equipo1');
insert into Equipo values (0,'Equipo2','Presidente del Equipo2');
insert into Equipo values (0,'Equipo3','Presidente del Equipo3');
insert into Equipo values (0,'Equipo4','Presidente del Equipo4');
insert into Equipo values (0,'Equipo5','Presidente del Equipo5');
insert into Equipo values (0,'Equipo6','Presidente del Equipo6');
insert into Equipo values (0,'Equipo7','Presidente del Equipo7');
insert into Equipo values (0,'Equipo8','Presidente del Equipo8');
insert into Equipo values (0,'Equipo9','Presidente del Equipo9');
insert into Equipo values (0,'Equipo10','Presidente del Equipo10');

-- INSERTS DE JUGADOR --
insert into Jugador values (0,'Pepe',20,1);
insert into Jugador values (0,'Manolo',22,1);
insert into Jugador values (0,'David',21,1);
insert into Jugador values (0,'Toni',24,2);
insert into Jugador values (0,'Juaquin',28,2);
insert into Jugador values (0,'Rober',23,2);
insert into Jugador values (0,'Jose',29,3);
insert into Jugador values (0,'Raul',20,4);
insert into Jugador values (0,'Sergi',22,4);
insert into Jugador values (0,'Asier',21,4);

-- INSERTS DE ESTADIO --
insert into Estadio values (0,'Camp Nou');
insert into Estadio values (0,'Camp Vell');
insert into Estadio values (0,'Camp Nastic');
insert into Estadio values (0,'Santiago Nosequé');
insert into Estadio values (0,'Ronaldiño Camp');
insert into Estadio values (0,'Camp Rock');
insert into Estadio values (0,'Camp Main');
insert into Estadio values (0,'Camp Dev');
insert into Estadio values (0,'Camp Goku');
insert into Estadio values (0,'Camp Pepe');

-- INSERTS DE PARTIDO --
insert into Partido values (0,'Jornada 1','2023-10-01',1);
insert into Partido values (0,'Jornada 2','2023-11-01',2);
insert into Partido values (0,'Jornada 3','2023-12-01',3);
insert into Partido values (0,'Jornada 4','2024-01-01',4);
insert into Partido values (0,'Jornada 5','2024-02-01',5);
insert into Partido values (0,'Jornada 6','2024-03-01',6);
insert into Partido values (0,'Jornada 7','2024-04-01',7);
insert into Partido values (0,'Jornada 8','2024-05-01',8);
insert into Partido values (0,'Jornada 9','2024-06-01',9);
insert into Partido values (0,'Jornada 10','2024-07-01',10);

-- INSERTS DE JUGAR --
insert into Jugar values (1,1,2);
insert into Jugar values (2,1,6);
insert into Jugar values (6,2,4);
insert into Jugar values (3,2,0);
insert into Jugar values (4,4,2);
insert into Jugar values (5,4,1);
insert into Jugar values (7,6,1);
insert into Jugar values (8,6,1);
insert into Jugar values (9,10,3);
insert into Jugar values (10,10,2);

-- INSERTS DE ARBITRO --
insert into Arbitro values (0,'Pepe');
insert into Arbitro values (0,'Antonio');
insert into Arbitro values (0,'Joselito');
insert into Arbitro values (0,'Franchesco');
insert into Arbitro values (0,'Mambubu');
insert into Arbitro values (0,'Bubamba');
insert into Arbitro values (0,'Pepito');
insert into Arbitro values (0,'Rasputio');
insert into Arbitro values (0,'Rasputin');
insert into Arbitro values (0,'Rubenido');

-- INSERTS DE ARBITRAR --
insert into Arbitrar values (1,1);
insert into Arbitrar values (2,2);
insert into Arbitrar values (3,3);
insert into Arbitrar values (4,4);
insert into Arbitrar values (5,5);
insert into Arbitrar values (6,6);
insert into Arbitrar values (7,7);
insert into Arbitrar values (8,8);
insert into Arbitrar values (9,9);
insert into Arbitrar values (10,10);

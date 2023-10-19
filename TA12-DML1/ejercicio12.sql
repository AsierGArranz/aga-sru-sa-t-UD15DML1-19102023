DROP DATABASE IF EXISTS ejercicio12;

CREATE DATABASE ejercicio12;

USE ejercicio12;

create table Empresa(
	codigo_interno int,
	cif varchar(9) unique,
	nombre varchar(20) unique,
	direccion varchar(50),
	telefono int unique,
	primary key (codigo_interno)
);
create table Proyecto(
	id_proyecto int auto_increment,
	fecha_inicio date,
	fecha_fin date,
	fecha_prevista date,
	codigo_interno_empresa int,
	primary key (id_proyecto),
	foreign key (codigo_interno_empresa) references Empresa (codigo_interno) on delete cascade on update cascade,
	CONSTRAINT Check_Proyecto CHECK (fecha_inicio < fecha_fin AND fecha_fin <= fecha_prevista)
);
create table Trabajador(
	id_trabajador int auto_increment,
	dni varchar(9),
	nombre varchar(20),
	apellidos varchar(50),
	primary key (id_trabajador)
);
create table Profesion(
	codigo_profesion int,
	nombre varchar(20),
	primary key (codigo_profesion)
);
create table Trabajar(
	id_proyecto int,
	id_trabajador int,
	codigo_profesion int,
	horas_trabajadas int,
	primary key (id_proyecto, id_trabajador, codigo_profesion),
	foreign key (id_proyecto) references Proyecto (id_proyecto) on delete cascade on update cascade,
	foreign key (id_trabajador) references Trabajador (id_trabajador) on delete cascade on update cascade,
	foreign key (codigo_profesion) references Profesion (codigo_profesion) on delete cascade on update cascade
);

-- INSERTS DE EMPRESA --
insert into Empresa values (1,'A11111110','Empresa1','Calle s/n, Local 1',666666660);
insert into Empresa values (2,'A11111111','Empresa2','Calle s/n, Local 2',666666661);
insert into Empresa values (3,'A11111112','Empresa3','Calle s/n, Local 3',666666662);
insert into Empresa values (4,'A11111113','Empresa4','Calle s/n, Local 4',666666663);
insert into Empresa values (5,'A11111114','Empresa5','Calle s/n, Local 5',666666664);
insert into Empresa values (6,'A11111115','Empresa6','Calle s/n, Local 6',666666665);
insert into Empresa values (7,'A11111116','Empresa7','Calle s/n, Local 7',666666666);
insert into Empresa values (8,'A11111117','Empresa8','Calle s/n, Local 8',666666667);
insert into Empresa values (9,'A11111118','Empresa9','Calle s/n, Local 9',666666668);
insert into Empresa values (10,'A11111119','Empresa10','Calle s/n, Local 10',666666669);

-- INSERTS DE PROYECTO --
insert into Proyecto values (null,'2022-01-01','2022-02-01','2022-02-15',1);
insert into Proyecto values (null,'2022-02-01','2022-03-01','2022-03-15',2);
insert into Proyecto values (null,'2022-03-01','2022-04-01','2022-10-15',3);
insert into Proyecto values (null,'2022-04-01','2022-05-01','2022-10-15',4);
insert into Proyecto values (null,'2022-05-01','2022-06-01','2022-10-15',5);
insert into Proyecto values (null,'2022-06-01','2022-07-01','2022-10-15',6);
insert into Proyecto values (null,'2022-07-01','2022-08-01','2022-12-15',7);
insert into Proyecto values (null,'2022-08-01','2022-09-01','2022-12-15',8);
insert into Proyecto values (null,'2022-09-01','2022-10-01','2022-12-15',9);
insert into Proyecto values (null,'2022-10-01','2022-12-01','2022-12-15',10);

-- INSERTS DE TRABAJADOR --
insert into Trabajador values (null,'11111110X','Pepe','Apellidos Trabajador1');
insert into Trabajador values (null,'11111111X','Jose','Apellidos Trabajador2');
insert into Trabajador values (null,'11111112X','Juaquin','Apellidos Trabajador3');
insert into Trabajador values (null,'11111113X','Manel','Apellidos Trabajador4');
insert into Trabajador values (null,'11111114X','Toni','Apellidos Trabajador5');
insert into Trabajador values (null,'11111115X','Cristo','Apellidos Trabajador6');
insert into Trabajador values (null,'11111116X','David','Apellidos Trabajador7');
insert into Trabajador values (null,'11111117X','Carla','Apellidos Trabajador8');
insert into Trabajador values (null,'11111118X','Maria','Apellidos Trabajador9');
insert into Trabajador values (null,'11111119X','Cristina','Apellidos Trabajador10');

-- INSERTS DE PROFESION --
insert into Profesion values (1,'Programador Front');
insert into Profesion values (2,'Programador Back');
insert into Profesion values (3,'Artista gráfico');
insert into Profesion values (4,'Productor musical');
insert into Profesion values (5,'Marqueting');
insert into Profesion values (6,'Gestor de proyectos');
insert into Profesion values (7,'100tifico');
insert into Profesion values (8,'Directivo');
insert into Profesion values (9,'Cocinero');
insert into Profesion values (10,'Camarero');

-- INSERTS DE TRABAJAR --
insert into Trabajar values (1,1,1,560);
insert into Trabajar values (1,2,2,433);
insert into Trabajar values (1,3,3,399);
insert into Trabajar values (1,4,6,620);
insert into Trabajar values (2,5,5,999);
insert into Trabajar values (2,6,4,842);
insert into Trabajar values (3,7,5,399);
insert into Trabajar values (3,8,5,538);
insert into Trabajar values (6,9,9,749);
insert into Trabajar values (6,10,10,401);

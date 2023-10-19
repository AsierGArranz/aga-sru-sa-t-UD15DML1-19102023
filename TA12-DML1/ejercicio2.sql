DROP DATABASE IF EXISTS ejercicio2;

CREATE DATABASE ejercicio2;

USE ejercicio2;

create table Empresa(
	cif varchar(20),
    nombre varchar(20),
    direccion varchar(200),
    telefono varchar(20),
    primary key (cif)
);
insert into Empresa values
('A29268161','pepe1','c/labromapasodecastañoaoscuro1','654999111'),
('A29268162','pepe2','c/labromapasodecastañoaoscuro2','654999112'),
('A29268163','pepe3','c/labromapasodecastañoaoscuro3','654999113'),
('A29268164','pepe4','c/labromapasodecastañoaoscuro4','654999114'),
('A29268165','pepe5','c/labromapasodecastañoaoscuro5','654999115'),
('A29268166','pepe6','c/labromapasodecastañoaoscuro6','654999116'),
('A29268167','pepe7','c/labromapasodecastañoaoscuro7','654999117'),
('A29268168','pepe8','c/labromapasodecastañoaoscuro8','654999118'),
('A29268169','pepe9','c/labromapasodecastañoaoscuro9','654999119'),
('A29268160','pepe10','c/labromapasodecastañoaoscuro10','654999110');

create table Alumno(
	dni varchar(20),
    nombre varchar(20),
    apellidos varchar(20),
    edad int,
    direccion varchar(200),
    telefono varchar(20),
    cif varchar(20),
    primary key (dni),
    foreign key (cif) references Empresa (cif) on delete cascade on update cascade
);
insert into Alumno values
('29268161A','pepe1','gonzalez1','31','c/labromapasodecastañoaoscuro1','654999111','A29268161'),
('29268162A','pepe2','gonzalez1','32','c/labromapasodecastañoaoscuro2','654999112','A29268162'),
('29268163A','pepe3','gonzalez1','33','c/labromapasodecastañoaoscuro3','654999113','A29268163'),
('29268164A','pepe4','gonzalez1','34','c/labromapasodecastañoaoscuro4','654999114','A29268164'),
('29268165A','pepe5','gonzalez1','35','c/labromapasodecastañoaoscuro5','654999115','A29268165'),
('29268166A','pepe6','gonzalez1','36','c/labromapasodecastañoaoscuro6','654999116','A29268166'),
('29268167A','pepe7','gonzalez1','37','c/labromapasodecastañoaoscuro7','654999117','A29268167'),
('29268168A','pepe8','gonzalez1','38','c/labromapasodecastañoaoscuro8','654999118','A29268168'),
('29268169A','pepe9','gonzalez1','39','c/labromapasodecastañoaoscuro9','654999119','A29268169'),
('29268160A','pepe10','gonzalez10','40','c/labromapasodecastañoaoscuro10','654999110','A29268160');

create table Profesor(
	dni varchar(20),
    nombre varchar(20),
    apellidos varchar(20),
    direccion varchar(200),
    telefono varchar(20),
    primary key (dni)
);
insert into Profesor values
('29268161A','pepe1','gonzalez1','c/labromapasodecastañoaoscuro1','654999111'),
('29268162A','pepe2','gonzalez2','c/labromapasodecastañoaoscuro2','654999112'),
('29268163A','pepe3','gonzalez3','c/labromapasodecastañoaoscuro3','654999113'),
('29268164A','pepe4','gonzalez4','c/labromapasodecastañoaoscuro4','654999114'),
('29268165A','pepe5','gonzalez5','c/labromapasodecastañoaoscuro5','654999115'),
('29268166A','pepe6','gonzalez6','c/labromapasodecastañoaoscuro6','654999116'),
('29268167A','pepe7','gonzalez7','c/labromapasodecastañoaoscuro7','654999117'),
('29268168A','pepe8','gonzalez8','c/labromapasodecastañoaoscuro8','654999118'),
('29268169A','pepe9','gonzalez9','c/labromapasodecastañoaoscuro9','654999119'),
('29268160A','pepe10','gonzalez10','c/labromapasodecastañoaoscuro10','654999110');

create table Tipo_curso(
	id int auto_increment,
    duracion int,
    titulo varchar(20),
    descripcion varchar(500),
    primary key (id)
);
insert into Tipo_curso (duracion, titulo, descripcion) values
(301,'programacion1','curso orientado a programacion11'),
(302,'programacion2','curso orientado a programacion21'),
(303,'programacion3','curso orientado a programacion31'),
(304,'programacion4','curso orientado a programacion41'),
(305,'programacion5','curso orientado a programacion51'),
(306,'programacion6','curso orientado a programacion61'),
(307,'programacion7','curso orientado a programacion71'),
(308,'programacion8','curso orientado a programacion81'),
(309,'programacion9','curso orientado a programacion91'),
(310,'programacion10','curso orientado a programacion101');

create table Curso(
	id int auto_increment,
    nombre varchar(20),
    fecha_ini date,
    fecha_fin date,
    dni varchar(20),
    id_curso int,
    primary key (id),
	foreign key (dni) references Profesor (dni) on delete cascade on update cascade,
	foreign key (id_curso) references Tipo_curso (id) on delete cascade on update cascade
);
insert into Curso(nombre, fecha_ini, fecha_fin, dni) values
('programacion1',"2021-10-10","2021-12-10",'29268161A'),
('programacion2',"2022-10-10","2022-12-10",'29268162A'),
('programacion3',"2023-10-10","2023-12-10",'29268163A'),
('programacion4',"2024-10-10","2024-12-10",'29268164A'),
('programacion5',"2025-10-10","2025-12-10",'29268165A'),
('programacion6',"2026-10-10","2026-12-10",'29268166A'),
('programacion7',"2027-10-10","2027-12-10",'29268167A'),
('programacion8',"2028-10-10","2028-12-10",'29268168A'),
('programacion9',"2029-10-10","2029-12-10",'29268169A'),
('programacion10',"2030-10-10","2030-12-10",'29268160A');

create table Asistir(
	dni varchar(20),
    id_curso int auto_increment,
    nota double,
    primary key (dni, id_curso),
	foreign key (dni) references Alumno (dni) on delete cascade on update cascade,
	foreign key (id_curso) references Curso (id) on delete cascade on update cascade
);
insert into Asistir (dni, nota) values 
('29268161A',6),
('29268162A',6),
('29268163A',6),
('29268164A',6),
('29268165A',6),
('29268166A',6),
('29268167A',6),
('29268168A',6),
('29268169A',6),
('29268160A',6);

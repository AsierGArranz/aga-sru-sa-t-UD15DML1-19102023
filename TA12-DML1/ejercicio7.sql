DROP DATABASE IF EXISTS ejercicio7;

CREATE DATABASE ejercicio7;

USE ejercicio7;

create table Trabajador(
	codigo int auto_increment,
    dni varchar(11),
    seguridad_social varchar(100),
    nombre varchar(20),
    apellidos varchar(20),
    direccion varchar(40),
    telefono varchar(20),
    cod_trabajador_repsonsable int,
    primary key (codigo),
	foreign key (cod_trabajador_repsonsable) references Trabajador (codigo) on delete cascade on update cascade

);

insert into Trabajador (dni, seguridad_social, nombre, apellidos, direccion, telefono, cod_trabajador_repsonsable) values ('093062239-1', 'Palindromic rheumatism, left knee', 'Theressa', 'McKern', '9 Schurz Park', '335-883-6149', null);
insert into Trabajador (dni, seguridad_social, nombre, apellidos, direccion, telefono, cod_trabajador_repsonsable) values ('555759892-8', 'Open bite, right foot, subsequent encounter', 'Robbin', 'Gosnay', '40800 Hazelcrest Way', '436-770-2164', 1);
insert into Trabajador (dni, seguridad_social, nombre, apellidos, direccion, telefono, cod_trabajador_repsonsable) values ('931483354-2', 'Nondisp fx of r tibial tuberosity, init for opn fx type I/2', 'Ulla', 'Studart', '90752 Boyd Alley', '137-678-7461', 2);
insert into Trabajador (dni, seguridad_social, nombre, apellidos, direccion, telefono, cod_trabajador_repsonsable) values ('995104671-1', 'Nondisplaced segmental fracture of shaft of left fibula', 'Selestina', 'Moxley', '486 Heath Way', '134-654-3541', 3);
insert into Trabajador (dni, seguridad_social, nombre, apellidos, direccion, telefono, cod_trabajador_repsonsable) values ('705434785-4', 'Migraine, unspecified, not intractable', 'Eadmund', 'Allain', '81435 Dixon Center', '680-527-9625', 4);
insert into Trabajador (dni, seguridad_social, nombre, apellidos, direccion, telefono, cod_trabajador_repsonsable) values ('813248382-0', 'Displ unsp condyle fx low end l femr, 7thC', 'Elane', 'Wardroper', '3 Troy Place', '939-164-9307', 5);
insert into Trabajador (dni, seguridad_social, nombre, apellidos, direccion, telefono, cod_trabajador_repsonsable) values ('118110449-1', 'Inflammatory disorders of seminal vesicle', 'Pavia', 'Gorring', '3 Haas Trail', '730-193-1379', 6);
insert into Trabajador (dni, seguridad_social, nombre, apellidos, direccion, telefono, cod_trabajador_repsonsable) values ('876871146-8', 'Nondisp seg fx shaft of r fibula, 7thF', 'My', 'Mangan', '572 Bunker Hill Street', '561-990-3268', 7);
insert into Trabajador (dni, seguridad_social, nombre, apellidos, direccion, telefono, cod_trabajador_repsonsable) values ('035119704-4', 'Asphyxiation due to hanging, undetermined, sequela', 'Almeta', 'Cheetham', '592 Esch Road', '560-963-2462', 8);
insert into Trabajador (dni, seguridad_social, nombre, apellidos, direccion, telefono, cod_trabajador_repsonsable) values ('646859049-3', 'Sprain of radiocarpal joint of left wrist, sequela', 'Donall', 'Perfitt', '390 Duke Point', '814-927-7424', 9);

select * from Trabajador;

create table Departamento(
	codigo int auto_increment,
	nombre varchar(20),
    cod_trabajador int,
    primary key (codigo),
    foreign key (cod_trabajador) references Trabajador (codigo) on delete cascade on update cascade
);

insert into Departamento (nombre, cod_trabajador) values ('Misty', 4);
insert into Departamento (nombre, cod_trabajador) values ('Blake', 10);
insert into Departamento (nombre, cod_trabajador) values ('Daisey', 4);
insert into Departamento (nombre, cod_trabajador) values ('Sly', 10);
insert into Departamento (nombre, cod_trabajador) values ('Irv', 10);
insert into Departamento (nombre, cod_trabajador) values ('Devin', 2);
insert into Departamento (nombre, cod_trabajador) values ('Fidelio', 6);
insert into Departamento (nombre, cod_trabajador) values ('Marris', 5);
insert into Departamento (nombre, cod_trabajador) values ('Alexia', 2);
insert into Departamento (nombre, cod_trabajador) values ('Syman', 5);

select * from Departamento;

create table Contrato(
	id int auto_increment,
	fecha_ini date,
    fecha_fin date,
    categoria_profesional varchar(100),
    cod_trabajador int,
    primary key (id),
    foreign key (cod_trabajador) references Trabajador (codigo) on delete cascade on update cascade
);

insert into Contrato (fecha_ini, fecha_fin, categoria_profesional, cod_trabajador) values ('2023-08-05', '2023-02-17', 'Construction Manager', 6);
insert into Contrato (fecha_ini, fecha_fin, categoria_profesional, cod_trabajador) values ('2023-05-11', '2023-08-23', 'Electrician', 5);
insert into Contrato (fecha_ini, fecha_fin, categoria_profesional, cod_trabajador) values ('2023-06-23', '2022-11-13', 'Construction Foreman', 8);
insert into Contrato (fecha_ini, fecha_fin, categoria_profesional, cod_trabajador) values ('2023-10-12', '2023-01-27', 'Surveyor', 9);
insert into Contrato (fecha_ini, fecha_fin, categoria_profesional, cod_trabajador) values ('2023-08-21', '2023-07-30', 'Construction Worker', 7);
insert into Contrato (fecha_ini, fecha_fin, categoria_profesional, cod_trabajador) values ('2023-10-02', '2023-08-14', 'Construction Manager', 10);
insert into Contrato (fecha_ini, fecha_fin, categoria_profesional, cod_trabajador) values ('2023-05-25', '2023-10-06', 'Engineer', 3);
insert into Contrato (fecha_ini, fecha_fin, categoria_profesional, cod_trabajador) values ('2023-05-17', '2023-06-03', 'Construction Manager', 9);
insert into Contrato (fecha_ini, fecha_fin, categoria_profesional, cod_trabajador) values ('2023-03-30', '2023-06-27', 'Construction Manager', 10);
insert into Contrato (fecha_ini, fecha_fin, categoria_profesional, cod_trabajador) values ('2022-12-06', '2023-04-13', 'Construction Expeditor', 5);

select * from Contrato;

create table Nomina(
	id int auto_increment,
	fecha date,
    salario double,
    categoria_profesional varchar(100),
    id_contrato int,
    primary key (id),
    foreign key (id_contrato) references Contrato (id) on delete cascade on update cascade
);

insert into Nomina (fecha, salario, categoria_profesional, id_contrato) values ('2022-10-24', 874, 'Estimator', 10);
insert into Nomina (fecha, salario, categoria_profesional, id_contrato) values ('2023-08-24', 338, 'Engineer', 5);
insert into Nomina (fecha, salario, categoria_profesional, id_contrato) values ('2023-04-25', 131, 'Construction Expeditor', 5);
insert into Nomina (fecha, salario, categoria_profesional, id_contrato) values ('2023-02-16', 410, 'Construction Expeditor', 3);
insert into Nomina (fecha, salario, categoria_profesional, id_contrato) values ('2023-03-08', 644, 'Supervisor', 5);
insert into Nomina (fecha, salario, categoria_profesional, id_contrato) values ('2023-10-10', 880, 'Construction Foreman', 4);
insert into Nomina (fecha, salario, categoria_profesional, id_contrato) values ('2023-02-05', 589, 'Construction Foreman', 4);
insert into Nomina (fecha, salario, categoria_profesional, id_contrato) values ('2023-08-27', 424, 'Construction Worker', 7);
insert into Nomina (fecha, salario, categoria_profesional, id_contrato) values ('2023-03-22', 151, 'Construction Worker', 6);
insert into Nomina (fecha, salario, categoria_profesional, id_contrato) values ('2023-04-18', 303, 'Architect', 2);

select * from Nomina;


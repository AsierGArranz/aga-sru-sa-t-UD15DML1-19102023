DROP DATABASE IF EXISTS ejercicio17;

CREATE DATABASE ejercicio17;

USE ejercicio17;

create table Profesor(
	codigo_int_prof int auto_increment,
    nombre varchar(20),
    direccion varchar(50),
    telefono varchar(50),
    email varchar(50),
    dni varchar(9), 
    numero_ss int,
    anos_antiguedad int,
    primary key (codigo_int_prof)
);


insert into Profesor (nombre, direccion, telefono, email, dni, numero_ss, anos_antiguedad) values ('Erda', 'Room 117', '270-299-9118', 'pboyde0@narod.ru', 'Pate', 6, 4);
insert into Profesor (nombre, direccion, telefono, email, dni, numero_ss, anos_antiguedad) values ('Trudi', 'Suite 94', '400-393-0987', 'agear1@google.com.au', 'Ailene', 9, 8);
insert into Profesor (nombre, direccion, telefono, email, dni, numero_ss, anos_antiguedad) values ('Cash', 'PO Box 99943', '984-912-3236', 'dmabe2@netscape.com', 'Dorie', 7, 2);
insert into Profesor (nombre, direccion, telefono, email, dni, numero_ss, anos_antiguedad) values ('Max', 'Room 501', '640-793-4917', 'dgarlette3@joomla.org', 'Derick', 2, 3);
insert into Profesor (nombre, direccion, telefono, email, dni, numero_ss, anos_antiguedad) values ('Kinnie', 'Room 1872', '679-794-1549', 'zganny4@vk.com', 'Zacherie', 1, 7);
insert into Profesor (nombre, direccion, telefono, email, dni, numero_ss, anos_antiguedad) values ('Mack', 'PO Box 74724', '443-310-4230', 'pprince5@phpbb.com', 'Phyllys', 6, 5);
insert into Profesor (nombre, direccion, telefono, email, dni, numero_ss, anos_antiguedad) values ('Clarine', 'Room 168', '999-212-3963', 'lpumphreys6@goodreads.com', 'Liam', 7, 2);
insert into Profesor (nombre, direccion, telefono, email, dni, numero_ss, anos_antiguedad) values ('Linc', 'Suite 59', '555-757-0235', 'bkmicicki7@army.mil', 'Bridie', 7, 9);
insert into Profesor (nombre, direccion, telefono, email, dni, numero_ss, anos_antiguedad) values ('Bunni', 'Room 1542', '263-400-0063', 'eweaben8@meetup.com', 'Eugenius', 4, 9);
insert into Profesor (nombre, direccion, telefono, email, dni, numero_ss, anos_antiguedad) values ('Griffy', 'PO Box 2395', '627-245-6962', 'bwait9@google.fr', 'Barth', 2, 8);

create table Ciclo(
	codigo_int_ciclo int auto_increment,
    nombre varchar(50), 
    tipo_ciclo varchar(50),
    codigo_int_prof int,
    primary key (codigo_int_ciclo),
    foreign key (codigo_int_prof) references Profesor (codigo_int_prof) on delete cascade on update cascade
);

insert into Ciclo (nombre, tipo_ciclo, codigo_int_prof) values ('Darby', 'video/x-msvideo', 1);
insert into Ciclo (nombre, tipo_ciclo, codigo_int_prof) values ('Marya', 'image/x-tiff', 4);
insert into Ciclo (nombre, tipo_ciclo, codigo_int_prof) values ('Rooney', 'application/excel', 2);
insert into Ciclo (nombre, tipo_ciclo, codigo_int_prof) values ('Cross', 'image/pjpeg', 10);
insert into Ciclo (nombre, tipo_ciclo, codigo_int_prof) values ('Alleen', 'application/x-msexcel', 5);
insert into Ciclo (nombre, tipo_ciclo, codigo_int_prof) values ('Joell', 'application/x-excel', 5);
insert into Ciclo (nombre, tipo_ciclo, codigo_int_prof) values ('Fonzie', 'video/quicktime', 10);
insert into Ciclo (nombre, tipo_ciclo, codigo_int_prof) values ('Isaiah', 'video/quicktime', 6);
insert into Ciclo (nombre, tipo_ciclo, codigo_int_prof) values ('Brinn', 'application/powerpoint', 4);
insert into Ciclo (nombre, tipo_ciclo, codigo_int_prof) values ('Kessiah', 'image/gif', 2);

create table Asignatura(
	codigo_int_asig int auto_increment,
    codigo_europeo int, 
    nombre varchar(50),
    primary key (codigo_int_asig)
);

insert into Asignatura (codigo_europeo, nombre) values (6, 'Agathe');
insert into Asignatura (codigo_europeo, nombre) values (8, 'Chev');
insert into Asignatura (codigo_europeo, nombre) values (3, 'Tana');
insert into Asignatura (codigo_europeo, nombre) values (8, 'Abraham');
insert into Asignatura (codigo_europeo, nombre) values (9, 'Salvatore');
insert into Asignatura (codigo_europeo, nombre) values (6, 'Agnese');
insert into Asignatura (codigo_europeo, nombre) values (4, 'Dael');
insert into Asignatura (codigo_europeo, nombre) values (6, 'Antonin');
insert into Asignatura (codigo_europeo, nombre) values (1, 'Celesta');
insert into Asignatura (codigo_europeo, nombre) values (9, 'Eugenie');

create table Requisito_Matricula(
	codigo_int_asig int,
    codigo_int_asig_requerida int,
    primary key (codigo_int_asig,codigo_int_asig_requerida),
    foreign key (codigo_int_asig) references Asignatura (codigo_int_asig) on delete cascade on update cascade,
    foreign key (codigo_int_asig_requerida) references Asignatura (codigo_int_asig) on delete cascade on update cascade
);

insert into Requisito_Matricula (codigo_int_asig, codigo_int_asig_requerida) values (10, 3);
insert into Requisito_Matricula (codigo_int_asig, codigo_int_asig_requerida) values (9, 9);
insert into Requisito_Matricula (codigo_int_asig, codigo_int_asig_requerida) values (9, 1);
insert into Requisito_Matricula (codigo_int_asig, codigo_int_asig_requerida) values (7, 5);
insert into Requisito_Matricula (codigo_int_asig, codigo_int_asig_requerida) values (5, 3);
insert into Requisito_Matricula (codigo_int_asig, codigo_int_asig_requerida) values (5, 1);
insert into Requisito_Matricula (codigo_int_asig, codigo_int_asig_requerida) values (5, 7);
insert into Requisito_Matricula (codigo_int_asig, codigo_int_asig_requerida) values (2, 5);
insert into Requisito_Matricula (codigo_int_asig, codigo_int_asig_requerida) values (10, 7);
insert into Requisito_Matricula (codigo_int_asig, codigo_int_asig_requerida) values (8, 4);

create table Imparte(
	codigo_int_prof int,
    codigo_int_asig int,
    codigo_int_ciclo int,
    primary key (codigo_int_prof,codigo_int_asig,codigo_int_ciclo),
    foreign key (codigo_int_prof) references Profesor (codigo_int_prof) on delete cascade on update cascade,
    foreign key (codigo_int_asig) references Asignatura (codigo_int_asig) on delete cascade on update cascade,
    foreign key (codigo_int_ciclo) references Ciclo (codigo_int_ciclo) on delete cascade on update cascade
);

insert into Imparte (codigo_int_prof, codigo_int_asig, codigo_int_ciclo) values (1, 10, 3);
insert into Imparte (codigo_int_prof, codigo_int_asig, codigo_int_ciclo) values (8, 6, 6);
insert into Imparte (codigo_int_prof, codigo_int_asig, codigo_int_ciclo) values (2, 2, 8);
insert into Imparte (codigo_int_prof, codigo_int_asig, codigo_int_ciclo) values (2, 9, 4);
insert into Imparte (codigo_int_prof, codigo_int_asig, codigo_int_ciclo) values (8, 7, 4);
insert into Imparte (codigo_int_prof, codigo_int_asig, codigo_int_ciclo) values (4, 10, 3);
insert into Imparte (codigo_int_prof, codigo_int_asig, codigo_int_ciclo) values (8, 2, 1);
insert into Imparte (codigo_int_prof, codigo_int_asig, codigo_int_ciclo) values (7, 2, 10);
insert into Imparte (codigo_int_prof, codigo_int_asig, codigo_int_ciclo) values (8, 4, 2);
insert into Imparte (codigo_int_prof, codigo_int_asig, codigo_int_ciclo) values (5, 5, 10);

create table Aula(
	codigo_aula int auto_increment,
    nombre varchar(20),
    numero int,
    metros int,
    primary key (codigo_aula)
);

insert into Aula (nombre, numero, metros) values ('Dacey', 7, 8);
insert into Aula (nombre, numero, metros) values ('Jodie', 8, 6);
insert into Aula (nombre, numero, metros) values ('Jaquenetta', 6, 6);
insert into Aula (nombre, numero, metros) values ('Laurette', 9, 2);
insert into Aula (nombre, numero, metros) values ('Michelle', 9, 6);
insert into Aula (nombre, numero, metros) values ('Robby', 10, 9);
insert into Aula (nombre, numero, metros) values ('Jean', 5, 9);
insert into Aula (nombre, numero, metros) values ('Elwood', 2, 1);
insert into Aula (nombre, numero, metros) values ('Elyn', 3, 10);
insert into Aula (nombre, numero, metros) values ('Bartolemo', 1, 6);

create table Ocupar(
    codigo_int_asig int,
    codigo_aula int,
    dia_semana varchar(20),
    hora_dia varchar(20),
    primary key (codigo_int_asig,codigo_aula),
    foreign key (codigo_int_asig) references Asignatura (codigo_int_asig) on delete cascade on update cascade,
    foreign key (codigo_aula) references Aula (codigo_aula) on delete cascade on update cascade
);

insert into Ocupar (codigo_int_asig, codigo_aula, dia_semana, hora_dia) values (7, 8, '12/25/2022', '6/4/2023');
insert into Ocupar (codigo_int_asig, codigo_aula, dia_semana, hora_dia) values (2, 8, '4/17/2023', '10/13/2023');
insert into Ocupar (codigo_int_asig, codigo_aula, dia_semana, hora_dia) values (2, 7, '4/17/2023', '3/9/2023');
insert into Ocupar (codigo_int_asig, codigo_aula, dia_semana, hora_dia) values (5, 4, '9/15/2023', '11/26/2022');
insert into Ocupar (codigo_int_asig, codigo_aula, dia_semana, hora_dia) values (2, 10, '8/30/2023', '4/28/2023');
insert into Ocupar (codigo_int_asig, codigo_aula, dia_semana, hora_dia) values (7, 7, '6/23/2023', '5/31/2023');
insert into Ocupar (codigo_int_asig, codigo_aula, dia_semana, hora_dia) values (8, 4, '12/21/2022', '6/11/2023');
insert into Ocupar (codigo_int_asig, codigo_aula, dia_semana, hora_dia) values (1, 5, '10/26/2022', '5/19/2023');
insert into Ocupar (codigo_int_asig, codigo_aula, dia_semana, hora_dia) values (3, 5, '3/14/2023', '6/17/2023');
insert into Ocupar (codigo_int_asig, codigo_aula, dia_semana, hora_dia) values (9, 5, '9/24/2023', '6/27/2023');



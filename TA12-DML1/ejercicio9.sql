drop database if exists ejercicio9;

create database ejercicio9;

use ejercicio9;

create table Receta(
	id_receta int auto_increment,
    imagen varchar(255),
    nombre varchar (20),
    dificultad int,
    tiempo int,
    comensales int,
    instrucciones varchar(255),
    primary key (id_receta)
);

insert into Receta (imagen, nombre, dificultad, tiempo, comensales, instrucciones) values ('time.com', 'Cindee', 2, 102, 29, 'Introduce of Nutritional into Cran Cav/Brain, Perc Approach');
insert into Receta (imagen, nombre, dificultad, tiempo, comensales, instrucciones) values ('amazon.com', 'Fin', 3, 90, 106, 'Release Left Large Intestine, Percutaneous Approach');
insert into Receta (imagen, nombre, dificultad, tiempo, comensales, instrucciones) values ('linkedin.com', 'Yevette', 2, 36, 93, 'Supplement Left Wrist Region with Nonaut Sub, Open Approach');
insert into Receta (imagen, nombre, dificultad, tiempo, comensales, instrucciones) values ('eventbrite.com', 'Fulvia', 4, 26, 84, 'Drainage of Uterus, Percutaneous Endoscopic Approach');
insert into Receta (imagen, nombre, dificultad, tiempo, comensales, instrucciones) values ('weibo.com', 'Juliann', 1, 44, 60, 'Heart and Great Vessels, Dilation');
insert into Receta (imagen, nombre, dificultad, tiempo, comensales, instrucciones) values ('fema.gov', 'Abramo', 2, 92, 76, 'Excision of Left Common Iliac Vein, Perc Approach, Diagn');
insert into Receta (imagen, nombre, dificultad, tiempo, comensales, instrucciones) values ('amazon.com', 'Brigg', 4, 26, 92, 'Remove Nonaut Sub from L Acromioclav Jt, Perc Endo');
insert into Receta (imagen, nombre, dificultad, tiempo, comensales, instrucciones) values ('canalblog.com', 'Hayward', 2, 102, 94, 'Excision of Left Abdomen Tendon, Open Approach, Diagnostic');
insert into Receta (imagen, nombre, dificultad, tiempo, comensales, instrucciones) values ('ifeng.com', 'Aline', 2, 62, 20, 'Resection of Head Muscle, Open Approach');
insert into Receta (imagen, nombre, dificultad, tiempo, comensales, instrucciones) values ('moonfruit.com', 'Marina', 4, 80, 34, 'Insertion of Intramed Fix into R Tibia, Perc Approach');

select * from Receta;

create table Ingredientes(
	 id_ingredientes int auto_increment,
     nombre varchar(20),
     tipo_de_medida varchar(20),
     primary key (id_ingredientes)
);

insert into Ingredientes (nombre, tipo_de_medida) values ('Brock', 'BS');
insert into Ingredientes (nombre, tipo_de_medida) values ('Andi', 'YE');
insert into Ingredientes (nombre, tipo_de_medida) values ('Donall', 'JP');
insert into Ingredientes (nombre, tipo_de_medida) values ('Mead', 'US');
insert into Ingredientes (nombre, tipo_de_medida) values ('Gabbey', 'CA');
insert into Ingredientes (nombre, tipo_de_medida) values ('Tadeo', 'US');
insert into Ingredientes (nombre, tipo_de_medida) values ('Jennee', 'ID');
insert into Ingredientes (nombre, tipo_de_medida) values ('Moises', 'AR');
insert into Ingredientes (nombre, tipo_de_medida) values ('Sammy', 'CG');
insert into Ingredientes (nombre, tipo_de_medida) values ('Corbin', 'FJ');

select * from Ingredientes;

create table Usar(
	id_receta int,
    id_ingredientes int,
    cantidad int,
    primary key (id_receta,id_ingredientes),
    foreign key (id_receta) references Receta (id_receta) on delete cascade on update cascade,
    foreign key (id_ingredientes) references Ingredientes (id_ingredientes) on delete cascade on update cascade
);

insert into Usar (id_receta, id_ingredientes, cantidad) values (3, 8, 8);
insert into Usar (id_receta, id_ingredientes, cantidad) values (9, 1, 2);
insert into Usar (id_receta, id_ingredientes, cantidad) values (1, 8, 35);
insert into Usar (id_receta, id_ingredientes, cantidad) values (10, 5, 8);
insert into Usar (id_receta, id_ingredientes, cantidad) values (10, 7, 2);
insert into Usar (id_receta, id_ingredientes, cantidad) values (8, 2, 49);
insert into Usar (id_receta, id_ingredientes, cantidad) values (8, 1, 33);
insert into Usar (id_receta, id_ingredientes, cantidad) values (8, 8, 29);
insert into Usar (id_receta, id_ingredientes, cantidad) values (9, 4, 43);
insert into Usar (id_receta, id_ingredientes, cantidad) values (8, 6, 36);

select * from Usar;

create table Utensilion(
	id_utensilios int auto_increment,
    nombre varchar(20),
    descripcion varchar(255),
    primary key (id_utensilios)
);

insert into Utensilion (nombre, descripcion) values ('Davidson', 'Destruction of Ileum, Percutaneous Endoscopic Approach');
insert into Utensilion (nombre, descripcion) values ('Willabella', 'Measurement of Circulatory Volume, External Approach');
insert into Utensilion (nombre, descripcion) values ('Merrel', 'Immobilization of Right Foot using Brace');
insert into Utensilion (nombre, descripcion) values ('Tiler', 'Removal of Ext Fix from L Toe Phalanx Jt, Perc Endo Approach');
insert into Utensilion (nombre, descripcion) values ('Brier', 'Restrict L Ext Iliac Vein w Intralum Dev, Perc Endo');
insert into Utensilion (nombre, descripcion) values ('Amabel', 'Reposition Left Adrenal Gland, Perc Endo Approach');
insert into Utensilion (nombre, descripcion) values ('Gus', 'Insertion of Intralum Dev into L Renal Vein, Open Approach');
insert into Utensilion (nombre, descripcion) values ('Gaspar', 'Drainage of Nasal Bone, Open Approach, Diagnostic');
insert into Utensilion (nombre, descripcion) values ('Curt', 'Fragmentation in Left Ureter, External Approach');
insert into Utensilion (nombre, descripcion) values ('Marthena', 'Drainage of Left Ovary with Drain Dev, Perc Endo Approach');

select * from Utensilion;

create table Utilizar(
	id_receta int,
    id_utensilios int,
    foreign key (id_receta) references Receta (id_receta) on delete cascade on update cascade,
    foreign key (id_utensilios) references Utensilion (id_utensilios) on delete cascade on update cascade,
    primary key (id_receta,id_utensilios)
);

insert into Utilizar (id_receta, id_utensilios) values (5, 4);
insert into Utilizar (id_receta, id_utensilios) values (7, 8);
insert into Utilizar (id_receta, id_utensilios) values (6, 7);
insert into Utilizar (id_receta, id_utensilios) values (7, 7);
insert into Utilizar (id_receta, id_utensilios) values (7, 2);
insert into Utilizar (id_receta, id_utensilios) values (1, 5);
insert into Utilizar (id_receta, id_utensilios) values (8, 2);
insert into Utilizar (id_receta, id_utensilios) values (9, 4);
insert into Utilizar (id_receta, id_utensilios) values (8, 9);
insert into Utilizar (id_receta, id_utensilios) values (6, 8);

select * from Utilizar;

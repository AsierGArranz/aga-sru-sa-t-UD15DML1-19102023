DROP DATABASE IF EXISTS ejercicio5;

CREATE DATABASE ejercicio5;

USE ejercicio5;

create table Almacen(
	num_almacen int auto_increment,
    descripcion varchar(255),
    direccion varchar(100),
    primary key (num_almacen)
);

insert into Almacen (descripcion, direccion) values ('Excessive tuberosity-jaw', '6784 Grover Street');
insert into Almacen (descripcion, direccion) values ('Suprv elderly primigrav', '681 Banding Terrace');
insert into Almacen (descripcion, direccion) values ('Benign neoplasm stomach', '13 Pond Place');
insert into Almacen (descripcion, direccion) values ('Tot anom pulm ven connec', '73 Di Loreto Court');
insert into Almacen (descripcion, direccion) values ('Inj infer vena cava NOS', '04319 Hoffman Way');
insert into Almacen (descripcion, direccion) values ('Enlargement of orbit', '4885 Hoffman Avenue');
insert into Almacen (descripcion, direccion) values ('Mal neo breast-central', '7903 Maryland Parkway');
insert into Almacen (descripcion, direccion) values ('Keratoconus, stable', '89 Mcguire Crossing');
insert into Almacen (descripcion, direccion) values ('Extradur hem-deep coma', '04 North Road');
insert into Almacen (descripcion, direccion) values ('Abnormal RBC NEC', '19 Schurz Parkway');

select * from Almacen;

create table Estanteria(
	letra varchar(1),
    num_almacen int,
    primary key (letra, num_almacen),
    foreign key (num_almacen) references Almacen (num_almacen) on delete cascade on update cascade
);

insert into Estanteria (letra, num_almacen) values ('a', 5);
insert into Estanteria (letra, num_almacen) values ('b', 3);
insert into Estanteria (letra, num_almacen) values ('c', 1);
insert into Estanteria (letra, num_almacen) values ('d', 10);
insert into Estanteria (letra, num_almacen) values ('e', 8);
insert into Estanteria (letra, num_almacen) values ('f', 4);
insert into Estanteria (letra, num_almacen) values ('g', 4);
insert into Estanteria (letra, num_almacen) values ('h', 7);
insert into Estanteria (letra, num_almacen) values ('i', 1);
insert into Estanteria (letra, num_almacen) values ('j', 8);

select * from Estanteria;

create table Pieza(
	modelo varchar(20),
    precio double,
    descripcion varchar(255),
	letra_estanteria varchar(1),
    primary key (modelo),
    foreign key (letra_estanteria) references Estanteria (letra) on delete cascade on update cascade
);

insert into Pieza (modelo, precio, descripcion, letra_estanteria) values ('a', 42.6, 'Disp fx of posterior wall of unspecified acetabulum, sequela', 'a');
insert into Pieza (modelo, precio, descripcion, letra_estanteria) values ('b', 32.8, 'Fear of flying', 'b');
insert into Pieza (modelo, precio, descripcion, letra_estanteria) values ('c', 33.2, 'Mtrcy pasngr inj in clsn w nonmtr vehicle nontraf, sequela', 'c');
insert into Pieza (modelo, precio, descripcion, letra_estanteria) values ('d', 42.3, 'Burn due to localized fire on board passenger vessel, subs', 'd');
insert into Pieza (modelo, precio, descripcion, letra_estanteria) values ('e', 46.2, 'Traum rupt of collat ligmt of r rng fngr at MCP/IP jt, subs', 'e');
insert into Pieza (modelo, precio, descripcion, letra_estanteria) values ('f', 34.5, 'Hemarthrosis, unspecified hand', 'f');
insert into Pieza (modelo, precio, descripcion, letra_estanteria) values ('g', 14.0, 'Occup of hv veh injured in clsn w 2/3-whl mv in traf, subs', 'g');
insert into Pieza (modelo, precio, descripcion, letra_estanteria) values ('h', 18.1, 'Pathological fracture, unspecified foot, sequela', 'h');
insert into Pieza (modelo, precio, descripcion, letra_estanteria) values ('i', 45.4, 'Other specified spondylopathies, site unspecified', 'i');
insert into Pieza (modelo, precio, descripcion, letra_estanteria) values ('j', 3.2, 'Traum cereb edema w LOC w death d/t oth cause bf consc, init', 'j');

select * from Pieza;

create table Tipo_de_pieza(
	id_tipo int auto_increment,
    descripcion varchar(255),
    modelo_pieza varchar(20),
    primary key (id_tipo),
    foreign key (modelo_pieza) references Pieza (modelo) on delete cascade on update cascade
);

insert into Tipo_de_pieza (descripcion, modelo_pieza) values ('Partial traumatic amputation at elbow level, left arm, subs', 'a');
insert into Tipo_de_pieza (descripcion, modelo_pieza) values ('Parvovirus infection, unspecified', 'b');
insert into Tipo_de_pieza (descripcion, modelo_pieza) values ('Displ oblique fx shaft of unsp ulna, 7thH', 'c');
insert into Tipo_de_pieza (descripcion, modelo_pieza) values ('Lacerat blood vessels at lower leg level, right leg, subs', 'd');
insert into Tipo_de_pieza (descripcion, modelo_pieza) values ('Unspecified injury of liver, initial encounter', 'e');
insert into Tipo_de_pieza (descripcion, modelo_pieza) values ('Open bite of unsp finger without damage to nail, init encntr', 'f');
insert into Tipo_de_pieza (descripcion, modelo_pieza) values ('Other specified injuries of right thigh, subs encntr', 'g');
insert into Tipo_de_pieza (descripcion, modelo_pieza) values ('Hypertrophy of tonsils', 'h');
insert into Tipo_de_pieza (descripcion, modelo_pieza) values ('Single liveborn infant, delivered by cesarean', 'i');
insert into Tipo_de_pieza (descripcion, modelo_pieza) values ('Cutaneous T-cell lymphoma, unspecified, spleen', 'j');

select * from Tipo_de_pieza;

create table Componer(
	modelo_pieza_simple varchar(20),
    modelo_pieza_compuesta varchar(20),
    cantidad int,
    primary key (modelo_pieza_simple,modelo_pieza_compuesta),
    foreign key (modelo_pieza_simple) references Pieza (modelo) on delete cascade on update cascade,
    foreign key (modelo_pieza_compuesta) references Pieza (modelo) on delete cascade on update cascade
);

insert into Componer (modelo_pieza_simple, modelo_pieza_compuesta, cantidad) values ('a', 'a', 31);
insert into Componer (modelo_pieza_simple, modelo_pieza_compuesta, cantidad) values ('b', 'b', 33);
insert into Componer (modelo_pieza_simple, modelo_pieza_compuesta, cantidad) values ('c', 'c', 44);
insert into Componer (modelo_pieza_simple, modelo_pieza_compuesta, cantidad) values ('d', 'd', 37);
insert into Componer (modelo_pieza_simple, modelo_pieza_compuesta, cantidad) values ('e', 'e', 23);
insert into Componer (modelo_pieza_simple, modelo_pieza_compuesta, cantidad) values ('f', 'f', 22);
insert into Componer (modelo_pieza_simple, modelo_pieza_compuesta, cantidad) values ('g', 'g', 11);
insert into Componer (modelo_pieza_simple, modelo_pieza_compuesta, cantidad) values ('h', 'h', 36);
insert into Componer (modelo_pieza_simple, modelo_pieza_compuesta, cantidad) values ('i', 'i', 23);
insert into Componer (modelo_pieza_simple, modelo_pieza_compuesta, cantidad) values ('j', 'j', 47);

select * from Componer;



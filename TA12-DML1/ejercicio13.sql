DROP DATABASE IF EXISTS ejercicio13;

CREATE DATABASE ejercicio13;

USE ejercicio13;

create table Trabajador(
	dni varchar(10),
	nombre varchar(20),
	apellidos varchar(20),
	telefono_fijo int,
	telefono_movil int,
	num_seg_social varchar(20),
	primary key (dni)
);

create table Pinche(
	dni varchar(10),
	fecha_nacimiento date,
	primary key (dni),
	foreign key (dni) references Trabajador (dni) on delete cascade on update cascade
);

create table Cocinero(
	dni varchar(10),
	ano_nacimiento date,
	primary key (dni),
	foreign key (dni) references Trabajador (dni) on delete cascade on update cascade
);

create table Plato(
	id int auto_increment,
	nombre varchar(20),
	tipo varchar(20),
	precio double,
	primary key (id)
);

create table Preparar(
	dni_cocinero varchar(10),
	id_plato int,
	primary key (dni_cocinero,id_plato),
	foreign key (dni_cocinero) references Cocinero (dni) on delete cascade on update cascade,
	foreign key (id_plato) references Plato (id) on delete cascade on update cascade
);

create table Ingrediente(
	id int auto_increment,
	nombre varchar(20),
	primary key (id)
);

create table Usar(
	id_ingrediente int,
	id_plato int,
	primary key (id_ingrediente,id_plato),
	foreign key (id_ingrediente) references Ingrediente (id) on delete cascade on update cascade,
	foreign key (id_plato) references Plato (id) on delete cascade on update cascade
);

create table Almacen(
	id int auto_increment,
	nombre varchar(20),
	descripcion varchar(20),
	primary key (id)
);

create table Estanteria(
	id int auto_increment,
	nombre varchar(20),
	id_almacen int,
	primary key (id),
	foreign key (id_almacen) references Almacen (id) on delete cascade on update cascade
);

create table Guarda(
	id_ingrediente int,
	id_estanteria int,
	primary key (id_ingrediente,id_estanteria),
	foreign key (id_ingrediente) references Ingrediente (id) on delete cascade on update cascade,
	foreign key (id_estanteria) references Estanteria (id) on delete cascade on update cascade
);

-- INSERTS DE TRABAJADOR --
insert into Trabajador values('11111110X','Sergi','Rodriguez Utge',977666660,666666660,555501230);
insert into Trabajador values('11111111X','Asier','Fernandez Ramirez',977666661,666666661,555501231);
insert into Trabajador values('11111112X','Felipe','Puig Pallafre',977666662,666666662,555501232);
insert into Trabajador values('11111113X','Maarc','Roca Vidal',977666663,666666663,555501233);
insert into Trabajador values('11111114X','Pere','Macià Gracia',977666664,666666664,555501234);
insert into Trabajador values('11111115X','Joel','Fines Serrano',977666665,666666665,555501235);
insert into Trabajador values('11111116X','Maria','Borges Cabralba',977666666,666666666,555501236);
insert into Trabajador values('11111117X','Antonio','Tomas Oliver',977666667,666666667,555501237);
insert into Trabajador values('11111118X','Julia','Gonzalez Pedrosa',977666668,666666668,555501238);
insert into Trabajador values('11111119X','Carla','Veltrades Mendoza',977666669,666666669,555501239);
insert into Trabajador values('11111120X','Clara','Mendoza Fines',977666670,666666670,555501240);
insert into Trabajador values('11111121X','Andrea','Serrano Borges',977666671,666666671,555501241);
insert into Trabajador values('11111122X','Nerea','Prados Mata',977666672,666666672,555501242);
insert into Trabajador values('11111123X','Felip','Primer Borbon',977666673,666666673,555501243);
insert into Trabajador values('11111124X','Gabriel','Martinez Matas',977666674,666666674,555501244);
insert into Trabajador values('11111125X','Noelia','Formosa Plena',977666675,666666675,555501245);
insert into Trabajador values('11111126X','Josep','Andres Mendoza',977666676,666666676,555501246);
insert into Trabajador values('11111127X','Kelly','Romero Fines',977666677,666666677,555501247);
insert into Trabajador values('11111128X','Daniel','Dominguez García',977666678,666666678,555501248);
insert into Trabajador values('11111129X','Alberto','Cabrera Baquero',977666679,666666679,555501249);

-- INSERTS DE PINCHE --
insert into Pinche values('11111110X','1995-11-02');
insert into Pinche values('11111111X','1998-01-12');
insert into Pinche values('11111112X','2003-06-23');
insert into Pinche values('11111113X','2003-04-23');
insert into Pinche values('11111114X','1992-08-18');
insert into Pinche values('11111115X','2002-02-02');
insert into Pinche values('11111116X','1999-05-09');
insert into Pinche values('11111117X','1990-07-26');
insert into Pinche values('11111118X','1997-12-25');
insert into Pinche values('11111119X','2000-01-21');

-- INSERTS DE COCINERO --
insert into Cocinero values('11111120X','1993-12-16');
insert into Cocinero values('11111121X','1999-01-18');
insert into Cocinero values('11111122X','2003-06-13');
insert into Cocinero values('11111123X','2001-04-02');
insert into Cocinero values('11111124X','1992-08-16');
insert into Cocinero values('11111125X','2003-02-26');
insert into Cocinero values('11111126X','1994-05-22');
insert into Cocinero values('11111127X','1999-07-29');
insert into Cocinero values('11111128X','1999-12-01');
insert into Cocinero values('11111129X','2001-01-01');

-- INSERTS DE PLATO --
insert into Plato values(null,'Pa amb tomaquet','Llesca',7.50);
insert into Plato values(null,'Hamburguesa de queso','Hamburguesa',11.50);
insert into Plato values(null,'Hamburguesa barbacoa','Hamburguesa',12.60);
insert into Plato values(null,'Hamburguesa vegana','Hamburguesa',12.60);
insert into Plato values(null,'Hamburguesa mexicana','Hamburguesa',13.70);
insert into Plato values(null,'Hamburguesa de kobe','Hamburguesa',15.40);
insert into Plato values(null,'Pizza Napolitana','Pizza',10.80);
insert into Plato values(null,'Pizza Peperonina','Pizza',10.70);
insert into Plato values(null,'Patatas fritas','Complementos',3.50);
insert into Plato values(null,'Patatas brabas','Complementos',4.50);

-- INSERTS DE PREPARAR --
insert into Preparar values ('11111122X',1);
insert into Preparar values ('11111121X',2);
insert into Preparar values ('11111120X',3);
insert into Preparar values ('11111123X',4);
insert into Preparar values ('11111122X',5);
insert into Preparar values ('11111122X',6);
insert into Preparar values ('11111122X',7);
insert into Preparar values ('11111122X',8);
insert into Preparar values ('11111122X',9);
insert into Preparar values ('11111122X',10);


-- INSERTS DE INGREDIENTE --
insert into Ingrediente values(null,'Pan');
insert into Ingrediente values(null,'Tomate');
insert into Ingrediente values(null,'Masa de Pizza');
insert into Ingrediente values(null,'Jalapeños');
insert into Ingrediente values(null,'Queso');
insert into Ingrediente values(null,'Carne de ternera');
insert into Ingrediente values(null,'Carne de kobe');
insert into Ingrediente values(null,'Peperoni');
insert into Ingrediente values(null,'Carne vegana');
insert into Ingrediente values(null,'Patatas');

-- INSERTS DE USAR --
insert into Usar values(1,1);
insert into Usar values(2,1);
insert into Usar values(1,2);
insert into Usar values(5,2);
insert into Usar values(6,2);
insert into Usar values(3,7);
insert into Usar values(2,7);
insert into Usar values(5,7);
insert into Usar values(10,9);
insert into Usar values(10,10);

-- INSERTS DE ALMACEN --
insert into Almacen values(null,'Almacen1','productos cárnicos.');
insert into Almacen values(null,'Almacen2','productos lacteos.');
insert into Almacen values(null,'Almacen3','productos vegetales.');
insert into Almacen values(null,'Almacen4','productos panaderia');
insert into Almacen values(null,'Almacen5','conservas');
insert into Almacen values(null,'Almacen6','productos embutidos');
insert into Almacen values(null,'Almacen7','aliños y aderezos');
insert into Almacen values(null,'Almacen8','frutas');
insert into Almacen values(null,'Almacen9','pasta');
insert into Almacen values(null,'Almacen10','harinas');

-- INSERTS DE ESTANTERIA --
insert into Estanteria values(null,'Estanteria A',1);
insert into Estanteria values(null,'Estanteria B',2);
insert into Estanteria values(null,'Estanteria C',3);
insert into Estanteria values(null,'Estanteria D',4);
insert into Estanteria values(null,'Estanteria E',5);
insert into Estanteria values(null,'Estanteria F',6);
insert into Estanteria values(null,'Estanteria G',7);
insert into Estanteria values(null,'Estanteria H',8);
insert into Estanteria values(null,'Estanteria I',9);
insert into Estanteria values(null,'Estanteria J',10);

-- INSERTS DE GUARDA --
insert into Guarda values(1,4);
insert into Guarda values(2,3);
insert into Guarda values(3,4);
insert into Guarda values(4,5);
insert into Guarda values(5,2);
insert into Guarda values(6,1);
insert into Guarda values(7,1);
insert into Guarda values(8,6);
insert into Guarda values(9,3);
insert into Guarda values(10,3);

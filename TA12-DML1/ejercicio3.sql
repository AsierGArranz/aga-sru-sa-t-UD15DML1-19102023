DROP DATABASE IF EXISTS ejercicio3;

CREATE DATABASE ejercicio3;

USE ejercicio3;

create table Comunidad(
	id_comunidad int auto_increment,
    nombre varchar(20),
    primary key (id_comunidad)
);

insert into Comunidad (nombre) values ('China');
insert into Comunidad (nombre) values ('Brazil');
insert into Comunidad (nombre) values ('Indonesia');
insert into Comunidad (nombre) values ('Portugal');
insert into Comunidad (nombre) values ('China');
insert into Comunidad (nombre) values ('Ireland');
insert into Comunidad (nombre) values ('Egypt');
insert into Comunidad (nombre) values ('China');
insert into Comunidad (nombre) values ('Indonesia');
insert into Comunidad (nombre) values ('Uganda');

select * from Comunidad;

create table Provincia(
	id_provincia int auto_increment,
    nombre varchar(20),
    superficie int,
    id_comunidad int,
    primary key (id_provincia),
    foreign key (id_comunidad) references Comunidad (id_comunidad) on delete cascade on update cascade
);

insert into Provincia (nombre, superficie, id_comunidad) values ('Brazil', 924, 7);
insert into Provincia (nombre, superficie, id_comunidad) values ('Russia', 234, 6);
insert into Provincia (nombre, superficie, id_comunidad) values ('Mongolia', 161, 1);
insert into Provincia (nombre, superficie, id_comunidad) values ('Indonesia', 142, 9);
insert into Provincia (nombre, superficie, id_comunidad) values ('Philippines', 450, 4);
insert into Provincia (nombre, superficie, id_comunidad) values ('China', 846, 8);
insert into Provincia (nombre, superficie, id_comunidad) values ('Philippines', 413, 9);
insert into Provincia (nombre, superficie, id_comunidad) values ('Portugal', 906, 3);
insert into Provincia (nombre, superficie, id_comunidad) values ('Afghanistan', 461, 8);
insert into Provincia (nombre, superficie, id_comunidad) values ('Argentina', 265, 1);

select * from Provincia;

create table Localidad(
	id_localidad int auto_increment,
    nombre varchar(20),
    poblacion int,
    id_provincia int,
    capital_prov boolean,
    capital_com boolean,
    primary key (id_localidad),
    foreign key (id_provincia) references Provincia (id_provincia) on delete cascade on update cascade
);

insert into Localidad (nombre, poblacion, id_provincia, capital_prov, capital_com) values ('Lisieux', 49776, 9, true, false);
insert into Localidad (nombre, poblacion, id_provincia, capital_prov, capital_com) values ('Gongli', 46233, 3, false, true);
insert into Localidad (nombre, poblacion, id_provincia, capital_prov, capital_com) values ('Sengeti', 19240, 9, false, true);
insert into Localidad (nombre, poblacion, id_provincia, capital_prov, capital_com) values ('Horta', 93089, 6, true, true);
insert into Localidad (nombre, poblacion, id_provincia, capital_prov, capital_com) values ('Onsala', 55525, 5, false, true);
insert into Localidad (nombre, poblacion, id_provincia, capital_prov, capital_com) values ('Polyarnyy', 74634, 9, false, true);
insert into Localidad (nombre, poblacion, id_provincia, capital_prov, capital_com) values ('Barreira', 83923, 2, false, true);
insert into Localidad (nombre, poblacion, id_provincia, capital_prov, capital_com) values ('Ribeirão Preto', 66409, 10, false, true);
insert into Localidad (nombre, poblacion, id_provincia, capital_prov, capital_com) values ('San Miguel', 50809, 7, true, false);
insert into Localidad (nombre, poblacion, id_provincia, capital_prov, capital_com) values ('Landskrona', 29811, 10, false, true);

select * from Localidad;
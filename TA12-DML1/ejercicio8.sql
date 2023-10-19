DROP DATABASE IF EXISTS ejercicio8;

CREATE DATABASE ejercicio8;

USE ejercicio8;

create table Aeropuerto(
	id int auto_increment,
    nombre varchar(20),
    localidad varchar(20),
    pais varchar(20),
    primary key (id)
);
insert into Aeropuerto (nombre, localidad, pais) values ('Lithium Carbonate', 'Nowy Dwór Gdański', 'Poland');
insert into Aeropuerto (nombre, localidad, pais) values ('pain and fever', 'Kavalerovo', 'Russia');
insert into Aeropuerto (nombre, localidad, pais) values ('2in1', 'Pallasca', 'Peru');
insert into Aeropuerto (nombre, localidad, pais) values ('Quinapril HCL and Hydrochlorothiazide', 'Bhisho', 'South Africa');
insert into Aeropuerto (nombre, localidad, pais) values ('Trazodone Hydrochloride', 'Maogang', 'China');
insert into Aeropuerto (nombre, localidad, pais) values ('INNOPRAN', 'Skwierzyna', 'Poland');
insert into Aeropuerto (nombre, localidad, pais) values ('NARS PURE RADIANT TINTED MOISTURIZER', 'Jiquinlaca', 'Honduras');
insert into Aeropuerto (nombre, localidad, pais) values ('Antispetic', 'Sandy Bay', 'Jamaica');
insert into Aeropuerto (nombre, localidad, pais) values ('Hand Sanitizer', 'Bokong Timur', 'Indonesia');
insert into Aeropuerto (nombre, localidad, pais) values ('Goose Feathers', 'Javalera', 'Philippines');

create table Avion(
	id int auto_increment,
    plazas int,
    primary key (id)
);
insert into Avion (plazas) values (160);
insert into Avion (plazas) values (181);
insert into Avion (plazas) values (41);
insert into Avion (plazas) values (34);
insert into Avion (plazas) values (24);
insert into Avion (plazas) values (39);
insert into Avion (plazas) values (32);
insert into Avion (plazas) values (138);
insert into Avion (plazas) values (128);
insert into Avion (plazas) values (65);

create table Vuelo(
	id int auto_increment,
    plazas int,
    fecha_salida date,
    fecha_llegada date,
    id_aeropuerto_llegada int,
    id_aeropuerto_salida int,
    id_avion int,
    primary key (id),
    foreign key (id_aeropuerto_llegada) references Aeropuerto (id) on delete cascade on update cascade,
	foreign key (id_aeropuerto_salida) references Aeropuerto (id) on delete cascade on update cascade,
	foreign key (id_avion) references Avion (id) on delete cascade on update cascade
);
insert into Vuelo (id, plazas, fecha_salida, fecha_llegada, id_aeropuerto_llegada, id_aeropuerto_salida) values (1, 1, '2023-06-06', '2024-05-26', 171, 25);
insert into Vuelo (id, plazas, fecha_salida, fecha_llegada, id_aeropuerto_llegada, id_aeropuerto_salida) values (2, 2, '2023-01-29', '2024-08-26', 129, 136);
insert into Vuelo (id, plazas, fecha_salida, fecha_llegada, id_aeropuerto_llegada, id_aeropuerto_salida) values (3, 3, '2023-02-10', '2024-01-15', 159, 66);
insert into Vuelo (id, plazas, fecha_salida, fecha_llegada, id_aeropuerto_llegada, id_aeropuerto_salida) values (4, 4, '2023-08-21', '2024-10-01', 185, 155);
insert into Vuelo (id, plazas, fecha_salida, fecha_llegada, id_aeropuerto_llegada, id_aeropuerto_salida) values (5, 5, '2022-12-10', '2024-02-01', 89, 81);
insert into Vuelo (id, plazas, fecha_salida, fecha_llegada, id_aeropuerto_llegada, id_aeropuerto_salida) values (6, 6, '2023-09-13', '2024-10-02', 83, 193);
insert into Vuelo (id, plazas, fecha_salida, fecha_llegada, id_aeropuerto_llegada, id_aeropuerto_salida) values (7, 7, '2022-11-22', '2023-12-27', 193, 175);
insert into Vuelo (id, plazas, fecha_salida, fecha_llegada, id_aeropuerto_llegada, id_aeropuerto_salida) values (8, 8, '2022-12-05', '2023-12-15', 184, 125);
insert into Vuelo (id, plazas, fecha_salida, fecha_llegada, id_aeropuerto_llegada, id_aeropuerto_salida) values (9, 9, '2023-03-15', '2024-10-14', 2, 98);
insert into Vuelo (id, plazas, fecha_salida, fecha_llegada, id_aeropuerto_llegada, id_aeropuerto_salida) values (10, 10, '2022-12-04', '2024-10-01', 34, 72);

create table Asiento(
	id int auto_increment,
    planta int,
    columna char,
    fila int,
    id_avion int,
    primary key (id),
    foreign key (id_avion) references Avion (id) on delete cascade on update cascade
);
insert into Asiento (planta, columna, fila) values (1, '', 70);
insert into Asiento (planta, columna, fila) values (2, '', 94);
insert into Asiento (planta, columna, fila) values (3, '', 9);
insert into Asiento (planta, columna, fila) values (4, '', 185);
insert into Asiento (planta, columna, fila) values (5, '', 132);
insert into Asiento (planta, columna, fila) values (6, '', 177);
insert into Asiento (planta, columna, fila) values (7, '', 10);
insert into Asiento (planta, columna, fila) values (8, '', 35);
insert into Asiento (planta, columna, fila) values (9, '', 32);
insert into Asiento (planta, columna, fila) values (10, '', 154);

create table Tarjeta_embarque(
	id int auto_increment,
    num_reserva int,
    fecha date,
    id_asiento int,
    primary key (id),
    foreign key (id_asiento) references Asiento (id) on delete cascade on update cascade
);
insert into Tarjeta_embarque (num_reserva, fecha) values (1, '11/6/2022');
insert into Tarjeta_embarque (num_reserva, fecha) values (2, '9/23/2023');
insert into Tarjeta_embarque (num_reserva, fecha) values (3, '8/10/2023');
insert into Tarjeta_embarque (num_reserva, fecha) values (4, '10/20/2022');
insert into Tarjeta_embarque (num_reserva, fecha) values (5, '12/19/2022');
insert into Tarjeta_embarque (num_reserva, fecha) values (6, '4/19/2023');
insert into Tarjeta_embarque (num_reserva, fecha) values (7, '8/18/2023');
insert into Tarjeta_embarque (num_reserva, fecha) values (8, '4/6/2023');
insert into Tarjeta_embarque (num_reserva, fecha) values (9, '6/19/2023');
insert into Tarjeta_embarque (num_reserva, fecha) values (10, '4/9/2023');

create table Cliente(
	id int auto_increment,
    nombre varchar(20),
    apellidos varchar(20),
    direccion varchar(20),
    telefono varchar(20),
    tarjeta_credito varchar(20),
    primary key (id)
);
insert into Cliente (nombre, apellidos, direccion, telefono, tarjeta_credito) values ('Luis', 'Sawter', 'PO Box 61120', '3072625304', '4844362451281477');
insert into Cliente (nombre, apellidos, direccion, telefono, tarjeta_credito) values ('Ludvig', 'Fullman', '11th Floor', '6174859121', '3554813987320892');
insert into Cliente (nombre, apellidos, direccion, telefono, tarjeta_credito) values ('Astrid', 'Tatershall', 'Apt 1602', '6693269161', '56022520333828096');
insert into Cliente (nombre, apellidos, direccion, telefono, tarjeta_credito) values ('Crysta', 'Ossulton', 'PO Box 75303', '9042524033', '5497708440811252');
insert into Cliente (nombre, apellidos, direccion, telefono, tarjeta_credito) values ('Flossi', 'Barlthrop', 'Suite 60', '7994700263', '3540335571075655');
insert into Cliente (nombre, apellidos, direccion, telefono, tarjeta_credito) values ('Reidar', 'Lyddiard', '13th Floor', '8674444794', '4903840765551517017');
insert into Cliente (nombre, apellidos, direccion, telefono, tarjeta_credito) values ('Raeann', 'Arundell', 'Apt 1317', '1487310243', '6333553184479395');
insert into Cliente (nombre, apellidos, direccion, telefono, tarjeta_credito) values ('Valentine', 'McCart', 'PO Box 86222', '7392760670', '3559384994028469');
insert into Cliente (nombre, apellidos, direccion, telefono, tarjeta_credito) values ('Devy', 'Cardenoza', 'Apt 128', '3474213422', '4026397003119973');
insert into Cliente (nombre, apellidos, direccion, telefono, tarjeta_credito) values ('Tanney', 'Dingle', 'Apt 1658', '7282799175', '3551559909326177');

create table Reserva(
	dni_cliente int,
    id_tarjeta_embarque int,
    primary key (dni_cliente,id_tarjeta_embarque),
    foreign key (dni_cliente) references Cliente (id) on delete cascade on update cascade,
    foreign key (id_tarjeta_embarque) references Tarjeta_embarque (id) on delete cascade on update cascade
);

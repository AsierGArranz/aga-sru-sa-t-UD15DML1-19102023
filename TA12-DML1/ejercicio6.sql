drop database if exists ejercicio6;

create database ejercicio6;

use ejercicio6;

create table Articulo(
	id_articulo int,
    nombre varchar(200),
    ano int,
    pais varchar(20),
    resumen varchar(255),
    primary key (id_articulo)
);insert into Autor (id_articulo, nombre, ano, pais, resumen) values (1, 'Graceful Peperomia', 2000, 'China', 'Underdosing of unsp systemic anti-infect/parasit');
insert into Autor (id_articulo, nombre, ano, pais, resumen) values (2, 'Tortula Moss', 1992, 'Philippines', 'Car driver injured in collision w pedl cyc in traf, sequela');
insert into Autor (id_articulo, nombre, ano, pais, resumen) values (3, 'Beach Naupaka', 2007, 'China', 'Toxic effect of phenol and phenol homolog, self-harm, init');
insert into Autor (id_articulo, nombre, ano, pais, resumen) values (4, 'Chrysactinia', 1992, 'Indonesia', 'Congenital absence of both forearm and hand, left upper limb');
insert into Autor (id_articulo, nombre, ano, pais, resumen) values (5, 'Longleaf Milkpea', 1997, 'Argentina', 'Nondisp seg fx shaft of r fibula, 7thM');
insert into Autor (id_articulo, nombre, ano, pais, resumen) values (6, 'Gordonia', 1999, 'Honduras', 'Other and unspecified atelectasis of newborn');
insert into Autor (id_articulo, nombre, ano, pais, resumen) values (7, 'Drummond''s Skullcap', 2010, 'South Africa', 'Burn of unspecified degree of abdominal wall');
insert into Autor (id_articulo, nombre, ano, pais, resumen) values (8, 'Coralroot Bittercress', 1993, 'China', 'Laceration of left renal vein, subsequent encounter');
insert into Autor (id_articulo, nombre, ano, pais, resumen) values (9, 'Great Ragweed', 2002, 'Philippines', 'Behavioral insomnia of childhood, combined type');
insert into Autor (id_articulo, nombre, ano, pais, resumen) values (10, 'Clapweed', 1993, 'China', 'Milt op involving unsp explosion and fragments, civilian');

create table Autor(
	id_autor int,
    nombre varchar(200),
    pais varchar(20),
    id_articulo int,
    foreign key (id_articulo) references Articulo (id_articulo) on delete cascade on update cascade,
    primary key (id_autor)
);
insert into Autor (id_autor, nombre, pais, id_articulo) values (1, 'Andrus Benoiton', 'China', 1);
insert into Autor (id_autor, nombre, pais, id_articulo) values (2, 'Claudelle Jozwicki', 'Zimbabwe', 2);
insert into Autor (id_autor, nombre, pais, id_articulo) values (3, 'Everett McPolin', 'Portugal', 3);
insert into Autor (id_autor, nombre, pais, id_articulo) values (4, 'Eleanor Nellis', 'Greece', 4);
insert into Autor (id_autor, nombre, pais, id_articulo) values (5, 'Adena Walkingshaw', 'Slovenia', 5);
insert into Autor (id_autor, nombre, pais, id_articulo) values (6, 'Jobey Belton', 'South Korea', 6);
insert into Autor (id_autor, nombre, pais, id_articulo) values (7, 'Danyette Dallinder', 'Ukraine', 7);
insert into Autor (id_autor, nombre, pais, id_articulo) values (8, 'Trev Pagitt', 'China', 8);
insert into Autor (id_autor, nombre, pais, id_articulo) values (9, 'Alfredo Carriage', 'China', 9);
insert into Autor (id_autor, nombre, pais, id_articulo) values (10, 'Chelsie Klassmann', 'Finland', 10);


create table Libro(id_articulo int primary key, num_paginas int, foreign key (id_articulo) references Articulo (id_articulo) on delete cascade on update cascade);
insert into Libro (id_articulo, num_paginas) values (3, 4645);
insert into Libro (id_articulo, num_paginas) values (28, 4228);
insert into Libro (id_articulo, num_paginas) values (34, 2431);
insert into Libro (id_articulo, num_paginas) values (48, 1446);
insert into Libro (id_articulo, num_paginas) values (2, 476);
insert into Libro (id_articulo, num_paginas) values (5, 3778);
insert into Libro (id_articulo, num_paginas) values (32, 4007);
insert into Libro (id_articulo, num_paginas) values (41, 1106);
insert into Libro (id_articulo, num_paginas) values (31, 3213);
insert into Libro (id_articulo, num_paginas) values (49, 3515);

create table CD(id_articulo int primary key, num_canciones int, foreign key (id_articulo) references Articulo (id_articulo) on delete cascade on update cascade);
insert into CD (id_articulo, num_canciones) values (7, 20);
insert into CD (id_articulo, num_canciones) values (34, 10);
insert into CD (id_articulo, num_canciones) values (13, 10);
insert into CD (id_articulo, num_canciones) values (46, 14);
insert into CD (id_articulo, num_canciones) values (12, 13);
insert into CD (id_articulo, num_canciones) values (8, 14);
insert into CD (id_articulo, num_canciones) values (20, 10);
insert into CD (id_articulo, num_canciones) values (13, 10);
insert into CD (id_articulo, num_canciones) values (32, 14);
insert into CD (id_articulo, num_canciones) values (11, 15);

create table Pelicula(id_articulo int primary key, duracion int, foreign key (id_articulo) references Articulo (id_articulo) on delete cascade on update cascade);
insert into Pelicula (id_articulo, duracion) values (6, 256);
insert into Pelicula (id_articulo, duracion) values (10, 104);
insert into Pelicula (id_articulo, duracion) values (5, 236);
insert into Pelicula (id_articulo, duracion) values (49, 139);
insert into Pelicula (id_articulo, duracion) values (3, 180);
insert into Pelicula (id_articulo, duracion) values (47, 92);
insert into Pelicula (id_articulo, duracion) values (25, 215);
insert into Pelicula (id_articulo, duracion) values (9, 200);
insert into Pelicula (id_articulo, duracion) values (38, 167);
insert into Pelicula (id_articulo, duracion) values (18, 238);

create table Copia(id_articulo int primary key, cod_articulo int, foreign key (id_articulo) references Articulo (id_articulo) on delete cascade on update cascade);
insert into Copia (id_articulo, cod_articulo) values (41, 19);
insert into Copia (id_articulo, cod_articulo) values (21, 24);
insert into Copia (id_articulo, cod_articulo) values (20, 34);
insert into Copia (id_articulo, cod_articulo) values (17, 35);
insert into Copia (id_articulo, cod_articulo) values (23, 18);
insert into Copia (id_articulo, cod_articulo) values (8, 38);
insert into Copia (id_articulo, cod_articulo) values (5, 23);
insert into Copia (id_articulo, cod_articulo) values (28, 24);
insert into Copia (id_articulo, cod_articulo) values (44, 31);
insert into Copia (id_articulo, cod_articulo) values (29, 29);

create table Prestamos(
	id_prestamos int,
    fecha_inicio date,
    fecha_fin date,
    id_articulo int,
	foreign key (id_articulo) references Articulo (id_articulo) on delete cascade on update cascade,
    primary key (id_prestamos)
);
insert into Prestamos (id_prestamos, fecha_inicio, fecha_fin, id_articulo) values (1, '2022-03-13', '2021-04-08', 46);
insert into Prestamos (id_prestamos, fecha_inicio, fecha_fin, id_articulo) values (2, '2019-10-10', '2022-07-17', 16);
insert into Prestamos (id_prestamos, fecha_inicio, fecha_fin, id_articulo) values (3, '2022-11-02', '2021-01-04', 36);
insert into Prestamos (id_prestamos, fecha_inicio, fecha_fin, id_articulo) values (4, '2021-09-23', '2022-01-11', 10);
insert into Prestamos (id_prestamos, fecha_inicio, fecha_fin, id_articulo) values (5, '2020-02-17', '2020-02-21', 49);
insert into Prestamos (id_prestamos, fecha_inicio, fecha_fin, id_articulo) values (6, '2019-11-10', '2019-09-03', 16);
insert into Prestamos (id_prestamos, fecha_inicio, fecha_fin, id_articulo) values (7, '2023-03-04', '2021-02-18', 40);
insert into Prestamos (id_prestamos, fecha_inicio, fecha_fin, id_articulo) values (8, '2020-04-16', '2023-02-11', 5);
insert into Prestamos (id_prestamos, fecha_inicio, fecha_fin, id_articulo) values (9, '2020-01-25', '2021-06-25', 33);
insert into Prestamos (id_prestamos, fecha_inicio, fecha_fin, id_articulo) values (10, '2021-07-19', '2019-09-05', 21);

create table Socio(
	codigo_socio int,
    dni varchar(50),
    nombre varchar(200),
    apellidos varchar(200),
    direccion varchar(500),
    primary key (codigo_socio)
);
insert into Socio (codigo_socio, dni, nombre, apellidos, direccion) values (1, '792-47-6992', 'Katusha', 'Arnott', 'Apt 1962');
insert into Socio (codigo_socio, dni, nombre, apellidos, direccion) values (2, '609-46-9575', 'Any', 'Chatenet', '18th Floor');
insert into Socio (codigo_socio, dni, nombre, apellidos, direccion) values (3, '318-23-7352', 'Raphael', 'Janes', 'Suite 2');
insert into Socio (codigo_socio, dni, nombre, apellidos, direccion) values (4, '855-94-6885', 'Brandice', 'Domico', 'Apt 203');
insert into Socio (codigo_socio, dni, nombre, apellidos, direccion) values (5, '625-51-3919', 'Tomkin', 'Jermyn', 'Suite 15');
insert into Socio (codigo_socio, dni, nombre, apellidos, direccion) values (6, '665-54-9025', 'Zed', 'Baldock', 'Apt 638');
insert into Socio (codigo_socio, dni, nombre, apellidos, direccion) values (7, '475-49-5171', 'Henryetta', 'Francillo', 'Apt 1634');
insert into Socio (codigo_socio, dni, nombre, apellidos, direccion) values (8, '876-41-7894', 'Rafaello', 'Bielby', '15th Floor');
insert into Socio (codigo_socio, dni, nombre, apellidos, direccion) values (9, '680-52-7165', 'Reade', 'Vala', '17th Floor');
insert into Socio (codigo_socio, dni, nombre, apellidos, direccion) values (10, '295-69-0291', 'Hope', 'Chippin', 'Room 122');

create table Realizar(
	id_prestamos int,
    codigo_socio int,
    fecha_dev date,
    foreign key (id_prestamos) references Prestamos (id_prestamos) on delete cascade on update cascade,
    foreign key (codigo_socio) references Socio (codigo_socio) on delete cascade on update cascade,
    primary key (id_prestamos, codigo_socio)
);
insert into Realizar (id_prestamos, codigo_socio, fecha_dev) values (1, 1, '2023-10-15');
insert into Realizar (id_prestamos, codigo_socio, fecha_dev) values (2, 2, '2023-06-07');
insert into Realizar (id_prestamos, codigo_socio, fecha_dev) values (3, 3, '2023-09-19');
insert into Realizar (id_prestamos, codigo_socio, fecha_dev) values (4, 4, '2023-07-16');
insert into Realizar (id_prestamos, codigo_socio, fecha_dev) values (5, 5, '2023-02-11');
insert into Realizar (id_prestamos, codigo_socio, fecha_dev) values (6, 6, '2023-10-09');
insert into Realizar (id_prestamos, codigo_socio, fecha_dev) values (7, 7, '2022-12-26');
insert into Realizar (id_prestamos, codigo_socio, fecha_dev) values (8, 8, '2022-11-16');
insert into Realizar (id_prestamos, codigo_socio, fecha_dev) values (9, 9, '2023-08-28');
insert into Realizar (id_prestamos, codigo_socio, fecha_dev) values (10, 10, '2023-02-03');

create table Telefono(
	num_telefono int,
    codigo_socio int,
    foreign key (codigo_socio) references Socio (codigo_socio) on delete cascade on update cascade,
    primary key (num_telefono)
);
insert into Realizar (num_telefono, codigo_socio) values ('3028143146', 1);
insert into Realizar (num_telefono, codigo_socio) values ('8118362308', 2);
insert into Realizar (num_telefono, codigo_socio) values ('4391800630', 3);
insert into Realizar (num_telefono, codigo_socio) values ('9586075746', 4);
insert into Realizar (num_telefono, codigo_socio) values ('2338247296', 5);
insert into Realizar (num_telefono, codigo_socio) values ('2227547171', 6);
insert into Realizar (num_telefono, codigo_socio) values ('9722851506', 7);
insert into Realizar (num_telefono, codigo_socio) values ('2708801240', 8);
insert into Realizar (num_telefono, codigo_socio) values ('1164803291', 9);
insert into Realizar (num_telefono, codigo_socio) values ('1398802651', 10);

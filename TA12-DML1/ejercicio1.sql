drop database if exists ejercicio1;

create database ejercicio1;

use ejercicio1;

create table Autores(
	id_autor int,
    nombre varchar(20),
    primary key (id_autor)
);
insert into Autores values(1, 'pepe1');
insert into Autores values(2, 'pepe2');
insert into Autores values(3, 'pepe3');
insert into Autores values(4, 'pepe4');
insert into Autores values(5, 'pepe5');
insert into Autores values(6, 'pepe6');
insert into Autores values(7, 'pepe7');
insert into Autores values(8, 'pepe8');
insert into Autores values(9, 'pepe9');
insert into Autores values(10, 'pepe10');

create table Libros(
	isbn int,
    editorial varchar(30),
    titulo varchar(30),
    ano_escritura int,
	primary key (isbn)
);
insert into Libros values(1, 'pepeeditorial1','pepetitutlo1',2000);
insert into Libros values(2, 'pepeeditorial2','pepetitutlo2',2000);
insert into Libros values(3, 'pepeeditorial3','pepetitutlo3',2000);
insert into Libros values(4, 'pepeeditorial4','pepetitutlo4',2000);
insert into Libros values(5, 'pepeeditorial5','pepetitutlo5',2000);
insert into Libros values(6, 'pepeeditorial6','pepetitutlo6',2000);
insert into Libros values(7, 'pepeeditorial7','pepetitutlo7',2000);
insert into Libros values(8, 'pepeeditorial8','pepetitutlo8',2000);
insert into Libros values(9, 'pepeeditorial9','pepetitutlo9',2000);
insert into Libros values(10, 'pepeeditorial10','pepetitutlo10',2000);

create table Escribir(
	id_autor int,
    isbn int,
    foreign key (id_autor) references Autores (id_autor) on delete cascade on update cascade,
    foreign key (isbn) references Libros (isbn) on delete cascade on update cascade,
    primary key(id_autor, isbn)
);
insert into Escribir values(1,1);
insert into Escribir values(2,2);
insert into Escribir values(3,3);
insert into Escribir values(4,4);
insert into Escribir values(5,5);
insert into Escribir values(6,6);
insert into Escribir values(7,7);
insert into Escribir values(8,8);
insert into Escribir values(9,9);
insert into Escribir values(10,10);

create table Volumenes(
	id_volumen int,
    deteriorado int,
    isbn int,
    foreign key (isbn) references Libros (isbn) on delete cascade on update cascade,
    primary key (id_volumen)
);
insert into Volumenes values(1,1,1);
insert into Volumenes values(2,2,2);
insert into Volumenes values(3,3,3);
insert into Volumenes values(4,4,4);
insert into Volumenes values(5,5,5);
insert into Volumenes values(6,6,6);
insert into Volumenes values(7,7,7);
insert into Volumenes values(8,8,8);
insert into Volumenes values(9,9,9);
insert into Volumenes values(10,10,10);

create table Personas(
	dni varchar(9),
    codigo_socio int,
    nombre varchar(20),
    apellido varchar (20),
    direccion varchar (50),
    telefono int,
    primary key (dni)
);
insert into Personas values ('39393939A', 1, 'pepe1', 'gonzalez1','c/porquediezvalores1', 654111111);
insert into Personas values ('39393939B', 2, 'pepe2', 'gonzalez2','c/porquediezvalores2', 654111112);
insert into Personas values ('39393939C', 3, 'pepe3', 'gonzalez3','c/porquediezvalores3', 654111113);
insert into Personas values ('39393939D', 4, 'pepe4', 'gonzalez4','c/porquediezvalores4', 654111114);
insert into Personas values ('39393939E', 5, 'pepe5', 'gonzalez5','c/porquediezvalores5', 654111115);
insert into Personas values ('39393939F', 6, 'pepe6', 'gonzalez6','c/porquediezvalores6', 654111116);
insert into Personas values ('39393939G', 7, 'pepe7', 'gonzalez7','c/porquediezvalores7', 654111117);
insert into Personas values ('39393939H', 8, 'pepe8', 'gonzalez8','c/porquediezvalores8', 654111118);
insert into Personas values ('39393939I', 9, 'pepe9', 'gonzalez9','c/porquediezvalores9', 654111119);
insert into Personas values ('39393939J', 10, 'pepe10', 'gonzalez10','c/porquediezvalores10', 654111110);

create table Prestamos(
	id_prestamo int,
    fecha_real date,
    fecha_prestamo date,
    id_volumen int,
    dni varchar(9),
    foreign key (id_volumen) references Volumenes (id_volumen) on delete cascade on update cascade,
    foreign key (dni) references Personas (dni) on delete cascade on update cascade,
    primary key (id_prestamo)
);
insert into Prestamos values (1,"2021-10-10","2021-12-10", 1, '39393939A', 1);
insert into Prestamos values (2,"2022-10-10","2022-12-10", 2, '39393939B', 2);
insert into Prestamos values (3,"2023-10-10","2023-12-10", 3, '39393939C', 3);
insert into Prestamos values (4,"2024-10-10","2024-12-10", 4, '39393939D', 4);
insert into Prestamos values (5,"2025-10-10","2025-12-10", 5, '39393939E', 5);
insert into Prestamos values (6,"2026-10-10","2026-12-10", 6, '39393939F', 6);
insert into Prestamos values (7,"2027-10-10","2027-12-10", 7, '39393939G', 7);
insert into Prestamos values (8,"2028-10-10","2028-12-10", 8, '39393939H', 8);
insert into Prestamos values (9,"2029-10-10","2029-12-10", 9, '39393939I', 9);
insert into Prestamos values (10,"2030-10-10","2030-12-10", 10,'39393939J', 10);
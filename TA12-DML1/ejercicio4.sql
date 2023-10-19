DROP DATABASE IF EXISTS ejercicio4;

CREATE DATABASE ejercicio4;

USE ejercicio4;

create table Guerra(
	id int auto_increment,
    nombre varchar(20),
    ano_inicio int,
    ano_fin int,
    primary key (id)
);
insert into Guerra (id, nombre, ano_inicio, ano_fin) values (1, 'Rafa', 1997, 2000);
insert into Guerra (id, nombre, ano_inicio, ano_fin) values (2, 'Dick', 2012, 1998);
insert into Guerra (id, nombre, ano_inicio, ano_fin) values (3, 'Sibel', 2004, 2004);
insert into Guerra (id, nombre, ano_inicio, ano_fin) values (4, 'Mauricio', 1998, 2004);
insert into Guerra (id, nombre, ano_inicio, ano_fin) values (5, 'Allina', 1997, 1998);
insert into Guerra (id, nombre, ano_inicio, ano_fin) values (6, 'Stella', 1989, 2002);
insert into Guerra (id, nombre, ano_inicio, ano_fin) values (7, 'Rafa', 2004, 1995);
insert into Guerra (id, nombre, ano_inicio, ano_fin) values (8, 'Joshua', 2006, 1999);
insert into Guerra (id, nombre, ano_inicio, ano_fin) values (9, 'Udell', 1999, 2006);
insert into Guerra (id, nombre, ano_inicio, ano_fin) values (10, 'Annabal', 2001, 2012);

create table Bandos(
	id int auto_increment,
    nombre varchar(20),
    primary key (id)
);
insert into Guerra (id, nombre) values (1, 'ET');
insert into Guerra (id, nombre) values (2, 'US');
insert into Guerra (id, nombre) values (3, 'UG');
insert into Guerra (id, nombre) values (4, 'SL');
insert into Guerra (id, nombre) values (5, 'AU');
insert into Guerra (id, nombre) values (6, 'MY');
insert into Guerra (id, nombre) values (7, 'SA');
insert into Guerra (id, nombre) values (8, 'AO');
insert into Guerra (id, nombre) values (9, 'FI');
insert into Guerra (id, nombre) values (10, 'US');


create table Combatir(
	id_guerra int,
    id_bando int,
    ganador boolean,
    primary key (id_guerra,id_bando),
	foreign key (id_guerra) references Guerra (id) on delete cascade on update cascade,
    foreign key (id_bando) references Bandos (id) on delete cascade on update cascade
);
insert into Combatir (id_guerra, id_bando, ganador) values (1, 1, true);
insert into Combatir (id_guerra, id_bando, ganador) values (2, 2, false);
insert into Combatir (id_guerra, id_bando, ganador) values (3, 3, true);
insert into Combatir (id_guerra, id_bando, ganador) values (4, 4, true);
insert into Combatir (id_guerra, id_bando, ganador) values (5, 5, true);
insert into Combatir (id_guerra, id_bando, ganador) values (6, 6, true);
insert into Combatir (id_guerra, id_bando, ganador) values (7, 7, false);
insert into Combatir (id_guerra, id_bando, ganador) values (8, 8, true);
insert into Combatir (id_guerra, id_bando, ganador) values (9, 9, true);
insert into Combatir (id_guerra, id_bando, ganador) values (10, 10, false);


create table Paises(
	id int auto_increment,
    nombre varchar(20),
    primary key (id)
);
insert into Paises (nombre) values ('Russia');
insert into Paises (nombre) values ('Russia');
insert into Paises (nombre) values ('China');
insert into Paises (nombre) values ('Philippines');
insert into Paises (nombre) values ('Greece');
insert into Paises (nombre) values ('Ireland');
insert into Paises (nombre) values ('China');
insert into Paises (nombre) values ('China');
insert into Paises (nombre) values ('China');
insert into Paises (nombre) values ('Philippines');

create table Tiempo_independencia(
	id int auto_increment,
    nombre varchar(20),
    ano_inicio date,
    ano_final date,
    id_pais int,
    primary key (id),
    foreign key (id_pais) references Paises (id) on delete cascade on update cascade
);
insert into Tiempo_independencia (nombre, ano_inicio, ano_final) values ('China', 1995, 2008);
insert into Tiempo_independencia (nombre, ano_inicio, ano_final) values ('China', 1997, 2012);
insert into Tiempo_independencia (nombre, ano_inicio, ano_final) values ('Sweden', 2004, 2007);
insert into Tiempo_independencia (nombre, ano_inicio, ano_final) values ('Russia', 1990, 1995);
insert into Tiempo_independencia (nombre, ano_inicio, ano_final) values ('Guinea', 1994, 2010);
insert into Tiempo_independencia (nombre, ano_inicio, ano_final) values ('Somalia', 1967, 1999);
insert into Tiempo_independencia (nombre, ano_inicio, ano_final) values ('Republic of the Congo', 1993, 2008);
insert into Tiempo_independencia (nombre, ano_inicio, ano_final) values ('Greece', 1999, 2004);
insert into Tiempo_independencia (nombre, ano_inicio, ano_final) values ('Cyprus', 2009, 2012);
insert into Tiempo_independencia (nombre, ano_inicio, ano_final) values ('Kazakhstan', 1994, 1999);

create table Participar(
	id_pais int,
    id_bando int,
    ano_entrada date,
    ano_salida date,
    primary key (id_pais, id_bando),
    foreign key (id_pais) references Paises (id) on delete cascade on update cascade,
    foreign key (id_bando) references Bandos (id) on delete cascade on update cascade
);
insert into Tiempo_independencia (id_bando, ano_entrada, ano_salida) values (1, 2009, 2014);
insert into Tiempo_independencia (id_bando, ano_entrada, ano_salida) values (2, 1992, 2005);
insert into Tiempo_independencia (id_bando, ano_entrada, ano_salida) values (3, 1998, 2002);
insert into Tiempo_independencia (id_bando, ano_entrada, ano_salida) values (4, 1996, 2011);
insert into Tiempo_independencia (id_bando, ano_entrada, ano_salida) values (5, 2011, 2014);
insert into Tiempo_independencia (id_bando, ano_entrada, ano_salida) values (6, 1984, 1985);
insert into Tiempo_independencia (id_bando, ano_entrada, ano_salida) values (7, 1995, 1996);
insert into Tiempo_independencia (id_bando, ano_entrada, ano_salida) values (8, 2012, 2019);
insert into Tiempo_independencia (id_bando, ano_entrada, ano_salida) values (9, 1995, 2012);
insert into Tiempo_independencia (id_bando, ano_entrada, ano_salida) values (10, 1987, 2009);

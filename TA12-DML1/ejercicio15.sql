DROP DATABASE IF EXISTS ejercicio15;

CREATE DATABASE ejercicio15;

USE ejercicio15;

create table Menu(
	id_menu int auto_increment,
	numero_personas int,
	primary key (id_menu)
);
create table Plato(
	id_plato int auto_increment,
	nombre varchar(20),
	descripcion varchar(500),
	primary key (id_plato)
);
create table Tener(
	id_menu int,
	id_plato int,
	primary key (id_menu, id_plato),
	foreign key (id_menu) references Menu (id_menu) on delete cascade on update cascade,
	foreign key (id_plato) references Plato (id_plato) on delete cascade on update cascade
);
create table Dias(
	fecha date,
	temperatura double,
	num_personas int,
	plato_exitoso varchar(20),
	id_menu int,
	foreign key (id_menu) references Menu (id_menu) on delete cascade on update cascade,
	primary key (fecha)
);
create table Consumir(
	fecha date,
	id_plato int,
	cant_platos int,
	primary key(fecha, id_plato),
	foreign key (fecha) references Dias (fecha) on delete cascade on update cascade,
	foreign key (id_plato) references Plato (id_plato) on delete cascade on update cascade
);

-- INSERTS DE MENU --
insert into Menu values (0,4);
insert into Menu values (0,2);
insert into Menu values (0,3);
insert into Menu values (0,6);
insert into Menu values (0,12);
insert into Menu values (0,20);
insert into Menu values (0,8);
insert into Menu values (0,10);
insert into Menu values (0,12);
insert into Menu values (0,3);

-- INSERTS DE PLATO --
insert into Plato values (0,'Plato 1', 'Ai que plato mas rico! puede contener trazas de insert 1.');
insert into Plato values (0,'Plato 2', 'Ai que plato mas rico! puede contener trazas de insert 2.');
insert into Plato values (0,'Plato 3', 'Ai que plato no tan rico! puede contener trazas de insert 3.');
insert into Plato values (0,'Plato 4', 'Ai que plato no tan rico! puede contener trazas de insert 4.');
insert into Plato values (0,'Plato 5', 'Ai que plato no tan rico! puede contener trazas de insert 5.');
insert into Plato values (0,'Plato 6', 'Ai que plato mas delicioso! puede contener trazas de insert 6.');
insert into Plato values (0,'Plato 7', 'Ai que plato mas delicioso! puede contener trazas de insert 7.');
insert into Plato values (0,'Plato 8', 'Ai que plato mas delicioso! puede contener trazas de insert 8.');
insert into Plato values (0,'Plato 9', 'Ai que plato mas malo! puede contener trazas de insert 9.');
insert into Plato values (0,'Plato 10', 'Ai que plato mas malo! puede contener trazas de insert 10.');

-- INSERTS DE TENER --
insert into Tener values (1,2);
insert into Tener values (2,3);
insert into Tener values (3,4);
insert into Tener values (4,5);
insert into Tener values (5,6);
insert into Tener values (6,7);
insert into Tener values (7,8);
insert into Tener values (8,9);
insert into Tener values (9,10);
insert into Tener values (10,1);

-- INSERTS DE DIAS --
insert into Dias values ('2023-10-16',17.33,100,'Plato 1', 1);
insert into Dias values ('2023-10-17',18.43,100,'Plato 1', 2);
insert into Dias values ('2023-10-18',13.28,100,'Plato 1', 3);
insert into Dias values ('2023-10-19',15.39,100,'Plato 1', 4);
insert into Dias values ('2023-10-20',12.55,100,'Plato 1', 5);
insert into Dias values ('2023-10-23',17.33,100,'Plato 5', 6);
insert into Dias values ('2023-10-24',18.43,100,'Plato 5', 7);
insert into Dias values ('2023-10-25',13.28,100,'Plato 5', 8);
insert into Dias values ('2023-10-26',15.39,100,'Plato 5', 9);
insert into Dias values ('2023-10-27',12.55,100,'Plato 5', 10);

-- INSERTS DE CONSUMIR --
insert into Consumir values ('2023-10-16',1, 100);
insert into Consumir values ('2023-10-16',3, 121);
insert into Consumir values ('2023-10-17',4, 200);
insert into Consumir values ('2023-10-17',7, 119);
insert into Consumir values ('2023-10-18',6, 183);
insert into Consumir values ('2023-10-18',10, 83);
insert into Consumir values ('2023-10-19',3, 169);
insert into Consumir values ('2023-10-19',5, 136);
insert into Consumir values ('2023-10-20',9, 257);
insert into Consumir values ('2023-10-20',2, 169);

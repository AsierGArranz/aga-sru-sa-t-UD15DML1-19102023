DROP DATABASE IF EXISTS ejercicio11;

CREATE DATABASE ejercicio11;

USE ejercicio11;

create table Accidentes(
	id int auto_increment,
    nombre varchar(20),
    pos_horizontal varchar(20),
    pos_vertical varchar(20),
    primary key (id)
);

create table Lagos(
	id int auto_increment,
    superficie double,
    primary key (id),
    foreign key (id) references Accidentes (id) on delete cascade on update cascade
);

create table Montanas(
	id int auto_increment,
    altura double,
    primary key (id),
    foreign key (id) references Accidentes (id) on delete cascade on update cascade
);

create table Rios(
	id int auto_increment,
    longitud double,
    primary key (id),
    foreign key (id) references Accidentes (id) on delete cascade on update cascade
);

create table Paises(
	id int auto_increment,
    nombre varchar(20),
    primary key (id)
);

create table Estar(
	id_nombre int,
    id_pais int,
    primary key (id_nombre,id_pais),
    foreign key (id_nombre) references Accidentes (id) on delete cascade on update cascade,
    foreign key (id_pais) references Paises (id) on delete cascade on update cascade
);

create table Localidades(
	nombre varchar(20),
    id_pais int,
    primary key (nombre),
    foreign key (id_pais) references Paises (id) on delete cascade on update cascade
);

create table Pasar(
	id_nombre int,
    nombre varchar(20),
    primary key (id_nombre,nombre),
    foreign key (id_nombre) references Accidentes (id) on delete cascade on update cascade,
    foreign key (nombre) references Localidades (nombre) on delete cascade on update cascade
);

-- INSERTS DE ACCIDENTES --
insert into Accidentes values (0,'Brobus','PosicionHorizontal1','PosicionVertical1');
insert into Accidentes values (0,'Ribus','PosicionHorizontal2','PosicionVertical2');
insert into Accidentes values (0,'Farfus','PosicionHorizontal3','PosicionVertical3');
insert into Accidentes values (0,'Peptalus','PosicionHorizontal4','PosicionVertical4');
insert into Accidentes values (0,'Hakaba','PosicionHorizontal5','PosicionVertical5');
insert into Accidentes values (0,'Sugar','PosicionHorizontal6','PosicionVertical6');
insert into Accidentes values (0,'Fater','PosicionHorizontal7','PosicionVertical7');
insert into Accidentes values (0,'Hostec','PosicionHorizontal8','PosicionVertical8');
insert into Accidentes values (0,'Farfar','PosicionHorizontal9','PosicionVertical9');
insert into Accidentes values (0,'Titicoco','PosicionHorizontal10','PosicionVertical10');
    
-- INSERTS DE LAGOS --
insert into Lagos values (0,450);
insert into Lagos values (0,4110);
insert into Lagos values (0,1580);
insert into Lagos values (0,40050);
insert into Lagos values (0,2520);
insert into Lagos values (0,303);
insert into Lagos values (0,30001);
insert into Lagos values (0,4832);
insert into Lagos values (0,6323);
insert into Lagos values (0,925);
    
-- INSERTS DE MONTAÑAS --
insert into Montanas values (0,1300);
insert into Montanas values (0,1450);
insert into Montanas values (0,1300);
insert into Montanas values (0,2500);
insert into Montanas values (0,4780);
insert into Montanas values (0,9382);
insert into Montanas values (0,1480);
insert into Montanas values (0,3804);
insert into Montanas values (0,1346);
insert into Montanas values (0,4809);

-- INSERTS DE RIOS --
insert into Rios values (null,1925);
insert into Rios values (null,4825);
insert into Rios values (null,8930);
insert into Rios values (null,5039);
insert into Rios values (null,10008);
insert into Rios values (null,25556);
insert into Rios values (null,36000);
insert into Rios values (null,15048);
insert into Rios values (null,2442);

-- INSERTS DE PAISES --
insert into Paises values (0,'España');
insert into Paises values (0,'Andorra');
insert into Paises values (0,'Portugal');
insert into Paises values (0,'Francia');
insert into Paises values (0,'Italia');
insert into Paises values (0,'Alemania');
insert into Paises values (0,'Holanda');
insert into Paises values (0,'Irlanda');
insert into Paises values (0,'Noruega');
insert into Paises values (0,'Grecia');

-- INSERTS DE ESTAR --
insert into Estar values (1,1);
insert into Estar values (2,2);
insert into Estar values (3,3);
insert into Estar values (4,4);
insert into Estar values (5,5);
insert into Estar values (6,6);
insert into Estar values (7,7);
insert into Estar values (8,8);
insert into Estar values (9,9);
insert into Estar values (10,10);

-- INSERTS DE LOCALIDADES --
insert into Localidades values ('Tarragona',1);
insert into Localidades values ('Barrcelona',1);
insert into Localidades values ('Olot',1);
insert into Localidades values ('Lleida',1);
insert into Localidades values ('Castellón',1);
insert into Localidades values ('Torrente',1);
insert into Localidades values ('Salem',1);
insert into Localidades values ('DisneyLand',4);
insert into Localidades values ('Marsella',4);
insert into Localidades values ('Roma',5);

-- INSERTS DE PASAR --
insert into Pasar values (1,'Tarragona');
insert into Pasar values (2,'Tarragona');
insert into Pasar values (3,'Tarragona');
insert into Pasar values (4,'Tarragona');
insert into Pasar values (5,'Torrente');
insert into Pasar values (6,'Torrente');
insert into Pasar values (7,'Torrente');
insert into Pasar values (8,'Torrente');
insert into Pasar values (9,'Roma');
insert into Pasar values (10,'Roma');

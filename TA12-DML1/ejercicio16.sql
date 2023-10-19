DROP DATABASE IF EXISTS ejercicio16;

CREATE DATABASE ejercicio16;

USE ejercicio16;

create table Usuario(
	id int auto_increment,
	datos varchar(20),
	nombre varchar(20),
	email varchar(20),
	contrasena varchar(20),
	primary key (id)
);

create table Seguir(
	id_1 int,
	id_2 int,
	primary key (id_1,id_2),
	foreign key (id_1) references Usuario (id) on delete cascade on update cascade,
	foreign key (id_2) references Usuario (id) on delete cascade on update cascade
);

create table Mensajes(
	id int auto_increment,
	texto varchar(200),
	id_usuario int,
	primary key (id),
	foreign key (id) references Usuario (id) on delete cascade on update cascade
);

create table Enlaces(
	id int auto_increment,
	texto varchar(200),
	primary key (id)
);

create table Contener(
	id_mensaje int,
	id_enlace int,
	primary key (id_mensaje,id_enlace),
	foreign key (id_mensaje) references Mensajes (id) on delete cascade on update cascade,
	foreign key (id_enlace) references Enlaces (id) on delete cascade on update cascade
);

-- INSERTS DE USUARIOS --
insert into Usuario values (0,'dato1','Antonio','antonio@mail.com','contraseña1');
insert into Usuario values (0,'dato2','Pepe','pepe@mail.com','contraseña2');
insert into Usuario values (0,'dato3','Juaquin','juaquin@mail.com','contraseña3');
insert into Usuario values (0,'dato4','Jose','jose@mail.com','contraseña4');
insert into Usuario values (0,'dato5','Miguel','miguel@mail.com','contraseña5');
insert into Usuario values (0,'dato6','Sergi','sergi@mail.com','contraseña6');
insert into Usuario values (0,'dato7','Asier','asier@mail.com','contraseña7');
insert into Usuario values (0,'dato8','Alfonso','alfonso@mail.com','contraseña8');
insert into Usuario values (0,'dato9','Oriol','oriol@mail.com','contraseña9');
insert into Usuario values (0,'dato10','Marc','marc@mail.com','contraseña10');

-- INSERTS DE SEGUIR --
insert into Seguir values (1,2);
insert into Seguir values (2,3);
insert into Seguir values (3,4);
insert into Seguir values (4,5);
insert into Seguir values (5,6);
insert into Seguir values (6,7);
insert into Seguir values (7,8);
insert into Seguir values (8,9);
insert into Seguir values (9,10);
insert into Seguir values (10,1);

-- INSERTS DE MENSAJES --
insert into Mensajes values (0,'texto1',1);
insert into Mensajes values (0,'texto2',1);
insert into Mensajes values (0,'texto3',2);
insert into Mensajes values (0,'texto4',2);
insert into Mensajes values (0,'texto5',2);
insert into Mensajes values (0,'texto6',4);
insert into Mensajes values (0,'texto7',5);
insert into Mensajes values (0,'texto8',6);
insert into Mensajes values (0,'texto9',6);
insert into Mensajes values (0,'texto10',9);

-- INSERTS DE ENLACES --
insert into Enlaces values (0,'texto de enlace 1');
insert into Enlaces values (0,'texto de enlace 2');
insert into Enlaces values (0,'texto de enlace 3');
insert into Enlaces values (0,'texto de enlace 4');
insert into Enlaces values (0,'texto de enlace 5');
insert into Enlaces values (0,'texto de enlace 6');
insert into Enlaces values (0,'texto de enlace 7');
insert into Enlaces values (0,'texto de enlace 8');
insert into Enlaces values (0,'texto de enlace 9');
insert into Enlaces values (0,'texto de enlace 10');

-- INSERTS DE CONTENER --
insert into Contener values (1,2);
insert into Contener values (2,3);
insert into Contener values (3,4);
insert into Contener values (4,5);
insert into Contener values (5,6);
insert into Contener values (6,7);
insert into Contener values (7,8);
insert into Contener values (8,9);
insert into Contener values (9,10);
insert into Contener values (10,1);

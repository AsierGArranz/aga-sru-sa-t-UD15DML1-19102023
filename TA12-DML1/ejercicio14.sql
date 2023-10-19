drop database if exists ejercicio14;

create database ejercicio14;

use ejercicio14;

create table Usuario(
	id_usuario int auto_increment,
    nombre varchar(20),
    apellidos varchar(50),
    contraseña varchar(50),
    direccion varchar(50),
    telefono int,
    email varchar (100),
    foto varchar(255),
    celebridad boolean,
    primary key(id_usuario)
);
create table Contactos(
	id_usuario int,
	id_usuario_contacto int,
    primary key (id_usuario,id_usuario_contacto),
    foreign key (id_usuario) references Usuario (id_usuario) on delete cascade on update cascade,
    foreign key (id_usuario_contacto) references Usuario (id_usuario) on delete cascade on update cascade
);
create table Bloqueados(
	id_usuario int,
	id_usuario_bloqueado int,
    primary key (id_usuario,id_usuario_bloqueado),
    foreign key (id_usuario) references Usuario (id_usuario) on delete cascade on update cascade,
    foreign key (id_usuario_bloqueado) references Usuario (id_usuario) on delete cascade on update cascade
);
create table Telefono(
	id_usuario int,
    telefono int,
    primary key (id_usuario,telefono),
    foreign key (id_usuario) references Usuario (id_usuario) on delete cascade on update cascade
);
create table Grupo_Contacto(
	id_grupo_contacto int auto_increment,
    id_usuario int not null,
    nombre varchar(20) not null,
    primary key(id_grupo_contacto),
	foreign key (id_usuario) references Usuario (id_usuario) on delete cascade on update cascade
);
create table Contactos_De_Grupo(
	id_grupo_contacto int,
    id_usuario_contacto int,
    primary key(id_grupo_contacto,id_usuario_contacto),
    foreign key (id_grupo_contacto) references Grupo_Contacto (id_grupo_contacto) on delete cascade on update cascade,
	foreign key (id_usuario_contacto) references Contactos (id_usuario_contacto) on delete cascade on update cascade
);

-- INSERTS DE USUARIO --
insert into Usuario values (0,'Nombre1','PrimerA SegundoA1', 'contraseña1', 'Mi casa 1', 666666660, 'nombre1@mail.com', 'enlace.com/foto1', false);
insert into Usuario values (0,'Nombre2','PrimerA SegundoA2', 'contraseña2', 'Mi casa 2', 666666661, 'nombre2@mail.com', 'enlace.com/foto2', false);
insert into Usuario values (0,'Nombre3','PrimerA SegundoA3', 'contraseña3', 'Mi casa 3', 666666662, 'nombre3@mail.com', 'enlace.com/foto3', true);
insert into Usuario values (0,'Nombre4','PrimerA SegundoA4', 'contraseña4', 'Mi casa 4', 666666663, 'nombre4@mail.com', 'enlace.com/foto4', false);
insert into Usuario values (0,'Nombre5','PrimerA SegundoA5', 'contraseña5', 'Mi casa 5', 666666664, 'nombre5@mail.com', 'enlace.com/foto5', false);
insert into Usuario values (0,'Nombre6','PrimerA SegundoA6', 'contraseña6', 'Mi casa 6', 666666665, 'nombre6@mail.com', 'enlace.com/foto6', true);
insert into Usuario values (0,'Nombre7','PrimerA SegundoA7', 'contraseña7', 'Mi casa 7', 666666666, 'nombre7@mail.com', 'enlace.com/foto7', false);
insert into Usuario values (0,'Nombre8','PrimerA SegundoA8', 'contraseña8', 'Mi casa 8', 666666667, 'nombre8@mail.com', 'enlace.com/foto8', false);
insert into Usuario values (0,'Nombre9','PrimerA SegundoA9', 'contraseña9', 'Mi casa 9', 666666668, 'nombre9@mail.com', 'enlace.com/foto9', false);
insert into Usuario values (0,'Nombre10','PrimerA SegundoA10', 'contraseña10', 'Mi casa 10', 666666669, 'nombre10@mail.com', 'enlace.com/foto10', false);

-- INSERTS DE CONTACTOS --
insert into Contactos values (1,2);
insert into Contactos values (1,3);
insert into Contactos values (1,4);
insert into Contactos values (1,5);
insert into Contactos values (5,6);
insert into Contactos values (6,7);
insert into Contactos values (7,8);
insert into Contactos values (8,9);
insert into Contactos values (9,10);
insert into Contactos values (10,1);

-- INSERTS DE BLOQUEADOS --
insert into Bloqueados values (1,2);
insert into Bloqueados values (2,3);
insert into Bloqueados values (3,4);
insert into Bloqueados values (4,5);
insert into Bloqueados values (5,6);
insert into Bloqueados values (6,7);
insert into Bloqueados values (7,8);
insert into Bloqueados values (8,9);
insert into Bloqueados values (9,10);
insert into Bloqueados values (10,1);

-- INSERTS DE TELEFONO --
insert into Telefono values (1,666666600);
insert into Telefono values (1,666666601);
insert into Telefono values (3,666666602);
insert into Telefono values (3,666666603);
insert into Telefono values (5,666666604);
insert into Telefono values (6,666666605);
insert into Telefono values (7,666666606);
insert into Telefono values (7,666666607);
insert into Telefono values (7,666666608);
insert into Telefono values (10,666666609);

-- INSERTS DE GRUPO CONTACTO --
insert into Grupo_Contacto values (0,1,'Usuario1Grupo1');
insert into Grupo_Contacto values (0,1,'Usuario1Grupo2');
insert into Grupo_Contacto values (0,1,'Usuario1Grupo3');
insert into Grupo_Contacto values (0,1,'Usuario1Grupo4');
insert into Grupo_Contacto values (0,1,'Usuario1Grupo5');
insert into Grupo_Contacto values (0,4,'Usuario4Grupo1');
insert into Grupo_Contacto values (0,5,'Usuario5Grupo1');
insert into Grupo_Contacto values (0,5,'Usuario5Grupo2');
insert into Grupo_Contacto values (0,5,'Usuario5Grupo3');
insert into Grupo_Contacto values (0,7,'Usuario7Grupo1');

-- INSERTS DE CONTACTOS DE GRUPO --
insert into Contactos_De_Grupo values (1,2);
insert into Contactos_De_Grupo values (1,3);
insert into Contactos_De_Grupo values (2,2);
insert into Contactos_De_Grupo values (3,4);
insert into Contactos_De_Grupo values (3,5);
insert into Contactos_De_Grupo values (5,2);
insert into Contactos_De_Grupo values (7,6);
insert into Contactos_De_Grupo values (8,6);
insert into Contactos_De_Grupo values (9,6);
insert into Contactos_De_Grupo values (10,8);

DROP DATABASE IF EXISTS ejercicio18;

CREATE DATABASE ejercicio18;

USE ejercicio18;

create table Persona(
	dni varchar(10) primary key,
    nombre varchar(50),
    apellido varchar(50),
    telefono_fijo int,
    telefono_movil int
);

insert into Persona (dni, nombre, apellido, telefono_fijo, telefono_movil) values ('a', 'Petronella', 'Jemmett', 6, 5);
insert into Persona (dni, nombre, apellido, telefono_fijo, telefono_movil) values ('b', 'Daphene', 'Bellwood', 9, 4);
insert into Persona (dni, nombre, apellido, telefono_fijo, telefono_movil) values ('c', 'Reina', 'Wadeling', 6, 1);
insert into Persona (dni, nombre, apellido, telefono_fijo, telefono_movil) values ('d', 'Myriam', 'Presdee', 4, 5);
insert into Persona (dni, nombre, apellido, telefono_fijo, telefono_movil) values ('e', 'Patrizia', 'Cozens', 4, 9);
insert into Persona (dni, nombre, apellido, telefono_fijo, telefono_movil) values ('f', 'Harry', 'Skillern', 9, 1);
insert into Persona (dni, nombre, apellido, telefono_fijo, telefono_movil) values ('g', 'Donaugh', 'Offer', 6, 3);
insert into Persona (dni, nombre, apellido, telefono_fijo, telefono_movil) values ('h', 'Tucker', 'Behn', 8, 3);
insert into Persona (dni, nombre, apellido, telefono_fijo, telefono_movil) values ('i', 'Jasper', 'Seyffert', 5, 2);
insert into Persona (dni, nombre, apellido, telefono_fijo, telefono_movil) values ('j', 'Guido', 'Seabrocke', 2, 1);

create table Trabajador(
codigo_personal varchar(20)primary key,
dni varchar(10), 
foreign key (dni) references Persona (dni) on delete cascade on update cascade
);

insert into Trabajador (codigo_personal, dni) values ('a', 'b');
insert into Trabajador (codigo_personal, dni) values ('b', 'a');
insert into Trabajador (codigo_personal, dni) values ('c', 'j');
insert into Trabajador (codigo_personal, dni) values ('d', 'i');
insert into Trabajador (codigo_personal, dni) values ('e', 'j');
insert into Trabajador (codigo_personal, dni) values ('f', 'a');
insert into Trabajador (codigo_personal, dni) values ('g', 'i');
insert into Trabajador (codigo_personal, dni) values ('h', 'c');
insert into Trabajador (codigo_personal, dni) values ('i', 'b');
insert into Trabajador (codigo_personal, dni) values ('j', 'e');

create table Cliente(
codigo_personal varchar(20)primary key,
dni varchar(10), 
foreign key (dni) references Persona (dni) on delete cascade on update cascade
);

insert into Cliente (codigo_personal, dni) values ('a', 'b');
insert into Cliente (codigo_personal, dni) values ('b', 'a');
insert into Cliente (codigo_personal, dni) values ('c', 'j');
insert into Cliente (codigo_personal, dni) values ('d', 'i');
insert into Cliente (codigo_personal, dni) values ('e', 'j');
insert into Cliente (codigo_personal, dni) values ('f', 'a');
insert into Cliente (codigo_personal, dni) values ('g', 'i');
insert into Cliente (codigo_personal, dni) values ('h', 'c');
insert into Cliente (codigo_personal, dni) values ('i', 'b');
insert into Cliente (codigo_personal, dni) values ('j', 'e');

create table Inmueble(
codigo_inmueble varchar(20) primary key,
direccion varchar(100),
descripcion varchar(255),
metros int
);

insert into Inmueble (codigo_inmueble, direccion, descripcion, metros) values ('a', '5 Caliangt Crossing', 'Drainage of Cervix with Drainage Device, Via Opening', 2);
insert into Inmueble (codigo_inmueble, direccion, descripcion, metros) values ('b', '239 Esch Circle', 'Revision of Autol Sub in L Carpal, Extern Approach', 3);
insert into Inmueble (codigo_inmueble, direccion, descripcion, metros) values ('c', '8 Kinsman Trail', 'Reposition Coccyx with Int Fix, Perc Endo Approach', 2);
insert into Inmueble (codigo_inmueble, direccion, descripcion, metros) values ('d', '7 Dixon Court', 'Removal of Drain Dev from Cisterna Chyli, Extern Approach', 7);
insert into Inmueble (codigo_inmueble, direccion, descripcion, metros) values ('e', '39494 Butternut Pass', 'Dichotic Stimuli Assessment using Audiovisual Equipment', 10);
insert into Inmueble (codigo_inmueble, direccion, descripcion, metros) values ('f', '35998 Maple Place', 'Excision of Lesser Omentum, Perc Endo Approach, Diagn', 9);
insert into Inmueble (codigo_inmueble, direccion, descripcion, metros) values ('g', '0446 Forster Terrace', 'Revision of Extraluminal Device in Right Eye, Perc Approach', 10);
insert into Inmueble (codigo_inmueble, direccion, descripcion, metros) values ('h', '54 Fordem Point', 'Destruction of Cisterna Chyli, Open Approach', 8);
insert into Inmueble (codigo_inmueble, direccion, descripcion, metros) values ('i', '3 Loomis Drive', 'Bypass L Axilla Art to Bi Up Arm Art w Synth Sub, Open', 6);
insert into Inmueble (codigo_inmueble, direccion, descripcion, metros) values ('j', '7780 New Castle Road', 'Reposition Left Brachial Vein, Open Approach', 5);

create table Piso(
codigo_inmueble varchar(20) primary key,
codigo_especial varchar(20),
foreign key (codigo_inmueble) references Inmueble(codigo_inmueble) on delete cascade on update cascade
);

insert into Piso (codigo_inmueble, codigo_especial) values ('a','a');
insert into Piso (codigo_inmueble, codigo_especial) values ('b','b');
insert into Piso (codigo_inmueble, codigo_especial) values ('c','c');
insert into Piso (codigo_inmueble, codigo_especial) values ('d','d');
insert into Piso (codigo_inmueble, codigo_especial) values ('e','e');
insert into Piso (codigo_inmueble, codigo_especial) values ('f','f');
insert into Piso (codigo_inmueble, codigo_especial) values ('g','g');
insert into Piso (codigo_inmueble, codigo_especial) values ('h','h');
insert into Piso (codigo_inmueble, codigo_especial) values ('i','i');
insert into Piso (codigo_inmueble, codigo_especial) values ('j','j');

create table Garaje(
codigo_inmueble varchar(20) primary key,
planta int,
numero int,
codigo_piso varchar(20),
foreign key (codigo_inmueble) references Inmueble(codigo_inmueble) on delete cascade on update cascade,
foreign key (codigo_piso) references Piso(codigo_inmueble) on delete cascade on update cascade
);

insert into Garaje (codigo_inmueble, planta, numero, codigo_piso) values ('a', 8, 8,'a');
insert into Garaje (codigo_inmueble, planta, numero, codigo_piso) values ('b', 2, 3,'b'); 
insert into Garaje (codigo_inmueble, planta, numero, codigo_piso) values ('c', 4, 8,'c'); 
insert into Garaje (codigo_inmueble, planta, numero, codigo_piso) values ('d', 5, 6,'d'); 
insert into Garaje (codigo_inmueble, planta, numero, codigo_piso) values ('e', 3, 1,'e'); 
insert into Garaje (codigo_inmueble, planta, numero, codigo_piso) values ('f', 7, 6,'f'); 
insert into Garaje (codigo_inmueble, planta, numero, codigo_piso) values ('g', 9, 3,'g'); 
insert into Garaje (codigo_inmueble, planta, numero, codigo_piso) values ('h', 5, 7,'h'); 
insert into Garaje (codigo_inmueble, planta, numero, codigo_piso) values ('i', 1, 1,'i'); 
insert into Garaje (codigo_inmueble, planta, numero, codigo_piso) values ('j', 4, 5,'j'); 

create table Local(
codigo_inmueble varchar(20) primary key,
uso varchar(200),
servicio boolean,
foreign key (codigo_inmueble) references Inmueble(codigo_inmueble) on delete cascade on update cascade
);

insert into Local (codigo_inmueble, uso, servicio) values ('a', 'Removal of Radioact Elem from Cranial Cav, Perc Approach', true);
insert into Local (codigo_inmueble, uso, servicio) values ('b', 'Reposition Right Hip Bursa and Ligament, Perc Endo Approach', true);
insert into Local (codigo_inmueble, uso, servicio) values ('c', 'Repair Cervical Vertebral Joint, Open Approach', true);
insert into Local (codigo_inmueble, uso, servicio) values ('d', 'Drainage of L Pleural Cav with Drain Dev, Open Approach', false);
insert into Local (codigo_inmueble, uso, servicio) values ('e', 'Excision of Left Eye, Percutaneous Approach', true);
insert into Local (codigo_inmueble, uso, servicio) values ('f', 'Extirpate matter from R Fem Art, Bifurc, Perc Endo', true);
insert into Local (codigo_inmueble, uso, servicio) values ('g', 'Excision of Hypoglossal Nerve, Percutaneous Approach, Diagn', true);
insert into Local (codigo_inmueble, uso, servicio) values ('h', 'Dilation of R Int Carotid with 2 Intralum Dev, Open Approach', false);
insert into Local (codigo_inmueble, uso, servicio) values ('i', 'Insertion of Infusion Dev into Hepatobil Duct, Via Opening', false);
insert into Local (codigo_inmueble, uso, servicio) values ('j', 'Insertion of Infusion Device into L Foot Vein, Open Approach', false);

create table Propiedad(
codigo_compra varchar(20) primary key,
valor int,
fecha varchar(20),
codigo_inmueble varchar(20),
foreign key (codigo_inmueble) references Inmueble(codigo_inmueble) on delete cascade on update cascade
);

insert into Propiedad (codigo_compra, valor, fecha, codigo_inmueble) values ('a', 3, '9/22/2023', 'e');
insert into Propiedad (codigo_compra, valor, fecha, codigo_inmueble) values ('b', 9, '9/6/2023', 'i');
insert into Propiedad (codigo_compra, valor, fecha, codigo_inmueble) values ('c', 5, '7/10/2023', 'd');
insert into Propiedad (codigo_compra, valor, fecha, codigo_inmueble) values ('d', 9, '11/12/2022', 'j');
insert into Propiedad (codigo_compra, valor, fecha, codigo_inmueble) values ('e', 3, '11/5/2022', 'j');
insert into Propiedad (codigo_compra, valor, fecha, codigo_inmueble) values ('f', 5, '2/7/2023', 'j');
insert into Propiedad (codigo_compra, valor, fecha, codigo_inmueble) values ('g', 5, '1/15/2023', 'e');
insert into Propiedad (codigo_compra, valor, fecha, codigo_inmueble) values ('h', 9, '9/28/2023', 'j');
insert into Propiedad (codigo_compra, valor, fecha, codigo_inmueble) values ('i', 5, '4/27/2023', 'g');
insert into Propiedad (codigo_compra, valor, fecha, codigo_inmueble) values ('j', 4, '8/28/2023', 'i');

create table Adquirir(
codigo_personal varchar(20),
codigo_compra varchar(20),
primary key (codigo_personal, codigo_compra),
foreign key (codigo_compra) references Cliente(codigo_personal) on delete cascade on update cascade,
foreign key (codigo_compra) references Propiedad(codigo_compra) on delete cascade on update cascade
);

insert into Adquirir (codigo_personal, codigo_compra) values ('f', 'g');
insert into Adquirir (codigo_personal, codigo_compra) values ('a', 'd');
insert into Adquirir (codigo_personal, codigo_compra) values ('c', 'a');
insert into Adquirir (codigo_personal, codigo_compra) values ('a', 'j');
insert into Adquirir (codigo_personal, codigo_compra) values ('j', 'i');
insert into Adquirir (codigo_personal, codigo_compra) values ('f', 'f');
insert into Adquirir (codigo_personal, codigo_compra) values ('b', 'g');
insert into Adquirir (codigo_personal, codigo_compra) values ('j', 'g');
insert into Adquirir (codigo_personal, codigo_compra) values ('d', 'd');
insert into Adquirir (codigo_personal, codigo_compra) values ('c', 'e');

create table Alquiler(
id int auto_increment primary key,
numero_alquiler int,
codigo_personal_trabajador varchar(20),
codigo_personal_cliente varchar(20),
codigo_inmueble varchar(20),
foreign key (codigo_personal_trabajador) references Trabajador(codigo_personal) on delete cascade on update cascade,
foreign key (codigo_personal_cliente) references Cliente(codigo_personal) on delete cascade on update cascade,
foreign key (codigo_inmueble) references Inmueble(codigo_inmueble) on delete cascade on update cascade
);

insert into Alquiler (numero_alquiler, codigo_personal_trabajador, codigo_personal_cliente, codigo_inmueble) values (5, 'b', 'a', 'd');
insert into Alquiler (numero_alquiler, codigo_personal_trabajador, codigo_personal_cliente, codigo_inmueble) values (2, 'b', 'i', 'a');
insert into Alquiler (numero_alquiler, codigo_personal_trabajador, codigo_personal_cliente, codigo_inmueble) values (10, 'c', 'j', 'b');
insert into Alquiler (numero_alquiler, codigo_personal_trabajador, codigo_personal_cliente, codigo_inmueble) values (2, 'd', 'j', 'h');
insert into Alquiler (numero_alquiler, codigo_personal_trabajador, codigo_personal_cliente, codigo_inmueble) values (10, 'i', 'd', 'b');
insert into Alquiler (numero_alquiler, codigo_personal_trabajador, codigo_personal_cliente, codigo_inmueble) values (5, 'b', 'e', 'b');
insert into Alquiler (numero_alquiler, codigo_personal_trabajador, codigo_personal_cliente, codigo_inmueble) values (1, 'h', 'h', 'f');
insert into Alquiler (numero_alquiler, codigo_personal_trabajador, codigo_personal_cliente, codigo_inmueble) values (6, 'g', 'i', 'e');
insert into Alquiler (numero_alquiler, codigo_personal_trabajador, codigo_personal_cliente, codigo_inmueble) values (9, 'h', 'c', 'e');
insert into Alquiler (numero_alquiler, codigo_personal_trabajador, codigo_personal_cliente, codigo_inmueble) values (10, 'i', 'i', 'a');

create table Pago_Alquiler(
id int auto_increment primary key,
valor_pago int,
ano int,
mes varchar(20),
id_alquiler int,
foreign key (id_alquiler) references Alquiler(id) on delete cascade on update cascade
);

insert into Pago_Alquiler (valor_pago, ano, mes, id_alquiler) values (2, 10, 'Jean', 5);
insert into Pago_Alquiler (valor_pago, ano, mes, id_alquiler) values (2, 2, 'Nickolas', 7);
insert into Pago_Alquiler (valor_pago, ano, mes, id_alquiler) values (10, 9, 'Valma', 5);
insert into Pago_Alquiler (valor_pago, ano, mes, id_alquiler) values (1, 8, 'Annetta', 2);
insert into Pago_Alquiler (valor_pago, ano, mes, id_alquiler) values (4, 3, 'Rosella', 2);
insert into Pago_Alquiler (valor_pago, ano, mes, id_alquiler) values (4, 3, 'Venita', 7);
insert into Pago_Alquiler (valor_pago, ano, mes, id_alquiler) values (5, 8, 'Delcina', 3);
insert into Pago_Alquiler (valor_pago, ano, mes, id_alquiler) values (9, 1, 'Aleksandr', 5);
insert into Pago_Alquiler (valor_pago, ano, mes, id_alquiler) values (3, 3, 'Moise', 10);
insert into Pago_Alquiler (valor_pago, ano, mes, id_alquiler) values (6, 5, 'Eduardo', 8);

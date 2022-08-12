create database pelucanina;

create table dueno(
	DNI int,
	Nombre varchar(100),
	Apellido varchar(100),
	Telefono int,
	Direccion varchar(100),
	primary key(DNI)
);

create table historial(
	Id_historial int not null AUTO_INCREMENT,
	Fecha date,
	Perro int,
	Descripcion varchar(100),
	Monto int,
	primary key(Id_historial),
	foreign key(Perro) references perro(Id_perro)
);

create table perro(
	Id_perro int not null AUTO_INCREMENT,
	Nombre varchar(25),
	Fecha_nac date,
	Sexo varchar(20),
	Dni_dueno int,
	primary key(Id_perro),
	foreign key(Dni_dueno) references dueno(DNI)
);

alter table historial 
add foreign key(Perro) references perro(Id_perro);

alter table perro 
add foreign key(Dni_dueno) references dueno(DNI);

/* Punto 1 y 2*/
insert into dueno 
values(44244247,'Francisco','Giachero',3385401988,'Colón 77');

insert into perro 
values(null,'Duke','2020-02-22','M', 44244247);


/* Punto 5 */
/* Realice una consulta multitabla que arroje el nombre de todos los perros cuyos dueños se llaman Pedro */
SELECT * FROM perro,dueno WHERE dueno.Nombre = 'Pedro' AND dueno.DNI = perro.Dni_dueno;
/* Devuelve todos las columnas de las tablas que correspondan al dueno y perro seleccionado */
SELECT * FROM perro INNER JOIN dueno ON perro.Dni_dueno = dueno.DNI WHERE dueno.Nombre = 'Pedro'; 
/* Devuelve solo el nombre del dueño y del perro */
SELECT perro.Nombre, dueno.Nombre FROM perro INNER JOIN dueno ON perro.Dni_dueno = dueno.DNI WHERE dueno.Nombre = 'Pedro'; 
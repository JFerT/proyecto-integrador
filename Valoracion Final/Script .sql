create database peluqueria;
use peluqueria;

-- Consulta 1 --
create table dueno(
	DNI int not null,
    Nombre varchar(50) not null,
    Apellido varchar(50) not null,
    Telefono varchar(50) not null,
    Direccion varchar(100) not null,
    PRIMARY KEY (DNI)

);

create table perro(
	ID_Perro int not null,
    Nombre varchar(50) not null,
    Fecha_nac varchar(50) not null,
    Sexo varchar (30) not null,
    DNI_dueno int not null,
    PRIMARY KEY (ID_Perro),
    FOREIGN KEY (DNI_dueno) REFERENCES dueno (DNI)
);

create table historial(
	ID_Historial int not null,
    Fecha varchar(50) not null,
    Perro int not null,
    Descripcion varchar(100) not null,
    Monto varchar(100) not null,
    PRIMARY KEY (ID_Historial),
    FOREIGN KEY (Perro) REFERENCES perro (ID_Perro)
);

-- Consulta 2 -- 
INSERT INTO dueno(DNI, Nombre, Apellido, Telefono, Direccion) VALUES (37956312, "Diego", "Cabrera", "2352505048", "Velez Sarsfield 85");
INSERT INTO perro(ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES (1, "Max", "10/8/2018", "Macho", 37956312);

-- Consulta 4 --
SELECT * FROM perro;
UPDATE perro
SET fecha_nac = "25/3/2020"
WHERE ID_Perro = 19


/* Crear Base de Datos y Tablas según Modelo Relacional. */

CREATE DATABASE peluqueria_canina;

CREATE TABLE Dueno(
	DNI INTEGER NOT NULL PRIMARY KEY,
    Nombre varchar(50) NOT NULL,
    Apellido varchar(50) NOT NULL,
    Telefono INT NOT NULL,
    Direccion varchar(50) NOT NULL
);

CREATE TABLE Historial(
	ID_Historial INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Fecha date NOT NULL,
    Perro INTEGER NOT NULL,
    Descripcion varchar(50) NOT NULL,
    Monto INT NOT NULL,
    
    FOREIGN KEY(Perro) REFERENCES Perro(ID_Perro)
);


/* PUNTOS 1 Y 2 */

CREATE TABLE Perro(
	ID_Perro INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Nombre varchar(50) NOT NULL,
    Fecha_nac DATE NOT NULL,
    Sexo varchar(50) NOT NULL,
    DNI_dueno INT NOT NULL,
    
    FOREIGN KEY(DNI_dueno) REFERENCES Dueno(DNI)
);


INSERT INTO Dueno VALUES (45636874, 'Sebastian', 'Tolaba', 5465845128, 'Rivadavia');


INSERT INTO Perro(Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES ('Kaiser', '2015-01-12', 'Masculino', 45636874);

/* PUNTO 6 */

SELECT Perro.nombre
FROM perro
WHERE Fecha_nac like '2022'
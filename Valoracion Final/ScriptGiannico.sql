CREATE DATABASE peluqueria_canina;

/* PUNTOS 1 Y 2 */
CREATE TABLE Dueno(
	DNI INTEGER NOT NULL PRIMARY KEY,
    Nombre varchar(250) NOT NULL,
    Apellido varchar(250) NOT NULL,
    Telefono INT NOT NULL,
    Direccion varchar(250) NOT NULL
);

INSERT INTO Dueno VALUES (44653004, 'Valentino', 'Giannico', 3517724563, 'Padres Salesianos');

CREATE TABLE Perro(
	ID_Perro INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Nombre varchar(250) NOT NULL,
    Fecha_nac DATE NOT NULL,
    Sexo varchar NOT NULL,
    DNI_dueno INT NOT NULL,
    
    FOREIGN KEY(DNI_dueno) REFERENCES Dueno(DNI)
);

INSERT INTO Perro(Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES ('Teo', '2010-04-24', 'M', 44653004);

/* PUNTO 4 */
UPDATE Perro SET Fecha_nac = '2010-06-23' WHERE Nombre='Teo' 
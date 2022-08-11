CREATE DATABASE peluqueria_canina;
USE peluqueria_canina;
CREATE TABLE Dueno(
	DNI INTEGER NOT NULL PRIMARY KEY,
    Nombre varchar(250) NOT NULL,
    Apellido varchar(250) NOT NULL,
    Telefono varchar(250) NOT NULL,
    Direccion varchar(250) NOT NULL
);

CREATE TABLE Perro(
	ID_Perro INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Nombre varchar(250) NOT NULL,
    Fecha_nac DATE NOT NULL,
    Sexo varchar(1) NOT NULL,
    DNI_dueno INT NOT NULL,
    
    FOREIGN KEY(DNI_dueno) REFERENCES Dueno(DNI)
);

CREATE TABLE Historial(
	ID_Historial INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Fecha date NOT NULL,
    Perro INTEGER NOT NULL,
    Descripcion varchar(250) NOT NULL,
    Monto INT NOT NULL,
    
    FOREIGN KEY(Perro) REFERENCES Perro(ID_Perro)
);

/*EJERCICIO 6*/
INSERT INTO Dueno VALUES (43555230, 'Jose', 'Antonio', '3865318095', 'San Diego');
INSERT INTO Dueno VALUES (12345678, 'Armando', 'Paredes', '3865318095', 'San Miguel de Tucumán');

INSERT INTO perro(Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES ('Gasparin', '2001-08-24', 'M', 43555230);

INSERT INTO perro(Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES ('Pirucha', '2003-08-24', 'F', 12345678);
INSERT INTO perro(Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES ('Pepito', '2005-08-24', 'M', 12345678);
INSERT INTO perro(Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES ('Hitler', '2022-08-24', 'M', 12345678);
INSERT INTO perro(Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES ('Zeus', '2022-08-24', 'M', 12345678);
INSERT INTO perro(Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES ('Messi', '2022-08-24', 'M', 12345678);

INSERT INTO HISTORIAL(Fecha, Perro, Descripcion, Monto) VALUES ('2001-08-30', 1, "caniche", 2000);
INSERT INTO HISTORIAL(Fecha, Perro, Descripcion, Monto) VALUES ('2003-08-30', 2, "pitbull", 2500);
INSERT INTO HISTORIAL(Fecha, Perro, Descripcion, Monto) VALUES ('2005-08-30', 3, "golden", 3000);
INSERT INTO HISTORIAL(Fecha, Perro, Descripcion, Monto) VALUES ('2022-08-30', 4, "golden", 3000);
INSERT INTO HISTORIAL(Fecha, Perro, Descripcion, Monto) VALUES ('2022-08-30', 5, "golden", 3000);
INSERT INTO HISTORIAL(Fecha, Perro, Descripcion, Monto) VALUES ('2022-08-30', 6, "piwi", 1500);

select * from Perro inner join historial on historial.Perro = Perro.ID_Perro and historial.fecha > '2022-01-12';

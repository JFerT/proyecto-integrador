/* A. Crear Base de Datos y Tablas según Modelo Relacional. */

CREATE DATABASE IF NOT EXISTS db_peluqueria_canina;
USE db_peluqueria_canina;

CREATE TABLE IF NOT EXISTS db_peluqueria_canina.Dueno 
(
  DNI INT NOT NULL UNIQUE,
  Nombre VARCHAR(30) NOT NULL,
  Apellido VARCHAR(30) NOT NULL,
  Telefono VARCHAR(45) NOT NULL,
  Direccion VARCHAR(45),
  CONSTRAINT Pk_dni PRIMARY KEY (DNI)
  );

CREATE TABLE IF NOT EXISTS db_peluqueria_canina.Historial 
(
  ID_Historial INT NOT NULL UNIQUE,
  Fecha DATE,
  Perro INT NOT NULL UNIQUE AUTO_INCREMENT,
  Descripcion VARCHAR(50),
  Monto INT NOT NULL,
  PRIMARY KEY (Id_Historial)
  );

/* B. Realizar puntos 1 y 2. */
/* 1. Realice la consulta correspondiente para crear la tabla Perro teniendo en cuenta sus claves foráneas y primarias. */

CREATE TABLE IF NOT EXISTS db_peluqueria_canina.Perro
(
ID_Perro INT NOT NULL UNIQUE AUTO_INCREMENT,
PRIMARY KEY (ID_Perro)
);
    
ALTER TABLE db_peluqueria_canina.Perro
	ADD Nombre VARCHAR(30) NOT NULL,
	ADD	Fecha_nac DATE,
    ADD Sexo VARCHAR (10),
	ADD DNI_dueno INT NOT NULL UNIQUE;

ALTER TABLE db_peluqueria_canina.Perro  
   ADD CONSTRAINT Updrow_p FOREIGN KEY (DNI_dueno) REFERENCES Dueno(DNI) ON UPDATE CASCADE;
    
ALTER TABLE db_peluqueria_canina.Historial
	ADD CONSTRAINT Updrow_h FOREIGN KEY (Perro) REFERENCES Perro(ID_PERRO) ON UPDATE CASCADE;

/* 2. Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal. */

INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Direccion)
VALUES (47173897, 'Facundo', 'Díaz', 4690197, 'Ashur 25');

INSERT INTO Perro (ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) 
VALUES (01, 'Momo', DATE('2017-01-01'), 'Hembra', 47173897);

/* BD Para ejercicios 11 y 12*/

INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Direccion)
	VALUES 
    (45648947, 'Roger', 'Napolitano', 2540157, 'Birmingham 1212'),
    (25652388, 'Walter', 'Goodman', 4250398, 'Albuquerque 13'),
	(30155677, 'Mary', 'Parker', 1190274, 'Nueva York 502'),
    (1057889, 'Santa', 'Claus', 0303456, 'Polo Norte 00');

INSERT INTO Perro (ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) 
	VALUES 
	(NULL, 'Cerveza', DATE('2020-03-06'), 'Hembra', 45648947),
	(NULL, 'Milanesa', DATE('2019-01-01'), 'Hembra', 25652388),
    (NULL, 'Kenai', DATE('2022-05-11'), 'Macho', 30155677),
    (NULL, 'Ayudante de Santa', DATE('2021-12-25'), 'Macho', 1057889);
    
INSERT INTO Historial (ID_Historial, Fecha, Perro, Descripcion, Monto)
	VALUES
    (1738, DATE('2021-10-25'), 01, 'Dogo Argentino', 325),
	(132, DATE('2022-09-05'), NULL, 'Bull Dog Frances', 15300),
	(665, DATE('2020-08-15'), NULL, 'Caniche', 878),
    (69, DATE('2022-07-03'), NULL, 'Pokemon', 5000),
    (333, DATE('2021-12-25'), NULL, 'Husky Siberiano', 2200); 
    
/* 11. Obtener todos los dueños que tengan perros de menos de 5 años de edad que no hayan visitado la peluquería en el año 2022. */

SELECT Dueno.Nombre, Dueno.Apellido 
FROM Dueno
JOIN Perro
ON Dueno.DNI = Perro.DNI_dueno
JOIN Historial
ON Perro.ID_Perro = Historial.Perro
WHERE NOT Fecha LIKE '2022%'
AND Fecha_nac BETWEEN '2018-01-01' AND '2022-08-13';

/* RESULTADO = Walter Goodman - Santa Claus */

/* 12. Obtener todos los perros de sexo “Macho” nacidos entre 2020 y 2022. */

SELECT Perro.Nombre 
FROM Perro
WHERE Fecha_nac LIKE '202%'
AND Sexo = 'Macho';

/* RESULTADO = Kenai - Ayudante de Santa */
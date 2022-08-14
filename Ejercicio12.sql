CREATE DATABASE pelufirus;
USE pelufirus;

CREATE TABLE Dueno(
DNI INT PRIMARY KEY,
Nombre VARCHAR(50),
Apellido VARCHAR(50),
Telefono BIGINT,
Dirección VARCHAR(150)
);

CREATE TABLE Perro(
ID_Perro INT PRIMARY KEY,
Nombre VARCHAR(50),
Fecha_nac DATE,
Sexo VARCHAR(30),
DNI_dueno INT,
FOREIGN KEY ID_Perro (DNI_dueno) REFERENCES Dueno (DNI)
);

CREATE TABLE Historial(
ID_Historial INT PRIMARY KEY,
Fecha DATE,
PERRO INT,
Descripcion VARCHAR(200),
Monto FLOAT,
FOREIGN KEY ID_Historial (PERRO) REFERENCES Perro (ID_Perro)
);


INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Dirección) VALUES ("23884401", "Homero", "Thompson", "0113745183", "Calle falsa 123");
INSERT INTO Perro (ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES ("2", "Huesos", "2021-07-16", "macho", "23884401");
INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Dirección) VALUES ("41176683", "Bart", "Simpson", "0113234323", "Avenida Siempreviva 742");
INSERT INTO Perro (ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES ("1", "Ayudante de Santa", "2020-01-10", "macho", "41176683");

SELECT Nombre FROM Perro WHERE Sexo = "macho" AND DATE(Fecha_nac) >= "2020-01-01" AND DATE(Fecha_nac) <= "2022-12-31";


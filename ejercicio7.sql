CREATE DATABASE pelu_caninaa;
USE pelu_caninaa;

CREATE TABLE Dueno (
dni INT NOT NULL PRIMARY KEY,
nombre VARCHAR(30) NOT NULL,
apellido VARCHAR(30) NOT NULL,
telefono VARCHAR(30) NOT NULL,
direccion VARCHAR(30) NOT NULL
);

CREATE TABLE Perro (
id_perro INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(20) NOT NULL,
fecha_nac DATE NOT NULL,
sexo VARCHAR(1) NOT NULL,
dni_dueno INT NOT NULL
);

CREATE TABLE Historial (
id_historial INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
fecha DATE NOT NULL,
perro INT NOT NULL,
descripcion VARCHAR(60) NOT NULL,
monto FLOAT NOT NULL
);

ALTER TABLE Perro ADD FOREIGN KEY (dni_dueno) REFERENCES Dueno (dni);
ALTER TABLE Historial ADD FOREIGN KEY (perro) REFERENCES Perro (id_perro);

INSERT INTO Dueno (dni, nombre, apellido, telefono, direccion) VALUES ("35895214", "carla", "diaz", "3513258456", "general paz 860");
INSERT INTO Perro (id_perro, nombre, fecha_nac, sexo, dni_dueno) VALUES ("1", "minerva", "2021-07-30", "f","35895214");
INSERT INTO Historial (id_historial, fecha, perro, descripcion, monto) VALUES ("01", "2022-07-07",'1', "corte y lavado", 1000.00);

SELECT * FROM Historial;
 
SELECT SUM(monto) 
FROM Historial
WHERE YEAR (Historial.fecha) = 2022
AND MONTH (Historial.fecha) = 07;

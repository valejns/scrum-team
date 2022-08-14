----------- BASE DATOS -------------

-------TABLAS-------

CREATE TABLE Perro (
ID_perro INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Nombre VARCHAR(50) NOT NULL,
Fecha_nac DATE NOT NULL,
Sexo VARCHAR (25) NOT NULL,
DNI_dueno INT NOT NULL 
);

CREATE TABLE Dueno (
DNI INT NOT NULL PRIMARY KEY,
Nombre VARCHAR(50) NOT NULL,
Apellido VARCHAR(50) NOT NULL,
Telefono VARCHAR(25) NOT NULL,
Direccion VARCHAR(100) NOT NULL
);

CREATE TABLE Historial (
ID_historial INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Fecha DATE NOT NULL,
Perro INT NOT NULL,
Descripcion VARCHAR (100) NOT NULL,
Monto FLOAT NOT NULL
);

ALTER TABLE Perro ADD FOREIGN KEY (DNI_dueno) REFERENCES dueno (DNI);
ALTER TABLE Historial ADD FOREIGN KEY (Perro) REFERENCES perro (ID_perro);

INSERT INTO dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES ("20037415", "German", "Solis", "2944871542", "San martin 431");
INSERT INTO perro (ID_perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES ("1", "Frida", "2019-05-13", "femenino","57412874");
INSERT INTO historial (ID_historial, Fecha, Perro, Descripcion, Monto) VALUES ("01", "2022-08-12", "1", "Corte de pelo y uñas", "2500.00");

DELETE FROM Historial where fecha < '20210101';

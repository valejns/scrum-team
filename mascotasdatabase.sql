create database mascotas;

USE mascotas;

CREATE TABLE DUENO (
dni INT NOT NULL PRIMARY KEY,
nombre VARCHAR (30) NOT NULL,
apellido VARCHAR (30) NOT NULL,
telefono BIGINT NOT NULL,
direccion VARCHAR (60) NOT NULL
);

CREATE TABLE PERRO (
id_perro INT NOT NULL PRIMARY KEY,
nombre VARCHAR (30) NOT NULL,
fecha_nac DATE NOT NULL,
sexo VARCHAR (30) NOT NULL,
dni_dueno INT,
FOREIGN KEY id_perro (dni_dueno) REFERENCES dueno (dni)
);

CREATE TABLE HISTORIAL (
id_historial INT NOT NULL PRIMARY KEY,
fecha DATE NOT NULL,
perro INT NOT NULL,
descripcion VARCHAR (60) NOT NULL,
monto FLOAT NOT NULL,
FOREIGN KEY id_historial (perro) REFERENCES PERRO (id_perro)
);

INSERT INTO PERRO(id_perro,nombre,fecha_nac,sexo,dni_dueno) VALUES (
'2','KEVIN','2005-02-01','MACHO','20233595');

INSERT INTO DUENO(dni,nombre,apellido,telefono,direccion) VALUES
('20233295','MARCOS','AYALA','221252363','CABILDO 585');

UPDATE DUENO SET direccion= 'Libertad 123' WHERE dni='20233295';
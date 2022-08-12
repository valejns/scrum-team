CREATE DATABASE peluqueriacanina;
USE peluqueriacanina;

CREATE TABLE dueno (
dni INT NOT NULL PRIMARY KEY,
nombre VARCHAR(40) NOT NULL,
apellido VARCHAR(40) NOT NULL,
telefono VARCHAR(15) NOT NULL,
direccion VARCHAR(40) NOT NULL
);

CREATE TABLE perro (
id_perro INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(20) NOT NULL,
fecha_nac DATE NOT NULL,
sexo VARCHAR (10) NOT NULL,
dni_dueno INT NOT NULL 
);

CREATE TABLE historial (
id_historial INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
fecha DATE NOT NULL,
perro INT NOT NULL,
descripcion VARCHAR (60) NOT NULL,
monto FLOAT NOT NULL
);

ALTER TABLE perro ADD FOREIGN KEY (dni_dueno) REFERENCES dueno (dni);
ALTER TABLE historial ADD FOREIGN KEY (perro) REFERENCES perro (id_perro);

INSERT INTO dueno (dni, nombre, apellido, telefono, direccion) VALUES ("40345678", "solange", "reyes", "3513457898", "los ombues 345");
INSERT INTO perro (id_perro, nombre, fecha_nac, sexo, dni_dueno) VALUES ("1", "betun", "2020-02-28", "masculino","40345678");
INSERT INTO historial (id_historial, fecha, perro, descripcion, monto) VALUES ("01", "2022-07-15", "1", "extraccion de sangre y suministro de antibioticos", "5000.00");

UPDATE perro SET fecha_nac = "2020-01-28" WHERE id_perro = 1;

CREATE DATABASE Peluqueria;
USE Peluqueria;

CREATE TABLE dueno(
	dni INT PRIMARY KEY UNIQUE NOT NULL,
    nombre VARCHAR(40) NOT NULL,
    apellido VARCHAR(40) NOT NULL,
    telefono VARCHAR(40) NOT NULL,
    direccion VARCHAR(100) NOT NULL
);

CREATE TABLE perro(
	id_perro INT PRIMARY KEY AUTO_INCREMENT UNIQUE NOT NULL,
    nombre VARCHAR(40) NOT NULL,
    fecha_nac DATE NOT NULL,
	sexo VARCHAR(1) NOT NULL,
	dni_dueno INT NOT NULL,
	FOREIGN KEY (dni_dueno) REFERENCES dueno(dni)
);

CREATE TABLE historial(
	id_historial INT PRIMARY KEY AUTO_INCREMENT UNIQUE NOT NULL,
	fecha DATE NOT NULL,
    perro INT NOT NULL,
    descripcion VARCHAR(240),
    monto FLOAT NOT NULL,
	FOREIGN KEY (perro) REFERENCES perro(id_perro)
);

INSERT INTO dueno (dni, nombre, apellido, telefono, direccion)
VALUES 
('123123', 'Juanito', 'Valentin', '64354321', 'Av. Isac1'),
('321321', 'Juanita', 'Valentina', '65224321', 'Av. Isac2'),
('543543', 'Juanite', 'Valentine', '54315221', 'Av. Isac3');

INSERT INTO perro (nombre, fecha_nac, sexo, dni_dueno) 
VALUES 
('Cata', STR_TO_DATE("14-08-2021", "%d-%m-%Y"), 'M', '321321'),
('Colita', STR_TO_DATE("14-08-2021", "%d-%m-%Y"), 'M', '123123'),
('Blacki', STR_TO_DATE("14-08-2021", "%d-%m-%Y"), 'M', '543543');


INSERT INTO historial (fecha, perro, descripcion, monto) 
VALUES 
(STR_TO_DATE("05-03-2022", "%d-%m-%Y"), '1', 'baño', 5500),
(STR_TO_DATE("15-03-2022", "%d-%m-%Y"), '2', 'corte de uñas', 500),
(STR_TO_DATE("05-03-2022", "%d-%m-%Y"), '1', 'masaje', 55000);


/* Ejercicio 8, Vaciando la tabla Historial, manteniendo la estructura y reiniciando el auto incremento del id_historial */
TRUNCATE TABLE historial;


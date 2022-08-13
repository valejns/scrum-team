CREATE DATABASE lapeludeloscanes;

USE lapeludeloscanes;

/* CREACION TABLA DUEÑO */
CREATE TABLE Dueno (
dni INT NOT NULL PRIMARY KEY,
nombre VARCHAR(40) NOT NULL,
apellido VARCHAR(40) NOT NULL,
telefono BIGINT NOT NULL,
direccion VARCHAR(40) NOT NULL
);

/* DUEÑOS ISERTADOS EN TABLA DUEÑO */
INSERT INTO `lapeludeloscanes`.`Dueno` (`dni`, `nombre`, `apellido`, `telefono`, `direccion`) 
VALUES ('20478522', 'Carlos', 'Murua', '3544711528', 'Los prados 312');

INSERT INTO `lapeludeloscanes`.`Dueno` (`dni`, `nombre`, `apellido`, `telefono`, `direccion`) 
VALUES ('39765465', 'Juan', 'Carlos', '3544712312', 'Los prados 342');

INSERT INTO `lapeludeloscanes`.`Dueno` (`dni`, `nombre`, `apellido`, `telefono`, `direccion`) 
VALUES ('19765465', 'Juana', 'Carla', '3543212892', 'Las pradas 12');

/* CREACION TABLA PERRO */
CREATE TABLE Perro (
id_perro INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(20) NOT NULL,
fecha_nac DATE NOT NULL,
sexo VARCHAR (10) NOT NULL,
dni_dueno INT NOT NULL,
FOREIGN KEY id_perro (dni_dueno) REFERENCES dueno(dni)

);

/* PERROS ISERTADOS EN TABLA PERRO */
INSERT INTO `lapeludeloscanes`.`Perro` (`id_perro`, `nombre`, `fecha_nac`, `sexo`, `dni_dueno`) 
VALUES (0, 'Jaba', STR_TO_DATE("04-12-2012", "%m-%d-%Y"), 'hembra', '19765465');

INSERT INTO `lapeludeloscanes`.`Perro` (`id_perro`, `nombre`, `fecha_nac`, `sexo`, `dni_dueno`) 
VALUES (0, 'Payton', STR_TO_DATE("04-01-2017", "%m-%d-%Y"), 'macho', '20478522');

INSERT INTO `lapeludeloscanes`.`Perro` (`id_perro`, `nombre`, `fecha_nac`, `sexo`, `dni_dueno`) 
VALUES (0, 'Rubi', STR_TO_DATE("04-12-2020", "%m-%d-%Y"), 'hembra', '39765465');

INSERT INTO `lapeludeloscanes`.`Perro` (`id_perro`, `nombre`, `fecha_nac`, `sexo`, `dni_dueno`) 
VALUES (0, 'Cemas', STR_TO_DATE("04-12-2022", "%m-%d-%Y"), 'macho', '20478522');

/* CREACION TABLA HISTORIAL */
CREATE TABLE Historial (
id_historial INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
fecha DATE NOT NULL,
perro INT NOT NULL,
descripcion VARCHAR (60) NOT NULL,
monto FLOAT NOT NULL,
FOREIGN KEY id_historial (perro) REFERENCES perro (id_perro)
);

/* HISTORIALES ISERTADOS EN TABLA HISTORIAL */
INSERT INTO `lapeludeloscanes`.`Historial` (`id_historial`, `fecha`, `perro`, `descripcion`, `monto`) 
VALUES (0, STR_TO_DATE("05-07-2022", "%m-%d-%Y"), '1', 'baño, corte de uñas y corte de pelo', '2300');

INSERT INTO `lapeludeloscanes`.`Historial` (`id_historial`, `fecha`, `perro`, `descripcion`, `monto`) 
VALUES (0, STR_TO_DATE("01-06-2022", "%m-%d-%Y"), '2', 'baño, corte de uñas, desparasitar y corte de pelo', '2700');

INSERT INTO `lapeludeloscanes`.`Historial` (`id_historial`, `fecha`, `perro`, `descripcion`, `monto`) 
VALUES (0, STR_TO_DATE("07-14-2021", "%m-%d-%Y"), '3', 'baño, corte de uñas', '2100');

INSERT INTO `lapeludeloscanes`.`Historial` (`id_historial`, `fecha`, `perro`, `descripcion`, `monto`) 
VALUES (0, STR_TO_DATE("12-27-2022", "%m-%d-%Y"), '3', 'corte de pelo', '2300');

INSERT INTO `lapeludeloscanes`.`Historial` (`id_historial`, `fecha`, `perro`, `descripcion`, `monto`) 
VALUES (0, STR_TO_DATE("06-21-2021", "%m-%d-%Y"), '1', 'baño, corte de uñas y corte de pelo', '2600');

/* CONSULTA EJERCICIO NUMERO 6 */
SELECT perro.nombre, historial.fecha
FROM historial 
INNER JOIN perro 
ON historial.Perro = perro.ID_Perro
WHERE YEAR(historial.fecha)=2022

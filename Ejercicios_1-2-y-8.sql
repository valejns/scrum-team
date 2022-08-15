
/*
1) Realice la consulta correspondiente para crear la tabla Perro, teniendo en cuenta sus claves foráneas y primarias.

2) Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.

8) Insertar un nuevo registro en la tabla historial de un perro cuyo ID Perro es igual a 10.
*/

Create Database bd_peluqueria_canina;

use bd_peluqueria_canina;

Create Table Dueno
(
	DNI int primary key not null,
    Nombre varchar (45) not null,
    Apellido varchar (45) not null,
    Telefono varchar (25),
    Direccion varchar (50)
);

Create Table Perro
(
	ID_Perro int primary key not null auto_increment,
    Nombre varchar (20),
    Fecha_nac datetime,
    Sexo varchar (20),
    fk_DNI_dueno int ,
    foreign key (fk_DNI_dueno) references Dueno (DNI)
);

Create Table Historial
(
	ID_Historial int primary key not null auto_increment,
    Fecha datetime,
    fk_Perro int not null,
    foreign key (fk_Perro) references Perro (ID_Perro),
    Descripcion varchar (300),
    Monto float not null
);


Insert Into Dueno (Dni, Nombre,Apellido,Telefono, Direccion) Values ("37262166", "Hector", "Esposito", 3436348379, "Presidente Juan Domingo Peron 2115.");
Insert Into Perro (ID_Perro, Nombre, Fecha_nac, Sexo, fk_DNI_dueno) Values ("1313", "Cebollita", "2020-10-31", "Femenino", "37262166");
Insert Into Historial (ID_historial,fk_Perro, Fecha, Descripcion, Monto) Values ("316", "1213", 2022-06-02,  "Corte de uñas y Baño", "3500");

/*Insertar un nuevo registro en la tabla historial de un perro cuyo ID Perro es igual a 10.*/
Insert into Historial (fk_Perro,Monto) Values ("10", 3500);
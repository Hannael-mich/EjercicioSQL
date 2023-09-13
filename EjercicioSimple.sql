-- crear la base de datos bdTemporal
drop database Temporal;
create database bdTemporal;
use bdTemporal;
-- con una tabla llamada clientes 
create table clientes 
(
	id int,
	nombreCliente varchar(30),
	ciudad varchar (30),
    telefono varchar(30)
);

-- crear una tabla que tenga atributos en sus columnas y defina el nombre de la base de datos en la tabla
create table if not exists bdTemporal.productos
(
	id int not null unique auto_increment,
	nombreProducto varchar(30) unique, 
	costo decimal(8,2) default 0,
	precioVenta decimal(8,2)  default 0,
	existencia int default 0
);
-- comprobando los atributos y tipos de datos
insert into productos values(0, 'Refresco de lata', 10.50, 11.50,5);
insert into productos values(0, 'Refresco de lata chico', 10.50, 11.50,5);
insert into productos (id, nombreProducto) values(0, 'Refresco de lata grande');


select * from productos;

-- eliminacion de la base de datos bdTemporal
drop database bdtemporal;
-- Crear una tabla temporal (solo durara con la seccion activa)
create temporary table tmpProductos as select * from productos;
select * from tmpProductos;

create temporary table tmProducts like productos;
select * from tmProducts;


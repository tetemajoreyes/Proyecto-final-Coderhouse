/* Creacion de la Base de Datos */
create database IF NOT EXISTS rent_runway;

USE RENT_RUNWAY;

/* Creacion de TABLA PROVEEDORES , 
contiene los datos de todas las empresas donde se compran los vestidos y accesorios*/
DROP TABLE IF EXISTS PROVEEDORES ;

CREATE TABLE PROVEEDORES
(
iD_PROV INT AUTO_INCREMENT,
RAZON_SOCIAL VARCHAR (50) NOT NULL,
FECHA_ALTA DATE NOT NULL,
DIRECCION VARCHAR (50 ) NOT NULL,
SALDO DECIMAL(10.2)NOT NULL DEFAULT '0',
TIPO_PROVEEDOR INT ,
PRIMARY KEY (iD_PROV));

/*Creacion de TABLA CLASIFICACION_PROV,
 Contiene la clasificacion en la que se dividen los proveedores , tabla de dimension*/
 
DROP TABLE IF EXISTS Clasificacion_prov;

create table Clasificacion_prov
(ID_CLASIFICACION int auto_increment,
CLASE varchar(50) not null,
DESCRIPCION VARCHAR (100) NOT NULL,
primary key (ID_CLASIFICACION));


/* Modificacion a la tabla proveedores ,
incorporando una clave foreign key que relacione esta tabla con la tabla Clasificacion_prov */

alter table proveedores
add  
foreign key (TIPO_PROVEEDOR) references rent_runway.Clasificacion_prov(ID_CLASIFICACION);


/*Creacion de la TABLA VESTIDO_ACC , 
contiene la descripcion y stock de la mercaderia */

DROP TABLE IF EXISTS VESTIDO_ACC;

CREATE TABLE VESTIDO_ACC
(ID_VESTIDOS INT AUTO_INCREMENT,
NOMBRE TEXT(50) NOT NULL,
TELA VARCHAR (100) NOT NULL,
COLOR VARCHAR (100) NOT NULL,
STOCK INT NOT NULL DEFAULT '0',
ANTIGUEDAD DATE NOT NULL,
PRIMARY KEY (ID_VESTIDOS)
);

/* Creacion de la TABLA CLIENTE ,
 contiene los datos principales que identifican a personas que alguna vez realizaron una transaccion con la empresa*/

DROP TABLE IF EXISTS CLIENTE;
CREATE TABLE CLIENTE
(ID_DNI INT AUTO_INCREMENT,
NOMBRE TEXT (50) NOT NULL,
APELLIDO TEXT (50) NOT NULL,
DIRECCION VARCHAR (70)NOT NULL,
TELEFONO VARCHAR (50)NOT NULL DEFAULT 'S/D',
MAIL VARCHAR (50)NOT NULL DEFAULT 'S/D',
PAIS TEXT (70)NOT NULL,
PRIMARY KEY (ID_DNI));

/*Incorporacion de una columna adicional para reflejar la antiguedad de los clientes en la tabla Cliente*/

alter table cliente
add ANTIGUEDAD DATE;

/* Creacion de la Tabla Pedidos , 
en ella queda el registro de los diferentes pedidos que realizan los clientes */

DROP TABLE IF EXISTS PEDIDOS;

create table PEDIDOS
(
ID_PEDIDOS INT AUTO_INCREMENT,
FECHA_PEDIDO DATE NOT NULL,
FECHA_DESPACHO DATE NOT NULL,
DIRECCION_ENTREGA VARCHAR(100) NOT NULL,
TIPO_PEDIDO INT NOT NULL,
CONTENIDO VARCHAR (100) NOT NULL,
ID_CLIENTE INT,
PRIMARY KEY (ID_PEDIDOS),
FOREIGN KEY (ID_CLIENTE) REFERENCES rent_runway.cliente (ID_DNI))
;

/* Modificacion a la tabla pedidos incorporando una clave foreign key que relacione esta tabla con la tabla Tipo_pedido*/

alter table pedidos
add  
foreign key (tipo_pedido) references rent_runway.tipo_pedido(id_tipo_pedido);


/* Creacion de la tabla Tipo_pedidos .
Contiene la clasificacion en la que se dividen los pedidos , tabla de dimension*/

DROP TABLE IF EXISTS Tipo_pedido;

create table Tipo_pedido
(ID_TIPO_PEDIDO int auto_increment,
CLASE varchar(50) not null,
DESCRIPCION VARCHAR (100) NOT NULL,
primary key (ID_TIPO_PEDIDO));


/*Creacion de la  TABLA SUSCRIPCIONES , 
los cliente pueden generar suscripciones mensuales que les permitan adquirir y utilizar 
 productos de manera regular , es esta tabla se registras los datos principales de las suscripciones*/
 
DROP TABLE IF EXISTS SUSCRIPCIONES;

CREATE TABLE SUSCRIPCIONES
(
ID_SUSCRIPCION INT AUTO_INCREMENT,
PLAN VARCHAR (100) NOT NULL,
COSTO DECIMAL(4,2) NOT NULL DEFAULT '0',
DESCRIPCION VARCHAR (100) NOT NULL,
FECHA_ALTA DATE NOT NULL,
ID_DNI INT,
PRIMARY KEY (ID_SUSCRIPCION),
FOREIGN KEY (ID_DNI) REFERENCES rent_runway.cliente (ID_DNI)
);


/* Creacion de la  TABLA ENVIOS, 
en la misma se concentrara todo el detalle de los envios que se realizan de los pedidos
 realizados por los clientes */
 
DROP TABLE IF EXISTS ENVIOS;

create table ENVIOS
(
ID_ENVIOS INT AUTO_INCREMENT,
DIRECCION_ENTREGA VARCHAR (100),
TIPO_ENVIO INT NOT NULL,
COSTO DECIMAL (10,2) NOT NULL DEFAULT '0',
FECHA_ENTREGA DATE NOT NULL,
FECHA_RECEPCION DATE NOT NULL,
ID_DNI INT,
ID_PEDIDOS INT,
PRIMARY KEY (ID_ENVIOS),
FOREIGN KEY ( ID_DNI)REFERENCES cliente (ID_DNI),
FOREIGN KEY (ID_PEDIDOS)REFERENCES pedidos (ID_PEDIDOS));


/* Creacion de la tabla Tipo_envio .
Contiene la clasificacion en la que se dividen los envios , tabla de dimension*/

DROP TABLE IF EXISTS Tipo_envio;

create table Tipo_envio
(ID_TIPO_ENVIO int auto_increment,
CLASE varchar(50) not null,
DESCRIPCION VARCHAR (100) NOT NULL,
primary key (ID_TIPO_ENVIO));

/* Modificacion a la tabla ENVIOS.
 Incorporando una clave foreign key que relacione esta tabla con la tabla Tipo_envio*/
 
 alter table envios
add  
foreign key (TIPO_ENVIO) references rent_runway.tipo_envio(id_tipo_envio);


/* Creacion de la TABLA PROV_VEST , 
tabla intermedia entre la tabla Proveedor y vestidos */
DROP TABLE IF EXISTS Prov_Vest;

create table Prov_Vest
(
ID_PROVVEST INT AUTO_INCREMENT,
ID_VEST INT,
ID_PROV INT,
PRIMARY KEY (ID_PROVVEST),
FOREIGN KEY (ID_VEST) REFERENCES  vestido_acc (ID_VESTIDOS),
FOREIGN KEY (ID_PROV) REFERENCES proveedores ( iD_PROV));


/* Creacion de la TABLA PEDIDO_VEST 
tabla intermedia entre la tabla Pedidos y Vestido_Acc*/

DROP TABLE IF EXISTS PEDIDO_VEST;
CREATE TABLE PEDIDO_VEST
(
ID_PEDIVEST INT AUTO_INCREMENT,
ID_VEST INT,
ID_PEDIDO INT,
PRIMARY KEY (ID_PEDIVEST),
FOREIGN KEY (ID_VEST) REFERENCES  vestido_acc (ID_VESTIDOS),
FOREIGN KEY (ID_PEDIDO) REFERENCES pedidos (ID_PEDIDOS));


/* Creacion de la TABLA VENTAS*/
DROP TABLE IF EXISTS ventas;
CREATE TABLE ventas (
  Id_factura int NOT NULL,
  fecha_vta date DEFAULT NULL,
  Producto_1 varchar(100) NOT NULL,
  Cantidad_1 int NOT NULL,
  Producto_2 varchar(100) DEFAULT NULL,
  Cantidad_2 int DEFAULT NULL,
  Monto_Facturado decimal(10,2) NOT NULL,
  PRIMARY KEY (Id_factura));












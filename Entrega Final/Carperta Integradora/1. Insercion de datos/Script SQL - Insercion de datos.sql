/* INSERCION DE DATOS EN TODAS LAS TABLAS*/

use rent_runway;

/*Insercion de datos tabla Tipo_pedido*/

insert into tipo_pedido
(ID_TIPO_PEDIDO,CLASE,DESCRIPCION)
values
(1,'Condicional','Activo'),
(2,'En firme','Activo'),
(3,'Reposicion','Activo'),
(4,'Consumo extraordinario','Activo'),
(5,'Normal','Activo'),
(6,'Programado','Activo'),
(7,'Abiertos','Activo'),
(8,'En linea','Activo'),
(9,'Standar','Inactivo'),
(10,'Recurrente','Inactivo'),
(11,'A','Activo'),
(12,'B','Activo'),
(13,'C','Activo'),
(14,'D','Activo'),
(15,'E','Activo'),
(16,'Programado A','Activo'),
(17,'Abiertos B','Activo'),
(18,'En linea C','Activo'),
(19,'Standar D','Inactivo'),
(20,'Recurrente F','Inactivo'),
(21,'Condicional*','Activo'),
(22,'En firme*','Activo'),
(23,'Reposicion*','Activo'),
(24,'Consumo extraordinario*','Activo'),
(25,'Normal*','Activo'),
(26,'Programado*','Activo'),
(27,'Abiertos*','Activo'),
(28,'En linea*','Activo'),
(29,'Standar*','Inactivo'),
(30,'Recurrente*','Inactivo');

select * from tipo_pedido;

/* Insercion de datos tabla Tipo_envio*/

select * from tipo_envio;

insert into tipo_envio
(CLASE,DESCRIPCION,costos)
values
('Rapido','Elige Paquete Premium cuando hay prisa',600),
('Economico','l Paq Estándar cuando buscas un precio economico',50),
('Ligero','Para paquete  poco pesado',200),
('A domicilio','Direccion personal del cliente',150),
('A un punto de entrega','Direccion acordada',300),
('Urgente','Aquel que se hace en el mercado local en menos de 6 horas',1000),
('Estandar','Aquel que se hace en el mercado local en menos de 12 horas',100),
('Contra Reembolso','lo recibe en 30 dias y le damos 10% de descuento',200),
('Internacional','Por avion y llega en una semana',1000),
('Fragil','Paquetes con carga delicada',1200),
('Pesado','Paquetes con carga importante',2000),
('Gratis','Paquetes bonificados',0),
('48 hs','aquel que se hace en máximo 48 horas',800),
('entre 3 y 5 dias','aquel que se hace en minimo 3 dias y maximo 5 dias',1000),
('Express','aquel que se hace en máximo 24 horas',1000),
('En el dia','aquel que se hace en menos de  24 horas',1000),
('Transporte aereo','Por avion',2000),
('Dia de semana','llegan en dias habiles',600),
('Sabados','llegan los sabados',800),
('Domingos','llegan los domingos',800),
('Feriados','llegan los feriados',800),
('Promocionales','Paquetes con 50% de dtos',300),
('Rapido*','Elige Paquete Premium cuando hay prisa',600),
('Economico -1','l Paq Estándar cuando buscas un precio economico',50),
('Ligero *','Para paquete  poco pesado',200),
('A domicilio * ','Direccion personal del cliente',150),
('A un punto de entrega BIS','Direccion acordada',300),
('Urgente *','Aquel que se hace en el mercado local en menos de 6 horas',1000),
('Estandar*','Aquel que se hace en el mercado local en menos de 12 horas',100),
('Contra Reembolso-B','lo recibe en 30 dias y le damos 10% de descuento',200),
('Internacional-C','Por avion y llega en una semana',1000);

/*Insercion de datos tabla clasificacion_prov */

-- Tuve que modificar el tipo de datos de la columna descripciones aumentando la longitud de la cantidad de caracteres . Paso de una varchar de 100 a 400

/* Modificacion de la tabla clasificacion_prov*/

alter table clasificacion_prov
modify DESCRIPCION VARCHAR (400) not null;

/* ingreso de datos a la tabla clasificacion_prov */

insert into clasificacion_prov
(CLASE,DESCRIPCION)
values
('Bienes','se dedica a fabricar un producto que será destinado a la venta en el mercado, satisfaciendo así una necesidad real del mismo'),
('Servicios','Ofrece productos intangibles o servicios para solventar las necesidades de mercado'),
('Locales','Suministra productos locales'),
('Nacionales','Suministra productos nacionales'),
('Internacionales','Suministra productos internacionales'),
('Globales','Suministra productos globales'),
('Artesanales','Suministra productos elaborados a mano'),
('Servicios web','Elaboracion de aplicaciones y paginas'),
('No critico','Cumple con precios , calidad y tiempo'),
('Fabricante','Son quienes fabrican el producto'),
('Economico','costos bajos'),
('Basico','productos de baja calidad'),
('De insumos','botos, hilos , tijeras , maquinas de cocer'),
('Contratos de precio fijo','Se fija el precio al concretar el contrato'),
('Contratos por costes reembolsables','Lo que no se vende se puede devolver'),
('Contratos por tiempos y materiales','Se fija tiempos y materiales al momento de concretar el contrato'),
('Confiables','Tienen caracteristicas indispensables'),
('Especificos','Abastecen productos con propiedad especial'),
('De convenio','Para la prestacion de servicios se firma un contrato con ellos
Para habilitar la compatibilidad con lectores de pantalla, pulsa Ctrl+Alt+Z. 
Para obtener información acerca de las combinaciones de teclas, pulsa Ctrl+barra diagonal.'),
('Normales','No forman parte del registro de proveedores'),
('A','Riesgo asociado elevado'),
('B','Riesgo asociado medio'),
('C','Riesgo asociado bajo'),
('Minorista','realizan la venta de productos son intermediarios'),
('Mayorista','Es el intermediario'),
('Distribuidor','Hace que el producto llegue a la mano del cliente'),
('Exportador ','Introduce productos locales en otros paises'),
('Importador','Introduce productos de otros paises en el mercado local');

/* ingreso de datos a la tabla vestido_acc */

select * from vestido_acc;

insert into vestido_acc
(NOMBRE,TELA,COLOR,STOCK,ANTIGUEDAD)
values
('CORTE RECTO','Tul','Amarillo',10,'2022-01-01'),
('CORTE IMPERIO','Tul','Rosa',15,'2022-01-01'),
('CINTURA ALTA','Saten','Azul', 2,'2022-01-01'),
('VESTIDO TUBO','Terciopelo','Azul',3 ,'2022-01-01'),
('VESTIDO CANESU','Seda','Verde',20 ,'2022-01-01'),
('VESTIDO DE TUNICA','Seda','Azul', 5,'2022-01-01'),
('VESTIDO ABLUSADO','Terciopelo','Verde',14 ,'2022-01-01'),
('VESTIDO DE CIERRE ASIMeTRICO','Terciopelo','Amarillo', 6,'2022-01-01'),
('Estilo Clasico','Crepe','Verde',7 ,'2022-01-01'),
('Estilo Sofisticado','Terciopelo','Verde',8 ,'2022-02-01'),
('Estilo Romantico','Crepe','Verde',0 ,'2022-02-01'),
('Estilo Creativo','Saten','Naranja',1 ,'2022-02-01'),
('Estilo Dramatico','Bordado','Negro',12 ,'2022-02-01'),
('Estilo Seductor','Saten','Purpura',15 ,'2022-02-01'),
('Blanco brocado','Saten','Rosa', 8,'2021-01-01'),
('Flores bordadas','Rayon','Rosa',6 ,'2021-01-01'),
('Verde esmeralda','Terciopelo','Verde',7 ,'2021-01-01'),
('Blanco bordado','Bordado','Blanco',5 ,'2021-01-01'),
('Minimalismo de lujo','Terciopelo','Verde', 19,'2021-01-01'),
('Efecto naked','Saten','Purpura', 2,'2021-01-01'),
('Efecto degradado','Rayon','Azul',3 ,'2021-02-01'),
('Encaje blanco','Crepe','Blanco', 4,'2021-02-01'),
('Delicado y romantico','Bordado','Negro',6 ,'2021-02-01'),
('La magia de la cola','Seda','Naranja',7 ,'2021-02-01'),
('Brocado y bordado','Bordado','Rosa', 9,'2021-02-01'),
('Tul y pedreria','Tul','Amarillo',18 ,'2021-02-01'),
('De princesa','Seda','Azul', 4,'2021-06-01'),
('Hiper romantico','Rayon','Celeste', 0,'2021-06-01'),
('Con mensaje','Bordado','Naranja', 5,'2021-06-01'),
('Rojo Valentino','Seda','Rojo',8 ,'2021-06-01');

/* incorpacion de datos a la  tabla ventas*/

/* Modificacion del tipo de dato de la columna Monto_Facturado de la  tabla ventas incorpore not null y modifique la cantidad de decimales*/
Alter table ventas
 modify Monto_Facturado decimal ( 10,2) not null;
 
 select * from ventas;
 
 -- Insercion de datos
 insert into ventas
 (Id_factura,fecha_vta,Producto_1,Cantidad_1,Producto_2,Cantidad_2,Monto_Facturado)
 values
 (100,'2021/05/20','Estilo Romántico',2,'Estilo Creativo',2,9000),
 (101,'2021/06/21','Estilo Creativo',12,'Efecto naked',3,8000),
 (102,'2021/09/19','Estilo Dramático', 10,'Efecto degradado',2 ,8000 ),
 (103,'2021/07/08','Estilo Seductor', 15,'',0,7000 ),
(104,'2021/05/07','Blanco brocado',17 ,'' ,0 ,6000 ),
 (105,'2020/08/20','Flores bordadas', 5,'' ,0 ,10000 ),
(106,'2020/01/02','Verde esmeralda', 7,'' , 0,8500 ),
(107,'2020/02/13','Blanco bordado', 14,'' , 0,5900 ),
(108,'2020/02/14','Minimalismo de lujo', 19, '',0 ,7800 ),
(109,'2021/05/20','Efecto naked',21 ,'Híper romántico' , 1, 7743),
(110,'2021/06/21','Efecto degradado', 16,'Con mensaje' ,1 , 7686),
(111,'2021/07/23','Encaje blanco', 15,'Rojo Valentino', 1,7629 ),
(112,'2021/07/24','Delicado y romántico', 17,'CORTE RECTO' ,1 ,7571 ),
(113,'2021/05/20','La magia de la cola',10 ,'CORTE IMPERIO' ,1 , 7514),
(114,'2021/06/21','Brocado y bordado',2 ,'CINTURA ALTA' ,1 , 7457),
(115,'2021/09/19','Tul y pedrería', 3,'' ,0 ,7400 ),
(116,'2021/07/08','De princesa',10 , '',0 , 10000),
(1117,'2021/05/07','Híper romántico',14 ,'' ,0 , 15000),
(118,'2020/08/20','Con mensaje', 12,'' , 0, 6000),
(119,'2020/01/02','Rojo Valentino',19 ,'' ,0 , 6333),
(120,'2020/02/13','CORTE RECTO',5 ,'' ,0 ,4333 ),
(121,'2020/02/14','CORTE IMPERIO', 21,'' ,0 ,2333 ),
(122,'2021/05/20','CINTURA ALTA',23 ,'' ,0 ,3000 ),
(123,'2021/06/21','VESTIDO TUBO',24 ,'' ,0 ,9500 ),
(124,'2021/07/23','VESTIDO CANESÚ',26 ,'' ,0 ,8540 ),
(125,'2021/07/24','VESTIDO DE TÚNICA',30 , '',0 , 7600),
(126,'2021/10/10','VESTIDO ABLUSADO', 29,'' ,0, 4600),
(127,'2020/09/23','VESTIDO DE CIERRE ASIMÉTRICO',28 ,'' ,0 ,10000 ),
(128,'2020/04/06','Estilo Clásico',27 ,'' ,0 , 15000),
(129,'2020/04/04','Estilo Dramático',17 ,'' ,0 , 8000);

/* incorpacion de datos a la  tabla Cliente*/

select * from cliente;

/* clientes con datos completos*/

select * from cliente;

insert into cliente
values 
(3,'Eloisa','Paez','AV. INDEPENDENCIA NO. 779','91-(287)- 5-42-73 - 5 40 99','dtarauca@minproteccionsocial.gov.com','Finlandia','2021-12-25'),
( 4,'Lucas','Miranda','AV. 20 DE NOVIEMBRE NO.1024','123654','dtatlantico@minproteccionsocial.gov.co','Francia ','2021-12-25'),
(6 ,'Baltazar','Reyes','AV. 20 DE NOVIEMBRE NO.1024','256666','dtatlantico@minproteccionsocial.gov.co','Montenegro','2021-12-25'),
(8 ,'Guillermo','Sanchez','AV. 20 DE NOVIEMBRE NO. 1060','444444','dtbolivar@minproteccionsocial.gov.co','Albania','2021-12-30'),
(14,'Ariela','Diaz','AV. 20 DE NOVIEMBRE NO. 1060','5666658','dtbolivar@minproteccionsocial.gov.co','Francia ','2021-12-30'),
( 15,'Cecilia','Fernandez','CALLE MATAMOROS NO. 310','7899887','dtcaldas@minproteccionsocial.gov.co','Francia ','2021-11-15'),
(16 ,'Mariana','Gonzalez','CALLE MATAMOROS NO. 310','1565656','dtcaldas@minproteccionsocial.gov.co','Noruega','2021-11-16'),
(24 ,'Laura','Gimenez','AV. INDEPENDENCIA NO. 1282-A','1444444','dtcundinamarca@minproteccionsocial.gov.co','Noruega','2021-11-17'),
(28 ,'Carlos','Carranza','CALLE MATAMOROS NO. 127','56565656','dtcundinamarca@minproteccionsocial.gov.co','Montenegro','2020-09-22'),
(30 ,'Roberto','Torre','CALLE MATAMOROS NO. 127','78999999','dtguajira@minproteccionsocial.gov.co','Montenegro','2020-09-22');

/* clientes sin telefono*/

insert into cliente
(ID_DNI,NOMBRE,APELLIDO,DIRECCION,MAIL,PAIS,ANTIGUEDAD)
values 
('7','Juana','Lorenzini','CALLE ZARAGOZA NO. 1010','dtboyaca@minproteccionsocial.gov.co','Andora','2021-12-30'),
('9','Rosa','Valdez','CALLE ZARAGOZA NO. 1010','dtcaqueta@minproteccionsocial.gov.co','Austria','2021-11-10'),
('10','Mariano','Gimenez','CALLE ZARAGOZA NO. 1010','dtcauca@minproteccionsocial.gov.co','Belgica','2021-11-11'),
('11','Jorge','Comito','AV. 20 DE NOVIEMBRE NO.859-B','dtcesar@minproteccionsocial.gov.co','Bulgaria','2021-11-12'),
('12','Lucrecia','Rodriguez','AV. 21 DE NOVIEMBRE NO.859-B','dtchoco@minproteccionsocial.gov.co','Bulgaria','2021-11-13'),
('17','Santiago','Villalba','BLVD. BENITO JUAREZ NO. 1466-A','dtmagdalena@minproteccionsocial.gov.co','Belgica','2022-05-20'),
('19','Alejandro','Martinez','BLVD. BENITO JUAREZ NO. 1466-A','dtnarino@minproteccionsocial.gov.co','Austria','2022-05-21'),
('20','Estefania','Martinez','CALLE MATAMOROS NO.280','dtnortedesantander@minproteccionsocial.gov.co','Polonia','2022-05-22'),
('23','Emilia','Valdez','CALLE MATAMOROS NO.280','dtrisaralda@minproteccionsocial.gov.co','Belgica','2022-05-23'),
('25','Lorena','Comito','AV. 5 DE MAYO NO. 1652','dtsantander@minproteccionsocial.gov.co','Austria','2022-05-24'),
('27','Sofia','Flores','AV. 5 DE MAYO NO. 1652','dtsantander@minproteccionsocial.gov.co','Polonia','2020-09-21'),
('29','Juan','Jimenez ','MATAMOROS NO 149','dttolima@minproteccionsocial.gov.co','Polonia','2020-09-23');

/* clientes sin mail*/
insert into cliente
(ID_DNI,NOMBRE,APELLIDO,DIRECCION,TELEFONO,PAIS,ANTIGUEDAD)
values 
('1','Maria','Medina','CALLE AGUSTIN LARA NO. 69-B','91-(287)-5-27-81','Alemania','2021-12-25'),
('5','benjamin','Gattoni','CALLE AGUSTIN LARA NO. 69-B','91-(287)-5-27-81','Noruega','2021-12-24'),
('21','natalia','Lorenzzino','AV. INDEPENDENCIA NO. 985-A','91-(287)-5-39-32','Polonia','2021-11-25'),
('22','Agustina','Sanchez','BLVD. BENITO JUAREZ S / N','91-(287)-5-39-32','Portugal','2020-12-25'),
('26','Eugenia','Flores','AV. 5 DE MAYO NO 1253','01 287 5 21 80','Estoni','2021-10-25');

/* Clientes sin mail ni telefono*/
insert into cliente
(ID_DNI,NOMBRE,APELLIDO,DIRECCION,PAIS,ANTIGUEDAD)
values 
('13','Analia','Lopez','AV. INDEPENDENCIA NO. 545','Portugal','2021-11-14'),
('18','Pablo','Diaz','AV. 5 DE MAYO NO. 1108','Albania','2022-05-21');

/* insercion de datos tabla Provedores*/

/* modificacion de la columna saldo , tipo de dato*/

alter table proveedores
modify saldo DECIMAL(10, 2) NOT NULL DEFAULT '0';

/*modificacion de la columna razon social , tipo de dato*/
alter table proveedores
modify RAZON_SOCIAL varchar(100) not null;

/* Insercion de datos a la tabla proveedores */
insert into proveedores
values
(1,'ASOCIACION COMERCIAL ARBI S.A. DE C.V.','2021/02/21','AVENIDA 3 CALLE 2',100000 ,5 ),
(2,'OPERADORA HOTELERA RIO NAVIA S.A . DE C.V.','2021/02/21','BLVD. BENITO JUAREZ NO 409',10000,5),
(3,'JUANA FILOMENA MONTAÑO GONZALEZ','2021/02/22','BLVD. BENITO JUAREZ NO 409',20000,7),
(4,'ENRIQUE MORENO MENENDEZ','2021/02/23','AV. INDEPENDENCIA NO 1125',20000,9),
(5,'PAPELER.BENLLY S.DE R.L.','2021/02/24','AV. INDEPENDENCIA NO 1100',30000,8),
(6,'PAPELER.BENLLY ','2021/02/25','AV. INDEPENDENCIA NO s/n',30000,7),
(7,'PAPELER','2021/02/26','AV. 5 DE MAYO NO.801',10000,15),
(8,'ROQUE MENDES PEREZ','2021/03/01','AV. 5 DE MAYO NO.1800',10000,23),
(9,'OLEGARIO COMPLETO DELGADO','2021/03/02','AV. 5 DE MAYO NO.5000',10000,21),
(10,'CESAR ROY CRUZ','2021/03/03','CENTRO PINERO 2',50000,25),
(11,'JOSE LUIS QUINTERO ORTIZ','2021/03/04','CENTRO PINERO 56',42000,28),
(12,'MACARIA RENTERIA MONTES','2021/03/05','AV. JESUS CARRANZA NO. 60',30000,28),
(13,'MARGARITA ROMERO VALADEZ','2021/03/06','AV. JESUS CARRANZA NO. 600',54000,28),
(14,'DONATO JIMENEZ OCAMPOAV.','2021/03/07','ADOLFO LOPEZ MATEOS NO 25',35000,11),
(15,'DONATO JIMENEZ ','2021/03/08','ADOLFO LOPEZ MATEOS NO 75',36000,1),
(16,'DONATO ','2021/03/09','ADOLFO LOPEZ MATEOS NO 798',49000,2),
(17,'MARIA GUADALUPE ARRIAGA CORDOVA','2021/03/10','ADOLFO LOPEZ MATEOS NO 255',50000,3),
(18,'MARIA ARRIAGA ','2021/03/11','',30000,17),
(19,'MARIA GUADALUPE CORDOVA','2021/03/12','',20000,4),
(20,'VICTORIA ANTONIO FLORES','2021/03/13','',17000,19),
(21,'ANTONIO FLORES','2021/03/14','HERMENEGILDO GALEANA S/N',25000,20),
(22,'PRODUCTOS VETERINARIOS DE TUXTEPEC S. DE R.L. DE C.V.','2021/05/01','AV. FERROCARRIL S/N.',18000,9),
(23,'CALZADO ACU DE LA CUENCA SA DE CV','2021/03/16','AV. FERROCARRIL 256',19000,25),
(24,'REPRESENTACIONES TUXTEPEC.S.A. DE C.V.','2021/03/17','AV. FERROCARRIL 5000',23000,24),
(25,'NORMA GONZALEZ GUTIERREZ','2021/03/18','AV. FERROCARRIL 798',27000,23),
(26,'NORMA GUTIERREZ','2021/03/19','INDEPENDENCIA NO 6',89000,17),
(27,'NORMA GONZALEZ ','2021/03/20','INDEPENDENCIA NO 789',56400,18),
(28,'PIO HERNANDEZ ','2021/03/21','MATAMOROS 40',54600,19),
(29,'HERNANDEZ SANTIAGO','2021/03/22','MATAMOROS 140',36000,10),
(30,'PIO SANTIAGO','2021/03/23','MATAMOROS 4056',365000,10);

select * from proveedores;


/* Insercion de datos a la tabla Prov_Vest*/

insert into prov_vest
values
(1,23,13),
(2,13,23),
(3,10,2),
(4,5,7),
(5,19,1),
(6,8,5),
(7,18,17),
(8,10,10),
(9,14,10),
(10,2,17),
(11,3,5),
(12,9,8),
(13,12,13),
(14,1,1),
(15,16,17),
(16,15,14),
(17,8,10),
(18,12,14),
(19,16,18),
(20,21,23),
(21,19,25),
(22,27,29),
(23,30,30),
(24,24,30),
(25,1,30),
(26,11,17),
(27,19,19),
(28,15,15),
(29,14,18),
(30,7,7);

select * from Prov_Vest;

/* Insercion de datos a la tabla suscripciones*/

/* modificacion del tipo de datos de la columna costo*/

alter table suscripciones
modify COSTO DECIMAL(10, 2) NOT NULL DEFAULT '0';

/*insercion de datos tabla Sucripcione*/

insert into suscripciones
(PLAN,COSTO,DESCRIPCION,FECHA_ALTA,ID_DNI)
values
('Basico',100,'Activo','2021-01-01',5),
('Basico',100,'Activo','2021-01-01',3),
('Estandar',200,'Inactivo','2021-01-01',21),
('Basico',100,'Activo','2021-01-02',5),
('Basico',100,'Activo','2021-01-03',20),
('Premiun',500,'Activo','2021-01-04',5),
('Estandar',200,'Activo','2021-01-05',17),
('Premiun',500,'Inactivo','2021-01-06',7),
('Basico',100,'Suspendido','2021-01-07',8),
('Estandar',200,'Suspendido','2021-01-08',18),
('Basico',500,'Suspendido','2021-01-09',28),
('Premiun',500,'Suspendido','2021-01-10',7),
('Estandar',200,'Inactivo','2021-02-01',10),
('Basico',100,'Suspendido','2021-02-02',17),
('Premiun',500,'Suspendido','2021-02-03',27),
('Premiun',500,'Suspendido','2021-02-04',6),
('Basico',100,'Activo','2021-02-05',16),
('Estandar',200,'Inactivo','2021-02-06',30),
('Premiun',500,'Activo','2021-02-07',26),
('Basico',100,'Activo','2021-02-09',5),
('Premiun',500,'Activo','2021-02-10',15),
('Premiun',500,'Activo','2021-03-01',25),
('Basico',100,'Inactivo','2021-03-02',1),
('Estandar',200,'Activo','2021-03-03',11),
('Premiun',500,'Activo','2021-03-04',21),
('Basico',100,'Activo','2021-03-05',9),
('Estandar',200,'Inactivo','2021-03-06',7),
('Premiun',500,'Activo','2021-03-07',12),
('Basico',100,'Activo','2021-03-08',22),
('Estandar',500,'Activo','2021-03-09',3);

select * from suscripciones;

/* Insercion de datos tabla pedidos*/
insert into pedidos
(FECHA_PEDIDO,FECHA_DESPACHO,DIRECCION_ENTREGA,TIPO_PEDIDO,ID_CLIENTE,ID_FC)
values 
('2021/05/20','2021/05/21','AV. 5 DE MAYO NO. 2061 ESQ. BLVD.BENITO JUAREZ',1,1,100),
('2021/06/21','2021/06/30','AV. JESUS CARRANZA NO. 812',2,29,101),
('2021/07/08','2021/10/02','AV. JESUS CARRANZA NO. 9178',9,3,100),
('2021/05/07','2021/10/02','AV. JESUS CARRANZA NO. 8',8,4,110),
('2020/08/20','2020/08/30','C. GUADALUPE VICTORIA N0.373',7,5,120),
('2020/01/02','2020/08/30','C. GUADALUPE VICTORIA N0.56',9,6,101),
('2020/02/13','2020/08/30','C. GUADALUPE VICTORIA N0.1798',6,7,111),
('2020/02/14','2020/08/30','AV. JESUS CARRANZA NO.1063',5,8,121),
('2021/05/20','2021/06/30','AV. JESUS CARRANZA NO.1063',4,9,102),
('2021/06/21','2021/06/30','AV. JESUS CARRANZA NO.1456',3,10,112),
('2021/07/23','2021/08/09','AV. INDEPENDENCIA NO. 246',3,11,122),
('2021/07/24','2021/08/09','AV. INDEPENDENCIA NO. 1478',1,12,103),
('2021/05/20','2021/06/30','AV. INDEPENDENCIA NO. 1246',1,13,113),
('2021/05/20','2021/06/30','AV. INDEPENDENCIA NO. 2246',2,20,123),
('2021/05/20','2021/05/21','BLVD. BENITO JUAREZ NO 2222 esq  AV. INDEPENDENCIA',3,30,104),
('2021/06/21','2021/07/09','IGNACIO ZARAGOZA NO 303',4,29,114),
('2021/06/21','2021/07/09','IGNACIO ZARAGOZA NO 1303',5,28,124),
('2021/09/19','2021/10/19','IGNACIO ZARAGOZA NO 3035',6,27,105),
('2021/09/19','2021/10/19','IGNACIO ZARAGOZA NO 3039',7,26,115),
('2021/07/08','2021/07/09','IGNACIO ZARAGOZA NO 2303',8,25,125),
('2021/07/08','2021/07/09','MIGUEL HIDALGO NO 689',9,24,106),
('2021/05/07','2020/06/04','MIGUEL HIDALGO NO 68',10,23,116),
('2021/05/07','2020/05/09','MIGUEL HIDALGO NO 1689',1,15,126),
('2021/05/07','2020/05/14','MIGUEL HIDALGO NO 6891',3,16,107),
('2020/01/02','2020/03/04','AV. 5 DE MAYO NO 21',5,19,108),
('2020/01/02','2021/05/21','AV. 5 DE MAYO NO 1745',6,20,118),
('2020/02/13','2021/05/21','CALLE PRINCIPAL S/N.',7,21,119),
('2020/02/13','2020/03/04','AV. INDEPENDENCIA NO. 776 ANTS.998',8,1,128),
('2021/05/20','2020/09/25','CALLE SEBASTIAN ORTIZ NO.849',9,3,109),
('2021/05/29','2020/09/30','CALLE SEBASTIAN ORTIZ NO.1849',9,3,109),
('2021/05/21','2020/09/01','CALLE SEBASTIAN ORTIZ NO.2849',9,3,109),
('2020/08/20','2020/09/25','AV. 5 DE MAYO NO 1721',3,16,100),
('2020/08/20','2020/09/25','AV. 5 DE MAYO NO 17',1,1,100);


select * from pedidos;

/* insercion de los datos en la tabla pedido_vest*/
Insert into pedido_vest
(ID_PEDIVEST,ID_VEST,ID_PEDIDO)
values
(1,1,2),
(2,1,2),
(3,30,2),
(4,20,3),
(5,10,3),
(6,1,33),
(7,2,32),
(8,12,11),
(9,20,23),
(10,3,25),
(11,13,27),
(12,23,29),
(13,4,21),
(14,14,13),
(15,24,19),
(16,5,14),
(17,15,5),
(18,25,10),
(19,6,11),
(20,16,11),
(21,26,2),
(22,7,3),
(23,17,4),
(24,27,5),
(25,8,6),
(26,18,7),
(27,11,8),
(28,28,10),
(29,9,2),
(30,19,4);
select * from pedido_vest;

/* insercion de los datos en la tabla Envio , con datos completos*/
Insert into envios
(REFERENCIA,TIPO_ENVIO,FECHA_RECEPCION,ID_DNI,ID_PEDIDOS)
values
('Casa de familia',1,'2021/02/20',30,1),
('Tiene rejas ',2,'2021/01/21',29,2),
('Porton blanco',12,'2021/01/20',1,33),
('Hay un perro',22,'2021/01/21',3,31),
('Casa de familia',3,'2021/01/22',5,30),
('Tiene rejas ',13,'2021/01/23',7,29),
('Porton blanco',3,'2021/01/24',9,27),
('Hay un perro',4,'2021/01/25',11,25),
('Portero electico',14,'2021/01/26',13,27),
('Casa de familia',5,'2021/01/27',15,29),
('Tiene rejas',15,'2021/01/28',17,17),
('Porton blanco',6,'2021/01/28',19,19),
('Hay un perro',16,'2021/01/20',21,15),
('Auto rojo abandonado',7,'2021/02/20',23,13);

select * from envios;

/* insercion de los datos en la tabla Envio , pero sin referencias*/
Insert into envios
(TIPO_ENVIO,FECHA_RECEPCION,ID_DNI,ID_PEDIDOS)
values
(1,'2021/02/06',1,1),
(22,'2021/02/06',3,15),
(20,'2021/02/07',6,16),
(18,'2021/02/08',9,17),
(16,'2021/02/09',12,18),
(14,'2021/02/10',15,19),
(2,'2021/02/17',17,20),
(3,'2021/02/19',19,21),
(4,'2021/02/20',21,22),
(5,'2021/03/01',22,1),
(6,'2021/03/02',23,2),
(12,'2021/04/20',26,3),
(15,'2021/04/10',29,4),
(16,'2021/04/11',4,5),
(17,'2021/04/12',8,6),
(18,'2021/04/13',12,7);

/* Controles*/
select * from envios;
select*from clasificacion_prov;
select*from cliente;
select*from pedido_vest;
select*from pedidos;
select*from prov_vest;
select*from proveedores;
select*from suscripciones;
select* from tipo_envio;
select*from tipo_pedido;
select*from ventas;
select*from vestido_acc;
select*from prov_vest;
select*from proveedores;
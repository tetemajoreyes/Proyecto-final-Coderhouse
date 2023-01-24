/* Tablas incluidas
`clasificacion_prov`
`cliente`
`envios`
`log_audita_clas_prov`
`log_audita_eventos`
`pedido_vest`
`pedidos`
`prov_vest`
`proveedores`
`suscripciones`
`tipo_envio`
`tipo_pedido`
`ventas`
`vestido_acc` 
*/

/*===========================================================================================================================*/
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: rent_runway
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `clasificacion_prov`
--

LOCK TABLES `clasificacion_prov` WRITE;
/*!40000 ALTER TABLE `clasificacion_prov` DISABLE KEYS */;
INSERT INTO `clasificacion_prov` VALUES (1,'Bienes II','se dedica a fabricar un producto que será destinado a la venta en el mercado, satisfaciendo así una necesidad real del mismo'),(2,'Servicios','Ofrece productos intangibles o servicios para solventar las necesidades de mercado'),(3,'Locales','Suministra productos locales'),(4,'Nacionales','Suministra productos nacionales'),(5,'EXP','Suministra productos internacionales'),(6,'Globales','Suministra productos globales'),(7,'Artesanales','Suministra productos elaborados a mano'),(8,'Servicios web','Elaboracion de aplicaciones y paginas'),(9,'No critico','Cumple con precios , calidad y tiempo'),(10,'Fabricante','Son quienes fabrican el producto'),(11,'Economico','costos bajos'),(12,'Basico','productos de baja calidad'),(13,'De insumos','botos, hilos , tijeras , maquinas de cocer'),(14,'Contratos de precio fijo','Se fija el precio al concretar el contrato'),(15,'Contratos por costes reembolsables','Lo que no se vende se puede devolver'),(16,'Contratos por tiempos y materiales','Se fija tiempos y materiales al momento de concretar el contrato'),(17,'Confiables','Tienen caracteristicas indispensables'),(18,'Especificos','Abastecen productos con propiedad especial'),(19,'De convenio','Para la prestacion de servicios se firma un contrato con ellos\nPara habilitar la compatibilidad con lectores de pantalla, pulsa Ctrl+Alt+Z. \nPara obtener información acerca de las combinaciones de teclas, pulsa Ctrl+barra diagonal.\n'),(20,'Normales','No forman parte del registro de proveedores'),(21,'A','Riesgo asociado elevado'),(22,'B','Riesgo asociado medio'),(23,'C','Riesgo asociado bajo'),(24,'Minorista','realizan la venta de productos son intermediarios'),(25,'Mayorista','Es el intermediario'),(26,'Distribuidor','Hace que el producto llegue a la mano del cliente'),(27,'Exportador ','Introduce productos locales en otros paises'),(28,'Importador','Introduce productos de otros paises en el mercado local'),(29,'Europa','Premiunm'),(30,'Bienes Raices','se dedica a fabricar de inmuebles'),(31,'Servicios vas','Ofrece productos intangibles'),(32,'Bienes III','sin datos');
/*!40000 ALTER TABLE `clasificacion_prov` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Maria','Medina','CALLE AGUSTIN LARA NO. 69-B','91-(287)-5-27-81','S/D','Alemania','2021-12-25'),(3,'Eloisa','Paez','AV. INDEPENDENCIA NO. 779','91-(287)- 5-42-73 - 5 40 99','dtarauca@minproteccionsocial.gov.com','Finlandia','2021-12-25'),(4,'Lucas','Miranda','AV. 20 DE NOVIEMBRE NO.1024','123654','dtatlantico@minproteccionsocial.gov.co','Francia ','2021-12-25'),(5,'benjamin','Gattoni','CALLE AGUSTIN LARA NO. 69-B','91-(287)-5-27-81','S/D','Noruega','2021-12-24'),(6,'Baltazar','Reyes','AV. 20 DE NOVIEMBRE NO.1024','256666','dtatlantico@minproteccionsocial.gov.co','Montenegro','2021-12-25'),(7,'Juana','Lorenzini','CALLE ZARAGOZA NO. 1010','S/D','dtboyaca@minproteccionsocial.gov.co','Andora','2021-12-30'),(8,'Guillermo','Sanchez','AV. 20 DE NOVIEMBRE NO. 1060','444444','dtbolivar@minproteccionsocial.gov.co','Albania','2021-12-30'),(9,'Rosa','Valdez','CALLE ZARAGOZA NO. 1010','S/D','dtcaqueta@minproteccionsocial.gov.co','Austria','2021-11-10'),(10,'Mariano','Gimenez','CALLE ZARAGOZA NO. 1010','S/D','dtcauca@minproteccionsocial.gov.co','Belgica','2021-11-11'),(11,'Jorge','Comito','AV. 20 DE NOVIEMBRE NO.859-B','S/D','dtcesar@minproteccionsocial.gov.co','Bulgaria','2021-11-12'),(12,'Lucrecia','Rodriguez','AV. 21 DE NOVIEMBRE NO.859-B','S/D','dtchoco@minproteccionsocial.gov.co','Bulgaria','2021-11-13'),(13,'Analia','Lopez','AV. INDEPENDENCIA NO. 545','S/D','S/D','Portugal','2021-11-14'),(14,'Ariela','Diaz','AV. 20 DE NOVIEMBRE NO. 1060','5666658','dtbolivar@minproteccionsocial.gov.co','Francia ','2021-12-30'),(15,'Cecilia','Fernandez','CALLE MATAMOROS NO. 310','7899887','dtcaldas@minproteccionsocial.gov.co','Francia ','2021-11-15'),(16,'Mariana','Gonzalez','CALLE MATAMOROS NO. 310','1565656','dtcaldas@minproteccionsocial.gov.co','Noruega','2021-11-16'),(17,'Santiago','Villalba','BLVD. BENITO JUAREZ NO. 1466-A','S/D','dtmagdalena@minproteccionsocial.gov.co','Belgica','2022-05-20'),(18,'Pablo','Diaz','AV. 5 DE MAYO NO. 1108','S/D','S/D','Albania','2022-05-21'),(19,'Alejandro','Martinez','BLVD. BENITO JUAREZ NO. 1466-A','S/D','dtnarino@minproteccionsocial.gov.co','Austria','2022-05-21'),(20,'Estefania','Martinez','CALLE MATAMOROS NO.280','S/D','dtnortedesantander@minproteccionsocial.gov.co','Polonia','2022-05-22'),(21,'natalia','Lorenzzino','AV. INDEPENDENCIA NO. 985-A','91-(287)-5-39-32','S/D','Polonia','2021-11-25'),(22,'Agustina','Sanchez','BLVD. BENITO JUAREZ S / N','91-(287)-5-39-32','S/D','Portugal','2020-12-25'),(23,'Emilia','Valdez','CALLE MATAMOROS NO.280','S/D','dtrisaralda@minproteccionsocial.gov.co','Belgica','2022-05-23'),(24,'Laura','Gimenez','AV. INDEPENDENCIA NO. 1282-A','1444444','dtcundinamarca@minproteccionsocial.gov.co','Noruega','2021-11-17'),(25,'Lorena','Comito','AV. 5 DE MAYO NO. 1652','S/D','dtsantander@minproteccionsocial.gov.co','Austria','2022-05-24'),(26,'Eugenia','Flores','AV. 5 DE MAYO NO 1253','01 287 5 21 80','S/D','Estoni','2021-10-25'),(27,'Sofia','Flores','AV. 5 DE MAYO NO. 1652','S/D','dtsantander@minproteccionsocial.gov.co','Polonia','2020-09-21'),(28,'Carlos','Carranza','CALLE MATAMOROS NO. 127','56565656','dtcundinamarca@minproteccionsocial.gov.co','Montenegro','2020-09-22'),(29,'Juan','Jimenez ','MATAMOROS NO 149','S/D','dttolima@minproteccionsocial.gov.co','Polonia','2020-09-23'),(30,'Roberto','Torre','CALLE MATAMOROS NO. 127','78999999','dtguajira@minproteccionsocial.gov.co','Montenegro','2020-09-22');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `envios`
--

LOCK TABLES `envios` WRITE;
/*!40000 ALTER TABLE `envios` DISABLE KEYS */;
INSERT INTO `envios` VALUES (1,'Casa de familia',1,'2021-02-20',30,1),(2,'Tiene rejas ',2,'2021-01-21',29,2),(3,'Porton blanco',12,'2021-01-20',1,33),(4,'Hay un perro',22,'2021-01-21',3,31),(5,'Casa de familia',3,'2021-01-22',5,30),(6,'Tiene rejas ',13,'2021-01-23',7,29),(7,'Porton blanco',3,'2021-01-24',9,27),(8,'Hay un perro',4,'2021-01-25',11,25),(9,'Portero electico',14,'2021-01-26',13,27),(10,'Casa de familia',5,'2021-01-27',15,29),(11,'Tiene rejas',15,'2021-01-28',17,17),(12,'Porton blanco',6,'2021-01-28',19,19),(13,'Hay un perro',16,'2021-01-20',21,15),(14,'Auto rojo abandonado',7,'2021-02-20',23,13),(15,NULL,1,'2021-02-06',1,1),(16,NULL,22,'2021-02-06',3,15),(17,NULL,20,'2021-02-07',6,16),(18,NULL,18,'2021-02-08',9,17),(19,NULL,16,'2021-02-09',12,18),(20,NULL,14,'2021-02-10',15,19),(21,NULL,2,'2021-02-17',17,20),(22,NULL,3,'2021-02-19',19,21),(23,NULL,4,'2021-02-20',21,22),(24,NULL,5,'2021-03-01',22,1),(25,NULL,6,'2021-03-02',23,2),(26,NULL,12,'2021-04-20',26,3),(27,NULL,15,'2021-04-10',29,4),(28,NULL,16,'2021-04-11',4,5),(29,NULL,17,'2021-04-12',8,6),(30,NULL,18,'2021-04-13',12,7);
/*!40000 ALTER TABLE `envios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `log_audita_clas_prov`
--

LOCK TABLES `log_audita_clas_prov` WRITE;
/*!40000 ALTER TABLE `log_audita_clas_prov` DISABLE KEYS */;
INSERT INTO `log_audita_clas_prov` VALUES (1,30,'Bienes Raices','se dedica a fabricar de inmuebles','INSERT','root@localhost','2022-08-07 22:40:59'),(2,31,'Servicios vas','Ofrece productos intangibles','INSERT','root@localhost','2022-08-07 22:40:59'),(3,55,'InternacionalesEXP','Suministra productos internacionalesSuministra productos internacionales','UPDATE','root@localhost','2022-08-07 22:51:22'),(4,11,'BienesBienes II','se dedica a fabricar un producto que será destinado a la venta en el mercado, satisfaciendo así una necesidad real del mismose dedica a fabricar un producto que será destinado a la venta en el mercado, satisfaciendo así una necesidad real del mismo','UPDATE','root@localhost','2022-08-13 13:07:35'),(5,32,'Bienes III','sin datos','INSERT','root@localhost','2022-08-13 13:09:49');
/*!40000 ALTER TABLE `log_audita_clas_prov` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `log_audita_eventos`
--

LOCK TABLES `log_audita_eventos` WRITE;
/*!40000 ALTER TABLE `log_audita_eventos` DISABLE KEYS */;
INSERT INTO `log_audita_eventos` VALUES (1,'INSERT','pedidos','root@localhost','2022-08-07 22:30:35'),(2,'INSERT','pedidos','root@localhost','2022-08-07 22:30:35'),(3,'DELETE','pedidos','root@localhost','2022-08-07 22:34:20'),(4,'UPDATE','pedidos','root@localhost','2022-08-07 22:35:46');
/*!40000 ALTER TABLE `log_audita_eventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pedido_vest`
--

LOCK TABLES `pedido_vest` WRITE;
/*!40000 ALTER TABLE `pedido_vest` DISABLE KEYS */;
INSERT INTO `pedido_vest` VALUES (1,1,2),(2,1,2),(3,30,2),(4,20,3),(5,10,3),(6,1,33),(7,2,32),(8,12,11),(9,20,23),(10,3,25),(11,13,27),(12,23,29),(13,4,21),(14,14,13),(15,24,19),(16,5,14),(17,15,5),(18,25,10),(19,6,11),(20,16,11),(21,26,2),(22,7,3),(23,17,4),(24,27,5),(25,8,6),(26,18,7),(27,11,8),(28,28,10),(29,9,2),(30,19,4);
/*!40000 ALTER TABLE `pedido_vest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,'2021-05-20','2021-05-21','AV. 5 DE MAYO NO. 2061 ESQ. BLVD.BENITO JUAREZ',1,1,100),(2,'2021-06-21','2021-06-30','XXXXXXXXXXXXXXXXXXX',2,29,101),(3,'2021-07-08','2021-10-02','AV. JESUS CARRANZA NO. 9178',9,3,100),(4,'2021-05-07','2021-10-02','AV. JESUS CARRANZA NO. 8',8,4,110),(5,'2020-08-20','2020-08-30','C. GUADALUPE VICTORIA N0.373',7,5,120),(6,'2020-01-02','2020-08-30','C. GUADALUPE VICTORIA N0.56',9,6,101),(7,'2020-02-13','2020-08-30','C. GUADALUPE VICTORIA N0.1798',6,7,111),(8,'2020-02-14','2020-08-30','AV. JESUS CARRANZA NO.1063',5,8,121),(9,'2021-05-20','2021-06-30','AV. JESUS CARRANZA NO.1063',4,9,102),(10,'2021-06-21','2021-06-30','AV. JESUS CARRANZA NO.1456',3,10,112),(11,'2021-07-23','2021-08-09','AV. INDEPENDENCIA NO. 246',3,11,122),(12,'2021-07-24','2021-08-09','AV. INDEPENDENCIA NO. 1478',1,12,103),(13,'2021-05-20','2021-06-30','AV. INDEPENDENCIA NO. 1246',1,13,113),(14,'2021-05-20','2021-06-30','AV. INDEPENDENCIA NO. 2246',2,20,123),(15,'2021-05-20','2021-05-21','BLVD. BENITO JUAREZ NO 2222 esq  AV. INDEPENDENCIA',3,30,104),(16,'2021-06-21','2021-07-09','IGNACIO ZARAGOZA NO 303',4,29,114),(17,'2021-06-21','2021-07-09','IGNACIO ZARAGOZA NO 1303',5,28,124),(18,'2021-09-19','2021-10-19','IGNACIO ZARAGOZA NO 3035',6,27,105),(19,'2021-09-19','2021-10-19','IGNACIO ZARAGOZA NO 3039',7,26,115),(20,'2021-07-08','2021-07-09','IGNACIO ZARAGOZA NO 2303',8,25,125),(21,'2021-07-08','2021-07-09','MIGUEL HIDALGO NO 689',9,24,106),(22,'2021-05-07','2020-06-04','MIGUEL HIDALGO NO 68',10,23,116),(23,'2021-05-07','2020-05-09','MIGUEL HIDALGO NO 1689',1,15,126),(24,'2021-05-07','2020-05-14','MIGUEL HIDALGO NO 6891',3,16,107),(25,'2020-01-02','2020-03-04','AV. 5 DE MAYO NO 21',5,19,108),(26,'2020-01-02','2021-05-21','AV. 5 DE MAYO NO 1745',6,20,118),(27,'2020-02-13','2021-05-21','CALLE PRINCIPAL S/N.',7,21,119),(28,'2020-02-13','2020-03-04','AV. INDEPENDENCIA NO. 776 ANTS.998',8,1,128),(29,'2021-05-20','2020-09-25','CALLE SEBASTIAN ORTIZ NO.849',9,3,109),(30,'2021-05-29','2020-09-30','CALLE SEBASTIAN ORTIZ NO.1849',9,3,109),(31,'2021-05-21','2020-09-01','CALLE SEBASTIAN ORTIZ NO.2849',9,3,109),(32,'2020-08-20','2020-09-25','AV. 5 DE MAYO NO 1721',3,16,100),(33,'2020-08-20','2020-09-25','AV. 5 DE MAYO NO 17',1,1,100),(34,'2020-08-20','2020-09-25','AV. 25 DE MAYO NO 18',1,1,100);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `prov_vest`
--

LOCK TABLES `prov_vest` WRITE;
/*!40000 ALTER TABLE `prov_vest` DISABLE KEYS */;
INSERT INTO `prov_vest` VALUES (1,23,13),(2,13,23),(3,10,2),(4,5,7),(5,19,1),(6,8,5),(7,18,17),(8,10,10),(9,14,10),(10,2,17),(11,3,5),(12,9,8),(13,12,13),(14,1,1),(15,16,17),(16,15,14),(17,8,10),(18,12,14),(19,16,18),(20,21,23),(21,19,25),(22,27,29),(23,30,30),(24,24,30),(25,1,30),(26,11,17),(27,19,19),(28,15,15),(29,14,18),(30,7,7);
/*!40000 ALTER TABLE `prov_vest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'ASOCIACION COMERCIAL ARBI S.A. DE C.V.','2021-02-21','AVENIDA 3 CALLE 2',100000.00,5),(2,'OPERADORA HOTELERA RIO NAVIA S.A . DE C.V.','2021-02-21','BLVD. BENITO JUAREZ NO 409',10000.00,5),(3,'JUANA FILOMENA MONTAÑO GONZALEZ','2021-02-22','BLVD. BENITO JUAREZ NO 409',20000.00,7),(4,'ENRIQUE MORENO MENENDEZ','2021-02-23','AV. INDEPENDENCIA NO 1125',20000.00,9),(5,'PAPELER.BENLLY S.DE R.L.','2021-02-24','AV. INDEPENDENCIA NO 1100',30000.00,8),(6,'PAPELER.BENLLY ','2021-02-25','AV. INDEPENDENCIA NO s/n',30000.00,7),(7,'PAPELER','2021-02-26','AV. 5 DE MAYO NO.801',10000.00,15),(8,'ROQUE MENDES PEREZ','2021-03-01','AV. 5 DE MAYO NO.1800',10000.00,23),(9,'OLEGARIO COMPLETO DELGADO','2021-03-02','AV. 5 DE MAYO NO.5000',10000.00,21),(10,'CESAR ROY CRUZ','2021-03-03','CENTRO PINERO 2',50000.00,25),(11,'JOSE LUIS QUINTERO ORTIZ','2021-03-04','CENTRO PINERO 56',42000.00,28),(12,'MACARIA RENTERIA MONTES','2021-03-05','AV. JESUS CARRANZA NO. 60',30000.00,28),(13,'MARGARITA ROMERO VALADEZ','2021-03-06','AV. JESUS CARRANZA NO. 600',54000.00,28),(14,'DONATO JIMENEZ OCAMPOAV.','2021-03-07','ADOLFO LOPEZ MATEOS NO 25',35000.00,11),(15,'DONATO JIMENEZ ','2021-03-08','ADOLFO LOPEZ MATEOS NO 75',36000.00,1),(16,'DONATO ','2021-03-09','ADOLFO LOPEZ MATEOS NO 798',49000.00,2),(17,'MARIA GUADALUPE ARRIAGA CORDOVA','2021-03-10','ADOLFO LOPEZ MATEOS NO 255',50000.00,3),(18,'MARIA ARRIAGA ','2021-03-11','',30000.00,17),(19,'MARIA GUADALUPE CORDOVA','2021-03-12','',20000.00,4),(20,'VICTORIA ANTONIO FLORES','2021-03-13','',17000.00,19),(21,'ANTONIO FLORES','2021-03-14','HERMENEGILDO GALEANA S/N',25000.00,20),(22,'PRODUCTOS VETERINARIOS DE TUXTEPEC S. DE R.L. DE C.V.','2021-05-01','AV. FERROCARRIL S/N.',18000.00,9),(23,'CALZADO ACU DE LA CUENCA SA DE CV','2021-03-16','AV. FERROCARRIL 256',19000.00,25),(24,'REPRESENTACIONES TUXTEPEC.S.A. DE C.V.','2021-03-17','AV. FERROCARRIL 5000',23000.00,24),(25,'NORMA GONZALEZ GUTIERREZ','2021-03-18','AV. FERROCARRIL 798',27000.00,23),(26,'NORMA GUTIERREZ','2021-03-19','INDEPENDENCIA NO 6',89000.00,17),(27,'NORMA GONZALEZ ','2021-03-20','INDEPENDENCIA NO 789',56400.00,18),(28,'PIO HERNANDEZ ','2021-03-21','MATAMOROS 40',54600.00,19),(29,'HERNANDEZ SANTIAGO','2021-03-22','MATAMOROS 140',36000.00,10),(30,'PIO SANTIAGO','2021-03-23','MATAMOROS 4056',365000.00,10);
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `suscripciones`
--

LOCK TABLES `suscripciones` WRITE;
/*!40000 ALTER TABLE `suscripciones` DISABLE KEYS */;
INSERT INTO `suscripciones` VALUES (32,'Basico',100.00,'Activo','2021-01-01',5),(33,'Basico',100.00,'Activo','2021-01-01',3),(34,'Estandar',200.00,'Inactivo','2021-01-01',21),(35,'Basico',100.00,'Activo','2021-01-02',5),(36,'Basico',100.00,'Activo','2021-01-03',20),(37,'Premiun',500.00,'Activo','2021-01-04',5),(38,'Estandar',200.00,'Activo','2021-01-05',17),(39,'Premiun',500.00,'Inactivo','2021-01-06',7),(40,'Basico',100.00,'Suspendido','2021-01-07',8),(41,'Estandar',200.00,'Activo','2021-01-08',18),(42,'Basico',500.00,'Suspendido','2021-01-09',28),(43,'Premiun',500.00,'Suspendido','2021-01-10',7),(44,'Estandar',200.00,'Inactivo','2021-02-01',10),(45,'Basico',100.00,'Suspendido','2021-02-02',17),(46,'Premiun',500.00,'Suspendido','2021-02-03',27),(47,'Premiun',500.00,'Suspendido','2021-02-04',6),(48,'Basico',100.00,'Activo','2021-02-05',16),(49,'Estandar',200.00,'Inactivo','2021-02-06',30),(50,'Premiun',500.00,'Activo','2021-02-07',26),(51,'Basico',100.00,'Activo','2021-02-09',5),(52,'Premiun',500.00,'Activo','2021-02-10',15),(53,'Premiun',500.00,'Activo','2021-03-01',25),(54,'Basico',100.00,'Inactivo','2021-03-02',1),(55,'Estandar',200.00,'Activo','2021-03-03',11),(56,'Premiun',500.00,'Activo','2021-03-04',21),(57,'Basico',100.00,'Activo','2021-03-05',9),(58,'Estandar',200.00,'Inactivo','2021-03-06',7),(59,'Premiun',500.00,'Activo','2021-03-07',12),(60,'Basico',100.00,'Activo','2021-03-08',22),(61,'Estandar',500.00,'Activo','2021-03-09',3);
/*!40000 ALTER TABLE `suscripciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tipo_envio`
--

LOCK TABLES `tipo_envio` WRITE;
/*!40000 ALTER TABLE `tipo_envio` DISABLE KEYS */;
INSERT INTO `tipo_envio` VALUES (1,'Rapido','Elige Paquete Premium cuando hay prisa',600.00),(2,'Economico','l Paq Estándar cuando buscas un precio economico',50.00),(3,'Ligero','Para paquete  poco pesado',200.00),(4,'A domicilio','Direccion personal del cliente',150.00),(5,'A un punto de entrega','Direccion acordada',300.00),(6,'Urgente','Aquel que se hace en el mercado local en menos de 6 horas',1000.00),(7,'Estandar','Aquel que se hace en el mercado local en menos de 12 horas',100.00),(8,'Contra Reembolso','lo recibe en 30 dias y le damos 10% de descuento',200.00),(9,'Internacional','Por avion y llega en una semana',1000.00),(10,'Fragil','Paquetes con carga delicada',1200.00),(11,'Pesado','Paquetes con carga importante',2000.00),(12,'Gratis','Paquetes bonificados',0.00),(13,'48 hs','aquel que se hace en máximo 48 horas',800.00),(14,'entre 3 y 5 dias','aquel que se hace en minimo 3 dias y maximo 5 dias',1000.00),(15,'Express','aquel que se hace en máximo 24 horas',1000.00),(16,'En el dia','aquel que se hace en menos de  24 horas',1000.00),(17,'Transporte aereo','Por avion',2000.00),(18,'Dia de semana','llegan en dias habiles',600.00),(19,'Sabados','llegan los sabados',800.00),(20,'Domingos','llegan los domingos',800.00),(21,'Feriados','llegan los feriados',800.00),(22,'Promocionales','Paquetes con 50% de dtos',300.00),(23,'Rapido*','Elige Paquete Premium cuando hay prisa',600.00),(24,'Economico -1','l Paq Estándar cuando buscas un precio economico',50.00),(25,'Ligero *','Para paquete  poco pesado',200.00),(26,'A domicilio * ','Direccion personal del cliente',150.00),(27,'A un punto de entrega BIS','Direccion acordada',300.00),(28,'Urgente *','Aquel que se hace en el mercado local en menos de 6 horas',1000.00),(29,'Estandar*','Aquel que se hace en el mercado local en menos de 12 horas',100.00),(30,'Contra Reembolso-B','lo recibe en 30 dias y le damos 10% de descuento',200.00),(31,'Internacional-C','Por avion y llega en una semana',1000.00);
/*!40000 ALTER TABLE `tipo_envio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tipo_pedido`
--

LOCK TABLES `tipo_pedido` WRITE;
/*!40000 ALTER TABLE `tipo_pedido` DISABLE KEYS */;
INSERT INTO `tipo_pedido` VALUES (1,'Condicional','Activo'),(2,'En firme','Activo'),(3,'Reposicion','Activo'),(4,'Consumo extraordinario','Activo'),(5,'Normal','Activo'),(6,'Programado','Activo'),(7,'Abiertos','Activo'),(8,'En linea','Activo'),(9,'Standar','Inactivo'),(10,'Recurrente','Inactivo'),(11,'A','Activo'),(12,'B','Activo'),(13,'C','Activo'),(14,'D','Activo'),(15,'E','Activo'),(16,'Programado A','Activo'),(17,'Abiertos B','Activo'),(18,'En linea C','Activo'),(19,'Standar D','Inactivo'),(20,'Recurrente F','Inactivo'),(21,'Condicional*','Activo'),(22,'En firme*','Activo'),(23,'Reposicion*','Activo'),(24,'Consumo extraordinario*','Activo'),(25,'Normal*','Activo'),(26,'Programado*','Activo'),(27,'Abiertos*','Activo'),(28,'En linea*','Activo'),(29,'Standar*','Inactivo'),(30,'Recurrente*','Inactivo');
/*!40000 ALTER TABLE `tipo_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (100,'2021-05-20','Estilo Romántico',2,'Estilo Creativo',2,9000.00),(101,'2021-06-21','Estilo Creativo',12,'Efecto naked',3,8000.00),(102,'2021-09-19','Estilo Dramático',10,'Efecto degradado',2,8000.00),(103,'2021-07-08','Estilo Seductor',15,'',0,7000.00),(104,'2021-05-07','Blanco brocado',17,'',0,6000.00),(105,'2020-08-20','Flores bordadas',5,'',0,10000.00),(106,'2020-01-02','Verde esmeralda',7,'',0,8500.00),(107,'2020-02-13','Blanco bordado',14,'',0,5900.00),(108,'2020-02-14','Minimalismo de lujo',19,'',0,7800.00),(109,'2021-05-20','Efecto naked',21,'Híper romántico',1,7743.00),(110,'2021-06-21','Efecto degradado',16,'Con mensaje',1,7686.00),(111,'2021-07-23','Encaje blanco',15,'Rojo Valentino',1,7629.00),(112,'2021-07-24','Delicado y romántico',17,'CORTE RECTO',1,7571.00),(113,'2021-05-20','La magia de la cola',10,'CORTE IMPERIO',1,7514.00),(114,'2021-06-21','Brocado y bordado',2,'CINTURA ALTA',1,7457.00),(115,'2021-09-19','Tul y pedrería',3,'',0,7400.00),(116,'2021-07-08','De princesa',10,'',0,10000.00),(118,'2020-08-20','Con mensaje',12,'',0,6000.00),(119,'2020-01-02','Rojo Valentino',19,'',0,6333.00),(120,'2020-02-13','CORTE RECTO',5,'',0,4333.00),(121,'2020-02-14','CORTE IMPERIO',21,'',0,2333.00),(122,'2021-05-20','CINTURA ALTA',23,'',0,3000.00),(123,'2021-06-21','VESTIDO TUBO',24,'',0,9500.00),(124,'2021-07-23','VESTIDO CANESÚ',26,'',0,8540.00),(125,'2021-07-24','VESTIDO DE TÚNICA',30,'',0,7600.00),(126,'2021-10-10','VESTIDO ABLUSADO',29,'',0,4600.00),(127,'2020-09-23','VESTIDO DE CIERRE ASIMÉTRICO',28,'',0,10000.00),(128,'2020-04-06','Estilo Clásico',27,'',0,15000.00),(129,'2020-04-04','Estilo Dramático',17,'',0,8000.00),(1117,'2021-05-07','Híper romántico',14,'',0,15000.00);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `vestido_acc`
--

LOCK TABLES `vestido_acc` WRITE;
/*!40000 ALTER TABLE `vestido_acc` DISABLE KEYS */;
INSERT INTO `vestido_acc` VALUES (1,'CORTE RECTO','Tul','Amarillo',10,'2022-01-01'),(2,'CORTE IMPERIO','Tul','Rosa',15,'2022-01-01'),(3,'CINTURA ALTA','Saten','Azul',2,'2022-01-01'),(4,'VESTIDO TUBO','Terciopelo','Azul',3,'2022-01-01'),(5,'VESTIDO CANESU','Seda','Verde',20,'2022-01-01'),(6,'VESTIDO DE TUNICA','Seda','Azul',5,'2022-01-01'),(7,'VESTIDO ABLUSADO','Terciopelo','Verde',14,'2022-01-01'),(8,'VESTIDO DE CIERRE ASIMeTRICO','Terciopelo','Amarillo',6,'2022-01-01'),(9,'Estilo Clasico','Crepe','Verde',7,'2022-01-01'),(10,'Estilo Sofisticado','Terciopelo','Verde',8,'2022-02-01'),(11,'Estilo Romantico','Crepe','Verde',0,'2022-02-01'),(12,'Estilo Creativo','Saten','Naranja',1,'2022-02-01'),(13,'Estilo Dramatico','Bordado','Negro',12,'2022-02-01'),(14,'Estilo Seductor','Saten','Purpura',15,'2022-02-01'),(15,'Blanco brocado','Saten','Rosa',8,'2021-01-01'),(16,'Flores bordadas','Rayon','Rosa',6,'2021-01-01'),(17,'Verde esmeralda','Terciopelo','Verde',7,'2021-01-01'),(18,'Blanco bordado','Bordado','Blanco',5,'2021-01-01'),(19,'Minimalismo de lujo','Terciopelo','Verde',19,'2021-01-01'),(20,'Efecto naked','Saten','Purpura',2,'2021-01-01'),(21,'Efecto degradado','Rayon','Azul',3,'2021-02-01'),(22,'Encaje blanco','Crepe','Blanco',4,'2021-02-01'),(23,'Delicado y romantico','Bordado','Negro',6,'2021-02-01'),(24,'La magia de la cola','Seda','Naranja',7,'2021-02-01'),(25,'Brocado y bordado','Bordado','Rosa',9,'2021-02-01'),(26,'Tul y pedreria','Tul','Amarillo',18,'2021-02-01'),(27,'De princesa','Seda','Azul',4,'2021-06-01'),(28,'Hiper romantico','Rayon','Celeste',0,'2021-06-01'),(29,'Con mensaje','Bordado','Naranja',5,'2021-06-01'),(30,'Rojo Valentino','Seda','Rojo',8,'2021-06-01');
/*!40000 ALTER TABLE `vestido_acc` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-19 11:46:19

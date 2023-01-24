USE rent_runway;
/* CREACION DE TABLA DE AUDITORIA DE EVENTOS DE LAS TABLAS MAS IMPORTANTES QUE SON:
-- PEDIDOS
-- SUSCRIPCIONES
-- VENTAS */

drop table if  exists LOG_audita_eventos ;

CREATE TABLE IF NOT EXISTS LOG_audita_eventos 
(
ID_LOG INT AUTO_INCREMENT PRIMARY key,
ACCION VARCHAR(15) ,
NOMBRE_TABLA VARCHAR(70) ,
USUARIO VARCHAR(100) , 
FECHA_ACCION datetime
)
;

SELECT * FROM LOG_audita_eventos;


/* Trigger  a la tabla pedidos
 Funcion :es dejar registrado los eventos de insercion que se realicen a la misma , despues de terminar el proceso*/
 -- Nombre del trigger TRG_LOG_PEDIDOS

DROP TRIGGER TRG_LOG_PEDIDOS;

DELIMITER //
CREATE TRIGGER TRG_LOG_PEDIDOS_INSERT AFTER INSERT ON pedidos
FOR EACH ROW 
BEGIN
INSERT INTO log_audita_eventos (ACCION , NOMBRE_TABLA , USUARIO,FECHA_ACCION)
VALUES ( 'INSERT' , 'pedidos' ,CURRENT_USER() , NOW());
END//
DELIMITER ;

-- PRUEBAS DE INSERCION

SELECT * FROM PEDIDOS;

insert into pedidos
(FECHA_PEDIDO,FECHA_DESPACHO,DIRECCION_ENTREGA,TIPO_PEDIDO,ID_CLIENTE,ID_FC)
values
('2020/08/20','2020/09/25','AV. 25 DE MAYO NO 18',1,1,100),
('2020/08/20','2020/09/25','AV. 25 DE MAYO NO 19',1,1,100);

-- llamado tabla log_audita_eventos

SELECT * FROM log_audita_eventos;

/* Trigger a la tabla pedidos 
Funcion: llevar el registro de todas las acciones de borrado de registro , antes de que se ejeuten los mismos
Nombre del trigger :TRG_LOG_PEDIDOS_DELETE*/
Drop trigger TRG_LOG_PEDIDOS_DELETE;

DELIMITER //
CREATE TRIGGER TRG_LOG_PEDIDOS_DELETE before DELETE ON pedidos
FOR EACH ROW 
BEGIN
INSERT INTO log_audita_eventos (ACCION , NOMBRE_TABLA , USUARIO,FECHA_ACCION)
VALUES ( 'DELETE' , 'pedidos' ,CURRENT_USER() , NOW());
END//
DELIMITER ;

SELECT * FROM PEDIDOS;

DELETE FROM pedidos WHERE ID_PEDIDOS=35;

SELECT * FROM log_audita_eventos;

/* Trigger a la tabla pedidos
Funcion : llevar el registro de todas las acciones de modificacion de registro , despues de que se ejeuten los mismos
Nombre del trigger :TRG_LOG_PEDIDOS_UPDATE*/

DELIMITER //
CREATE TRIGGER TRG_LOG_PEDIDOS_UPDATE AFTER UPDATE ON pedidos
FOR EACH ROW 
BEGIN
INSERT INTO log_audita_eventos (ACCION , NOMBRE_TABLA , USUARIO,FECHA_ACCION)
VALUES ( 'UPDATE' , 'pedidos' ,CURRENT_USER() , NOW());
END//
DELIMITER ;

SELECT * FROM PEDIDOS;

UPDATE pedidos SET DIRECCION_ENTREGA = 'XXXXXXXXXXXXXXXXXXX'
WHERE ID_PEDIDOS= 2;

SELECT * FROM log_audita_eventos;



/*CREACION DE TABLAS DE AUDITORIAS PARA CONTROLAR 
LAS CLASIFICACIONES DE LA TABLA DE PROVEEDORES */

drop table if  exists LOG_AUDITA_CLAS_PROV;
CREATE TABLE IF NOT EXISTS LOG_AUDITA_CLAS_PROV
(
ID_LOG INT AUTO_INCREMENT PRIMARY KEY,
ID_CLASIFICACION int NOT NULL ,
CLASE varchar(50) NOT NULL,-- CAMPONUEVO_CAMPOANTERIOR VARCHAR(N)
DESCRIPCION  varchar(400) NOT NULL,
ACCION VARCHAR(10),
USUARIO VARCHAR(100) ,
FECHA_ACCION DATETIME 
)
;

select * from LOG_AUDITA_CLAS_PROV;



/* Trigger a la tabla clasificacion_prov
Funcion : llevar el registro de todas las acciones de insercion de registro , despues de que se ejeuten los mismos
Nombre del trigger :TRG_LOG_CLAS_PROV*/

DROP TRIGGER TRG_LOG_CLAS_PROV;

DELIMITER //
CREATE TRIGGER TRG_LOG_CLAS_PROV
AFTER INSERT ON clasificacion_prov
FOR EACH ROW 
BEGIN
INSERT INTO log_audita_clas_prov
(ID_CLASIFICACION,
CLASE,
DESCRIPCION, 
ACCION,
USUARIO,
FECHA_ACCION
)
VALUES (NEW.ID_CLASIFICACION,NEW.CLASE ,NEW.DESCRIPCION,
'INSERT' ,CURRENT_USER() , NOW());
END//
DELIMITER ;

select * from clasificacion_prov;

insert into clasificacion_prov
(CLASE,DESCRIPCION)
values
('Bienes Raices','se dedica a fabricar de inmuebles'),
('Servicios vas','Ofrece productos intangibles');

select * from log_audita_clas_prov;

/* trigger delete before */

/* Trigger a la tabla clasificacion_prov
Funcion : llevar el registro de todas las acciones de borrado de registro , despues de que se ejeuten los mismos
Nombre del trigger :TRG_LOG_CLAS_PROV_DELETE*/


drop trigger TRG_LOG_CLAS_PROV_DELETE;

DELIMITER //
CREATE TRIGGER TRG_LOG_CLAS_PROV_DELETE AFTER DELETE ON clasificacion_prov
FOR EACH ROW 
BEGIN
INSERT INTO log_audita_clas_prov (ACCION , NOMBRE_TABLA , USUARIO,FECHA_ACCION)
VALUES ( 'DELETE' , 'clasificacion_prov' ,CURRENT_USER() , NOW());
END//
DELIMITER ;

select * from clasificacion_prov;

DELETE FROM clasificacion_prov
where ID_CLASIFICACION =1;

-- TIENE RESTRICCIONES POR PRIMARY KEY, NO ME PERMITE ELIMINAR

/* Trigger a la tabla clasificacion_prov
Funcion : llevar el registro de todas las acciones de modificacion de registro , antes de que se ejeuten los mismos
Nombre del trigger :TRG_LOG_CLAS_PROV_UPDATE*/

drop trigger TRG_LOG_CLAS_PROV_UPDATE
DELIMITER //
CREATE TRIGGER TRG_LOG_CLAS_PROV_UPDATE BEFORE UPDATE ON clasificacion_prov
FOR EACH ROW 
BEGIN
INSERT INTO log_audita_clas_prov (ID_CLASIFICACION,CLASE,DESCRIPCION,
ACCION , USUARIO,FECHA_ACCION)
VALUES (
CONCAT('',OLD.ID_CLASIFICACION,'',NEW.ID_CLASIFICACION),
CONCAT('',OLD.CLASE,'',NEW.CLASE),
CONCAT('',OLD.DESCRIPCION,'',NEW.DESCRIPCION),
'UPDATE' ,
CURRENT_USER() ,
 NOW());
END//
DELIMITER ;

-- PRUEBAS

SELECT * FROM clasificacion_prov;

UPDATE clasificacion_prov SET CLASE = 'EXP'
WHERE ID_CLASIFICACION = 5;

select * from log_audita_clas_prov;




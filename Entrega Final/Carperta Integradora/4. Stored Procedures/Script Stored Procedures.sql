use rent_runway;

-- Insercion de registros tabla clasificacion_prov
-- Nombre del stored procedures = SP_insercion_clas_prov
-- Llamada al procedimiento
call SP_insercion_clas_prov(29, 'Europa', 'Premiunm');
select * from clasificacion_prov ;

Drop procedure if exists SP_insercion_clas_prov;

delimiter $$
create procedure SP_insercion_clas_prov
(in ID_clasificacion_parametro int,
in CLASE_parametro varchar (50),
in DESCRIPCION_parametro varchar (400)
)
begin
insert into clasificacion_prov (
ID_CLASIFICACION,
CLASE,
DESCRIPCION)
value (
id_clasificacion_parametro,
clase_parametro,
descripcion_parametro);-- log time
end $$
Delimiter;


-- Ordenamiento de la tabla cliente
-- Nombre del stored procedures = SP_Ordenar_Cliente
-- Llamada al procedimiento
set @PARAM_ORDER = 'nombre'; -- cualquier columna
set @PARAM_ASC_DESC = 'asc'; -- asc , desc
call SP_ORDENAR_CLIENTE(@PARAM_ORDER, @PARAM_ASC_DESC);
select @PARAM_ORDER, @PARAM_ASC_DESC;


drop procedure if exists SP_ORDENAR_CLIENTE ;

DELIMITER //
 CREATE PROCEDURE SP_ORDENAR_CLIENTE 
 (INOUT PARAM_ORDER VARCHAR(32),
 INOUT PARAM_ASC_DESC VARCHAR(32))
 BEGIN
 SET @t1 = CONCAT('SELECT * FROM cliente ORDER BY',' ',PARAM_ORDER,' ',PARAM_ASC_DESC);
 PREPARE param_stmt FROM @t1;
 EXECUTE param_stmt;
 DEALLOCATE PREPARE param_stmt;
 END //
 DELIMITER ;
 
 

-- Ordenamiento de la tabla Proveedores
-- Nombre del stored procedures = SP_Ordenar_Proveedores
-- Llamada al procedimiento

set @PARAM_ORDER = 'razon_social'; -- cualquier columna
set @PARAM_ASC_DESC = 'asc'; -- asc o desc
call SP_ORDENAR_proveedores(@PARAM_ORDER, @PARAM_ASC_DESC);
select @PARAM_ORDER, @PARAM_ASC_DESC;


drop procedure if exists SP_Ordenar_Proveedores

DELIMITER //
 CREATE PROCEDURE SP_Ordenar_Proveedores 
 (INOUT PARAM_ORDER VARCHAR(32),
 INOUT PARAM_ASC_DESC VARCHAR(32))
 BEGIN
 SET @t1 = CONCAT('SELECT * FROM proveedores ORDER BY',' ',PARAM_ORDER,' ',PARAM_ASC_DESC);
 PREPARE param_stmt FROM @t1;
 EXECUTE param_stmt;
 DEALLOCATE PREPARE param_stmt;
 END //

-- Filtrar los vestidos por color de la tabla vestido_acc
-- Nombre del stored procedures = sp_color_vestido
-- Llamada al procedimiento
 call sp_color_vestido('rosa');-- ejemplos : Amarillo, azul,verde
  
drop procedure if exists sp_color_vestido;

 DELIMITER $$
 CREATE PROCEDURE sp_color_vestido
 (IN color_vestido VARCHAR(255))
 BEGIN
 SELECT *FROM vestido_acc
 WHERE color = color_vestido;
 END$$
 DELIMITER ;
 
 
-- contar los vestidos de dos colores diferentes de la tabla vestido_acc
-- Nombre del stored procedures = SP_contarvestidos
-- Llamada al procedimiento
set @cantidad = 0;
call SP_contarvestidos('amarillo', 'rosa', @cantidad); -- ejemplos : azul,verde
select @cantidad;

-- prueba del procedimiento

select  color , count(color) as cantidad from vestido_acc
 where color='amarillo' or color='rosa'
 group by color ;
 
 
 drop procedure if exists SP_contarvestidos;

DELIMITER $$
CREATE PROCEDURE SP_contarvestidos
(IN color_vestido1  VARCHAR(25),
IN color_vestido2  VARCHAR(25),
OUT cantidad INT)
BEGIN
SELECT count(ID_VESTIDOS)INTO cantidad
FROM vestido_acc
WHERE COLOR = color_vestido1 or COLOR = color_vestido2 ;
END$$
DELIMITER ;

 
 
 -- contar los vestidos de dos colores diferentes y desagregar la cantidad de cada color de la tabla  vestido_acc
 -- Nombre del stored procedures = SP_contarvestidos1
 -- Llamada al procedimiento
set @cantidad1 = 0;
set @cantidad2 = 0;
call SP_contarvestidos1('amarillo', 'rosa', @cantidad1, @cantidad2);-- ejmplos:azul,verde
select @cantidad1 as 'amarillo', @cantidad2 as 'rosa'; -- azul,verde

-- prueba del procedimiento

select  color , count(color) as cantidad from vestido_acc
 where color='amarillo' or color='rosa'
 group by color ;

drop procedure if exists  SP_contarvestidos1;

DELIMITER $$
CREATE PROCEDURE SP_contarvestidos1
(IN color_vestido1  VARCHAR(25),
IN color_vestido2  VARCHAR(25),
OUT cantidad1 INT,
out cantidad2 int)
BEGIN
(SELECT count(ID_VESTIDOS)INTO cantidad1
FROM vestido_acc
WHERE COLOR = color_vestido1);  
(SELECT count(ID_VESTIDOS)INTO cantidad2
FROM vestido_acc
WHERE COLOR = color_vestido2) ;
END$$
DELIMITER ;

  -- Updates en columna DESCRIPCION en la tabla suscripciones table.
  -- Nombre del stored procedures = SP_update_suscripciones
 -- Llamada al procedimiento 
  call SP_update_suscripciones('Activo', 41); 

 select * from suscripciones LIMIT 10;
 
Drop procedure if exists SP_update_suscripciones;

 DELIMITER $$
 CREATE PROCEDURE SP_update_suscripciones
 (IN descripcion_parametro varchar (100),-- activo , inactivo, suspendido
 IN id_suscripcion_parametro int) -- id de la tabla autoincremental 
 BEGIN
 UPDATE suscripciones set DESCRIPCION  = descripcion_parametro
 WHERE ID_SUSCRIPCION = id_suscripcion_parametro;
 END$$
 DELIMITER ;
 

 
 




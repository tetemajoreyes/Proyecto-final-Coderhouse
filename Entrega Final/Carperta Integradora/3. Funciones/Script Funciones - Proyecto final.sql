use rent_runway;

/* Funcion con 3 parametros de entrada, y con llama a la tabla suscripciones 
Nombre de la funcion : FN_calculo_costonew
Fin: calcular el nuevo costo de los diferentes planes de las suscripciones */

drop function if exists FN_calculo_costonew
delimiter $$
create function FN_calculo_costonew
(p_plan varchar (100),p_inc decimal (4,2),p_idsusc int)
returns int
deterministic
begin
declare costonew int;
set costonew =
(select distinct costo * p_inc as costonew
from suscripciones
where plan = p_plan and id_suscripcion= p_idsusc);
return costonew;
end $$
delimiter ;

select FN_calculo_costonew('basico', 1.10, 36) as 'Costo Nuevo';

select * from suscripciones;
/*----------------------------------------------------------------------------------------------------------------*/

/*Utilizar funcion concat con una variable
Nombre de la funcion: fn_proveedor
Fin:Clasificar a los proveedores  VIP*/

drop function if exists FN_proveedor ;

delimiter //
 CREATE FUNCTION FN_proveedor 
 (P CHAR(20)) 
RETURNS CHAR(50)
DETERMINISTIC
RETURN CONCAT('Proveedor, ',P,' ,vip');
//
delimiter ;

select FN_proveedor ('Rodriguez') as VIP;

/*--------------------------------------------------------------------------------------------------------------------------*/

/* Sin uso de parametro de entrada , uso de funcion count y llamado a tabla clientes
Nombre de la funcion: FN_TOTAL_clientes
Fin: calcular el  total de clientes*/

Drop function FN_TOTAL_clientes;

DELIMITER &&
CREATE FUNCTION FN_TOTAL_clientes ()
RETURNS INT 
DETERMINISTIC 
BEGIN 
DECLARE  TOTAL_Clientes INT;
SELECT COUNT(*) INTO TOTAL_Clientes FROM cliente;
RETURN TOTAL_Clientes ;
END&&
DELIMITER ; 

select FN_TOTAL_clientes ()as 'Clientes totales';

/*--------------------------------------------------------------------------------------------------------------------------*/

/* Sin uso de parametro de entrada , uso de funcion sum y llamado a tabla ventas
Nombre de la funcion: FN_TOTAL_Facturado
Fin: calcular el  total facturado*/

drop function if exists FN_TOTAL_Facturado;

DELIMITER &&
CREATE FUNCTION FN_TOTAL_Facturado ()
RETURNS INT 
DETERMINISTIC 
BEGIN 
DECLARE  TOTAL_FC INT;
SELECT sum(Monto_Facturado) INTO TOTAL_FC FROM ventas;
RETURN TOTAL_FC ;
END&&
DELIMITER ; 

select FN_TOTAL_Facturado () as 'Total Facturado';

/*--------------------------------------------------------------------------------------------------------------------------*/

/* Uso de 3 parametros de ingreso 
Nombre de la funcion : FN_promedio
Fin: calcular promedio*/

drop function if exists FN_promedio;
DELIMITER $$
CREATE FUNCTION FN_promedio
( NUM1 INT , NUM2 INT ,NUM3 INT )
	RETURNS INT
	DETERMINISTIC
	BEGIN
	DECLARE Promedio INT ;
    SET Promedio = (NUM1 + NUM2) / NUM3;
    RETURN Promedio;
    END$$
    DELIMITER ;
    
    select FN_promedio(1, 2, 2) as Promedio;
    
    /*--------------------------------------------------------------------------------------------------------------------------*/
    
   
/* Nombre de la funcion:f_tipodeuda
Fin : Clasificacion de las deudas segun el monto*/

 drop function if exists f_tipodeuda;
delimiter //
 create function FN_tipodeuda(
   saldo int)
   returns varchar(20)
   deterministic
 begin
case 
    when saldo<9000 then
      return 'deuda baja';
    when saldo>=9000 and saldo<100000 then
      return 'deuda media';
    when saldo>=100000 then
      return 'deuda alta';
  end case; 
 end //
 delimiter ;

 
 select fn_tipodeuda (8000);
 select RAZON_SOCIAL,saldo,f_tipodeuda(saldo)
 from proveedores;
 

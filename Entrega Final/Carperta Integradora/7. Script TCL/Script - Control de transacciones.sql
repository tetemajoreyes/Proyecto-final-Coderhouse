use rent_runway;

select @@autocommit;

/* sacarlo del automatico*/
set @@autocommit=0;


/* definicion de limite de la transaccion de borrado*/
start transaction;

/* accion DML delete de los id 1 y 2 en la tabla tipo_envio */

delete from tipo_envio
where ID_TIPO_ENVIO = 1 or ID_TIPO_ENVIO = 2;

select * from tipo_envio;

/* vuelta atras de la transaccion */
rollback;

/* transaccion de eliminacion registro 1*/

delete from tipo_envio
where ID_TIPO_ENVIO = 1;

/* confirmacion de la transaccion*/
commit;

/*==================================================================================================================================*/


/* definicion de limite de la transaccion de insercion */
start transaction;

select * from tipo_pedido;

/*insercion de datos a la tabla tipo_pedido*/

insert into tipo_pedido
(ID_TIPO_PEDIDO,CLASE,DESCRIPCION)
values
(37,'Condicional','Activo'),
(38,'En firme','Activo'),
(39,'Reposicion','Activo'),
(40,'Consumo extraordinario','Activo'),
(41,'Normal','Activo');

/*primer lote de insercion*/

savepoint lote1;

select * from tipo_pedido;

insert into tipo_pedido
(ID_TIPO_PEDIDO,CLASE,DESCRIPCION)
values
(42,'Programado','Activo'),
(43,'Abiertos','Activo'),
(44,'En linea','Activo'),
(45,'Standar','Inactivo'),
(46,'Recurrente','Inactivo');

/* segundo lote de insercion */
savepoint lote2;

select * from tipo_pedido;


/* volver atras hasta el primer lote */ 
rollback to savepoint lote1;

/* eliminacion de primer savepoint*/
release savepoint lote1;

/* confirmacion de las transacciones*/
commit;
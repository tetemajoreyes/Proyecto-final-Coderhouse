USE rent_runway;
/* creacion de vistas copiando todo el contenido de otra tabla. La misma contiene el detalle de todos los clientes */

-- Nombre de la Vista :vw_catalogo_cliente

create OR REPLACE view vw_catalogo_cliente
as select * from cliente;

select * from vw_catalogo_cliente ;


/* creacion de vistas copiando solo 2 columnas de la tabla clientes,
 la misma contiene el listado completo de las direcciones de los clientes */
 
-- Nombre de la Vista : vw_direcciones_cl

create or replace view  vw_direcciones_cl
(Calle , Pais)
as select DIRECCION,PAIS
from cliente;

select *  from vw_direcciones_cl;

/* Creacion de vista TOP 10 deuda con proveedores, creada apartir de la tabla proveedores */

-- Nombre de la Vista : vw_top10_deuda

Create or replace view vw_top10_deuda
as
select iD_PROV ,RAZON_SOCIAL as proveedor ,saldo as DEUDA
FROM proveedores 
order by SALDO DESC
limit 10;

select * from vw_top10_deuda;


/* Creacion de vista con filtro.
Contine la deuda con los primeros 10 proveedores que finalizan razon social con "Z" y tienen saldo mayor a 40000 */
/*Nombre de la Vista :vw_zdeuda */

create or replace view vw_zdeuda
AS
select iD_PROV ,RAZON_SOCIAL as NOMBRE ,saldo as DEUDA
FROM proveedores 
where RAZON_SOCIAL like '%z' and saldo > 40000
order by SALDO DESC
limit 10;

SELECT * FROM vw_zdeuda;

/* creacion de tabla con uso de UNION , se creo un diaccionario con las clasificaciones existentes de proveedor, pedidos y envios*/
-- Nombre de la vista: diccionario 

create or replace view vw_diccionario
As
select ID_CLASIFICACION as ID ,CLASE,DESCRIPCION
from clasificacion_prov
union
select ID_TIPO_ENVIO as ID ,CLASE ,DESCRIPCION 
from tipo_envio
union
select ID_TIPO_PEDIDO as id ,CLASE ,DESCRIPCION
from tipo_pedido 
order by id;

select * from vw_diccionario;

/* Creacion de tablas con funcion de agregacion Sum . Contienen las ventas de 2021*/
-- Nombre de la vista:vw_ventas2021

create or replace view vw_ventas2021
as
select Id_factura ,fecha_vta , sum(Monto_Facturado) as facturacion
from ventas
where fecha_vta between '2020-12-31' and '2022-01-01'
group by Id_factura ,fecha_vta
order by facturacion desc;

select * from vw_ventas2021;

/* Creacion de vistas con funcion de agregacion Count. Contiene los pedidos por clientes - */
-- Nombre de la vista:vw_pedido_cl

create or replace view vw_pedido_cl
As
select ID_CLIENTE , count(ID_PEDIDOS) as 'Cantidad de pedidos'
from pedidos
group by ID_CLIENTE
order by count(ID_PEDIDOS)desc ;

select * from vw_pedido_cl;

/* Creacion de vista con uso de having. Contiene los clientes que tienen mas de un pedido */
-- Nombre de la vista : vw_pedidotop

create or replace view vw_pedidotop
as
select ID_CLIENTE , count(ID_PEDIDOS) as 'Cantidad de pedidos'
from pedidos
group by ID_CLIENTE
having count(ID_PEDIDOS)  >1
order by count(ID_PEDIDOS);

select * from vw_pedidotop;


/*creacion de vistas con uso de lEFT Join -  Contiene los clientes que NO tienen pedidos*/
-- nombre de la vista:vw_clsinpedidos 

create or replace view vw_clsinpedidos
as
SELECT C.ID_DNI , 
concat(C.NOMBRE,' ',C.APELLIDO) as 'NOMBRE COMPLETO',
count(P.ID_PEDIDOS)as 'CANTIDAD DE PEDIDOS'
FROM CLIENTE AS C
LEFT JOIN PEDIDOS AS P
ON (C.ID_DNI=P.ID_CLIENTE)
GROUP BY C.ID_DNI
HAVING count(P.ID_PEDIDOS)= 0 ;

select * from vw_clsinpedidos;

/* Creacion de vistas con use de lEFT Join. Contiene la clasificacion de pedidos mas utilizadas */
-- Nombre de la vista :vw_clmasusada

create or replace view vw_clmasusada
as
SELECT P.TIPO_PEDIDO , COUNT(P.ID_PEDIDOS) AS 'CANTIDAD DE PEDIDOS',
T.CLASE,T.DESCRIPCION
FROM PEDIDOS AS P
 LEFT JOIN  TIPO_PEDIDO AS T
 ON (T.ID_TIPO_PEDIDO = P.TIPO_PEDIDO)
WHERE T.DESCRIPCION ='ACTIVO'
GROUP BY P.TIPO_PEDIDO
ORDER BY COUNT(P.ID_PEDIDOS)ASC ;

select * from vw_clmasusada;

/*creacion de vista con uso de  sub consulta - 
Necesitamos saber cuanto compro el cliente Eloisa Paez*/
-- Nombre de la vista: vwfacPaez

create or replace view vwfacPaez
as
select id_factura , sum(Monto_Facturado)
from ventas
where id_factura in
(select id_fc from pedidos where id_cliente=3) 
group by id_factura;

select * from vwfacPaez;




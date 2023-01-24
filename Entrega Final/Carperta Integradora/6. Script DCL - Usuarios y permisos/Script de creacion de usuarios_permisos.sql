use mysql;
select * from user;

/* Creacion del primer usuario con permiso de solo lectura
Nombre del usuario: 'usuariouno'@'localhost' */

create user if not exists 'usuariouno'@'localhost'
identified by 'usuariouno';

select * from user;

/*creacion de permiso solo lectura al user 'usuariouno'@'localhost'*/
grant select on rent_runway.* to 'usuariouno'@'localhost';

/*=============================================================================================================================*/

/* creacion del segundo usuario con permisode solo lectura 
Nombre del usuario : 'usuariodos'@'localhost'*/

create user if not exists 'usuariodos'@'localhost'
identified by 'usuariodos';

select * from user;

/*creacion de permiso solo lectura, insercion y modificacion de datos y  al user 'usuariodos'@'localhost'*/
 grant select,insert,update on rent_runway.* to 'usuariodos'@'localhost';
 
 
 /*===========================================================================================================================*/
 
 /*creacion de tercer usuario con permisos sobre algunas tablas del esquema*/
 
 create user if not exists 'usuariotres'@'localhost'
 identified by 'usuariotres';
 
 /* Otorgar permisos de solo lectura sobre las tablas pedidos,envio y a la vista vw_catalogo_cliente */
 
 grant select on rent_runway.pedidos to 'usuariotres'@'localhost';
 grant select on rent_runway.envios to 'usuariotres'@'localhost';
 grant update on rent_runway.vw_catalogo_cliente to 'usuariotres'@'localhost';
 
 
 /* modificar la contraseña del tercer usuario*/
ALTER USER 'usuariotres'@'localhost'  IDENTIFIED BY 'usuario3';
flush privileges;

 /*=========================================================================================================================*/
 /* creacion de cuarto usuario con acceso full*/
 
 create user if not exists 'usuariofull'@'localhost'
 identified by 'usuariofull';
 
 select * from user;
 
 /* creacion de permisos full*/
 grant all on *.* to 'usuariofull'@'localhost';
 
 flush privileges;
 

 /*Permisos*/
show grants for 'usuariotres'@'localhost';
show grants for 'usuariodos'@'localhost';
show grants for 'usuariouno'@'localhost';
show grants for 'usuariofull'@'localhost';


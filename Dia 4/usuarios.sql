-- ########################
-- ### Dia 4 - Usuarios ###
-- ########################

use autorental;
show grants for 'empleado'@'%';
-- ### Empleado ###

create user 'empleado'@'%' identified by 'empleado1234';


-- Gestión interna de sucursales, empleados y vehículos:

grant update, select on autorental.Sucursal to 'empleado'@'%';
grant update, select on autorental.Empleado to 'empleado'@'%';
grant update, select on autorental.Vehiculo to 'empleado'@'%';

-- ### Cliente ###

create user 'cliente'@'%' identified by 'cliente1234';


-- Desarrollado por Oliver López / T.I 1097911715
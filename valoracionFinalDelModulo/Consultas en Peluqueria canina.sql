/* Punto número 1. Realice la consulta correspondiente 
para crear la tabla Perro, teniendo en cuenta 
sus claves foráneas y primarias.*/

create table perro(
    id_perro int primary key not null auto_increment,
    nombre varchar(50) not null,
    fecha_nac date,
    sexo char(1),
    dni_dueno int not null,
    foreign key(dni_dueno) 
        references dueno(dni)
        on delete cascade
        on update cascade        
);
-- Se puede convenir el sexo como 'm' para macho y 'h' para hembra.

/* Punto número 2. 
Insertar en la tabla correspondiente un nuevo animal (perro)
como paciente y el dueño asociado a ese animal.*/
insert into dueno values (33000333, 'Armando', 'Paredes', 0111533445566, 'Av. Mitre 1376, Avellaneda');
insert into perro values (1301, 'Firulais IV', '2018-12-20', 'm', 33000333);

/* Punto 7. Obtener los ingresos percibidos en Julio del 2022 */
select sum(monto)
from historial
where fecha like '2022_07%';

/* Punto 9. Escriba una consulta que permita 
actualizar la dirección de un dueño. 
Su nueva dirección es Libertad 123 */
update dueno
set domicilio = 'Libertad 123'
where dni = 33000333;

/* Punto 12. Obtener todos los perros 
de sexo “Macho” nacidos entre 2020 y 2022. */
select nombre, id_perro, sexo
from perro
where sexo = 'm' and fecha_nac between '2020-01-01' and '2022-12-31';
create database peluqueria_canina;
use peluqueria_canina;

create table dueno(
    dni int primary key not null,
    nombre varchar(70) not null,
    apellido varchar(70) not null,
    telefono varchar(30),
    domicilio varchar(100)
);

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

create table historial(
    id_historial int primary key not null auto_increment,
    fecha datetime not null,
    perro int not null,
    descripcion text,
    monto int not null,
    foreign key (perro) 
        references perro(id_perro)
        on delete cascade
        on update cascade
);

/* Llenado de las tablas */
insert into dueno
values
(27000159, 'Jeremías', 'Pérez', '0351-151234567', 'Güemes 127'),
(12000159, 'Yamil', 'Gutiérrez', '3519876543', 'Los Álamos 25'),
(14656987, 'Ricardo', 'Montaner', '011-154564561', 'Av. Rivadavia 1402 CABA');

insert into perro (nombre, fecha_nac, sexo, dni_dueno)
values
('Tobi', '2021-05-15', 'm', 27000159),
('Tronchatoro', '2019-02-25', 'h', 14656987),
('Daisy', '2022-12-14', 'h', 14656987),
('Roky', '2015-10-21', 'm', 12000159),
('Terminator', '2020-09-23', 'm', 27000159);

insert into historial (fecha, perro, descripcion, monto)
values
('2022-05-12', 1, 'Degradé', 1500),
('2022-07-24', 2, 'Curación', 500),
('2022-07-26', 3, 'Vacunación contra Covid canino', 4000),
('2022-07-30', 4, 'Corte', 1500),
('2022-08-03', 5, 'Corte', 1500);
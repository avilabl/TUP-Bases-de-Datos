CREATE DATABASE clase2ejBaseHotel;

USE clase2ejBaseHotel;

CREATE TABLE huespedes (
  huesped_id integer PRIMARY KEY,
  dni varchar(255),
  nombre varchar(255),
  apellido varchar(255),
  direccion varchar(255),
  fecha_nac date,
  telefono integer
);

CREATE TABLE habitaciones (
  habitacion_id integer PRIMARY KEY,
  piso integer,
  capacidad integer
);

CREATE TABLE reservas (
  reservas_id integer PRIMARY KEY,
  habitacion_id integer,
  huesped_id integer,
  fecha_ingreso date,
  fecha_egreso date,
  id_forma_pago integer
);

CREATE TABLE formas_pagos (
  id_forma_pago integer PRIMARY KEY,
  tipo_pago varchar(255)
);

ALTER TABLE reservas ADD FOREIGN KEY (habitacion_id) REFERENCES habitaciones (habitacion_id);

ALTER TABLE reservas ADD FOREIGN KEY (huesped_id) REFERENCES huespedes (huesped_id);

ALTER TABLE reservas ADD FOREIGN KEY (id_forma_pago) REFERENCES formas_pagos (id_forma_pago);

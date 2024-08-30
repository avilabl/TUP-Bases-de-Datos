CREATE DATABASE clase2ej5turismo;

USE clase2ej5turismo;

CREATE TABLE clientes (
  cliente_id integer PRIMARY KEY,
  DNI varchar(255),
  nombre varchar(255),
  apellido varchar(255),
  direccion varchar(255),
  telefono integer
);

CREATE TABLE paq_turisticos (
  codigo_paq integer PRIMARY KEY,
  destino varchar(255),
  duracion integer,
  precio integer
);

CREATE TABLE reservas (
  reservas_id integer PRIMARY KEY,
  fecha_reserva date,
  cantidad_personas integer,
  estado_reserva varchar(20),
  codigo_paq integer,
  cliente_id integer
);

ALTER TABLE reservas ADD FOREIGN KEY (codigo_paq) REFERENCES paq_turisticos (codigo_paq);

ALTER TABLE reservas ADD FOREIGN KEY (cliente_id) REFERENCES clientes (cliente_id);

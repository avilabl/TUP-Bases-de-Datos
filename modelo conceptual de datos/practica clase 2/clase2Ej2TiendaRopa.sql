CREATE DATABASE clase2ej2_tiendaRopa;

USE clase2ej2_tiendaRopa;

CREATE TABLE productos (
  id_producto integer PRIMARY KEY,
  nombre varchar(30),
  talla varchar(10),
  color varchar(20),
  precio float
);

CREATE TABLE clientes (
  id_cliente integer PRIMARY KEY,
  nombre varchar(30),
  apellido varchar(30),
  email varchar(30),
  telefono integer
);

CREATE TABLE ventas (
  id_venta integer PRIMARY KEY,
  fecha_venta date,
  cantidad integer,
  forma_pago integer,
  id_cliente integer,
  id_producto integer
);

ALTER TABLE ventas ADD FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente);

ALTER TABLE ventas ADD FOREIGN KEY (id_producto) REFERENCES productos (id_producto);

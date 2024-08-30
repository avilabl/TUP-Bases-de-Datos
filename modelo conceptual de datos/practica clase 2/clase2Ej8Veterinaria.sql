CREATE DATABASE clase2ej8Veterinaria;

USE clase2ej8Veterinaria;

CREATE TABLE clientes (
  cliente_id integer PRIMARY KEY,
  nombre varchar(255),
  apellido varchar(255),
  direccion varchar(255),
  telefono integer
);
  
CREATE TABLE mascotas (
  mascota_id integer PRIMARY KEY,
  nombre varchar(255),
  edad integer,
  direccion varchar(255),
  cliente_id integer
);

CREATE TABLE veterinarios (
  veterinario_id integer PRIMARY KEY,
  matricula varchar(255),
  nombre varchar(255),
  apellido varchar(255),
  especialidad varchar(255)
);
  
CREATE TABLE citas (
  cita_id integer PRIMARY KEY,
  fecha_cita datetime,
  veterinario_id integer,
  mascota_id integer
);

ALTER TABLE citas ADD FOREIGN KEY (veterinario_id) REFERENCES veterinarios (veterinario_id);

ALTER TABLE citas ADD FOREIGN KEY (mascota_id) REFERENCES mascotas (mascota_id);

ALTER TABLE mascotas ADD FOREIGN KEY (cliente_id) REFERENCES clientes (cliente_id);

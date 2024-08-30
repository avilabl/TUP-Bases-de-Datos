CREATE DATABASE clase2ej1_biblioteca;

USE clase2ej1_biblioteca;

CREATE TABLE libros (
  id_libro integer PRIMARY KEY,
  titulo varchar(30),
  autor varchar(30),
  anio_publicacion integer
);

CREATE TABLE usuarios (
  id_usuario integer PRIMARY KEY,
  nombre varchar(30),
  apellido varchar(30),
  direccion varchar(30),
  telefono integer
);

CREATE TABLE prestamos (
  id_prestamo integer PRIMARY KEY,
  fecha_prestamo date,
  fecha_devolucion date,
  estado_prestamo integer,
  id_usuario integer,
  id_libro integer
);

ALTER TABLE prestamos ADD FOREIGN KEY (id_usuario) REFERENCES usuarios (id_usuario);

ALTER TABLE prestamos ADD FOREIGN KEY (id_libro) REFERENCES libros (id_libro);

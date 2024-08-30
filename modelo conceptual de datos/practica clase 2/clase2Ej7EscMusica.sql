CREATE DATABASE clase2ej7EscMusica;

USE clase2ej7EscMusica;

CREATE TABLE profesores (
  profesor_id integer PRIMARY KEY,
  nombre varchar(255),
  apellido varchar(255),
  especialidad varchar(255),
  id_aula integer
);

CREATE TABLE estudiantes (
  estudiante_id integer PRIMARY KEY,
  nombre varchar(255),
  apellido varchar(255),
  edad integer,
  direccion varchar(255)
);
  
CREATE TABLE clases (
  clase_id integer PRIMARY KEY,
  nombre_clase varchar(255),
  fecha_inscripcion date,
  profesor_id integer,
  estudiante_id integer
);

CREATE TABLE aulas(
  id_aula integer PRIMARY KEY,
  nombre varchar(255),
  ubicacion varchar(255)
  );

ALTER TABLE clases ADD FOREIGN KEY (profesor_id) REFERENCES profesores (profesor_id);

ALTER TABLE clases ADD FOREIGN KEY (estudiante_id) REFERENCES estudiantes (estudiante_id);

ALTER TABLE profesores ADD FOREIGN KEY (id_aula) REFERENCES aulas (id_aula);

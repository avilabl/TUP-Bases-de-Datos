CREATE DATABASE clase2ej4Musica;

USE clase2ej4Musica;

CREATE TABLE profesores (
  profesor_id integer PRIMARY KEY,
  nombre varchar(255),
  apellido varchar(255),
  especialidad varchar(255)
);

CREATE TABLE estudiantes (
  estudiante_id integer PRIMARY KEY,
  nombre varchar(255),
  apellido varchar(255),
  fecha_nac date,
  telefono integer
);

CREATE TABLE cursos (
  curso_id integer PRIMARY KEY,
  estudiante_id integer,
  profesor_id integer,
  nombre_curso varchar(30),
  nivel varchar(20)
);

ALTER TABLE cursos ADD FOREIGN KEY (profesor_id) REFERENCES profesores (profesor_id);

ALTER TABLE cursos ADD FOREIGN KEY (estudiante_id) REFERENCES estudiantes (estudiante_id);

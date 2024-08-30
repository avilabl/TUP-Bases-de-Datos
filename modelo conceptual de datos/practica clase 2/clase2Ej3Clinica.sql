CREATE DATABASE clase2ej3Clinica;

USE clase2ej3Clinica;

CREATE TABLE medicos (
  medico_id integer PRIMARY KEY,
  nombre varchar(255),
  apellido varchar(255),
  direccion varchar(255),
  especialidad varchar(255),
  telefono integer
);

CREATE TABLE pacientes (
  paciente_id integer PRIMARY KEY,
  nombre varchar(255),
  apellido varchar(255),
  direccion varchar(255),
  fecha_nac date,
  telefono integer
);

CREATE TABLE citas (
  cita_id integer PRIMARY KEY,
  medico_id integer,
  paciente_id integer,
  fecha_cita datetime,
  motivo varchar(255)
);

ALTER TABLE citas ADD FOREIGN KEY (medico_id) REFERENCES medicos (medico_id);

ALTER TABLE citas ADD FOREIGN KEY (paciente_id) REFERENCES pacientes (paciente_id);

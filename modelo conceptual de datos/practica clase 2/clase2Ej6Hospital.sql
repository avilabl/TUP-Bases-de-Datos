CREATE DATABASE clase2ej6Hospital;

USE clase2ej6Hospital;

CREATE TABLE medicos (
  medico_id integer PRIMARY KEY,
  nombre varchar(255),
  apellido varchar(255),
  especialidad varchar(255),
  matricula varchar(255),
  id_consultorio integer
);

CREATE TABLE pacientes (
  paciente_id integer PRIMARY KEY,
  nombre varchar(255),
  apellido varchar(255),
  fecha_nac date,
  edad integer,
  direccion varchar(255),
  telefono integer
);
  
CREATE TABLE citas (
  cita_id integer PRIMARY KEY,
  fecha_cita date,
  medico_id integer,
  paciente_id integer
);

CREATE TABLE consultorios(
  id_consultorio integer PRIMARY KEY,
  nombre varchar(255),
  direccion varchar(255)
  );

ALTER TABLE citas ADD FOREIGN KEY (medico_id) REFERENCES medicos (medico_id);

ALTER TABLE citas ADD FOREIGN KEY (paciente_id) REFERENCES pacientes (paciente_id);

ALTER TABLE medicos ADD FOREIGN KEY (id_consultorio) REFERENCES consultorios (id_consultorio);

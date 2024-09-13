CREATE DATABASE U2practicaEj2;

USE U2practicaEj2;

CREATE TABLE `calles` (
  `calle_id` integer PRIMARY KEY,
  `nombre` varchar(50),
  `legalidad_id` integer,
  `orientacion_id` integer,
  `observacion` text
);

CREATE TABLE `legalidad` (
  `legalidad_id` integer PRIMARY KEY,
  `descripcion` varchar(30)
);

CREATE TABLE `orientaciones` (
  `orientacion_id` integer PRIMARY KEY,
  `orientacion` varchar(30),
  `sentido` varchar(30)
);

CREATE TABLE `calles_bajas` (
  `calle_baja_id` integer PRIMARY KEY,
  `calle_id` integer,
  `fecha_baja` date
);

CREATE TABLE `calles_reemplazo` (
  `calle_reemplazo_id` integer PRIMARY KEY,
  `calle_id` integer,
  `fecha_reemplazo` date
);

CREATE TABLE `ordenanzas` (
  `ordenanza_id` integer PRIMARY KEY,
  `calle_baja_id` integer,
  `calle_reemplazo_id` integer
);

CREATE TABLE `historias` (
  `historia_id` integer PRIMARY KEY,
  `calle_id` integer,
  `escuela_id` integer,
  `historia` text
);

CREATE TABLE `escuelas` (
  `escuela_id` integer PRIMARY KEY,
  `nombre` varchar(50),
  `numero` integer,
  `direccion` varchar(50),
  `telefono` integer
);

ALTER TABLE `calles` ADD FOREIGN KEY (`legalidad_id`) REFERENCES `legalidad` (`legalidad_id`);

ALTER TABLE `calles` ADD FOREIGN KEY (`orientacion_id`) REFERENCES `orientaciones` (`orientacion_id`);

ALTER TABLE `ordenanzas` ADD FOREIGN KEY (`calle_baja_id`) REFERENCES `calles_bajas` (`calle_baja_id`);

ALTER TABLE `ordenanzas` ADD FOREIGN KEY (`calle_reemplazo_id`) REFERENCES `calles_reemplazo` (`calle_reemplazo_id`);

ALTER TABLE `historias` ADD FOREIGN KEY (`escuela_id`) REFERENCES `escuelas` (`escuela_id`);

ALTER TABLE `historias` ADD FOREIGN KEY (`calle_id`) REFERENCES `calles` (`calle_id`);

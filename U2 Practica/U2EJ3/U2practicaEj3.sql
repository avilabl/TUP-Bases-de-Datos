CREATE DATABASE U2practicaEj3;

USE U2practicaEj3;

CREATE TABLE `personas` (
  `persona_id` integer PRIMARY KEY,
  `cuil` varchar(30),
  `nombre` varchar(30),
  `apellido` varchar(30),
  `direccion_id` integer,
  `tel_contacto_id` integer,
  `email` varchar(30)
);

CREATE TABLE `direcciones` (
  `direccion_id` integer PRIMARY KEY,
  `calle` varchar(30),
  `numeracion` integer
);

CREATE TABLE `tel_contactos` (
  `tel_contacto_id` integer PRIMARY KEY,
  `tel_fijo` varchar(30),
  `celular` varchar(30),
  `tel_trabajo` varchar(30)
);

CREATE TABLE `demandados` (
  `demandado_id` integer PRIMARY KEY,
  `juzgado_id` integer,
  `fecha_inicio` date,
  `num_expediente` integer,
  `caratula` varchar(30),
  `tipo_causa_id` integer,
  `persona_id` integer,
  `actores_id` integer
);

CREATE TABLE `juzgados` (
  `juzgado_id` integer PRIMARY KEY,
  `denominacion` varchar(30),
  `juez` varchar(30),
  `secretario` varchar(30),
  `tel_contacto_id` integer
);

CREATE TABLE `tipos_causas` (
  `tipo_causa_id` integer PRIMARY KEY,
  `descripcion` text
);

CREATE TABLE `actores` (
  `actor_id` integer PRIMARY KEY,
  `persona_id` integer,
  `nombre_caratula` varchar(30),
  `tipo_causa_id` integer
);

CREATE TABLE `expedientes` (
  `expediente_id` integer PRIMARY KEY,
  `actor_id` integer,
  `demandado_id` integer,
  `estado_id` integer
);

CREATE TABLE `estados` (
  `estado_id` integer PRIMARY KEY,
  `descripcion` varchar(30),
  `observacion` varchar(30)
);

ALTER TABLE `personas` ADD FOREIGN KEY (`direccion_id`) REFERENCES `direcciones` (`direccion_id`);

ALTER TABLE `personas` ADD FOREIGN KEY (`tel_contacto_id`) REFERENCES `tel_contactos` (`tel_contacto_id`);

ALTER TABLE `juzgados` ADD FOREIGN KEY (`tel_contacto_id`) REFERENCES `tel_contactos` (`tel_contacto_id`);

ALTER TABLE `demandados` ADD FOREIGN KEY (`juzgado_id`) REFERENCES `juzgados` (`juzgado_id`);

ALTER TABLE `demandados` ADD FOREIGN KEY (`tipo_causa_id`) REFERENCES `tipos_causas` (`tipo_causa_id`);

ALTER TABLE `actores` ADD FOREIGN KEY (`tipo_causa_id`) REFERENCES `tipos_causas` (`tipo_causa_id`);

ALTER TABLE `expedientes` ADD FOREIGN KEY (`actor_id`) REFERENCES `actores` (`actor_id`);

ALTER TABLE `expedientes` ADD FOREIGN KEY (`demandado_id`) REFERENCES `demandados` (`demandado_id`);

ALTER TABLE `expedientes` ADD FOREIGN KEY (`estado_id`) REFERENCES `estados` (`estado_id`);

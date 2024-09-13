CREATE DATABASE u2practicaEj1a;

USE u2practicaEj1a;

CREATE TABLE `proyectos` (
  `proyecto_id` integer PRIMARY KEY,
  `descripcion` varchar(255),
  `fecha_inicio` date,
  `fecha_fin` date,
  `etapa_id` integer,
  `empleado_id` integer
);

CREATE TABLE `etapas` (
  `etapa_id` integer PRIMARY KEY,
  `detalle` varchar(255),
  `fecha_inicio` date,
  `fecha_fin` date,
  `fecha_fin_real` date,
  `observacion` varchar(255)
);

CREATE TABLE `empleados` (
  `empleado_id` integer PRIMARY KEY,
  `nro_legajo` varchar(15),
  `apellido` varchar(20),
  `nombre` varchar(20),
  `direccion_id` integer,
  `telefono` varchar(20),
  `email` varchar(30),
  `fecha_nac` date,
  `edad` integer,
  `fecha_inicio_trabajo` integer,
  `fecha_fin_trabajo` integer
);

CREATE TABLE `direcciones` (
  `direccion_id` integer PRIMARY KEY,
  `calle` varchar(30),
  `numeracion` integer
);

ALTER TABLE `proyectos` ADD FOREIGN KEY (`etapa_id`) REFERENCES `etapas` (`etapa_id`);

ALTER TABLE `empleados` ADD FOREIGN KEY (`direccion_id`) REFERENCES `direcciones` (`direccion_id`);

ALTER TABLE `proyectos` ADD FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`empleado_id`);

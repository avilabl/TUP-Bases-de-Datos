CREATE DATABASE U2practicaEj1b;

USE U2practicaEj1b;

CREATE TABLE `proyectos` (
  `proyecto_id` integer PRIMARY KEY,
  `descripcion_id` integer,
  `fecha_inicio` date,
  `fecha_fin` date,
  `empleado_id` integer
);

CREATE TABLE `descripciones` (
  `descripcion_id` integer PRIMARY KEY,
  `descripcion` varchar(15)
);

CREATE TABLE `etapas` (
  `etapa_id` integer PRIMARY KEY,
  `detalle` varchar(255),
  `fecha_inicio` date,
  `fecha_fin` date,
  `fecha_fin_real` date,
  `observacion` varchar(255)
);

CREATE TABLE `proyectos_etapas` (
  `proyecto_etapa_id` integer PRIMARY KEY,
  `etapa_id` integer,
  `proyecto_id` integer,
  `detalle_ampliado` varchar(255),
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
  `fecha_fin_trabajo` integer,
  `categoria_id` integer
);

CREATE TABLE `direcciones` (
  `direccion_id` integer PRIMARY KEY,
  `calle` varchar(30),
  `numeracion` integer
);

CREATE TABLE `categorias` (
  `categoria_id` integer PRIMARY KEY,
  `codigo` varchar(10),
  `descripcion` varchar(255)
);

ALTER TABLE `proyectos_etapas` ADD FOREIGN KEY (`proyecto_id`) REFERENCES `proyectos` (`proyecto_id`);

ALTER TABLE `proyectos_etapas` ADD FOREIGN KEY (`etapa_id`) REFERENCES `etapas` (`etapa_id`);

ALTER TABLE `proyectos` ADD FOREIGN KEY (`descripcion_id`) REFERENCES `descripciones` (`descripcion_id`);

ALTER TABLE `proyectos` ADD FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`empleado_id`);

ALTER TABLE `empleados` ADD FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`categoria_id`);

ALTER TABLE `empleados` ADD FOREIGN KEY (`direccion_id`) REFERENCES `direcciones` (`direccion_id`);

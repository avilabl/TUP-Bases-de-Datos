CREATE DATABASE practicaAeropuerto;

USE practicaAeropuerto;

CREATE TABLE `aeropuerto` (
  `iata` varchar(3) PRIMARY KEY,
  `nombre` varchar(50),
  `ubicacion` varchar(255)
);

CREATE TABLE `aerolineas` (
  `aerolinea_id` integer PRIMARY KEY,
  `nombre` varchar(50),
  `conexion_id` integer
);

CREATE TABLE `conexiones` (
  `conexion_id` integer PRIMARY KEY,
  `origen_id` integer,
  `destino_id` integer
);

CREATE TABLE `origenes` (
  `origen_id` integer PRIMARY KEY,
  `iata` varchar(3)
);

CREATE TABLE `destinos` (
  `destinos_id` integer PRIMARY KEY,
  `iata` varchar(3)
);

CREATE TABLE `vuelos` (
  `vuelo_id` integer PRIMARY KEY,
  `aerolinea_id` integer,
  `codigo_vuelo` varchar(6),
  `salida` datetime,
  `llegada` datetime,
  `duracion` time,
  `aeronave_id` integer
);

CREATE TABLE `aeronaves` (
  `aeronave_id` integer PRIMARY KEY,
  `matricula` varchar(10),
  `modelo` varchar(30),
  `fabricante` varchar(30),
  `cant_tripulante` integer,
  `cant_pasajeros` integer
);

CREATE TABLE `pasajeros` (
  `pasajero_id` integer PRIMARY KEY,
  `dni` integer,
  `nombre` varchar(30),
  `apellido` varchar(30),
  `fecha_nac` date,
  `edad` integer,
  `tel_contacto` varchar(30),
  `email` varchar(30),
  `nacionalidad` varchar(30)
);

CREATE TABLE `reservas` (
  `reserva_id` integer PRIMARY KEY,
  `pasajero_id` integer,
  `vuelo_id` integer,
  `fecha_res` datetime
);

ALTER TABLE `conexiones` ADD FOREIGN KEY (`destino_id`) REFERENCES `destinos` (`destinos_id`);

ALTER TABLE `conexiones` ADD FOREIGN KEY (`origen_id`) REFERENCES `origenes` (`origen_id`);

ALTER TABLE `destinos` ADD FOREIGN KEY (`iata`) REFERENCES `aeropuerto` (`iata`);

ALTER TABLE `origenes` ADD FOREIGN KEY (`iata`) REFERENCES `aeropuerto` (`iata`);

ALTER TABLE `aerolineas` ADD FOREIGN KEY (`conexion_id`) REFERENCES `conexiones` (`conexion_id`);

ALTER TABLE `vuelos` ADD FOREIGN KEY (`aerolinea_id`) REFERENCES `aerolineas` (`aerolinea_id`);

ALTER TABLE `vuelos` ADD FOREIGN KEY (`aeronave_id`) REFERENCES `aeronaves` (`aeronave_id`);

ALTER TABLE `reservas` ADD FOREIGN KEY (`pasajero_id`) REFERENCES `pasajeros` (`pasajero_id`);

ALTER TABLE `reservas` ADD FOREIGN KEY (`vuelo_id`) REFERENCES `vuelos` (`vuelo_id`);

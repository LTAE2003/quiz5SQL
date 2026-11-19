CREATE DATABASE IF NOT EXISTS miautopuntocom;
USE miautopuntocom;

CREATE TABLE `vehiculos` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `MARCA` varchar(50) NOT NULL,
  `MODELO` varchar(50) NOT NULL,
  `ANO` int NOT NULL,
  `COLOR` varchar(50) DEFAULT NULL,
  `PRECIO` decimal(20,2) NOT NULL,
  `NUM_VIN` varchar(17) NOT NULL,
  `TIPO` varchar(50) NOT NULL,
  `ESTADO` enum('nuevo','usado') NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NUM_VIN` (`NUM_VIN`),
  CONSTRAINT `ANO` CHECK (((`ANO` >= 1900) and (`ANO` <= 2026))),
  CONSTRAINT `PRECIO` CHECK ((`PRECIO` > 0))
);

CREATE TABLE `clientes` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(50) NOT NULL,
  `APELLIDO` varchar(50) NOT NULL,
  `CDI` int NOT NULL,
  `TELEFONO` int NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `DIRECCION` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CDI` (`CDI`),
  UNIQUE KEY `CDI_2` (`CDI`),
  UNIQUE KEY `CDI_3` (`CDI`),
  UNIQUE KEY `CDI_4` (`CDI`),
  UNIQUE KEY `EMAIL` (`EMAIL`),
  UNIQUE KEY `EMAIL_2` (`EMAIL`),
  UNIQUE KEY `EMAIL_3` (`EMAIL`)
);

CREATE TABLE `vendedores` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(50) NOT NULL,
  `APELLIDO` varchar(50) NOT NULL,
  `CDI` int NOT NULL,
  `FECHA_CONTRATO` date NOT NULL,
  `COMISION` decimal(6,2) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CDI` (`CDI`),
  UNIQUE KEY `CDI_2` (`CDI`),
  CONSTRAINT `COMISION` CHECK ((`COMISION` between 0 and 20))
);

CREATE TABLE `ventas` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `vehiculos_id` int NOT NULL,
  `clientes_id` int NOT NULL,
  `vendedores_id` int NOT NULL,
  `FECHA_VENTA` date NOT NULL,
  `PRECIO_F` decimal(10,2) NOT NULL,
  `METODO_PAGO` enum('efectivo','financiamiento','tarjeta') NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `vehiculos_id` (`vehiculos_id`),
  KEY `clientes_id` (`clientes_id`),
  KEY `vendedores_id` (`vendedores_id`),
  CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`vehiculos_id`) REFERENCES `vehiculos` (`ID`),
  CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`ID`),
  CONSTRAINT `ventas_ibfk_3` FOREIGN KEY (`vendedores_id`) REFERENCES `vendedores` (`ID`)
);
CREATE SCHEMA TIENDA2;
USE TIENDA2;
CREATE TABLE productos(
	id_producto INT,
    nombre VARCHAR(100),
    color ENUM('rojo', 'amarillo', 'azul'),
    precio INT,
    stock FLOAT);
CREATE TABLE productos2(
	id_producto INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) DEFAULT NULL,
    color ENUM('rojo', 'amarillo', 'azul') DEFAULT NULL,
    precio INT DEFAULT NULL,
    stock FLOAT DEFAULT NULL,
    PRIMARY KEY(id_producto),
    CONSTRAINT precio_positivo CHECK(precio>0)  
	);
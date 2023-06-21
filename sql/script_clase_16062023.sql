CREATE SCHEMA tienda_zapatillas;

USE tienda_zapatillas;

CREATE TABLE empleados(
	id_empleado INT NOT NULL AUTO_INCREMENT,
    nombre_empleado VARCHAR(100) NOT NULL,
    tienda_empleado VARCHAR(45) DEFAULT NULL,
    salario_empleado INT,
    fecha_incorporacion_empleado DATE NOT NULL,
    PRIMARY KEY (id_empleado)
    );
    
CREATE TABLE clientes(
	id_cliente INT NOT NULL AUTO_INCREMENT,
    nombre_cliente VARCHAR(45) DEFAULT NULL,
    numero_telefono_cliente INT(9) NOT NULL,
    email_cliente VARCHAR(45) NOT NULL,
    dirección_cliente VARCHAR(45) NOT NULL,
    ciudad_cliente VARCHAR(45) NOT NULL,
    pais_cliente VARCHAR(45) NOT NULL,
    codigo_posta_cliente VARCHAR(45) NOT NULL,
    PRIMARY KEY(id_cliente)
    );  
    
CREATE TABLE zapatillas(
	id_zapatillas INT NOT NULL AUTO_INCREMENT,
    modelo_zapatilla VARCHAR(45) DEFAULT NULL,
    color_zapatilla VARCHAR(45) DEFAULT NULL,
    PRIMARY KEY(id_zapatillas)     
	);

CREATE TABLE facturas(
	id_factura INT NOT NULL AUTO_INCREMENT,
    numero_factura VARCHAR(45) NOT NULL,
    fecha_factura DATE NOT NULL,
    id_zapatillas INT NOT NULL,
    id_empleado INT NOT NULL,
    id_cliente INT NOT NULL,
    PRIMARY KEY(id_factura),
    CONSTRAINT fk_facturas_zapatillas FOREIGN KEY(id_zapatillas) REFERENCES zapatillas(id_zapatillas),
    CONSTRAINT fk_facturas_empleados FOREIGN KEY(id_empleado) REFERENCES empleados(id_empleado),
    CONSTRAINT fk_facturas_cliente FOREIGN KEY(id_cliente) REFERENCES clientes(id_cliente)
	);
    
  
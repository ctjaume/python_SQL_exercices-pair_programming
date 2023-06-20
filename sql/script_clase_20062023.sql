USE tienda_zapatillas;

-- Lo primero que vamos a hacer es insertar datos en nuestra BBDD con los siguientes datos:
-- Tabla zapatillas
INSERT INTO zapatillas (modelo_zapatilla, color_zapatilla, marca_zapatilla, talla_zapatilla) 
VALUES ('XQYUN', 'Negro', 'Nike', 42), ('UOPMN', 'Rosas', 'Nike', 39),('OPNYT', 'Verde', 'Adidas', 35);

-- Tabla empleados
INSERT INTO empleados (nombre_empleado, tienda_empleado, salario_empleado, fecha_incorporacion_empleado) 
VALUES ('Laura', 'Alcobendas', 25987, '2010-09-03'),('Maria', 'Sevilla', 0, '2001-11-04'),('Ester', 'Oviedo', 30165.98, '2000-11-29');

-- Tabla clientes
ALTER TABLE clientes
ADD COLUMN provincia_cliente VARCHAR(45) NOT NULL;

INSERT INTO clientes (nombre_cliente, numero_telefono_cliente, email_cliente, dirección_cliente, ciudad_cliente, provincia_cliente, codigo_posta_cliente) 
VALUES ('Monica', '1234567289', 'monica@email.com', 'Calle Felicidad', 'Mostoles', 'Madrid', '28176'),
		('Lorena', '289345678', 'lorena@email.com', 'Calle Alegria', 'Barcelona', 'Barcelona', '12346'),
        ('Carmen', '298463759', 'carmen@email.com', 'Calle del Color', 'Vigo', 'Pontevedra', '23456');


-- Tabla facturas
INSERT INTO facturas (numero_factura, fecha_factura, id_zapatillas, id_empleado, id_cliente, total_factura) 
VALUES ('123', '2001-12-11', 1, 2, 1, 54.98),
('1234', '2005-05-23', 1, 1, 3, 89.91), 
('12345', '2015-09-18', 2, 3, 3, 76.23);

-- De nuevo nos hemos dado cuenta que hay algunos errores en la inserción de datos. En este ejercicios los actualizaremos para que nuestra BBDD este perfectita.

-- Tabla zapatillas
-- En nuestra tienda no vendemos zapatillas Rosas... ¿Cómo es posible que tengamos zapatillas de color rosa? 🤔 En realidad esas zapatillas son amarillas.
UPDATE zapatillas
		SET color_zapatilla = 'Amarillo' 
		WHERE id_zapatillas = 2;
        
-- Tabla empleados
-- Laura se ha cambiado de ciudad y ya no vive en Alcobendas, se fue cerquita del mar, ahora vive en A Coruña.
UPDATE empleados
		SET tienda_empleado = 'A Coruña' 
		WHERE id_empleado = 1;
        
-- Tabla clientes
-- El Numero de telefono de Monica esta mal!!! Metimos un digito de más. En realidad su número es: 123456728
UPDATE clientes
		SET numero_telefono_cliente = '123456728' 
		WHERE id_cliente = 1;
        
-- Tabla facturas
-- El total de la factura de la zapatilla cuyo id es 2 es incorrecto. En realidad es: 89,91.
UPDATE facturas
		SET total_factura = 89.9 
		WHERE id_factura = 2;
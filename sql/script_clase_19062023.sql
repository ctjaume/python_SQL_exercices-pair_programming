USE tienda_zapatillas;
ALTER TABLE zapatillas
ADD COLUMN marca_zapatilla VARCHAR(45) NOT NULL,
ADD COLUMN talla_zapatilla INT NOT NULL;

ALTER TABLE empleados
MODIFY COLUMN salario_empleado FLOAT NOT NULL;

ALTER TABLE clientes
DROP COLUMN pais_cliente; 

ALTER TABLE clientes
MODIFY COLUMN cod_postal_cliente CHAR(5); 
-- máximo 5 caracteres como??

ALTER TABLE facturas
ADD COLUMN total_factura FLOAT;

ALTER TABLE clientes
MODIFY COLUMN cod_postal_cliente SMALLINT;



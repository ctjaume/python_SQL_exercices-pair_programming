/*1.Productos más baratos y caros de nuestra BBDD: Desde la división de productos nos piden conocer el precio de los productos que tienen el precio más alto y más bajo. Dales el alias lowestPrice y highestPrice.*/

SELECT MIN(unit_price)  AS lowestPrice, MAX(unit_price) AS highestPrice
FROM products;

/*2. Conociendo el numero de productos y su precio medio:
Adicionalmente nos piden que diseñemos otra consulta para conocer el número de productos y el precio medio de todos ellos (en general, no por cada producto).*/

SELECT COUNT(product_id), AVG(unit_price)
FROM products;

/*3.Sacad la máxima y mínima carga de los pedidos de UK:
Nuestro siguiente encargo consiste en preparar una consulta que devuelva la máxima y mínima cantidad de carga para un pedido (ordersfreight) enviado a Reino Unido (United Kingdom).*/

SELECT MAX(freight), MIN(freight)
FROM orders
WHERE ship_country = "UK";

/*4.Qué productos se venden por encima del precio medio:
Después de analizar los resultados de alguna de nuestras consultas anteriores, desde el departamento de Ventas quieren conocer qué productos en concreto se venden por encima del precio medio para todos los productos de la empresa, ya que sospechan que dicho número es demasiado elevado. También quieren que ordenemos los resultados por su precio de mayor a menor.*/

SELECT AVG(unit_price)
FROM products;

SELECT product_name, unit_price
FROM products
WHERE unit_price > 28.866
ORDER BY unit_price DESC;

/*5.Seleccionad las ciudades con 4 o más empleadas:
Desde recursos humanos nos piden seleccionar los nombres de las ciudades con 4 o más empleadas de cara a estudiar la apertura de nuevas oficinas.*/

SELECT DISTINCT(city), COUNT(city)
FROM employees;

SELECT city, employee_id
FROM employees
WHERE 4 employee_id >= city 

, employee_id
FROM employees
WHERE employee_id >= 4;



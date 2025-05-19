-- CAST() can be used for anything from on data type for another 
SELECT
	purchase_price
FROM
	laurens_furniture_store
-- TO FORMAT THIS QUWERY IN DESECENDING 
ORDER BY 
	purchase_price DESC;

-- Typecasting means converting data from one data type to another
SELECT
	CAST(purchase_price AS FLOAT)
FROM 
	laurens_furniture_store
ORDER BY 
	CAST(purchase_price AS FLOAT) DESC;
    
-- CHECKING out purchase date field
SELECT
	date, 
    purchase_price
FROM
	laurens_furniture_store
WHERE
	date BETWEEN '2020-12-01' AND '2020-12-31';
    
-- Using CAST statement to change the date field which will only showcase date and not the time
SELECT 
	CAST(date AS date) AS date_only,
    purchase_price
FROM 
	laurens_furniture_store
WHERE
	date BETWEEN '2020-12-01' AND '2020-12-31';
    
-- CONCAT(): Adds strings together to create new text strings that can be used as unique keys
SELECT
	CONCAT(product_code, '_', product_color) AS new_product_code
FROM
	laurens_furniture_store
WHERE
	product = 'couch';

-- COALESCE(): Can be use to return non-null values in a list
SELECT 
	COALESCE(product, product_code) AS product_info
FROM 
	laurens_furniture_store
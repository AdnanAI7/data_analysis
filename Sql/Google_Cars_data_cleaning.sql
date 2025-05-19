-- Google Data Analysis cars dataset
SELECT *
FROM automobile_data;
-- Selecting unique FUEL TYPE
SELECT DISTINCT fuel_type
FROM automobile_data;

-- Finding the max and min length of data description 
SELECT 
	MIN(length) AS min_length,
    MAX(length) AS max_length
FROM 
	automobile_data;
    
-- Filling the `null` data

SELECT *
FROM 
	automobile_data
-- IS NULL only matches true SQL NULL values, not zero, empty string, or space
-- You cannot use = NULL or <> NULL to find NULLs; only IS NULL and IS NOT NULL work for this purpose
WHERE
	num_of_doors = '';

-- Updating empty values 
UPDATE 
	automobile_data
SET 
	num_of_doors = "four"
WHERE 
	make = "dodge"
    AND fuel_type = "gas"
    AND body_style = "sedan";

-- Checking the update
SELECT *
FROM 
	automobile_data
WHERE
	num_of_doors = '';
    
-- UPDATING for Mazda
UPDATE 
	automobile_data
SET 
	num_of_doors = 'four'
WHERE 
	make = "mazda"
    AND fuel_type = "diesel"
    AND body_style = 'sedan';
    
-- Identify potential errors
SELECT 
	DISTINCT num_of_cylinders
FROM 
	automobile_data;

-- Correcting misspelling for all rows
UPDATE
	automobile_data
SET 
	num_of_cylinders = "two"
WHERE 
	num_of_cylinders = "tow";
    
-- Checking compression_ratio range from 7 to 23 using MIN and MAX
SELECT 
	MIN(compression_ratio) AS min_compression_ratio,
    MAX(compression_ratio) AS max_compression_ratio
FROM
	automobile_data;
    
-- fixing the Error of MAX value 
-- as we know 23 is the MAX value
SELECT 
	MIN(compression_ratio) AS min_compression_ratio,
    MAX(compression_ratio) AS max_compression_ratio
FROM 
	automobile_data
WHERE
	compression_ratio <> 70;


-- Counting the rows containing 70 as MAX values
SELECT 
	COUNT(*) AS num_of_rows_to_delete
FROM 
	automobile_data
WHERE 
	compression_ratio = 70;
    
-- Deleting the ROW containing value of 70 
DELETE FROM
	automobile_data
WHERE 
	compression_ratio = 70;

-- Checking the inconsistencies 
SELECT 
	DISTINCT drive_wheels
FROM 
	automobile_data;

-- Checking why there are 4wd twice in distinct 
SELECT 
	DISTINCT drive_wheels,
    LENGTH(drive_wheels) AS string_length
FROM 
	automobile_data;
    
-- Using TRIM to remove all extra spaces int drive_wheels column 
UPDATE
	automobile_data
SET
	drive_wheels = TRIM(drive_wheels)
WHERE TRUE;

-- Checking MAX value in price column
SELECT
	MAX(price)
FROM
	automobile_data;
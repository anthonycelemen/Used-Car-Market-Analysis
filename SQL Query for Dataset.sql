-- CREATE TABLE quikr_cars (
-- 	name VARCHAR(255),
--     company VARCHAR(255),
--     year INT,
--     Price VARCHAR (255),
-- 	kms_driven VARCHAR (255),
--     fuel_type VARCHAR (255)
-- );

SET SQL_SAFE_UPDATES = 0;
-- Deletes cells with empty prices as its essential to the dataset
DELETE FROM quikr_cars 
WHERE Price IS NULL OR TRIM(Price) = '';

DELETE FROM quikr_cars
WHERE fuel_type = ' ';

SELECT COUNT(*) 
FROM quikr_cars 
WHERE fuel_type = '' OR fuel_type IS NULL;

SELECT COUNT(*)
FROM quikr_cars;

SELECT *
FROM quikr_cars
WHERE fuel_type = ' ' OR fuel_type = NULL;
-- LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/quikr_car_cleaned.csv'
-- INTO TABLE quikr_cars
-- FIELDS TERMINATED BY ','
-- OPTIONALLY ENCLOSED BY '"'
-- LINES TERMINATED BY '\n'
-- IGNORE 1 ROWS
-- (name, company, year, Price, kms_driven, fuel_type);

-- to answer:
-- Business Questions
-- What is the average resale price per brand?
-- How does car age affect resale price?
-- Do higher mileage cars sell for significantly less?
-- Which fuel type (Petrol vs. Diesel) has a higher average resale price?
-- Which brand dominates the used car market by listing volume?

-- What is the average resale price per brand?
SELECT 
company,
AVG(Price) as avg_price
FROM quikr_cars
GROUP BY company
ORDER BY avg_price DESC;

-- How does car age affect resale price?
SELECT YEAR(CURDATE()) - Year as age, Price
FROM quikr_cars
ORDER BY age ASC;

-- Do higher mileage cars sell for significantly less?
SELECT kms_driven AS mileage, Price
FROM quikr_cars
ORDER BY mileage ASC;

-- Which fuel type (Petrol vs. Diesel) has a higher average resale price?
SELECT
	fuel_type,
	AVG(Price) as avg_price
FROM quikr_cars
WHERE fuel_type IN ('Diesel', 'Petrol')
GROUP BY fuel_type
ORDER BY avg_price DESC;

-- Trying to check why my line 67 does not work
SELECT COUNT(*) FROM quikr_cars WHERE fuel_type IN ('Diesel', 'Petrol');

-- shows that there are 7 characters as supposed to both only needing 6
SELECT DISTINCT TRIM(fuel_type), LENGTH(fuel_type) FROM quikr_cars;
SELECT DISTINCT fuel_type FROM quikr_cars;

-- updating the column name to remove extra characters, then i run the query again
UPDATE quikr_cars SET fuel_type = TRIM(fuel_type);

-- Which brand dominates the used car market by listing volume?
SELECT company, COUNT(company) as Listing
FROM quikr_cars
GROUP BY company
ORDER BY Listing DESC;
# DML commands for selecting the data : data retrieve 

# SELECT
# * : fetch all columns from the table
SELECT * FROM smartphones;

SELECT price, model FROM smartphones;

# df[['price', 'model']]

SELECT model, os, battery_capacity FROM smartphones;

# ALIAS as during retrieving of data you want to rename the col.

SELECT model, os as 'Operating_System', battery_capacity as 'MaH' FROM smartphones;

# PPI = pixel per inches 
# formula of ppi = ((rw**2 + rh**2)**0.5)/screen_size


SELECT model, round(sqrt((resolution_width * resolution_width) + (resolution_height * resolution_height))/screen_size,2) as ppi FROM smartphones;


-- FIND THE RATING OF ALL MODELS IN SCALE OF 10
SELECT model, rating FROM smartphones;

SELECT model, rating/10 as 'rating' FROM smartphones;


# find the distinct mobile brands

SELECT COUNT(DISTINCT(brand_name)) as 'no_unique_brands' FROM smartphones;


SELECT DISTINCT brand_name, processor_brand FROM smartphones;


SELECT model, 'mobile_phones' AS 'type' FROM smartphones;


-- CLAUSES
-- WHERE :  TO FETCH DATA IN ROWS 
# find the data only for apple mobiles


SELECT * FROM smartphones
WHERE brand_name = 'apple';

SELECT model, price FROM smartphones
WHERE brand_name = 'apple';

# find all phones whose price is greater than 40000
SELECT * FROM smartphones
WHERE price > 40000;


# find the medium flagship phones price range of 20000-50000

SELECT * FROM smartphones 
WHERE price > 20000 AND price < 50000;

# find all oneplus phones whose price is greater than 50000

SELECT * FROM smartphones
WHERE brand_name = 'oneplus' AND price > 50000;

# find the brands whose processor is snapdragon , having 8 num of cores
SELECT DISTINCT(brand_name) FROM smartphones 
WHERE processor_brand = 'snapdragon' AND num_cores = 8;


# BETWEEN OPERATOR;
SELECT * FROM smartphones 
WHERE price BETWEEN 20000 AND 50000;

# find all samsung phones having 8gb ram
SELECT * FROM smartphones
WHERE brand_name = 'samsung' AND ram_capacity = 8;


# find all snapdragon processor samsung and oneplus phones 
SELECT * FROM smartphones
WHERE brand_name = 'samsung' OR brand_name = 'oneplus' AND processor_brand = 'snapdragon';

SELECT * FROM smartphones
WHERE processor_brand = 'snapdragon' AND (brand_name = 'samsung' OR brand_name = 'oneplus');


-- F J W G H S D O
-- from -> join -> where -> groupby -> having -> select -> distinct -> orderby

SELECT * FROM smartphones;







































SELECT * FROM smartphones;



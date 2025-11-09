/*
 Check local_infile is ON or OFF
 If local_infile is OFF they turn it ON temporarily
*/
SHOW GLOBAL VARIABLES LIKE 'local_infile';
SET GLOBAL local_infile = 1;
SHOW GLOBAL VARIABLES LIKE 'local_infile';


/*
 Truncate tables if data exists
 Load data from csv files onto tables of bronze database
 Show all the items in the tables
*/
TRUNCATE TABLE bronze.crm_customer_info;

LOAD DATA LOCAL INFILE 'datasets/crm/cutomer_info.csv'
INTO TABLE bronze.crm_customer_info
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM bronze.crm_customer_info;


TRUNCATE TABLE bronze.crm_product_info;

LOAD DATA LOCAL INFILE 'datasets/crm/product_info.csv'
INTO TABLE bronze.crm_product_info
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM bronze.crm_product_info;


TRUNCATE TABLE bronze.crm_sales_details;

LOAD DATA LOCAL INFILE 'datasets/crm/sales_details.csv'
INTO TABLE bronze.crm_sales_details
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM bronze.crm_sales_details;

TRUNCATE TABLE bronze.erp_cust_az12;

LOAD DATA LOCAL INFILE 'datasets/erp/CUST_AZ12.csv'
INTO TABLE bronze.erp_cust_az12
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM bronze.erp_cust_az12;


TRUNCATE TABLE bronze.erp_loc_a101;

LOAD DATA LOCAL INFILE 'datasets/erp/LOC_A101.csv'
INTO TABLE bronze.erp_loc_a101
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM bronze.erp_loc_a101;


TRUNCATE TABLE bronze.erp_px_cat_g1v2;

LOAD DATA LOCAL INFILE 'datasets/erp/PX_CAT_G1V2.csv'
INTO TABLE bronze.erp_px_cat_g1v2
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM bronze.erp_px_cat_g1v2;




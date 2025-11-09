/*
================================================
CREATE DATABASES
================================================
Script Purpose:
    This script creates databases after cheching if they already exists. If the databases exits, they are droped and created.
Warning:
    Don't run this script if databases are already set up.

*/



-- Drop if they exist (no GO in MySQL)
DROP DATABASE IF EXISTS bronze;
DROP DATABASE IF EXISTS silver;
DROP DATABASE IF EXISTS gold;

-- Create fresh databases
CREATE DATABASE bronze;
CREATE DATABASE silver;
CREATE DATABASE gold;

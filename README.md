# SQL Data Warehouse and Data Analysis Project

## 🚀 Project Overview

This repository hosts a comprehensive, end-to-end data warehousing and data analysis project. The primary goal is to design and implement a modern data warehouse using **MySQL** and SQL best practices to consolidate business data, enabling robust analytical reporting and informed decision-making.

The project follows a structured approach, from raw data ingestion and cleansing to advanced data modeling and the development of actionable business intelligence reports. It is designed as a portfolio showcase demonstrating expertise in data engineering, ETL development, and SQL-based analytics.

## ✨ Features

* **Modern Data Architecture:** Implementation of the **Medallion Architecture** (Bronze, Silver, and Gold layers) to ensure data quality, structure, and accessibility.
* **ETL Pipelines:** SQL scripts for the **Extract, Transform, Load (ETL)** process, including data ingestion from source files, data cleansing, standardization, and loading into the warehouse layers.
* **Dimensional Modeling:** Development of a **Star Schema** within the Gold layer, featuring optimized Fact and Dimension tables for efficient analytical querying.
* **Data Quality & Cleansing:** Includes processes to identify and resolve data quality issues, such as handling missing values, standardizing formats, and removing duplicates in the Silver layer.
* **In-depth Data Analysis:** A suite of analytical SQL queries and scripts designed to generate key business insights into:
    * Customer Behavior and Segmentation.
    * Product Performance and Sales Volume.
    * Sales Trends over Time (Year-over-Year, Month-over-Month analysis).

## 🛠️ Technologies Used

| Category | Technology | Description |
| :--- | :--- | :--- |
| **Database** | **MySQL** | The primary relational database management system used for building and hosting the Data Warehouse. |
| **Management** | **MySQL Workbench** | Graphical tool for managing the MySQL server, writing, and executing SQL scripts. |
| **Language** | SQL (Standard) | Used for all ETL logic, data modeling (DDL/DML), and analytical querying. |
| **Documentation** | Draw.io (or similar) | Used for visualizing the data architecture and ETL flow diagrams. |
| **Source Data** | CSV Files | Source systems (e.g., ERP and CRM data) are simulated using CSV files. |

## ⚙️ Setup and Installation

Follow these steps to set up the project locally using MySQL.

### Prerequisites

1.  Install **MySQL Server** (Community Edition is suitable).
2.  Install **MySQL Workbench** or another preferred MySQL client (e.g., DBeaver, HeidiSQL).
3.  Ensure **Git** is installed for cloning the repository.

### Installation Steps

1.  **Clone the Repository:**
    ```bash
    git clone [https://github.com/MohanReddy05/sql-data-warehouse-and-data-analysis-project.git](https://github.com/MohanReddy05/sql-data-warehouse-and-data-analysis-project.git)
    cd sql-data-warehouse-and-data-analysis-project
    ```

2.  **Create the Database:**
    * Open MySQL Workbench and connect to your MySQL instance.
    * Execute the script located at `scripts/ddl/create_database.sql` to initialize the database structure (schemas, tables).

3.  **Ingest Raw Data (Bronze Layer):**
    * The raw data from the `datasets/` folder needs to be loaded into the Bronze layer tables.
    * You can use the **`LOAD DATA INFILE`** command in MySQL for bulk loading, or utilize the **Table Data Import Wizard** in MySQL Workbench.
    * Refer to the structure defined in `scripts/bronze/load_bronze.sql` and use a command similar to the following, replacing the path:
       

4.  **Run ETL (Silver & Gold Layers):**
    * Execute the transformation scripts sequentially to cleanse, transform, and model the data. These scripts are written in standard SQL and should be compatible with MySQL:
        1.  `scripts/silver/transform_to_silver.sql` (Cleansing and Standardization)
        2.  `scripts/gold/load_dimensional_model.sql` (Star Schema creation and loading)

## 💡 Usage Examples

Once the data warehouse is populated, you can run the analytical queries to extract business insights. The queries use standard SQL features available in MySQL.



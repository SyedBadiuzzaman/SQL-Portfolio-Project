Project Overview
This project demonstrates comprehensive data cleaning, transformation, and exploratory analysis on two real-world datasets: a COVID-19 dataset and a real estate dataset. The goal is to prepare clean, structured data for analysis and extract meaningful insights using SQL.

Key Features
Data Cleaning & Preprocessing:

Handled missing values (NULLs) by replacing with defaults or meaningful values.

Removed duplicate records efficiently using SQL window functions (ROW_NUMBER()).

Extracted structured address components (street number, street name, city, state) using Regular Expressions.

Updated inconsistent or missing fields through SQL joins and conditional logic.

Data Exploration & Analysis:

Analyzed COVID-19 data to assess vaccination coverage, testing intensity, lockdown impact, and hospital capacity effects.

Explored real estate data focusing on sales, property characteristics, and owner information.

SQL Optimization Techniques:

Used Common Table Expressions (CTEs) for modular queries and performance improvements.

Created indexes to speed up searches and updates.

Tools & Technologies
PostgreSQL for data storage, cleaning, and querying

SQL window functions and regex for advanced data manipulation

Basic understanding of data exploration techniques with SQL

How to Use
Clone this repository

Load your datasets into PostgreSQL tables (covid_data and real_estate)

Run the provided SQL scripts to clean and analyze your data

Modify queries as needed to explore further insights

Outcome
This project provides a solid foundation for data cleaning and analysis skills using SQL, preparing datasets for deeper analytics or visualization. It is ideal for aspiring data analysts and anyone working with messy real-world data.

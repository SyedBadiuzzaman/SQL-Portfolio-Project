# 🧹 SQL Data Cleaning & Analysis Project

This project showcases my ability to clean and analyze real-world data using advanced SQL techniques. It includes two main datasets: a **Real Estate** dataset and a **COVID-19** dataset.

---

## 📁 Project Structure

├── 01_data_cleaning_real_estate.sql # Data cleaning of real estate dataset
├── 02_data_exploration_covid.sql # Data analysis of COVID-19 dataset
└── README.md # Project overview

---

## 📌 Objectives

### 🏠 Real Estate Data Cleaning
- Handle missing/null values using `COALESCE`
- Join rows based on common Parcel IDs to fill missing addresses
- Extract structured address components using **REGEX**
- Remove duplicate rows using `ROW_NUMBER()`
- Format numeric fields like price and year

### 🦠 COVID-19 Data Exploration
- Analyze vaccination rates and their impact on case trends
- Examine test positivity and test intensity
- Investigate effects of lockdown (stringency index) on new cases
- Explore relationship between hospital capacity and death rates

---

## 🛠️ Tools & Skills Used

- **PostgreSQL**
- SQL Joins & Subqueries
- **Common Table Expressions (CTEs)**
- **Window Functions** (`ROW_NUMBER`)
- **Regular Expressions** in SQL
- Aggregate Functions (`AVG`, `MAX`, `SUM`)
- Data Cleaning & Wrangling
- Exploratory Data Analysis (EDA)

---

## 📈 Insights Gained

- Countries with higher vaccination rates tended to show lower case growth
- Lockdown strictness had a visible effect on new case trends
- Duplicate and missing entries in property records can be repaired with SQL logic
- REGEX can be powerful for cleaning unstructured address fields

---

## 🔗 How to Use

Run each `.sql` script in a PostgreSQL environment:
1. Clean real estate dataset with `01_data_cleaning_real_estate.sql`
2. Explore and analyze COVID-19 dataset with `02_data_exploration_covid.sql`

---

## 🧠 About the Author

Aspiring Data Analyst focused on real-world business problems using SQL, Python, and BI tools.  
Feel free to connect on [LinkedIn]([https://linkedin.com/](https://www.linkedin.com/in/syed-badi-uz-zaman-6a507a318/)) or check out more projects on [GitHub]([https://github.com/](https://github.com/SyedBadiuzzaman/SQL-Portfolio-Project)).


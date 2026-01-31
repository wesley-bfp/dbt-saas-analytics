# 📊 Analytics Engineering with dbt & DuckDB

## 📌 Project Overview
This project demonstrates modern data modeling practices using **dbt (Data Build Tool)**. It transforms raw SaaS subscription data into high-level business metrics (MRR, Customer Count) following the **Medallion Architecture**.

## 🛠️ Tech Stack
* [cite_start]**Transformation:** dbt-core 
* **Database/Engine:** DuckDB (In-process OLAP)
* [cite_start]**Language:** SQL (Advanced Modeling) [cite: 8]
* [cite_start]**Governance:** Automated testing and documentation [cite: 39]

## 🏗️ Project Structure
* **Seeds:** Raw CSV data ingested into the warehouse.
* **Staging Layer:** Data cleaning, renaming, and type casting (Views).
* **Marts Layer:** Business-ready facts and dimensions (Tables).

## 🛡️ Data Quality & Testing
The project includes automated schema tests to ensure data integrity:
* **Uniqueness & Not Null:** Applied to Primary Keys.
* **Accepted Values:** Validating business status (Active/Cancelled).

## 🚀 How to Run
1. Install dependencies: `pip install dbt-duckdb pandas`
2. Run dbt:
   ```bash
   dbt seed --profiles-dir .
   dbt run --profiles-dir .
   dbt test --profiles-dir .

---
*Developed by Wesley Bomfim - [LinkedIn Profile](https://www.linkedin.com/in/wesley-bomfim-181401298)*

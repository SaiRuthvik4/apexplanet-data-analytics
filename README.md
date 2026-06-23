# ApexPlanet Data Analytics Internship

## Overview

This repository contains the tasks completed during my Data Analytics Internship at ApexPlanet Software Pvt. Ltd.

The internship focuses on data cleaning, exploratory data analysis, SQL-based data extraction, business intelligence, and data analytics using Python and SQL.

---

## Task 1: Exploratory Data Analysis (EDA)

### Objectives

* Data Cleaning and Preprocessing
* Missing Value Analysis
* Duplicate Detection and Removal
* Outlier Detection using IQR Method
* Statistical Analysis
* Data Visualization
* Business Insight Generation

### Dataset

Sample Superstore Dataset

### Tools Used

* Python
* Pandas
* NumPy
* Matplotlib
* Seaborn
* Jupyter Notebook

### Key Insights

* Office Supplies was the most frequently sold category.
* West region recorded the highest number of transactions.
* Sales and Profit showed a positive relationship.
* Discounts negatively affected profitability.
* Most sales transactions were concentrated at lower sales values.

---

## Task 2: SQL for Data Analysis

### Objectives

* Database Creation using SQLite
* Data Import and Management
* SQL Fundamentals
* Advanced SQL Analysis
* Python + SQL Integration
* Business Intelligence Reporting

### SQL Concepts Covered

#### Fundamentals

* SELECT
* WHERE
* ORDER BY
* LIMIT
* GROUP BY
* HAVING

#### Advanced SQL

* Subqueries
* CTE (WITH)
* ROW_NUMBER()
* RANK()
* LAG()
* LEAD()
* Views

### Business Questions Answered

1. Which region generates the highest profit?
2. Which cities generate the highest sales?
3. Which category generates the highest sales?
4. Which category generates the highest profit?
5. Which sub-categories generate the highest sales?
6. Which shipping mode is most frequently used?
7. Which customer segment generates the highest sales?
8. Which states generate the highest profit?
9. Which transactions have sales above average?
10. How do cities rank by total sales?

### Tools Used

* SQLite
* SQL
* Python
* Pandas
* Jupyter Notebook

---

## Repository Structure

```text
apexplanet-data-analytics/

├── data/
│   ├── raw/
│   ├── processed/
│   └── database/
│
├── notebooks/
│   ├── EDA_Task1.ipynb
│   └── SQL_Task2.ipynb
│
├── scripts/
│   ├── task2_queries.sql
│   └── db_utils.py
│
├── dashboards/
├── reports/
└── README.md
```

---
## Task 3: Data Visualization & Dashboarding

### Objectives

* Build an interactive Power BI dashboard
* Analyze sales and profit trends
* Create KPI cards and business visualizations
* Implement interactive filters and slicers
* Perform geographic sales analysis

### Dashboard Components

* Total Sales KPI
* Total Profit KPI
* Total Orders KPI
* Sales by Category
* Profit by Region
* Top Sub-Categories by Sales
* Sales by Segment
* Sales Distribution by Category
* State-wise Sales Analysis Map

### Filters Implemented

* Region Filter
* Category Filter
* Segment Filter

### Tool Used

* Microsoft Power BI Desktop

### Key Insights

* Technology generated the highest sales.
* West region generated the highest profit.
* Consumer segment contributed the highest sales.
* Phones were the highest-selling sub-category.
* California and New York were major contributors to sales and profit.

## Task 4: Advanced Analytics & Predictive Modeling

### Objectives

* Perform statistical analysis on business data
* Conduct hypothesis testing
* Apply customer segmentation techniques
* Build a predictive machine learning model
* Evaluate model performance

### Statistical Analysis

* Mean, Median, Mode
* Standard Deviation
* Skewness Analysis
* Confidence Interval Estimation
* T-Test
* Chi-Square Test

### Customer Segmentation

* Feature Scaling using StandardScaler
* K-Means Clustering
* Elbow Method
* PCA Visualization
* Cluster Profiling

### Predictive Modeling

* Linear Regression
* Train-Test Split
* Profit Prediction

### Model Evaluation

* MAE: 59.80
* RMSE: 250.86
* R² Score: 0.1741

### Tools Used

* Python
* Pandas
* NumPy
* SciPy
* Matplotlib
* Seaborn
* Scikit-Learn

### Generated Files

* superstore_with_clusters.csv
* final_task4_dataset.csv

### Key Insights

* Customer records can be segmented into meaningful clusters using K-Means.
* Sales, quantity, and discount influence profit prediction.
* PCA helps visualize customer segments effectively.
* Statistical testing provides deeper business insights.

## Author

Sai Ruthvik Singirikonda

Data Analytics Intern

ApexPlanet Software Pvt. Ltd.

# 🌍 International Debt Analysis using SQL Server & Power BI

## 📌 Project Overview

This project analyzes international debt data to understand the external debt burden across countries, identify countries with the highest debt, and examine the distribution of debt across different debt indicators.

Using **Microsoft SQL Server** for data exploration and **Microsoft Power BI** for data visualization, this project transforms raw debt data into an interactive dashboard that helps uncover meaningful insights into international debt patterns.

## 🎯 Objectives

- Calculate the total debt owed by countries.
- Identify the number of distinct countries and debt indicators in the dataset.
- Determine which countries have the highest total debt.
- Analyze average debt across different debt indicators.
- Identify countries with the highest principal repayments.
- Determine the most frequently recorded debt indicators.
- Identify the debt indicator contributing the maximum debt for each country.
- Build an interactive Power BI dashboard for exploring international debt.

## 🛠️ Tools & Technologies

- **Microsoft SQL Server** — Data querying and analysis
- **SQL** — Aggregations, filtering, grouping, sorting, and Common Table Expressions (CTEs)
- **Microsoft Power BI** — Interactive dashboard development
- **DAX** — Measures and calculations for dashboard KPIs and visualizations

## 📂 Dataset Description

The dataset, stored in the `international_debt` table, contains information about international debt across countries.

Key columns used in the analysis include:

| Column | Description |
|---|---|
| `country_name` | Name of the country |
| `country_code` | Country identifier |
| `indicator_code` | Unique code representing a debt indicator |
| `indicator_name` | Description of the debt indicator |
| `debt` | Debt amount recorded for the country and indicator |

*Note: The exact dataset source, time coverage, currency units, and number of records should be added after verifying the original dataset documentation.*

## 🔍 SQL Analysis

The following analyses were performed using SQL Server:

### 1. Data Exploration
- Examined the first 10 records.
- Identified distinct countries and debt indicators.

### 2. Total International Debt
- Calculated the total debt recorded in the dataset.
- Used aggregate functions to summarize debt values.

### 3. Highest Debt by Country
- Aggregated debt across indicators for each country.
- Ranked countries by total debt to identify the highest-debt countries.

### 4. Average Debt by Indicator
- Calculated the average debt associated with each indicator.
- Compared debt indicators based on their average recorded debt.

### 5. Principal Repayments
- Filtered records using the indicator code `DT.AMT.DLXF.CD`.
- Identified the countries with the highest recorded principal repayments.

### 6. Most Common Debt Indicator
- Counted records associated with each indicator.
- Identified the most frequently occurring indicator in the dataset.

### 7. Maximum Debt Indicator by Country
- Used a Common Table Expression (CTE) to calculate each country's maximum recorded debt.
- Identified the corresponding debt indicator and compared the results across countries.

## 📊 Power BI Dashboard

The Power BI dashboard presents the analysis through interactive visualizations.

### Key Performance Indicators (KPIs)
- Total Debt (Billion USD)
- Total Countries
- Number of Debt Indicators

### Visualizations

- **Top 10 Countries by Total Debt:** Compares countries based on aggregated debt.
- **Average Debt by Indicator:** Highlights differences in average debt across indicators.
- **Top 5 Countries by Principal Repayment:** Compares countries with the largest recorded principal repayments.
- **Debt Distribution by Indicator:** Uses a donut chart to show each indicator's share of the total recorded debt.
- **International Debt by Country:** Uses a map to visualize geographic differences in debt.

### Interactive Features
- Country slicer for country-level exploration.
- Debt indicator slicer for indicator-level analysis.
- Interactive filtering across compatible visuals.

## 💡 Key Questions Answered

This project addresses the following analytical questions:

1. How many countries are represented in the dataset?
2. What is the total debt recorded across the dataset?
3. Which countries have the highest total debt?
4. Which debt indicators have the highest average debt?
5. Which countries have the largest principal repayments?
6. Which debt indicator occurs most frequently?
7. Which debt indicator represents the maximum recorded debt for each country?

## 📈 Business Value

The dashboard provides a consolidated view of international debt patterns and makes it easier to compare countries and debt indicators.

It demonstrates how SQL-based data analysis and interactive business intelligence tools can be combined to:
- Summarize large datasets.
- Identify high-debt countries.
- Compare debt categories.
- Explore country-level patterns.
- Communicate analytical findings through visualizations.

**Important:** The analysis describes the dataset and does not, by itself, establish the causes of countries' debt burdens or their overall economic condition.

## 🚀 How to Run the Project

### Step 1: Set Up SQL Server
- Install and open Microsoft SQL Server Management Studio (SSMS).
- Create or select the database used for the project.
- Import the dataset into a table named `international_debt`.

### Step 2: Run SQL Queries
- Open the SQL script in SSMS.
- Execute the queries to explore and analyze the data.

### Step 3: Connect Power BI
- Open Power BI Desktop.
- Select **Home → Get Data → SQL Server**.
- Enter the SQL Server instance name and database name.
- Select **Import** mode.
- Load the `international_debt` table.

### Step 4: Build the Dashboard
- Create the required DAX measures.
- Add KPI cards, bar charts, a donut chart, and a map.
- Add country and debt indicator slicers.
- Format the report for readability and consistency.

## 📁 Project Structure

```text
international-debt-analysis/
│
├── README.md
├── international_debt_analysis.sql
├── International_Debt_Dashboard.pbix
└── screenshots/
    └── dashboard.png
```

*Adjust the file names and folders to match your actual repository.*

## 🧠 Skills Demonstrated

- SQL querying and data exploration
- Aggregate functions: `SUM()`, `AVG()`, and `COUNT()`
- Filtering and sorting with `WHERE` and `ORDER BY`
- Grouping using `GROUP BY`
- Common Table Expressions (CTEs)
- Ranking and top-N analysis
- DAX measures and calculations
- Power BI dashboard design
- Data visualization and analytical storytelling

## 🔮 Future Improvements

- Add year-wise debt analysis if historical data is available.
- Compare debt trends across countries over time.
- Add percentage contribution and country-ranking measures.
- Improve data validation and handling of missing values.
- Incorporate additional economic indicators to provide broader context.

## 👩‍💻 Author

**Adwaitha**

Aspiring Data Analyst | SQL | Power BI | Python


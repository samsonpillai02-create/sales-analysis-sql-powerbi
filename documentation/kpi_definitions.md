# 📊 KPI Definitions

## 📌 Overview

This document defines the key performance indicators (KPIs) used in the dashboard. Each KPI is clearly described with its calculation logic, business relevance, and analytical purpose to ensure consistency and clarity in interpretation.

---

## 🔹 1. Total Sales

* **Definition:**
  Total revenue generated from all transactions.

* **Calculation Logic:**
  SUM(Sales)

* **Data Source:**
  Sales column from the dataset

* **Business Relevance:**
  Indicates overall business performance and revenue generation capability.

* **Usage in Dashboard:**
  Displayed as a primary KPI card for quick performance overview.

---

## 🔹 2. Order Count

* **Definition:**
  Total number of orders placed within the dataset.

* **Calculation Logic:**
  COUNT(Order ID)

* **Business Relevance:**
  Helps measure demand and transaction volume.

* **Insight Value:**
  High order count with low sales may indicate smaller order sizes.

---

## 🔹 3. Average Order Value (AOV)

* **Definition:**
  Average revenue generated per order.

* **Calculation Logic:**
  SUM(Sales) / COUNT(Order ID)

* **Business Relevance:**
  Measures customer spending behavior per transaction.

* **Insight Value:**
  Helps identify opportunities to increase basket size.

---

## 🔹 4. Sales by Category

* **Definition:**
  Distribution of total sales across different product categories.

* **Calculation Logic:**
  SUM(Sales) grouped by Category

* **Business Relevance:**
  Identifies top-performing and underperforming product categories.

* **Usage in Dashboard:**
  Visualized using bar/column charts.

---

## 🔹 5. Sales by Region

* **Definition:**
  Total sales aggregated by geographical regions.

* **Calculation Logic:**
  SUM(Sales) grouped by Region

* **Business Relevance:**
  Helps compare regional performance and identify high-demand areas.

* **Insight Value:**
  Supports regional strategy and expansion decisions.

---

## 🔹 6. Top Customers

* **Definition:**
  Customers contributing the highest share of total sales.

* **Calculation Logic:**
  SUM(Sales) grouped by Customer Name, sorted in descending order

* **Business Relevance:**
  Identifies high-value customers for retention and targeted strategies.

* **Usage in Dashboard:**
  Displayed using ranked tables or charts.

---

## 🔹 7. Sales Trend (Time-Based KPI)

* **Definition:**
  Variation in sales over time (daily/monthly/yearly).

* **Calculation Logic:**
  SUM(Sales) grouped by Date (Month/Year)

* **Business Relevance:**
  Helps identify growth patterns, seasonality, and fluctuations.

* **Usage in Dashboard:**
  Represented using line charts.

---

## 🔹 8. Category Contribution (%)

* **Definition:**
  Percentage contribution of each category to total sales.

* **Calculation Logic:**
  (Category Sales / Total Sales) × 100

* **Business Relevance:**
  Shows dependency on specific categories.

* **Insight Value:**
  Helps in diversification and risk analysis.

---

## 📊 KPI Summary Table

| KPI Name              | Metric Type | Purpose                       |
| --------------------- | ----------- | ----------------------------- |
| Total Sales           | Revenue     | Overall performance           |
| Order Count           | Volume      | Demand measurement            |
| Average Order Value   | Efficiency  | Customer spending behavior    |
| Sales by Category     | Breakdown   | Product performance           |
| Sales by Region       | Breakdown   | Geographic performance        |
| Top Customers         | Ranking     | Customer value identification |
| Sales Trend           | Time-based  | Growth and pattern analysis   |
| Category Contribution | Ratio       | Sales distribution            |

---

## ⚠️ Notes

* All KPIs are based on **sales data only**
* Profitability metrics are not included due to lack of cost data
* KPI calculations are implemented using Power BI measures and SQL aggregations


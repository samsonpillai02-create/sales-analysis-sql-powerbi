# 🗄 SQL Analysis

## 📌 Overview

SQL was used to perform structured data analysis by querying, aggregating, and transforming the dataset to extract meaningful insights. This step acted as a bridge between raw data and visualization in Power BI.

---

## 🎯 Objectives

* Perform efficient data aggregation
* Extract business-relevant insights
* Prepare data for visualization
* Validate patterns identified during EDA

---

## 🛠 SQL Operations Performed

* Data filtering (WHERE clauses)
* Aggregations (SUM, COUNT)
* Grouping (GROUP BY)
* Sorting (ORDER BY)
* Ranking and limiting results (TOP / LIMIT)

---

## 🔹 1. Sales by Region

### 📌 Purpose

To evaluate regional performance and identify high-performing areas.

### 🧠 Logic

* Grouped data by Region
* Calculated total sales using SUM(Sales)

### 💡 Insight

* Certain regions contribute significantly more to total sales
* Helps in regional comparison and strategic planning

---

## 🔹 2. Sales by Category

### 📌 Purpose

To analyze how different product categories contribute to overall sales.

### 🧠 Logic

* Grouped data by Category
* Aggregated total sales

### 💡 Insight

* A few categories dominate total revenue
* Useful for product strategy and focus

---

## 🔹 3. Top Customers

### 📌 Purpose

To identify customers generating the highest revenue.

### 🧠 Logic

* Grouped by Customer Name
* Ordered by total sales (descending)
* Limited results to top contributors

### 💡 Insight

* A small percentage of customers contribute a large share of revenue
* Supports customer retention strategies

---

## 🔹 4. Time-Based Sales Analysis

### 📌 Purpose

To analyze sales trends over time.

### 🧠 Logic

* Extracted date components (Month/Year)
* Aggregated sales over time

### 💡 Insight

* Sales trends show fluctuations
* Helps identify patterns and support forecasting

---

## 🔹 5. Order Volume Analysis

### 📌 Purpose

To measure total transaction activity.

### 🧠 Logic

* Counted total number of orders

### 💡 Insight

* Helps understand demand and activity levels
* Can be compared with sales for deeper insights

---

## 🔗 Integration with Power BI

* SQL outputs were used as input for Power BI dashboards
* Aggregated results improved performance and reduced load time
* Ensured consistency between backend analysis and frontend visuals

---

## ⚡ Performance Considerations

* Used grouping and aggregation to reduce data size
* Avoided unnecessary columns in queries
* Structured queries for reusability

---

## 🎯 Conclusion

SQL enabled efficient transformation of raw data into structured insights, forming the analytical backbone of the dashboard and ensuring accurate and scalable data processing.

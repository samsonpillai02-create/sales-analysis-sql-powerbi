# 🧹 Data Preparation

## 📌 Overview

Data preparation is a critical step in the analytics workflow. This phase focuses on transforming raw transactional data into a clean, structured, and analysis-ready dataset to ensure accuracy and reliability in downstream processes such as SQL querying and dashboard visualization.

---

## 📥 Initial Data Handling (Excel)

The data preparation process began in **Microsoft Excel** for initial inspection and quick preprocessing.

### Key steps performed in Excel:

* Opened and reviewed the raw dataset structure
* Checked for missing values and obvious inconsistencies
* Removed duplicate rows using Excel tools
* Applied basic filters and sorting to understand data distribution
* Ensured column headers and formats were consistent

Excel was used for quick validation before moving the dataset into a more scalable environment for further processing.

---

## 📂 Dataset Structure

The dataset consists of structured retail transaction data with the following key attributes:

* Order ID, Order Date, Ship Date
* Customer ID, Customer Name, Segment
* Product Category, Sub-Category, Product Name
* Region, State, City
* Sales (numeric)

---

## 🔍 Data Quality Assessment

An initial audit of the dataset was performed to identify:

* Missing or null values
* Duplicate records
* Inconsistent data formats
* Invalid or outlier entries

---

## 🛠 Data Cleaning Operations

### 1. Handling Missing Values

* Checked for null values across all columns
* Applied appropriate handling techniques:

  * Removal of records with critical missing fields
  * Retention where impact was minimal

---

### 2. Duplicate Removal

* Identified duplicate rows using composite keys (Order ID + Product)
* Removed duplicates to prevent data skewing

---

### 3. Data Type Standardization

* Converted date fields into proper datetime format
* Ensured numerical fields (Sales) are correctly typed
* Standardized categorical fields (Region, Category)

---

### 4. Data Consistency Checks

* Verified category and sub-category mappings
* Ensured uniform naming conventions across records
* Checked for logical inconsistencies (e.g., invalid dates)

---

## 🔄 Data Transformation

### 1. Feature Engineering

* Derived time-based attributes:

  * Year
  * Month
  * Day
* Enabled time-series analysis and trend identification

---

### 2. Data Structuring

* Organized dataset for efficient querying and aggregation
* Optimized structure for Power BI data model

---

## 🗄 Integration with SQL

* Imported cleaned dataset into SQL environment
* Structured queries built on prepared data
* Ensured compatibility for joins and aggregations

---

## 📊 Output

The final dataset is:

* Cleaned and validated
* Structured for analysis
* Ready for:

  * Exploratory Data Analysis (EDA)
  * SQL querying
  * Power BI visualization

---

## ⚠️ Assumptions & Limitations

* Dataset does not include profit/cost data
* Analysis is limited to sales-based metrics
* External factors (seasonality drivers, market conditions) are not included



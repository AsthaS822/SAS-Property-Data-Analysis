# 🏠 Real Estate Property Analysis using SAS

## 📌 Project Overview

This project focuses on analyzing real estate property sales data using **SAS Programming** to perform exploratory data analysis, data transformation, feature engineering, and business reporting.

The objective of this analysis is to understand property pricing patterns, identify high-value properties, analyze location-wise distribution, and generate useful business insights from property sales data.

The project demonstrates how analysts use SAS tools and procedures to work with real-world datasets and convert raw data into meaningful insights.

---

# 📂 Dataset Description

**Dataset Name:** properties.csv

The dataset contains information about residential properties including location, size, and selling price.

## Dataset Columns

| Column Name | Description |
|-------------|-------------|
| PropertyID | Unique identifier assigned to each property |
| Location | Area category where the property is located |
| Size_sqft | Total property area measured in square feet |
| SalePrice | Final selling price of the property |

---

# 🛠️ Tools & Technologies Used

- SAS Studio
- SAS Programming Language
- PROC IMPORT
- PROC PRINT
- PROC MEANS
- PROC FREQ
- PROC SQL
- SAS DATA Step

---

# 🔄 Project Workflow

## 1. Data Import

The CSV dataset was imported into SAS Studio using `PROC IMPORT`.

### Tasks Performed:

- Imported external CSV file
- Created SAS dataset
- Verified dataset structure
- Displayed initial records

### SAS Procedure Used:

```sas
PROC IMPORT
    DATAFILE="properties.csv"
    OUT=properties
    DBMS=CSV
    REPLACE;
    GETNAMES=YES;
RUN;
```

---

# 2. Data Exploration & Statistical Analysis

Performed exploratory data analysis to understand the characteristics of the dataset.

## Analysis Performed:

### Property Price Analysis

Calculated:

- Average selling price
- Minimum sale price
- Maximum sale price
- Standard deviation

### Property Size Analysis

Calculated:

- Average property size
- Size distribution

### SAS Procedure Used:

```sas
PROC MEANS DATA=properties;

VAR Size_sqft SalePrice;

RUN;
```

---

# 3. Location-Based Analysis

Analyzed the number of properties available in each location category.

## Objective:

To understand property distribution across different areas.

### SAS Procedure Used:

```sas
PROC FREQ DATA=properties;

TABLES Location;

RUN;
```

---

# 4. Feature Engineering

Created new analytical features to improve business understanding.

## Price Per Square Foot

A new metric was created to measure property price efficiency.

Formula:

```
Price_Per_Sqft = SalePrice / Size_sqft
```

This helps compare properties based on value rather than only total selling price.

### SAS Code:

```sas
DATA properties_new;

SET properties;

Price_Per_Sqft = SalePrice / Size_sqft;

RUN;
```

---

# 5. Property Category Classification

Properties were segmented into categories based on selling price.

## Business Rule:

| Category | Condition |
|----------|-----------|
| Luxury | SalePrice >= 500000 |
| Standard | SalePrice < 500000 |

### Purpose:

- Identify premium properties
- Segment properties based on market value
- Support business decision-making

---

# 6. SQL Analysis Using SAS

Used `PROC SQL` to perform business-style queries.

## Analysis Performed:

- Filtered expensive properties
- Selected required fields
- Applied conditional filtering

### Example Query:

```sql
PROC SQL;

SELECT PropertyID,
       Location,
       SalePrice

FROM properties

WHERE SalePrice > 400000;

QUIT;
```

---

# 📊 Key Insights

The analysis provided the following insights:

- Identified high-value luxury properties based on predefined price thresholds.
- Compared property availability across different locations.
- Calculated price efficiency using Price Per Square Foot.
- Generated summary statistics to understand overall market trends.
- Used SQL-based filtering to extract business-relevant records.

---

# 📸 Project Screenshots

## 1. Dataset Import

Shows successful import of the CSV file into SAS Studio.

---

## 2. Dataset Preview

Displays the imported property records and dataset structure.

---

## 3. Summary Statistics

Shows descriptive statistics including:

- Mean
- Minimum value
- Maximum value
- Standard deviation

for property size and sale price.

---

## 4. Location Analysis

Displays frequency distribution of properties across different locations.

---

## 5. SQL Filtering Output

Shows properties filtered based on price conditions using SAS PROC SQL.

---

## 6. Feature Engineering Output

Displays newly created analytical columns:

- Price_Per_Sqft
- Property Category

---

# 📁 Project Structure

```
Real-Estate-Property-Analysis-SAS/
│
├── properties.csv
│
├── property_analysis.sas
│
├── README.md
│
└── screenshots/
    │
    ├── dataset_import.png
    ├── dataset_preview.png
    ├── summary_statistics.png
    ├── location_analysis.png
    ├── sql_filtering.png
    └── feature_engineering.png
```

---

# 🚀 Skills Demonstrated

- SAS Programming
- Data Import and Preparation
- Exploratory Data Analysis
- Statistical Analysis
- SQL Querying
- Feature Engineering
- Data Transformation
- Business Reporting
- Analytical Thinking

---

# 👩‍💻 Author

**Astha Singh**

MCA Student | Data Analytics | AI & Technology Enthusiast

---

# ⭐ Project Purpose

This project was created to practice real-world analytics workflows using SAS and demonstrate how raw business data can be transformed into meaningful insights for decision-making.

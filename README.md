# Real Estate Property Analysis using SAS

## Project Overview
Analyzed property sales data using SAS to perform exploratory data analysis,
feature engineering, filtering, and business reporting.

## Dataset
properties.csv

Columns:
- PropertyID: Unique property identifier
- Location: Property area category
- Size_sqft: Property size
- SalePrice: Selling price

## Tools Used
- SAS Studio
- PROC IMPORT
- PROC PRINT
- PROC MEANS
- PROC FREQ
- PROC SQL
- SAS DATA Step

## Analysis Workflow

1. Data Import
Imported CSV dataset into SAS environment.


2. Exploratory Data Analysis

Calculated:
- Average property size
- Average selling price
- Minimum and maximum prices
- Location distribution

3. Feature Engineering

Created:

Price_Per_Sqft = SalePrice / Size_sqft

Created property category:
- Luxury: SalePrice >= 500000
- Standard: SalePrice < 500000

4. SQL Analysis

Used PROC SQL to:
- Filter expensive properties
- Perform business-style queries

## Key Insights

Example:
- Identified luxury properties based on pricing threshold.
- Compared property distribution across locations.
- Calculated price efficiency using Price_Per_Sqft.

## Project Screenshots

1. Dataset Import
2. Summary Statistics
3. Location Analysis
4. SQL Filtering
5. Feature Engineering Output

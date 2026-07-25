/* Import the CSV dataset into SAS */

PROC IMPORT
DATAFILE="/home/u64559084/properties.csv"
OUT=WORK.IMPORT
DBMS=CSV
REPLACE;
GETNAMES=YES;
RUN;


/* Create a new dataset to keep the original data unchanged
   and add calculated columns for analysis */

DATA property_analysis;

SET WORK.IMPORT;

Price_Per_Sqft = SalePrice / Size_sqft;

IF SalePrice >= 500000 THEN Category="Luxury";
ELSE Category="Standard";

RUN;


/* Display the transformed dataset */

PROC PRINT DATA=property_analysis;
RUN;


/* Check variable names, data types and dataset information */

PROC CONTENTS DATA=property_analysis;
RUN;


/* Calculate summary statistics for numerical columns */

PROC MEANS DATA=property_analysis;

VAR SalePrice Size_sqft Price_Per_Sqft;

RUN;


/* Count properties by location and category */

PROC FREQ DATA=property_analysis;

TABLES Location Category;

RUN;


/* Display only luxury properties */

PROC PRINT DATA=property_analysis;

WHERE Category="Luxury";

RUN;


/* Sort properties by sale price in descending order */

PROC SORT DATA=property_analysis
OUT=sorted_data;

BY DESCENDING SalePrice;

RUN;


/* Display the sorted dataset */

PROC PRINT DATA=sorted_data;
RUN;


/* Find properties with sale price above 400000 */

PROC SQL;

SELECT PropertyID,
       Location,
       SalePrice,
       Price_Per_Sqft
FROM property_analysis
WHERE SalePrice > 400000
ORDER BY SalePrice DESC;

QUIT;


/* Compare sale prices across different locations */

PROC SQL;

SELECT Location,
       COUNT(*) AS Total_Properties,
       AVG(SalePrice) AS Average_Price,
       MAX(SalePrice) AS Highest_Price,
       MIN(SalePrice) AS Lowest_Price
FROM property_analysis
GROUP BY Location;

QUIT;


/* Display properties priced above the average sale price */

PROC SQL;

SELECT *
FROM property_analysis
WHERE SalePrice >
(
SELECT AVG(SalePrice)
FROM property_analysis
);

QUIT;


/* Calculate the average sale price for each property category */

PROC MEANS DATA=property_analysis
MEAN;

CLASS Category;

VAR SalePrice;

RUN;


/* Export the final dataset for future use */

PROC EXPORT DATA=property_analysis
OUTFILE="/home/u64559084/property_report.csv"
DBMS=CSV
REPLACE;

RUN;
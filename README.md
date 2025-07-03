# Data Analyst Intern at Elevate Labs Task 1
1. Handling Missing Values
Issue Identified: Certain columns in the dataset had missing or blank entries.
Actions Taken:
  Numerical columns: Filled missing values with appropriate statistics (mean, median, or mode).
  Categorical columns: Used the most frequent value (mode) or a placeholder like "Unknown" or "N/A".
  In some cases, rows or columns with excessive missing data were removed entirely to maintain data quality.
Outcome: The dataset became complete and consistent, minimizing the risk of skewed results during analysis.

2. Removing Duplicates
Issue Identified: Duplicate rows were found, which could distort analysis results.
Actions Taken:
  Used Pandas’ .drop_duplicates() function (or Excel’s “Remove Duplicates” feature) to eliminate exact and partial duplicates.
  Ensured that the most relevant or recent records were retained where needed.
Outcome: A cleaner dataset with unique, reliable entries, improving the integrity of downstream tasks.

3. Standardizing Data Formats
Issue Identified: Inconsistencies in formatting (e.g., date formats, capitalization, extra spaces).
Actions Taken:
  Standardized date formats to YYYY-MM-DD.
  Trimmed extra spaces and converted all text fields to a consistent case (e.g., all lowercase).
  Ensured numeric values had consistent decimal precision and units.
Outcome: Data became more structured and easier to parse, group, and visualize.

4. Correcting Invalid Data
Issue Identified: Some entries had impossible or out-of-range values (e.g., negative ages, future dates).
Actions Taken:
  Applied logical filters to flag and fix or remove erroneous entries.
  Revalidated against known constraints or business rules.
Outcome: Enhanced accuracy and validity of the dataset.

5. Data Type Conversion
Issue Identified: Certain columns had incorrect data types (e.g., numbers stored as strings).
Actions Taken:
  Used Pandas functions like astype() to convert data types appropriately.
  Ensured dates, integers, floats, and strings were correctly interpreted.
Outcome: Enabled more efficient analysis and accurate computations.
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Data-Analyst-Intern-at-Elevate-Labs-Task-2
To began with, I started exploring the Ecommerce_Product_Sales.csv dataset, which contains 500 records with fields such as Product ID, Name, Category, Price, Units Sold, Revenue, Rating, Return Rate, and Seller Name. After verifying that the data was clean and properly structured, I imported it into Tableau Public to build a professional dashboard aimed at conveying meaningful business insights.

My objective was to visually analyze the performance of different product categories, sellers, and ratings, while also considering key metrics like revenue, return rate, and sales volume. To achieve this, we created four core visualizations: a treemap showing Seller Performance, a scatter plot for Product Rating vs Sales, a horizontal bar chart for Revenue by Category, and a vertical bar chart displaying Return Rate by Category.

From these charts, I extracted several insights. I observed that Seller_A and Seller_C are the top revenue contributors. Products with higher ratings tend to sell more, showing a positive relationship between quality and demand. The Automotive and Electronics categories lead in revenue but also suffer from the highest return rates, indicating potential issues with product quality, customer expectations, or description accuracy.

To communicate these findings effectively, I structured a storyboard with the following slides: an overview of sales performance, an analysis of category-level tradeoffs between revenue and return rates, a breakdown of how product ratings influence sales, a seller performance snapshot, and a final action plan summarizing business recommendations. These insights and visual elements together form a comprehensive Tableau dashboard that not only visualizes the data but also tells a compelling, insight-driven story to support decision-making.
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Data-Analyst-Intern-at-Elevate-Labs-Task-3
Worked on designing an interactive Dashboard in Tableau for business stakeholders, starting with the dataset (Ecommerce_Product_Sales.csv). The goal was to visualize key performance indicators like total revenue, profit, and units sold, along with time-series trends and product/category performance. To support this, I drafted a professional PowerPoint summary outlining the objectives, insights, and dashboard structure. Added filters for interactivity and consistent design themes. All design and visuals were clearly defined in the Task 3 pdf for easy implementation in Tableau Desktop.
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Data-Analyst-Intern-at-Elevate-Labs-Task-4
I learned how to use SQL for Data Analysis. I began by importing the Ecommerce_Product_Sales.csv dataset and outlined the structure of the corresponding SQL table. I then created SQL queries to analyze the data, covering essential concepts such as SELECT, WHERE, GROUP BY, ORDER BY, and aggregate functions like SUM and AVG. These queries included calculating total sales by category, identifying the top-selling products, analyzing regional sales performance, and filtering products with above-average sales using subqueries. I also included a JOIN query to analyze customer spending and created a view to track monthly sales. To optimize performance, I created indexes on frequently queried columns.
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Data-Analyst-Intern-at-Elevate-Labs-Task-5
In the analysis, I performed a comprehensive Exploratory Data Analysis (EDA) on the Ecommerce_Product_Sales.csv dataset using Python libraries such as Pandas, Matplotlib, and Seaborn. I began by loading and inspecting the dataset to understand its structure, confirming that it contains 500 entries and 9 features with no missing values. Univariate analysis was conducted to explore the distribution of key numerical features such as price, units sold, revenue, rating, and return rate, along with categorical variables like product category and seller name. Bivariate and multivariate analyses were then used to uncover relationships between features using correlation heatmaps, scatterplots, and pairplots. Key insights were drawn, including a strong correlation between units sold and revenue, variable pricing trends across product categories, and generally low return rates. I concluded the EDA by summarizing these findings in a detailed report and generating a Jupyter Notebook that visually and statistically captures all observations, which can be further used for business insights, decision-making, or advanced modeling.

Summary of Findings
- Price is right-skewed with a wide range.
- Most products have moderate to high ratings.
- Strong positive correlation between Units Sold and Revenue.
- Certain categories like Electronics have higher average prices.
- Return Rate is generally low but varies slightly across products.
 -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------











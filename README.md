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

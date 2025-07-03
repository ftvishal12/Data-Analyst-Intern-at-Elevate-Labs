import sqlite3
import pandas as pd
import matplotlib.pyplot as plt

# Step 1: Load the CSV into a DataFrame
csv_file = "Ecommerce_Product_Sales.csv"
df = pd.read_csv(csv_file)

# Step 2: Create SQLite database and insert data
conn = sqlite3.connect("sales_data.db")
df.to_sql("sales", conn, if_exists="replace", index=False)

# Step 3: SQL query for summary
query = """
SELECT product, 
       SUM(quantity) AS total_qty, 
       SUM(quantity * price) AS revenue
FROM sales
GROUP BY product
"""

# Step 4: Execute query and load result into DataFrame
summary_df = pd.read_sql_query(query, conn)

# Step 5: Display output
print("Sales Summary:\n", summary_df)

# Step 6: Plot bar chart
summary_df.plot(kind='bar', x='product', y='revenue', legend=False)
plt.title("Total Revenue by Product")
plt.ylabel("Revenue")
plt.tight_layout()
plt.savefig("sales_chart.png")
plt.show()

# Step 7: Close connection
conn.close()

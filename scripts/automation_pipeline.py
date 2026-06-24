import pandas as pd

# Load raw dataset
df = pd.read_csv("data/raw/SampleSuperstore.csv")

# Basic cleaning
df.columns = df.columns.str.lower().str.replace(" ", "_")
df = df.drop_duplicates()

# Save cleaned dataset
df.to_csv("data/processed/cleaned_superstore.csv", index=False)

# Calculate KPIs
total_sales = df["sales"].sum()
total_profit = df["profit"].sum()
total_orders = len(df)

kpi_df = pd.DataFrame({
    "Metric": ["Total Sales", "Total Profit", "Total Orders"],
    "Value": [total_sales, total_profit, total_orders]
})

# Export KPI summary
kpi_df.to_excel("reports/kpi_summary.xlsx", index=False)

print("Automation pipeline executed successfully.")
print(kpi_df)
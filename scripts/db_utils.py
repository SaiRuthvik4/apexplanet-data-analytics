import sqlite3
import pandas as pd

DB_PATH = "../data/database/superstore.db"

def get_connection():
    return sqlite3.connect(DB_PATH)

def run_query(query):
    conn = get_connection()
    result = pd.read_sql(query, conn)
    conn.close()
    return result

if __name__ == "__main__":
    query = """
    SELECT
        region,
        ROUND(SUM(CAST(profit AS REAL)),2) AS total_profit
    FROM superstore
    GROUP BY region
    ORDER BY total_profit DESC;
    """

    print(run_query(query))
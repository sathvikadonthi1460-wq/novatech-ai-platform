import os
import re
import psycopg2

from dotenv import load_dotenv
from groq import Groq


load_dotenv()


# ==========================================================
# GROQ CLIENT
# ==========================================================

import os
from groq import Groq

def get_groq_client():

    api_key = os.getenv("GROQ_API_KEY")

    if not api_key:
        raise ValueError(
            "GROQ_API_KEY environment variable is not configured."
        )

    return Groq(
        api_key=api_key
    )


# ==========================================================
# NOVATECH DATABASE SCHEMA
# ==========================================================

DATABASE_SCHEMA = """
You are working with a PostgreSQL database.

TABLE customers
- customer_id INTEGER PRIMARY KEY
- customer_name VARCHAR
- email VARCHAR
- country VARCHAR
- signup_date DATE
- customer_segment VARCHAR

TABLE subscriptions
- subscription_id INTEGER PRIMARY KEY
- customer_id INTEGER REFERENCES customers(customer_id)
- plan_name VARCHAR
- monthly_price NUMERIC
- start_date DATE
- status VARCHAR
- churned BOOLEAN

TABLE transactions
- transaction_id INTEGER PRIMARY KEY
- customer_id INTEGER REFERENCES customers(customer_id)
- amount NUMERIC
- transaction_date DATE
- transaction_type VARCHAR

TABLE product_usage
- usage_id INTEGER PRIMARY KEY
- customer_id INTEGER REFERENCES customers(customer_id)
- usage_date DATE
- login_count INTEGER
- feature_usage_count INTEGER
- session_minutes NUMERIC

TABLE support_tickets
- ticket_id INTEGER PRIMARY KEY
- customer_id INTEGER REFERENCES customers(customer_id)
- issue_type VARCHAR
- priority VARCHAR
- status VARCHAR
- created_date DATE
- resolution_hours NUMERIC

RELATIONSHIPS:
customers.customer_id = subscriptions.customer_id
customers.customer_id = transactions.customer_id
customers.customer_id = product_usage.customer_id
customers.customer_id = support_tickets.customer_id
"""

# ==========================================================
# GENERATE SQL FROM NATURAL LANGUAGE
# ==========================================================

def generate_sql(question):

    prompt = f"""
You are a PostgreSQL expert for the NovaTech business analytics system.

Convert the user's business question into ONE read-only
PostgreSQL SELECT query.

DATABASE SCHEMA:
{DATABASE_SCHEMA}

RULES:
1. Generate only a SELECT query.
2. Use only the tables and columns in the schema.
3. Use customer_id when joining related tables.
4. For revenue, use transactions.amount.
5. For churn, use subscriptions.churned.
6. For churn rate, calculate the percentage where churned = TRUE.
7. Never generate INSERT, UPDATE, DELETE, DROP, ALTER,
   TRUNCATE, CREATE, GRANT, REVOKE, or COPY.
8. Do not invent tables or columns.
9. Return only the SQL query.
10. Do not use Markdown code fences.
11. If the question cannot be answered from this database,
    return exactly: UNSUPPORTED

USER QUESTION:
{question}
"""
    client = get_groq_client()
    response = client.chat.completions.create(
        model="openai/gpt-oss-120b",
        messages=[
            {
                "role": "system",
                "content": (
                    "Generate safe, read-only PostgreSQL "
                    "queries for business analytics."
                )
            },
            {
                "role": "user",
                "content": prompt
            }
        ],
        temperature=0
    )

    sql = response.choices[0].message.content.strip()

    # Remove Markdown fences if the model adds them.
    sql = re.sub(
        r"^```(?:sql)?\s*|\s*```$",
        "",
        sql,
        flags=re.IGNORECASE
    ).strip()

    return sql

# ==========================================================
# VALIDATE GENERATED SQL
# ==========================================================

def validate_sql(sql):

    if not sql:
        return False

    sql_clean = sql.strip()

    # Groq uses this when the question cannot be answered
    if sql_clean.upper() == "UNSUPPORTED":
        return False

    # Only SELECT queries are allowed
    if not sql_clean.lower().startswith("select"):
        return False

    # Block dangerous SQL commands
    forbidden_commands = [
        "insert",
        "update",
        "delete",
        "drop",
        "alter",
        "truncate",
        "create",
        "grant",
        "revoke",
        "copy"
    ]

    sql_lower = sql_clean.lower()

    for command in forbidden_commands:
        if re.search(rf"\b{command}\b", sql_lower):
            return False

    # Prevent multiple SQL statements
    statements = [
        statement.strip()
        for statement in sql_clean.split(";")
        if statement.strip()
    ]

    if len(statements) != 1:
        return False

    return True

# ==========================================================
# EXECUTE SAFE SQL
# ==========================================================

def execute_sql(sql):

    if not validate_sql(sql):
        raise ValueError("Unsafe or unsupported SQL query.")

    connection = psycopg2.connect(
        host=os.getenv("DB_HOST"),
        port=os.getenv("DB_PORT"),
        database=os.getenv("DB_NAME"),
        user=os.getenv("DB_USER"),
        password=os.getenv("DB_PASSWORD")
    )

    cursor = connection.cursor()

    try:
        cursor.execute(sql)

        rows = cursor.fetchall()

        columns = [
            description[0]
            for description in cursor.description
        ]

        return {
            "columns": columns,
            "rows": rows
        }

    finally:
        cursor.close()
        connection.close()

# ==========================================================
# TEST TEXT-TO-SQL
# ==========================================================

if __name__ == "__main__":

    question = "Compare average product usage across customer segments."

    print("\nQUESTION:")
    print(question)

    sql = generate_sql(question)

    print("\nGENERATED SQL:")
    print(sql)

    print("\nSAFE:")
    print(validate_sql(sql))

    if validate_sql(sql):

        result = execute_sql(sql)

        print("\nCOLUMNS:")
        print(result["columns"])

        print("\nRESULT:")
        for row in result["rows"]:
            print(row)
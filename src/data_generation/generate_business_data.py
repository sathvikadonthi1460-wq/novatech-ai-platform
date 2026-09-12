import os
import random
from datetime import date, timedelta

import psycopg2
from dotenv import load_dotenv
from faker import Faker


# ==========================================================
# 1. LOAD ENVIRONMENT VARIABLES
# ==========================================================

load_dotenv()

DB_HOST = os.getenv("DB_HOST")
DB_PORT = os.getenv("DB_PORT")
DB_NAME = os.getenv("DB_NAME")
DB_USER = os.getenv("DB_USER")
DB_PASSWORD = os.getenv("DB_PASSWORD")


# ==========================================================
# 2. CONFIGURATION
# ==========================================================

fake = Faker()

# Make generated data reproducible
Faker.seed(42)
random.seed(42)

NUMBER_OF_CUSTOMERS = 500


# ==========================================================
# 3. CONNECT TO POSTGRESQL
# ==========================================================

print("\nConnecting to PostgreSQL...")

connection = psycopg2.connect(
    host=DB_HOST,
    port=DB_PORT,
    database=DB_NAME,
    user=DB_USER,
    password=DB_PASSWORD
)

cursor = connection.cursor()

print("Connected to NovaTech PostgreSQL successfully!")


# ==========================================================
# 4. CLEAR EXISTING DATA
# ==========================================================

print("Clearing existing business data...")

cursor.execute("""
    TRUNCATE TABLE
        product_usage,
        support_tickets,
        transactions,
        subscriptions,
        customers
    RESTART IDENTITY CASCADE;
""")

connection.commit()


# ==========================================================
# 5. BUSINESS CONFIGURATION
# ==========================================================

plans = {
    "Basic": 29.00,
    "Standard": 59.00,
    "Premium": 99.00
}

segments = [
    "Individual",
    "Small Business",
    "Mid-Market",
    "Enterprise"
]

countries = [
    "United States",
    "Canada",
    "United Kingdom",
    "Germany",
    "Australia"
]

issue_types = [
    "Billing",
    "Technical",
    "Login",
    "Performance",
    "Feature Request"
]

priorities = [
    "Low",
    "Medium",
    "High"
]


# ==========================================================
# 6. GENERATE CUSTOMERS
# ==========================================================

print(f"Generating {NUMBER_OF_CUSTOMERS} customers...")


for _ in range(NUMBER_OF_CUSTOMERS):

    # ------------------------------------------------------
    # CUSTOMER INFORMATION
    # ------------------------------------------------------

    customer_name = fake.name()
    email = fake.unique.email()

    country = random.choice(countries)
    customer_segment = random.choice(segments)

    signup_date = (
        date.today()
        - timedelta(days=random.randint(90, 1200))
    )

    cursor.execute(
        """
        INSERT INTO customers (
            customer_name,
            email,
            country,
            signup_date,
            customer_segment
        )
        VALUES (%s, %s, %s, %s, %s)
        RETURNING customer_id;
        """,
        (
            customer_name,
            email,
            country,
            signup_date,
            customer_segment
        )
    )

    customer_id = cursor.fetchone()[0]


    # ------------------------------------------------------
    # SUBSCRIPTION PLAN
    # ------------------------------------------------------

    plan_name = random.choices(
        ["Basic", "Standard", "Premium"],
        weights=[45, 35, 20],
        k=1
    )[0]

    monthly_price = plans[plan_name]


    # ------------------------------------------------------
    # CUSTOMER PRODUCT BEHAVIOR
    # ------------------------------------------------------

    average_logins = random.randint(1, 25)

    average_feature_usage = random.randint(1, 20)

    average_session_minutes = round(
        random.uniform(5, 180),
        2
    )


    # ------------------------------------------------------
    # SUPPORT TICKET BEHAVIOR
    # ------------------------------------------------------

    number_of_tickets = random.choices(
        [0, 1, 2, 3, 4, 5, 6],
        weights=[25, 25, 18, 12, 9, 6, 5],
        k=1
    )[0]


    # ------------------------------------------------------
    # CREATE REALISTIC CHURN SIGNAL
    # ------------------------------------------------------

    churn_probability = 0.08

    # Low login activity increases churn probability
    if average_logins < 5:
        churn_probability += 0.20

    # Low feature engagement increases churn probability
    if average_feature_usage < 5:
        churn_probability += 0.15

    # Many support problems increase churn probability
    if number_of_tickets >= 4:
        churn_probability += 0.25

    # Basic customers are slightly more likely to churn
    if plan_name == "Basic":
        churn_probability += 0.10

    # Premium customers are slightly less likely to churn
    if plan_name == "Premium":
        churn_probability -= 0.05

    # Keep probability in reasonable range
    churn_probability = max(
        0.02,
        min(churn_probability, 0.80)
    )

    churned = (
        random.random() < churn_probability
    )

    if churned:
        subscription_status = "Cancelled"
    else:
        subscription_status = "Active"


    # ------------------------------------------------------
    # INSERT SUBSCRIPTION
    # ------------------------------------------------------

    cursor.execute(
        """
        INSERT INTO subscriptions (
            customer_id,
            plan_name,
            monthly_price,
            start_date,
            status,
            churned
        )
        VALUES (%s, %s, %s, %s, %s, %s);
        """,
        (
            customer_id,
            plan_name,
            monthly_price,
            signup_date,
            subscription_status,
            churned
        )
    )


    # ------------------------------------------------------
    # GENERATE PRODUCT USAGE
    # 3 monthly usage records per customer
    # ------------------------------------------------------

    for month_offset in range(3):

        usage_date = (
            date.today()
            - timedelta(days=30 * month_offset)
        )

        login_count = max(
            0,
            average_logins + random.randint(-3, 3)
        )

        feature_usage_count = max(
            0,
            average_feature_usage + random.randint(-2, 2)
        )

        session_minutes = max(
            1,
            average_session_minutes
            + random.uniform(-15, 15)
        )

        cursor.execute(
            """
            INSERT INTO product_usage (
                customer_id,
                usage_date,
                login_count,
                feature_usage_count,
                session_minutes
            )
            VALUES (%s, %s, %s, %s, %s);
            """,
            (
                customer_id,
                usage_date,
                login_count,
                feature_usage_count,
                round(session_minutes, 2)
            )
        )


    # ------------------------------------------------------
    # GENERATE SUPPORT TICKETS
    # ------------------------------------------------------

    for _ in range(number_of_tickets):

        issue_type = random.choice(issue_types)

        priority = random.choice(priorities)

        ticket_status = random.choice(
            [
                "Resolved",
                "Closed",
                "Open"
            ]
        )

        created_date = (
            date.today()
            - timedelta(days=random.randint(1, 180))
        )

        resolution_hours = round(
            random.uniform(1, 72),
            2
        )

        cursor.execute(
            """
            INSERT INTO support_tickets (
                customer_id,
                issue_type,
                priority,
                status,
                created_date,
                resolution_hours
            )
            VALUES (%s, %s, %s, %s, %s, %s);
            """,
            (
                customer_id,
                issue_type,
                priority,
                ticket_status,
                created_date,
                resolution_hours
            )
        )


    # ------------------------------------------------------
    # GENERATE TRANSACTIONS
    # ------------------------------------------------------

    months_as_customer = (
        date.today() - signup_date
    ).days // 30

    months_as_customer = max(
        1,
        min(months_as_customer, 12)
    )

    for month_offset in range(months_as_customer):

        transaction_date = (
            date.today()
            - timedelta(days=30 * month_offset)
        )

        cursor.execute(
            """
            INSERT INTO transactions (
                customer_id,
                amount,
                transaction_date,
                transaction_type
            )
            VALUES (%s, %s, %s, %s);
            """,
            (
                customer_id,
                monthly_price,
                transaction_date,
                "Subscription Payment"
            )
        )


# ==========================================================
# 7. SAVE EVERYTHING
# ==========================================================

connection.commit()

print("\nBusiness data generated successfully!")


# ==========================================================
# 8. CHECK TABLE COUNTS
# ==========================================================

tables = [
    "customers",
    "subscriptions",
    "transactions",
    "support_tickets",
    "product_usage"
]

print("\n" + "=" * 55)
print("NOVATECH DATABASE SUMMARY")
print("=" * 55)


for table in tables:

    cursor.execute(
        f"SELECT COUNT(*) FROM {table};"
    )

    count = cursor.fetchone()[0]

    print(
        f"{table:<20} {count} rows"
    )


# ==========================================================
# 9. CHECK CHURN DISTRIBUTION
# ==========================================================

cursor.execute("""
    SELECT
        churned,
        COUNT(*)
    FROM subscriptions
    GROUP BY churned
    ORDER BY churned;
""")

churn_results = cursor.fetchall()

print("\n" + "=" * 55)
print("CHURN DISTRIBUTION")
print("=" * 55)

for churned, count in churn_results:

    label = (
        "Churned"
        if churned
        else "Active"
    )

    print(
        f"{label:<20} {count} customers"
    )


# ==========================================================
# 10. CLOSE DATABASE CONNECTION
# ==========================================================

cursor.close()
connection.close()

print("\n" + "=" * 55)
print("Database connection closed successfully.")
print("=" * 55)
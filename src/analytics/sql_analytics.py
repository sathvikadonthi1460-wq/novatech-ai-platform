import os

import psycopg2
from dotenv import load_dotenv


load_dotenv()


def get_connection():
    return psycopg2.connect(
        host=os.getenv("DB_HOST"),
        port=os.getenv("DB_PORT"),
        database=os.getenv("DB_NAME"),
        user=os.getenv("DB_USER"),
        password=os.getenv("DB_PASSWORD")
    )
# ==========================================================
# GET CUSTOMER PROFILE FOR CHURN PREDICTION
# ==========================================================

def get_customer_churn_profile(customer_id):

    connection = get_connection()
    cursor = connection.cursor()

    try:

        query = """
            SELECT
                c.customer_id,
                c.customer_segment,
                c.country,

                s.plan_name,
                s.monthly_price,

                CURRENT_DATE - c.signup_date
                    AS tenure_days,

                COALESCE(
                    ticket_stats.ticket_count,
                    0
                ) AS support_ticket_count,

                COALESCE(
                    usage_stats.avg_logins,
                    0
                ) AS avg_logins,

                COALESCE(
                    usage_stats.avg_feature_usage,
                    0
                ) AS avg_feature_usage,

                COALESCE(
                    usage_stats.avg_session_minutes,
                    0
                ) AS avg_session_minutes

            FROM customers c

            JOIN subscriptions s
                ON c.customer_id = s.customer_id

            LEFT JOIN (
                SELECT
                    customer_id,
                    COUNT(*) AS ticket_count
                FROM support_tickets
                GROUP BY customer_id
            ) ticket_stats
                ON c.customer_id =
                   ticket_stats.customer_id

            LEFT JOIN (
                SELECT
                    customer_id,
                    AVG(login_count)
                        AS avg_logins,
                    AVG(feature_usage_count)
                        AS avg_feature_usage,
                    AVG(session_minutes)
                        AS avg_session_minutes
                FROM product_usage
                GROUP BY customer_id
            ) usage_stats
                ON c.customer_id =
                   usage_stats.customer_id

            WHERE c.customer_id = %s;
        """

        cursor.execute(
            query,
            (customer_id,)
        )

        row = cursor.fetchone()

        if row is None:
            return None

        return {

            "customer_id": row[0],

            "customer_segment": row[1],

            "country": row[2],

            "plan_name": row[3],

            "monthly_price": float(row[4]),

            "tenure_days": int(row[5]),

            "support_ticket_count": int(row[6]),

            "avg_logins": float(row[7]),

            "avg_feature_usage": float(row[8]),

            "avg_session_minutes": float(row[9])
        }

    finally:

        cursor.close()
        connection.close()


# ==========================================================
# GET CUSTOMER IDS
# ==========================================================

def get_customer_ids():

    connection = get_connection()
    cursor = connection.cursor()

    try:

        cursor.execute("""
            SELECT customer_id
            FROM customers
            ORDER BY customer_id;
        """)

        rows = cursor.fetchall()

        return [
            row[0]
            for row in rows
        ]

    finally:

        cursor.close()
        connection.close()

def run_business_query(question):

    question_lower = question.lower()

    connection = get_connection()
    cursor = connection.cursor()

    try:
        # --------------------------------------------------
        # Revenue by customer segment
        # --------------------------------------------------
        if (
            "segment" in question_lower
            and "revenue" in question_lower
        ):

            cursor.execute("""
                SELECT
                    c.customer_segment,
                    ROUND(SUM(t.amount), 2) AS total_revenue
                FROM customers c
                JOIN transactions t
                    ON c.customer_id = t.customer_id
                GROUP BY c.customer_segment
                ORDER BY total_revenue DESC
                LIMIT 1;
            """)

            row = cursor.fetchone()

            return {
                "answer": (
                    f"{row[0]} generates the highest revenue "
                    f"with total revenue of ${row[1]}."
                ),
                "source": "PostgreSQL: customers + transactions"
            }

        # --------------------------------------------------
        # Churn rate by plan
        # --------------------------------------------------
        elif (
            "churn rate" in question_lower
            and "plan" in question_lower
        ):

            cursor.execute("""
                SELECT
                    plan_name,
                    ROUND(
                        100.0 * SUM(
                            CASE WHEN churned THEN 1 ELSE 0 END
                        ) / COUNT(*),
                        2
                    ) AS churn_rate_percent
                FROM subscriptions
                GROUP BY plan_name
                ORDER BY churn_rate_percent DESC
                LIMIT 1;
            """)

            row = cursor.fetchone()

            return {
                "answer": (
                    f"{row[0]} has the highest churn rate "
                    f"at {row[1]}%."
                ),
                "source": "PostgreSQL: subscriptions"
            }

        # --------------------------------------------------
        # Total customers
        # --------------------------------------------------
        elif "total customers" in question_lower:

            cursor.execute("""
                SELECT COUNT(*)
                FROM customers;
            """)

            count = cursor.fetchone()[0]

            return {
                "answer": (
                    f"NovaTech currently has {count} customers "
                    f"in the database."
                ),
                "source": "PostgreSQL: customers"
            }

        else:
            return {
                "answer": (
                    "This SQL question is not supported yet."
                ),
                "source": "PostgreSQL"
            }

    finally:
        cursor.close()
        connection.close()


if __name__ == "__main__":

    question = (
        "Which customer segment generates the most revenue?"
    )

    result = run_business_query(question)

    print("\nQuestion:")
    print(question)

    print("\nAnswer:")
    print(result["answer"])

    print("\nSource:")
    print(result["source"])

if __name__ == "__main__":

    print("\nCUSTOMER IDS")
    print("=" * 60)

    customer_ids = get_customer_ids()

    print(customer_ids[:10])

    if customer_ids:

        test_customer_id = customer_ids[0]

        print("\nTEST CUSTOMER")
        print("=" * 60)

        print(
            "Customer ID:",
            test_customer_id
        )

        profile = get_customer_churn_profile(
            test_customer_id
        )

        print("\nCUSTOMER PROFILE")
        print("=" * 60)

        for key, value in profile.items():

            print(
                f"{key}: {value}"
            )
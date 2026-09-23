import os

import psycopg2
from text_to_sql import generate_sql, validate_sql, execute_sql
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

        # ==================================================
        # 1. HIGHEST REVENUE CUSTOMER SEGMENT
        # ==================================================
        if (
            "revenue" in question_lower
            and "segment" in question_lower
            and (
                "highest" in question_lower
                or "most revenue" in question_lower
                or "generates the most" in question_lower
            )
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

        # ==================================================
        # 2. REVENUE BY ALL CUSTOMER SEGMENTS
        # ==================================================
        elif (
            "revenue" in question_lower
            and "segment" in question_lower
        ):

            cursor.execute("""
                SELECT
                    c.customer_segment,
                    ROUND(SUM(t.amount), 2) AS total_revenue
                FROM customers c
                JOIN transactions t
                    ON c.customer_id = t.customer_id
                GROUP BY c.customer_segment
                ORDER BY total_revenue DESC;
            """)

            rows = cursor.fetchall()

            answer_lines = [
                f"{segment}: ${revenue}"
                for segment, revenue in rows
            ]

            return {
                "answer": (
                    "Revenue by customer segment:\n\n"
                    + "\n".join(answer_lines)
                ),
                "source": "PostgreSQL: customers + transactions"
            }

                # ==================================================
        # 3. CHURN RATE FOR A SPECIFIC PLAN
        # ==================================================
        elif (
            "churn" in question_lower
            and "basic" in question_lower
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
                WHERE LOWER(plan_name) = 'basic'
                GROUP BY plan_name;
            """)

            row = cursor.fetchone()

            return {
                "answer": (
                    f"{row[0]} plan has a churn rate "
                    f"of {row[1]}%."
                ),
                "source": "PostgreSQL: subscriptions"
            }


        elif (
            "churn" in question_lower
            and "standard" in question_lower
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
                WHERE LOWER(plan_name) = 'standard'
                GROUP BY plan_name;
            """)

            row = cursor.fetchone()

            return {
                "answer": (
                    f"{row[0]} plan has a churn rate "
                    f"of {row[1]}%."
                ),
                "source": "PostgreSQL: subscriptions"
            }


        elif (
            "churn" in question_lower
            and "premium" in question_lower
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
                WHERE LOWER(plan_name) = 'premium'
                GROUP BY plan_name;
            """)

            row = cursor.fetchone()

            return {
                "answer": (
                    f"{row[0]} plan has a churn rate "
                    f"of {row[1]}%."
                ),
                "source": "PostgreSQL: subscriptions"
            }


        # ==================================================
        # 4. CHURN RATE BY ALL PLANS
        # ==================================================
        elif (
            "churn" in question_lower
            and "plan" in question_lower
            and (
                "by plan" in question_lower
                or "by plans" in question_lower
                or "all plan" in question_lower
                or "each plan" in question_lower
                or "every plan" in question_lower
            )
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
                ORDER BY churn_rate_percent DESC;
            """)

            rows = cursor.fetchall()

            answer_lines = [
                f"{plan}: {rate}%"
                for plan, rate in rows
            ]

            return {
                "answer": (
                    "Churn rate by subscription plan:\n\n"
                    + "\n".join(answer_lines)
                ),
                "source": "PostgreSQL: subscriptions"
            }


        # ==================================================
        # 5. HIGHEST CHURN-RATE PLAN
        # ==================================================
        elif (
            "churn" in question_lower
            and "plan" in question_lower
            and (
                "highest" in question_lower
                or "most churn" in question_lower
            )
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
        # ==================================================
        # 4. OVERALL CHURN RATE
        # ==================================================
        elif "churn rate" in question_lower:

            cursor.execute("""
                SELECT
                    ROUND(
                        100.0 * SUM(
                            CASE
                                WHEN churned THEN 1
                                ELSE 0
                            END
                        ) / COUNT(*),
                        2
                    )
                FROM subscriptions;
            """)

            churn_rate = cursor.fetchone()[0]

            return {
                "answer": (
                    f"The overall customer churn rate is "
                    f"{churn_rate}%."
                ),
                "source": "PostgreSQL: subscriptions"
            }

        # ==================================================
        # 5. NUMBER OF CHURNED CUSTOMERS
        # ==================================================
        elif (
            "churned" in question_lower
            and "customer" in question_lower
        ):

            cursor.execute("""
                SELECT COUNT(DISTINCT customer_id)
                FROM subscriptions
                WHERE churned = TRUE;
            """)

            count = cursor.fetchone()[0]

            return {
                "answer": (
                    f"NovaTech has {count} churned customers."
                ),
                "source": "PostgreSQL: subscriptions"
            }

        # ==================================================
        # 6. COUNTRY WITH MOST CUSTOMERS
        # ==================================================
        elif (
            "country" in question_lower
            and "customer" in question_lower
            and (
                "most" in question_lower
                or "highest" in question_lower
            )
        ):

            cursor.execute("""
                SELECT
                    country,
                    COUNT(*) AS customer_count
                FROM customers
                GROUP BY country
                ORDER BY customer_count DESC
                LIMIT 1;
            """)

            row = cursor.fetchone()

            return {
                "answer": (
                    f"{row[0]} has the most customers "
                    f"with {row[1]} customers."
                ),
                "source": "PostgreSQL: customers"
            }

        # ==================================================
        # 7. CUSTOMERS BY ALL COUNTRIES
        # ==================================================
        elif (
            "country" in question_lower
            and "customer" in question_lower
        ):

            cursor.execute("""
                SELECT
                    country,
                    COUNT(*) AS customer_count
                FROM customers
                GROUP BY country
                ORDER BY customer_count DESC;
            """)

            rows = cursor.fetchall()

            answer_lines = [
                f"{country}: {count} customers"
                for country, count in rows
            ]

            return {
                "answer": (
                    "Customers by country:\n\n"
                    + "\n".join(answer_lines)
                ),
                "source": "PostgreSQL: customers"
            }

        # ==================================================
        # 8. TOTAL CUSTOMERS
        # ==================================================
        elif (
            "total customers" in question_lower
            or "how many customers" in question_lower
            or "number of customers" in question_lower
        ):

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

        # ==================================================
        # 9. AI TEXT-TO-SQL FALLBACK
        # ==================================================
        else:

            generated_sql = generate_sql(question)

            if not validate_sql(generated_sql):

                return {
                    "answer": (
                        "I couldn't answer this question using "
                        "the available NovaTech business data."
                    ),
                    "source": "PostgreSQL"
                }

            result = execute_sql(generated_sql)

            columns = result["columns"]
            rows = result["rows"]

            if not rows:

                return {
                    "answer": (
                        "The query was valid, but no matching "
                        "business data was found."
                    ),
                    "source": "PostgreSQL + Text-to-SQL"
                }

            formatted_rows = []

            for row in rows:

                values = []

                for column, value in zip(columns, row):

                    values.append(
                        f"{column.replace('_', ' ').title()}: {value}"
                    )

                formatted_rows.append(
                    " | ".join(values)
                )

            answer = "\n".join(formatted_rows)

            return {
                "answer": answer,
                "source": "PostgreSQL + Groq Text-to-SQL"
            }

    finally:

        cursor.close()
        connection.close()

# ==========================================================
# TEST BUSINESS ANALYTICS
# ==========================================================

if __name__ == "__main__":

    question = "Show the top 5 customers by total revenue."

    result = run_business_query(question)

    print("\nQUESTION:")
    print(question)

    print("\nANSWER:")
    print(result["answer"])

    print("\nSOURCE:")
    print(result["source"])
from pathlib import Path
import sys
import os

import streamlit as st
import pandas as pd
import psycopg2
from dotenv import load_dotenv


# ==========================================================
# PROJECT PATHS
# ==========================================================

PROJECT_ROOT = Path(__file__).resolve().parent.parent

sys.path.append(
    str(PROJECT_ROOT / "src" / "analytics")
)

sys.path.append(
    str(PROJECT_ROOT / "src" / "router")
)

sys.path.append(
    str(PROJECT_ROOT / "src" / "retrieval")
)

sys.path.append(
    str(PROJECT_ROOT / "src" / "ml")
)


# ==========================================================
# PROJECT IMPORTS
# ==========================================================

from sql_analytics import (
    run_business_query,
    get_customer_ids,
    get_customer_churn_profile
)

from predict_churn import predict_churn

from unified_assistant import handle_query


load_dotenv()

# ==========================================================
# 3. STREAMLIT PAGE CONFIGURATION
# ==========================================================

st.set_page_config(
    page_title="NovaTech AI Platform",
    page_icon="🤖",
    layout="wide"
)


# ==========================================================
# 4. DATABASE FUNCTION
# ==========================================================
def load_business_data():

    connection = psycopg2.connect(
        host=os.getenv("DB_HOST"),
        port=os.getenv("DB_PORT"),
        database=os.getenv("DB_NAME"),
        user=os.getenv("DB_USER"),
        password=os.getenv("DB_PASSWORD")
    )

    query = """
    SELECT
        c.customer_id,
        c.customer_segment,
        c.country,

        s.plan_name,
        s.monthly_price,
        s.churned,

        COALESCE(
            transaction_stats.total_revenue,
            0
        ) AS total_revenue,

        COALESCE(
            transaction_stats.transaction_count,
            0
        ) AS transaction_count,

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
        ) AS avg_session_minutes,

        COALESCE(
            ticket_stats.support_ticket_count,
            0
        ) AS support_ticket_count,

        COALESCE(
            ticket_stats.avg_resolution_hours,
            0
        ) AS avg_resolution_hours

    FROM customers c

    JOIN subscriptions s
        ON c.customer_id = s.customer_id

    LEFT JOIN (
        SELECT
            customer_id,
            SUM(amount) AS total_revenue,
            COUNT(*) AS transaction_count
        FROM transactions
        GROUP BY customer_id
    ) transaction_stats
        ON c.customer_id = transaction_stats.customer_id

    LEFT JOIN (
        SELECT
            customer_id,
            AVG(login_count) AS avg_logins,
            AVG(feature_usage_count) AS avg_feature_usage,
            AVG(session_minutes) AS avg_session_minutes
        FROM product_usage
        GROUP BY customer_id
    ) usage_stats
        ON c.customer_id = usage_stats.customer_id

    LEFT JOIN (
        SELECT
            customer_id,
            COUNT(*) AS support_ticket_count,
            AVG(resolution_hours) AS avg_resolution_hours
        FROM support_tickets
        GROUP BY customer_id
    ) ticket_stats
        ON c.customer_id = ticket_stats.customer_id;
    """

    df = pd.read_sql(
        query,
        connection
    )

    connection.close()

    return df

# ==========================================================
# 5. PAGE TITLE
# ==========================================================

st.title(
    "🤖 NovaTech AI & Data Intelligence Platform"
)

st.write(
    "Enterprise RAG, Business Analytics, "
    "and Customer Churn Prediction"
)

st.divider()


# ==========================================================
# 6. SIDEBAR NAVIGATION
# ==========================================================

page = st.sidebar.selectbox(
    "Choose a section",
    [
        "Company Knowledge",
        "Business Analytics",
        "Churn Prediction"
    ]
)


# ==========================================================
# 7. COMPANY KNOWLEDGE
# ==========================================================

if page == "Company Knowledge":

    st.header("📚 Company Knowledge")

    st.write(
        "Ask questions about NovaTech's policies, subscription "
        "plans, product features, refunds, and customer retention."
    )

    st.info(
        "The AI assistant searches NovaTech's internal knowledge "
        "base and generates an answer using relevant company documents."
    )

    # ======================================================
    # EXPLORE TOPICS
    # ======================================================

    st.markdown("### 🔎 Explore Company Topics")

    topic_col1, topic_col2, topic_col3, topic_col4, topic_col5 = (
        st.columns(5)
    )

    # ------------------------------------------------------
    # REFUNDS
    # ------------------------------------------------------

    with topic_col1:

        if st.button(
            "💳 Refunds",
            use_container_width=True,
            key="topic_refunds"
        ):

            st.session_state["knowledge_question"] = (
                "How long does a refund take?"
            )

    # ------------------------------------------------------
    # POLICIES
    # ------------------------------------------------------

    with topic_col2:

        if st.button(
            "📋 Policies",
            use_container_width=True,
            key="topic_policies"
        ):

            st.session_state["knowledge_question"] = (
                "What company policies are available?"
            )

    # ------------------------------------------------------
    # RETENTION
    # ------------------------------------------------------

    with topic_col3:

        if st.button(
            "🤝 Retention",
            use_container_width=True,
            key="topic_retention"
        ):

            st.session_state["knowledge_question"] = (
                "What is the maximum cancellation discount?"
            )

    # ------------------------------------------------------
    # PLANS
    # ------------------------------------------------------

    with topic_col4:

        if st.button(
            "💼 Plans",
            use_container_width=True,
            key="topic_plans"
        ):

            st.session_state["knowledge_question"] = (
                "What subscription plans are available?"
            )

    # ------------------------------------------------------
    # PRODUCT FEATURES
    # ------------------------------------------------------

    with topic_col5:

        if st.button(
            "⚙️ Features",
            use_container_width=True,
            key="topic_features"
        ):

            st.session_state["knowledge_question"] = (
                "What features are included in the Premium plan?"
            )

    st.divider()

    # ======================================================
    # QUICK QUESTIONS
    # ======================================================

    st.markdown("### ⚡ Quick Questions")

    st.write(
        "Choose an example below or type your own question."
    )

    example_col1, example_col2, example_col3 = (
        st.columns(3)
    )

    # ------------------------------------------------------
    # EXAMPLE 1
    # ------------------------------------------------------

    with example_col1:

        if st.button(
            "💳 How long does a refund take?",
            use_container_width=True,
            key="example_refund"
        ):

            st.session_state["knowledge_question"] = (
                "How long does a refund take?"
            )

    # ------------------------------------------------------
    # EXAMPLE 2
    # ------------------------------------------------------

    with example_col2:

        if st.button(
            "🤝 Maximum cancellation discount?",
            use_container_width=True,
            key="example_retention"
        ):

            st.session_state["knowledge_question"] = (
                "What is the maximum cancellation discount?"
            )

    # ------------------------------------------------------
    # EXAMPLE 3
    # ------------------------------------------------------

    with example_col3:

        if st.button(
            "⚙️ Premium plan features?",
            use_container_width=True,
            key="example_features"
        ):

            st.session_state["knowledge_question"] = (
                "What features are included in the Premium plan?"
            )

    st.divider()

    # ======================================================
    # QUESTION INPUT
    # ======================================================

    st.markdown("### 💬 Ask Company Knowledge")

    if "knowledge_question" not in st.session_state:

        st.session_state["knowledge_question"] = ""

    question = st.text_input(
        "Ask a question about NovaTech",
        key="knowledge_question",
        placeholder=(
            "Example: What features are included "
            "in the Premium plan?"
        )
    )

    # ======================================================
    # ASK BUTTON
    # ======================================================

    if st.button(
        "Ask NovaTech",
        type="primary",
        use_container_width=True,
        key="ask_company_knowledge"
    ):

        if question.strip():

            try:

                with st.spinner(
                    "Searching NovaTech's knowledge base..."
                ):

                    result = handle_query(
                        question
                    )

                # ==========================================
                # RAG RESULT
                # ==========================================

                if result["route"] == "RAG":

                    st.divider()

                    # --------------------------------------
                    # ANSWER
                    # --------------------------------------

                    st.markdown("### 📌 Answer")

                    st.success(
                        result["answer"]
                    )

                    # --------------------------------------
                    # SOURCES
                    # --------------------------------------

                    if result.get("sources"):

                        with st.expander(
                            "📚 View Sources"
                        ):

                            for source in result["sources"]:

                                st.write(
                                    f"• {source}"
                                )

                    st.caption(
                        "Answer generated from NovaTech's "
                        "internal knowledge base."
                    )

                # ==========================================
                # WRONG ROUTE
                # ==========================================

                else:

                    st.warning(
                        "This question appears to belong to "
                        "Business Analytics or Churn Prediction. "
                        "Please use the appropriate section."
                    )

            except Exception as error:

                st.error(
                    "Unable to search the company knowledge base: "
                    f"{error}"
                )

        else:

            st.warning(
                "Please enter a company knowledge question."
            )
elif page == "Business Analytics":

    # ======================================================
    # BUSINESS ANALYTICS
    # ======================================================

    st.header("📊 Business Analytics")

    st.write(
        "Monitor NovaTech's customer performance, revenue, churn, "
        "subscriptions, product usage, and support activity using "
        "live PostgreSQL business data."
    )

    st.info(
        "Live Analytics • PostgreSQL • AI Text-to-SQL"
    )

    st.divider()

    try:

        # ==================================================
        # LOAD DATA
        # ==================================================

        df = load_business_data()

        # ==================================================
        # KPI CALCULATIONS
        # ==================================================

        total_customers = df["customer_id"].nunique()

        total_revenue = df["total_revenue"].sum()

        churned_customers = (
            df.loc[df["churned"] == True, "customer_id"]
            .nunique()
        )

        active_customers = (
            df.loc[df["churned"] == False, "customer_id"]
            .nunique()
        )

        if total_customers > 0:
            churn_rate = (
                churned_customers
                / total_customers
                * 100
            )

            avg_revenue = (
                total_revenue
                / total_customers
            )

        else:
            churn_rate = 0
            avg_revenue = 0

        # ==================================================
        # KPI CARDS
        # ==================================================

        st.markdown("### 📌 Business Overview")

        kpi1, kpi2, kpi3, kpi4 = st.columns(4)

        with kpi1:
            st.metric(
                "Total Customers",
                f"{total_customers:,}"
            )

        with kpi2:
            st.metric(
                "Total Revenue",
                f"${total_revenue:,.2f}"
            )

        with kpi3:
            st.metric(
                "Churn Rate",
                f"{churn_rate:.2f}%"
            )

        with kpi4:
            st.metric(
                "Avg Revenue / Customer",
                f"${avg_revenue:,.2f}"
            )

        st.caption(
            f"Active customers: {active_customers:,}  •  "
            f"Churned customers: {churned_customers:,}"
        )

        st.divider()

        # ==================================================
        # REVENUE + SUBSCRIPTION ANALYTICS
        # ==================================================

        st.markdown(
            "### 💰 Revenue & Subscription Analytics"
        )

        chart1, chart2 = st.columns(2)

        with chart1:

            revenue_segment = (
                df.groupby(
                    "customer_segment",
                    as_index=False
                )["total_revenue"]
                .sum()
                .sort_values(
                    "total_revenue",
                    ascending=False
                )
            )

            st.markdown(
                "**Revenue by Customer Segment**"
            )

            st.bar_chart(
                revenue_segment,
                x="customer_segment",
                y="total_revenue",
                use_container_width=True
            )

        with chart2:

            plan_customers = (
                df.groupby(
                    "plan_name"
                )["customer_id"]
                .nunique()
                .sort_values(
                    ascending=False
                )
            )

            st.markdown(
                "**Customers by Subscription Plan**"
            )

            st.bar_chart(
                plan_customers,
                use_container_width=True
            )

        st.divider()

        # ==================================================
        # CHURN + COUNTRY ANALYTICS
        # ==================================================

        st.markdown(
            "### 📉 Customer & Churn Analytics"
        )

        chart3, chart4 = st.columns(2)

        with chart3:

            churn_plan = (
                df.groupby("plan_name")["churned"]
                .mean()
                .mul(100)
                .round(2)
                .sort_values(
                    ascending=False
                )
            )

            st.markdown(
                "**Churn Rate by Subscription Plan (%)**"
            )

            st.bar_chart(
                churn_plan,
                use_container_width=True
            )

        with chart4:

            country_customers = (
                df.groupby("country")["customer_id"]
                .nunique()
                .sort_values(
                    ascending=False
                )
            )

            st.markdown(
                "**Customers by Country**"
            )

            st.bar_chart(
                country_customers,
                use_container_width=True
            )

        st.divider()

        # ==================================================
        # PRODUCT USAGE + SUPPORT
        # ==================================================

        st.markdown(
            "### ⚙️ Product Usage & Customer Support"
        )

        chart5, chart6 = st.columns(2)

        with chart5:

            usage_segment = (
                df.groupby(
                    "customer_segment"
                )["avg_feature_usage"]
                .mean()
                .sort_values(
                    ascending=False
                )
            )

            st.markdown(
                "**Average Feature Usage by Segment**"
            )

            st.bar_chart(
                usage_segment,
                use_container_width=True
            )

        with chart6:

            support_segment = (
                df.groupby(
                    "customer_segment"
                )["support_ticket_count"]
                .mean()
                .sort_values(
                    ascending=False
                )
            )

            st.markdown(
                "**Average Support Tickets by Segment**"
            )

            st.bar_chart(
                support_segment,
                use_container_width=True
            )

        st.divider()

        # ==================================================
        # CUSTOMER DATA TABLE
        # ==================================================

        st.markdown("### 👥 Customer Analytics Data")

        display_columns = [
            "customer_id",
            "customer_segment",
            "country",
            "plan_name",
            "monthly_price",
            "churned",
            "total_revenue",
            "transaction_count",
            "avg_logins",
            "avg_feature_usage",
            "avg_session_minutes",
            "support_ticket_count",
            "avg_resolution_hours"
        ]

        st.dataframe(
            df[display_columns],
            use_container_width=True,
            hide_index=True
        )

        st.divider()

        # ==================================================
        # AI BUSINESS ANALYTICS
        # ==================================================

        st.markdown(
            "### 🤖 Ask About the Business Data"
        )

        st.write(
            "Ask a natural-language business question. "
            "Common questions use predefined SQL, while new "
            "questions can be translated into safe, read-only "
            "PostgreSQL using AI Text-to-SQL."
        )

        # ==================================================
        # EXAMPLE QUESTIONS
        # ==================================================

        st.markdown("#### Try an example")

        example1, example2, example3 = st.columns(3)

        if "business_question" not in st.session_state:
            st.session_state["business_question"] = ""

        with example1:

            if st.button(
                "💰 Revenue by Segment",
                use_container_width=True
            ):

                st.session_state[
                    "business_question"
                ] = (
                    "Show me revenue by customer segment."
                )

        with example2:

            if st.button(
                "📉 Highest Churn Plan",
                use_container_width=True
            ):

                st.session_state[
                    "business_question"
                ] = (
                    "Which plan has the highest churn rate?"
                )

        with example3:

            if st.button(
                "🏆 Top Revenue Customers",
                use_container_width=True
            ):

                st.session_state[
                    "business_question"
                ] = (
                    "Show the top 5 customers by total revenue."
                )

        # ==================================================
        # QUESTION INPUT
        # ==================================================

        business_question = st.text_input(
            "Business question",
            value=st.session_state[
                "business_question"
            ],
            placeholder=(
                "Example: Which country generates "
                "the most revenue?"
            ),
            key="business_question_input"
        )

        # ==================================================
        # ASK BUTTON
        # ==================================================

        if st.button(
            "Ask Business Analytics",
            type="primary",
            use_container_width=True,
            key="ask_business_analytics"
        ):

            if business_question.strip():

                try:

                    with st.spinner(
                        "Analyzing NovaTech business data..."
                    ):

                        result = run_business_query(
                            business_question
                        )

                    st.markdown("### 📌 Answer")

                    st.success(
                        result["answer"]
                    )

                    if result.get("source"):

                        st.caption(
                            "Data source: "
                            f"{result['source']}"
                        )

                except Exception as error:

                    st.error(
                        "Unable to answer the business "
                        f"question: {error}"
                    )

            else:

                st.warning(
                    "Please enter a business "
                    "analytics question."
                )

    except Exception as error:

        st.error(
            "Unable to load Business Analytics: "
            f"{error}"
        )
# ==========================================================
# CHURN PREDICTION
# ==========================================================

elif page == "Churn Prediction":

    st.header("🎯 Customer Churn Prediction")

    st.write(
        "Predict churn risk for an existing NovaTech customer "
        "or test a custom what-if scenario."
    )

    st.info(
        "Existing Customer mode automatically retrieves customer "
        "information from PostgreSQL. What-If Scenario mode allows "
        "you to test a hypothetical customer profile."
    )

    # ======================================================
    # PREDICTION MODE
    # ======================================================

    prediction_mode = st.radio(
        "Prediction Mode",
        [
            "Existing Customer",
            "What-If Scenario"
        ],
        horizontal=True
    )

    st.divider()

    # ======================================================
    # FUNCTION TO DISPLAY PREDICTION RESULT
    # ======================================================

    def display_churn_result(result):

        probability = (
            result["churn_probability"] * 100
        )

        risk_level = result["risk_level"]

        prediction = result["prediction"]

        # --------------------------------------------------
        # RESULT
        # --------------------------------------------------

        st.subheader("📊 Prediction Result")

        result_col1, result_col2, result_col3 = (
            st.columns(3)
        )

        result_col1.metric(
            "Churn Probability",
            f"{probability:.2f}%"
        )

        result_col2.metric(
            "Risk Level",
            risk_level
        )

        result_col3.metric(
            "Prediction",
            (
                "Likely to Churn"
                if prediction == 1
                else "Likely to Stay"
            )
        )

        # --------------------------------------------------
        # PROGRESS BAR
        # --------------------------------------------------

        st.markdown("#### Churn Risk")

        st.progress(
            min(
                max(
                    result["churn_probability"],
                    0.0
                ),
                1.0
            )
        )

        # --------------------------------------------------
        # RISK MESSAGE
        # --------------------------------------------------

        if risk_level.upper() == "HIGH":

            st.error(
                "🔴 High Risk Customer"
            )

        elif risk_level.upper() == "MEDIUM":

            st.warning(
                "🟡 Medium Risk Customer"
            )

        else:

            st.success(
                "🟢 Low Risk Customer"
            )

        # --------------------------------------------------
        # SIMPLE RISK INTERPRETATION
        # --------------------------------------------------

        st.markdown("### 💡 Risk Interpretation")

        if risk_level.upper() == "HIGH":

            st.write(
                "This customer has a high likelihood of churn "
                "and should be prioritized for retention efforts. "
                "Consider proactive outreach and addressing "
                "potential customer concerns."
            )

        elif risk_level.upper() == "MEDIUM":

            st.write(
                "This customer shows a moderate level of churn "
                "risk and should be monitored closely. "
                "Consider improving engagement and addressing "
                "potential service concerns."
            )

        else:

            st.write(
                "This customer currently shows a low likelihood "
                "of churn and is likely to remain with the company. "
                "Continue maintaining positive engagement and "
                "monitor for changes in customer behavior."
            )

        st.caption(
            "Prediction generated using NovaTech's "
            "trained Random Forest churn model."
        )

    # ======================================================
    # MODE 1 — EXISTING CUSTOMER
    # ======================================================

    if prediction_mode == "Existing Customer":

        st.subheader("👤 Select Existing Customer")

        st.write(
            "Select a customer from NovaTech's database. "
            "Customer information will be retrieved automatically."
        )

        try:

            # --------------------------------------------------
            # GET CUSTOMER IDS
            # --------------------------------------------------

            customer_ids = get_customer_ids()

            if not customer_ids:

                st.warning(
                    "No customers were found in the "
                    "NovaTech database."
                )

            else:

                selected_customer_id = st.selectbox(
                    "Customer ID",
                    customer_ids
                )

                # --------------------------------------------------
                # GET CUSTOMER PROFILE
                # --------------------------------------------------

                profile = get_customer_churn_profile(
                    selected_customer_id
                )

                if profile is None:

                    st.error(
                        "Customer profile could not be found."
                    )

                else:

                    st.markdown(
                        "### Customer Profile"
                    )

                    st.caption(
                        "Customer information retrieved "
                        "automatically from PostgreSQL."
                    )

                    # ==================================================
                    # CUSTOMER INFORMATION
                    # ==================================================

                    col1, col2, col3 = st.columns(3)

                    # --------------------------------------------------
                    # COLUMN 1
                    # --------------------------------------------------

                    with col1:

                        st.text_input(
                            "Customer Segment",
                            value=str(
                                profile[
                                    "customer_segment"
                                ]
                            ),
                            disabled=True
                        )

                        st.text_input(
                            "Country",
                            value=str(
                                profile["country"]
                            ),
                            disabled=True
                        )

                        st.text_input(
                            "Subscription Plan",
                            value=str(
                                profile["plan_name"]
                            ),
                            disabled=True
                        )

                    # --------------------------------------------------
                    # COLUMN 2
                    # --------------------------------------------------

                    with col2:

                        st.number_input(
                            "Monthly Price ($)",
                            value=float(
                                profile[
                                    "monthly_price"
                                ]
                            ),
                            disabled=True
                        )

                        st.number_input(
                            "Tenure (Days)",
                            value=int(
                                profile[
                                    "tenure_days"
                                ]
                            ),
                            disabled=True
                        )

                        st.number_input(
                            "Support Tickets",
                            value=int(
                                profile[
                                    "support_ticket_count"
                                ]
                            ),
                            disabled=True
                        )

                    # --------------------------------------------------
                    # COLUMN 3
                    # --------------------------------------------------

                    with col3:

                        st.number_input(
                            "Average Logins",
                            value=float(
                                profile[
                                    "avg_logins"
                                ]
                            ),
                            disabled=True
                        )

                        st.number_input(
                            "Average Feature Usage",
                            value=float(
                                profile[
                                    "avg_feature_usage"
                                ]
                            ),
                            disabled=True
                        )

                        st.number_input(
                            "Average Session Minutes",
                            value=float(
                                profile[
                                    "avg_session_minutes"
                                ]
                            ),
                            disabled=True
                        )

                    st.divider()

                    # ==================================================
                    # PREDICT EXISTING CUSTOMER
                    # ==================================================

                    if st.button(
                        "🔍 Predict Churn Risk",
                        type="primary",
                        use_container_width=True,
                        key="existing_customer_predict"
                    ):

                        try:

                            with st.spinner(
                                "Analyzing customer behavior..."
                            ):

                                result = predict_churn(

                                    customer_segment=(
                                        profile[
                                            "customer_segment"
                                        ]
                                    ),

                                    country=(
                                        profile["country"]
                                    ),

                                    plan_name=(
                                        profile["plan_name"]
                                    ),

                                    monthly_price=(
                                        profile[
                                            "monthly_price"
                                        ]
                                    ),

                                    tenure_days=(
                                        profile[
                                            "tenure_days"
                                        ]
                                    ),

                                    support_ticket_count=(
                                        profile[
                                            "support_ticket_count"
                                        ]
                                    ),

                                    avg_logins=(
                                        profile[
                                            "avg_logins"
                                        ]
                                    ),

                                    avg_feature_usage=(
                                        profile[
                                            "avg_feature_usage"
                                        ]
                                    ),

                                    avg_session_minutes=(
                                        profile[
                                            "avg_session_minutes"
                                        ]
                                    )
                                )

                            display_churn_result(
                                result
                            )

                        except Exception as error:

                            st.error(
                                "Unable to generate churn "
                                f"prediction: {error}"
                            )

        except Exception as error:

            st.error(
                "Unable to load customer data "
                f"from PostgreSQL: {error}"
            )

    # ======================================================
    # MODE 2 — WHAT-IF SCENARIO
    # ======================================================

    elif prediction_mode == "What-If Scenario":

        st.subheader(
            "🧪 What-If Customer Scenario"
        )

        st.write(
            "Create a hypothetical customer profile and "
            "see how the churn model responds."
        )

        st.info(
            "The values entered here are used only for "
            "prediction and do not modify PostgreSQL data."
        )

        # ==================================================
        # WHAT-IF INPUTS
        # ==================================================

        col1, col2, col3 = st.columns(3)

        # --------------------------------------------------
        # COLUMN 1
        # --------------------------------------------------

        with col1:

            customer_segment = st.selectbox(
                "Customer Segment",
                [
                    "Small Business",
                    "Mid-Market",
                    "Enterprise"
                ],
                key="whatif_segment"
            )

            country = st.selectbox(
                "Country",
                [
                    "United States",
                    "Canada",
                    "United Kingdom",
                    "Australia"
                ],
                key="whatif_country"
            )

            plan_name = st.selectbox(
                "Subscription Plan",
                [
                    "Basic",
                    "Standard",
                    "Premium"
                ],
                key="whatif_plan"
            )

        # --------------------------------------------------
        # COLUMN 2
        # --------------------------------------------------

        with col2:

            monthly_price = st.number_input(
                "Monthly Price ($)",
                min_value=0.0,
                value=29.0,
                step=1.0,
                key="whatif_price"
            )

            tenure_days = st.number_input(
                "Customer Tenure (Days)",
                min_value=0,
                value=180,
                step=10,
                key="whatif_tenure"
            )

            support_ticket_count = st.number_input(
                "Support Tickets",
                min_value=0,
                value=2,
                step=1,
                key="whatif_tickets"
            )

        # --------------------------------------------------
        # COLUMN 3
        # --------------------------------------------------

        with col3:

            avg_logins = st.number_input(
                "Average Logins",
                min_value=0.0,
                value=5.0,
                step=1.0,
                key="whatif_logins"
            )

            avg_feature_usage = st.number_input(
                "Average Feature Usage",
                min_value=0.0,
                value=5.0,
                step=1.0,
                key="whatif_usage"
            )

            avg_session_minutes = st.number_input(
                "Average Session Minutes",
                min_value=0.0,
                value=30.0,
                step=5.0,
                key="whatif_session"
            )

        st.divider()

        # ==================================================
        # WHAT-IF PREDICTION
        # ==================================================

        if st.button(
            "🔍 Predict What-If Churn Risk",
            type="primary",
            use_container_width=True,
            key="whatif_predict"
        ):

            try:

                with st.spinner(
                    "Running what-if churn analysis..."
                ):

                    result = predict_churn(

                        customer_segment=(
                            customer_segment
                        ),

                        country=country,

                        plan_name=plan_name,

                        monthly_price=(
                            monthly_price
                        ),

                        tenure_days=(
                            tenure_days
                        ),

                        support_ticket_count=(
                            support_ticket_count
                        ),

                        avg_logins=(
                            avg_logins
                        ),

                        avg_feature_usage=(
                            avg_feature_usage
                        ),

                        avg_session_minutes=(
                            avg_session_minutes
                        )
                    )

                display_churn_result(
                    result
                )

            except Exception as error:

                st.error(
                    "Unable to generate what-if "
                    f"prediction: {error}"
                )
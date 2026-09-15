import streamlit as st
from pathlib import Path
import sys
import os

import pandas as pd
import psycopg2
from dotenv import load_dotenv


load_dotenv()


# ==========================================================
# PROJECT PATHS
# ==========================================================

PROJECT_ROOT = Path(__file__).resolve().parent.parent
SRC_PATH = PROJECT_ROOT / "src"

sys.path.append(
    str(SRC_PATH / "router")
)

sys.path.append(
    str(SRC_PATH / "analytics")
)

sys.path.append(
    str(SRC_PATH / "ml")
)


# ==========================================================
# PROJECT IMPORTS
# ==========================================================

from unified_assistant import handle_query

from sql_analytics import (
    get_customer_ids,
    get_customer_churn_profile
)

from predict_churn import predict_churn


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
        s.churned
    FROM customers c
    JOIN subscriptions s
        ON c.customer_id = s.customer_id;
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
  # ==========================================================
# BUSINESS ANALYTICS
# ==========================================================

elif page == "Business Analytics":

    st.header("📊 Business Analytics")

    st.write(
        "Monitor NovaTech's customer performance, subscription "
        "trends, and churn using live business data from PostgreSQL."
    )

    st.info(
        "Explore Customers • Revenue • Churn • Customer Segments • "
        "Subscription Plans • Transactions • Product Usage • "
        "Support Tickets"
    )

    st.divider()

    try:

        # ==================================================
        # LOAD BUSINESS DATA
        # ==================================================

        df = load_business_data()

        # ==================================================
        # KPI CALCULATIONS
        # ==================================================

        total_customers = len(df)

        active_customers = (
            df["churned"] == False
        ).sum()

        churned_customers = (
            df["churned"] == True
        ).sum()

        if total_customers > 0:

            churn_rate = (
                churned_customers
                / total_customers
                * 100
            )

        else:

            churn_rate = 0

        # ==================================================
        # BUSINESS OVERVIEW
        # ==================================================

        st.markdown("### 📌 Business Overview")

        col1, col2, col3, col4 = st.columns(4)

        with col1:

            st.metric(
                label="Total Customers",
                value=f"{total_customers:,}"
            )

        with col2:

            st.metric(
                label="Active Customers",
                value=f"{active_customers:,}"
            )

        with col3:

            st.metric(
                label="Churned Customers",
                value=f"{churned_customers:,}"
            )

        with col4:

            st.metric(
                label="Churn Rate",
                value=f"{churn_rate:.2f}%"
            )

        st.divider()

        # ==================================================
        # CUSTOMER DISTRIBUTION
        # ==================================================

        st.markdown("### 👥 Customer Distribution")

        chart_col1, chart_col2 = st.columns(2)

        # --------------------------------------------------
        # CUSTOMERS BY PLAN
        # --------------------------------------------------

        with chart_col1:

            st.markdown(
                "#### Customers by Subscription Plan"
            )

            plan_counts = (
                df["plan_name"]
                .value_counts()
                .rename("Customers")
            )

            st.bar_chart(
                plan_counts
            )

        # --------------------------------------------------
        # CUSTOMERS BY SEGMENT
        # --------------------------------------------------

        with chart_col2:

            st.markdown(
                "#### Customers by Segment"
            )

            segment_counts = (
                df["customer_segment"]
                .value_counts()
                .rename("Customers")
            )

            st.bar_chart(
                segment_counts
            )

        st.divider()

        # ==================================================
        # CHURN INSIGHTS
        # ==================================================

        st.markdown("### 📉 Churn Insights")

        st.write(
            "Compare customer churn across NovaTech's "
            "subscription plans."
        )

        churn_by_plan = (
            df
            .groupby("plan_name")["churned"]
            .mean()
            .mul(100)
            .round(2)
            .rename("Churn Rate (%)")
        )

        st.bar_chart(
            churn_by_plan
        )

        # --------------------------------------------------
        # SIMPLE CHURN INSIGHT
        # --------------------------------------------------

        if not churn_by_plan.empty:

            highest_churn_plan = (
                churn_by_plan.idxmax()
            )

            highest_churn_value = (
                churn_by_plan.max()
            )

            st.info(
                f"📌 {highest_churn_plan} currently has the "
                f"highest churn rate at "
                f"{highest_churn_value:.2f}%."
            )

        # ==================================================
        # CUSTOMER DATA
        # ==================================================

        st.markdown("### 🗂️ Customer Data")

        with st.expander(
            "View Customer Dataset"
        ):

            st.dataframe(
                df,
                use_container_width=True,
                hide_index=True
            )

        st.divider()

        # ==================================================
        # ASK BUSINESS ANALYTICS
        # ==================================================

        st.markdown(
            "### 💬 Ask About the Business Data"
        )

        st.write(
            "Ask a business question and NovaTech will "
            "query the PostgreSQL database to generate "
            "an answer."
        )

        st.markdown("#### Try an example")

        q1, q2, q3 = st.columns(3)

        # --------------------------------------------------
        # QUESTION 1
        # --------------------------------------------------

        with q1:

            if st.button(
                "💰 Highest Revenue Segment",
                use_container_width=True,
                key="business_revenue_question"
            ):

                st.session_state[
                    "business_question"
                ] = (
                    "Which customer segment "
                    "generates the most revenue?"
                )

        # --------------------------------------------------
        # QUESTION 2
        # --------------------------------------------------

        with q2:

            if st.button(
                "📉 Highest Churn Plan",
                use_container_width=True,
                key="business_churn_question"
            ):

                st.session_state[
                    "business_question"
                ] = (
                    "Which plan has the highest "
                    "churn rate?"
                )

        # --------------------------------------------------
        # QUESTION 3
        # --------------------------------------------------

        with q3:

            if st.button(
                "👥 Total Customers",
                use_container_width=True,
                key="business_customer_question"
            ):

                st.session_state[
                    "business_question"
                ] = (
                    "How many total customers "
                    "are there?"
                )

        # --------------------------------------------------
        # SESSION STATE
        # --------------------------------------------------

        if (
            "business_question"
            not in st.session_state
        ):

            st.session_state[
                "business_question"
            ] = ""

        # --------------------------------------------------
        # QUESTION INPUT
        # --------------------------------------------------

        business_question = st.text_input(
            "Ask about NovaTech business data",
            key="business_question",
            placeholder=(
                "Example: Which customer segment "
                "generates the most revenue?"
            )
        )

        # --------------------------------------------------
        # ASK BUTTON
        # --------------------------------------------------

        if st.button(
            "Ask Business Analytics",
            type="primary",
            use_container_width=True,
            key="ask_business_analytics"
        ):

            if business_question.strip():

                with st.spinner(
                    "Analyzing PostgreSQL "
                    "business data..."
                ):

                    result = handle_query(
                        business_question
                    )

                # ==========================================
                # SQL ANSWER
                # ==========================================

                if result["route"] == "SQL":

                    st.markdown("### 📌 Answer")

                    st.success(
                        result["answer"]
                    )

                    if result.get("sources"):

                        st.caption(
                            "Data source: "
                            + ", ".join(
                                result["sources"]
                            )
                        )

                # ==========================================
                # WRONG ROUTE
                # ==========================================

                else:

                    st.warning(
                        "This question appears to belong "
                        "to Company Knowledge or Churn "
                        "Prediction. Please use the "
                        "appropriate section."
                    )

            else:

                st.warning(
                    "Please enter a business question."
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
# ==========================================================
# NOVATECH AI QUERY ROUTER
# ==========================================================


def route_query(query):

    query = query.lower().strip()

    # ======================================================
    # 1. SQL / BUSINESS ANALYTICS
    # Check this BEFORE ML because phrases such as
    # "churn rate" are analytics questions.
    # ======================================================

    sql_phrases = [

        "churn rate",
        "highest churn",
        "lowest churn",

        "revenue",
        "sales",
        "total revenue",

        "total customers",
        "number of customers",
        "how many customers",

        "customer segment",
        "segment generates",
        "segment revenue",

        "transactions",
        "transaction",

        "average revenue",
        "average price",
        "average usage",

        "business analytics",
        "business data",

        "highest revenue",
        "most revenue",

        "subscription plan has",
        "plan has the highest",

        "customers by plan",
        "customers by segment"
    ]

    if any(
        phrase in query
        for phrase in sql_phrases
    ):
        return "SQL"


    # ======================================================
    # 2. RAG / COMPANY KNOWLEDGE
    #
    # These are document/policy questions.
    # Check these BEFORE ML so "cancellation policy"
    # doesn't accidentally become a churn prediction.
    # ======================================================

    rag_phrases = [

        "refund",
        "refund policy",

        "cancellation policy",
        "cancellation discount",
        "maximum cancellation discount",

        "retention policy",
        "retention discount",

        "product feature",
        "product features",
        "features included",

        "premium plan",
        "basic plan",
        "standard plan",

        "subscription plans",
        "plans are available",

        "company policy",
        "company policies",

        "policy",
        "policies"
    ]

    if any(
        phrase in query
        for phrase in rag_phrases
    ):
        return "RAG"


    # ======================================================
    # 3. ML / CHURN PREDICTION
    #
    # Use more specific phrases instead of simply
    # checking for the word "churn".
    # ======================================================

    ml_phrases = [

        "likely to churn",
        "will churn",
        "predict churn",
        "churn prediction",
        "churn probability",
        "churn risk",

        "customer likely to leave",
        "likely to leave",

        "customer risk",
        "retention risk",

        "will this customer leave",
        "is this customer likely"
    ]

    if any(
        phrase in query
        for phrase in ml_phrases
    ):
        return "ML"


    # ======================================================
    # 4. DEFAULT
    #
    # Unknown informational questions go to the
    # company knowledge / RAG system.
    # ======================================================

    return "RAG"


# ==========================================================
# TEST ROUTER
# ==========================================================

if __name__ == "__main__":

    test_queries = [

        # RAG
        "What is the refund policy?",
        "How long does a refund take?",
        "What is the maximum cancellation discount?",
        "What features are included in the Premium plan?",

        # SQL
        "Which customer segment generates the most revenue?",
        "Which plan has the highest churn rate?",
        "How many total customers are there?",

        # ML
        "Is this customer likely to churn?",
        "Predict churn for this customer.",
        "What is this customer's churn probability?"
    ]

    for query in test_queries:

        route = route_query(query)

        print(
            f"Question: {query}\n"
            f"Route: {route}\n"
        )
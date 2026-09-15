from pathlib import Path
import sys


# Allow imports from retrieval folder
sys.path.append(
    str(Path(__file__).resolve().parent.parent / "retrieval")
)

sys.path.append(
    str(Path(__file__).resolve().parent.parent / "analytics")
)

sys.path.append(
    str(Path(__file__).resolve().parent.parent / "ml")
)


from query_router import route_query
from rag_pipeline import answer_rag_question
from sql_analytics import run_business_query
from predict_churn import predict_churn

def handle_query(query):

    route = route_query(query)

    if route == "RAG":

        rag_result = answer_rag_question(query)

        return {
        "route": "RAG",
        "answer": rag_result["answer"],
        "sources": rag_result["sources"]
        }

    elif route == "SQL":

        sql_result = run_business_query(query)

        return {
        "route": "SQL",
        "answer": sql_result["answer"],
        "sources": [sql_result["source"]]
    }

    elif route == "ML":

    # Temporary test customer profile
        ml_result = predict_churn(
        customer_segment="Small Business",
        country="United States",
        plan_name="Basic",
        monthly_price=29.00,
        tenure_days=180,
        support_ticket_count=5,
        avg_logins=3,
        avg_feature_usage=2,
        avg_session_minutes=25
    )

        answer = (
        f"Churn probability: "
        f"{ml_result['churn_probability'] * 100:.2f}%\n"
        f"Risk level: {ml_result['risk_level']}\n"
        f"Prediction: "
        f"{'LIKELY TO CHURN' if ml_result['prediction'] == 1 else 'LIKELY TO STAY'}"
    )

        return {
        "route": "ML",
        "answer": answer,
        "sources": ["Random Forest churn model"]
    }

    else:
        return {
            "route": "UNKNOWN",
            "message": "Unable to determine route."
        }


if __name__ == "__main__":

    query = "Is this customer likely to churn?"

    result = handle_query(query)

    print("\nQuestion:")
    print(query)

    print("\nRoute:")
    print(result["route"])

    print("\nAnswer:")
    print(result["answer"])

    print("\nSources:")
    print(result["sources"])
import joblib
import pandas as pd
from pathlib import Path


# ==========================================================
# 1. LOAD TRAINED CHURN MODEL
# ==========================================================

MODEL_PATH = Path("models/churn_model.joblib")

model_package = joblib.load(MODEL_PATH)

model = model_package["model"]
threshold = model_package["threshold"]


# ==========================================================
# 2. CHURN PREDICTION FUNCTION
# ==========================================================

def predict_churn(
    customer_segment,
    country,
    plan_name,
    monthly_price,
    tenure_days,
    support_ticket_count,
    avg_logins,
    avg_feature_usage,
    avg_session_minutes
):

    # ------------------------------------------------------
    # CREATE CUSTOMER PROFILE
    # ------------------------------------------------------

    customer_data = pd.DataFrame([
        {
            "customer_segment": customer_segment,
            "country": country,
            "plan_name": plan_name,
            "monthly_price": monthly_price,
            "tenure_days": tenure_days,
            "support_ticket_count": support_ticket_count,
            "avg_logins": avg_logins,
            "avg_feature_usage": avg_feature_usage,
            "avg_session_minutes": avg_session_minutes
        }
    ])

    # ------------------------------------------------------
    # PREDICT CHURN PROBABILITY
    # ------------------------------------------------------

    churn_probability = model.predict_proba(
        customer_data
    )[0][1]

    # ------------------------------------------------------
    # APPLY TRAINED DECISION THRESHOLD
    # ------------------------------------------------------

    prediction = int(
        churn_probability >= threshold
    )

    # ------------------------------------------------------
    # ASSIGN BUSINESS RISK LEVEL
    # ------------------------------------------------------

    if churn_probability >= 0.60:

        risk_level = "HIGH"

    elif churn_probability >= threshold:

        risk_level = "MEDIUM"

    else:

        risk_level = "LOW"

    # ------------------------------------------------------
    # RETURN RESULT
    # ------------------------------------------------------

    return {
        "prediction": prediction,

        "churn_probability": round(
            float(churn_probability),
            4
        ),

        "risk_level": risk_level
    }


# ==========================================================
# 3. TEST PREDICTION
# ==========================================================

if __name__ == "__main__":

    result = predict_churn(
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

    print("\n" + "=" * 50)

    print(
        "NOVATECH CHURN PREDICTION"
    )

    print("=" * 50)

    print(
        f"\nChurn probability: "
        f"{result['churn_probability'] * 100:.2f}%"
    )

    print(
        f"Risk level: "
        f"{result['risk_level']}"
    )

    print(
        "Prediction:",
        (
            "LIKELY TO CHURN"
            if result["prediction"] == 1
            else "LIKELY TO STAY"
        )
    )
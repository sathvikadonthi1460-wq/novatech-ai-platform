import os

import pandas as pd
import psycopg2
from dotenv import load_dotenv


# --------------------------------------------------
# 1. Load database credentials
# --------------------------------------------------

load_dotenv()


# --------------------------------------------------
# 2. Connect to PostgreSQL
# --------------------------------------------------

connection = psycopg2.connect(
    host=os.getenv("DB_HOST"),
    port=os.getenv("DB_PORT"),
    database=os.getenv("DB_NAME"),
    user=os.getenv("DB_USER"),
    password=os.getenv("DB_PASSWORD")
)


# --------------------------------------------------
# 3. SQL query for ML features
# --------------------------------------------------

query = """
SELECT
    c.customer_id,
    c.customer_segment,
    c.country,

    s.plan_name,
    s.monthly_price,
    s.churned,

    CURRENT_DATE - c.signup_date AS tenure_days,

    COALESCE(ticket_stats.ticket_count, 0)
        AS support_ticket_count,

    COALESCE(usage_stats.avg_logins, 0)
        AS avg_logins,

    COALESCE(usage_stats.avg_feature_usage, 0)
        AS avg_feature_usage,

    COALESCE(usage_stats.avg_session_minutes, 0)
        AS avg_session_minutes

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
    ON c.customer_id = ticket_stats.customer_id

LEFT JOIN (
    SELECT
        customer_id,
        AVG(login_count) AS avg_logins,
        AVG(feature_usage_count) AS avg_feature_usage,
        AVG(session_minutes) AS avg_session_minutes
    FROM product_usage
    GROUP BY customer_id
) usage_stats
    ON c.customer_id = usage_stats.customer_id;
"""


# --------------------------------------------------
# 4. Load into Pandas
# --------------------------------------------------

df = pd.read_sql(
    query,
    connection
)

connection.close()


# --------------------------------------------------
# 5. Inspect dataset
# --------------------------------------------------

print("\nML DATASET CREATED")
print("=" * 60)

print("\nShape:")
print(df.shape)

print("\nFirst 5 rows:")
print(df.head())

print("\nColumns:")
print(df.columns.tolist())

print("\nChurn distribution:")
print(
    df["churned"].value_counts()
)

print("\nMissing values:")
print(
    df.isnull().sum()
)
# ==========================================================
# 6. PREPARE FEATURES AND TARGET
# ==========================================================

# customer_id identifies the customer but should not be
# used as a predictive feature.
X = df.drop(
    columns=[
        "customer_id",
        "churned"
    ]
)

y = df["churned"].astype(int)

print("\nFEATURE MATRIX")
print("=" * 60)

print("X shape:", X.shape)
print("y shape:", y.shape)

print("\nTarget distribution:")
print(y.value_counts())


# ==========================================================
# 7. IDENTIFY FEATURE TYPES
# ==========================================================

categorical_features = [
    "customer_segment",
    "country",
    "plan_name"
]

numerical_features = [
    "monthly_price",
    "tenure_days",
    "support_ticket_count",
    "avg_logins",
    "avg_feature_usage",
    "avg_session_minutes"
]


# ==========================================================
# 8. TRAIN / TEST SPLIT
# ==========================================================

from sklearn.model_selection import train_test_split


X_train, X_test, y_train, y_test = train_test_split(
    X,
    y,
    test_size=0.20,
    random_state=42,
    stratify=y
)


print("\nTRAIN / TEST SPLIT")
print("=" * 60)

print("Training samples:", len(X_train))
print("Testing samples:", len(X_test))

print("\nTraining churn distribution:")
print(y_train.value_counts())

print("\nTesting churn distribution:")
print(y_test.value_counts())

# ==========================================================
# 9. BUILD PREPROCESSING PIPELINE
# ==========================================================

from sklearn.compose import ColumnTransformer
from sklearn.preprocessing import OneHotEncoder, StandardScaler
from sklearn.pipeline import Pipeline
from sklearn.linear_model import LogisticRegression
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import (
    accuracy_score,
    precision_score,
    recall_score,
    f1_score,
    roc_auc_score,
    confusion_matrix,
    classification_report
)


preprocessor = ColumnTransformer(
    transformers=[
        (
            "categorical",
            OneHotEncoder(handle_unknown="ignore"),
            categorical_features
        ),
        (
            "numerical",
            StandardScaler(),
            numerical_features
        )
    ]
)


# ==========================================================
# 10. LOGISTIC REGRESSION
# ==========================================================

logistic_model = Pipeline(
    steps=[
        ("preprocessor", preprocessor),
        (
            "classifier",
            LogisticRegression(
                max_iter=1000,
                random_state=42
            )
        )
    ]
)

print("\nTraining Logistic Regression...")

logistic_model.fit(
    X_train,
    y_train
)

logistic_predictions = logistic_model.predict(
    X_test
)

logistic_probabilities = logistic_model.predict_proba(
    X_test
)[:, 1]


# ==========================================================
# 11. RANDOM FOREST
# ==========================================================

random_forest_model = Pipeline(
    steps=[
        ("preprocessor", preprocessor),
        (
            "classifier",
            RandomForestClassifier(
                n_estimators=300,
                random_state=42,
                class_weight="balanced"
            )
        )
    ]
)

print("Training Random Forest...")

random_forest_model.fit(
    X_train,
    y_train
)

rf_predictions = random_forest_model.predict(
    X_test
)

rf_probabilities = random_forest_model.predict_proba(
    X_test
)[:, 1]


# ==========================================================
# 12. MODEL EVALUATION FUNCTION
# ==========================================================

def evaluate_model(
    model_name,
    y_true,
    predictions,
    probabilities
):

    accuracy = accuracy_score(
        y_true,
        predictions
    )

    precision = precision_score(
        y_true,
        predictions,
        zero_division=0
    )

    recall = recall_score(
        y_true,
        predictions,
        zero_division=0
    )

    f1 = f1_score(
        y_true,
        predictions,
        zero_division=0
    )

    roc_auc = roc_auc_score(
        y_true,
        probabilities
    )

    print("\n" + "=" * 60)
    print(model_name)
    print("=" * 60)

    print(f"Accuracy : {accuracy:.4f}")
    print(f"Precision: {precision:.4f}")
    print(f"Recall   : {recall:.4f}")
    print(f"F1 Score : {f1:.4f}")
    print(f"ROC-AUC  : {roc_auc:.4f}")

    print("\nConfusion Matrix:")
    print(
        confusion_matrix(
            y_true,
            predictions
        )
    )

    print("\nClassification Report:")
    print(
        classification_report(
            y_true,
            predictions,
            zero_division=0
        )
    )

    return {
        "accuracy": accuracy,
        "precision": precision,
        "recall": recall,
        "f1": f1,
        "roc_auc": roc_auc
    }


# ==========================================================
# 13. COMPARE MODELS
# ==========================================================

logistic_metrics = evaluate_model(
    "LOGISTIC REGRESSION",
    y_test,
    logistic_predictions,
    logistic_probabilities
)

rf_metrics = evaluate_model(
    "RANDOM FOREST",
    y_test,
    rf_predictions,
    rf_probabilities
)


print("\n" + "=" * 60)
print("MODEL COMPARISON")
print("=" * 60)

print(
    f"Logistic Regression ROC-AUC: "
    f"{logistic_metrics['roc_auc']:.4f}"
)

print(
    f"Random Forest ROC-AUC:       "
    f"{rf_metrics['roc_auc']:.4f}"
)
# ==========================================================
# 14. RANDOM FOREST THRESHOLD TUNING
# ==========================================================

print("\n" + "=" * 60)
print("RANDOM FOREST THRESHOLD ANALYSIS")
print("=" * 60)

thresholds = [
    0.30,
    0.35,
    0.40,
    0.45,
    0.50
]


for threshold in thresholds:

    threshold_predictions = (
        rf_probabilities >= threshold
    ).astype(int)

    precision = precision_score(
        y_test,
        threshold_predictions,
        zero_division=0
    )

    recall = recall_score(
        y_test,
        threshold_predictions,
        zero_division=0
    )

    f1 = f1_score(
        y_test,
        threshold_predictions,
        zero_division=0
    )

    print(
        f"\nThreshold: {threshold:.2f}"
    )

    print(
        f"Precision: {precision:.4f}"
    )

    print(
        f"Recall:    {recall:.4f}"
    )

    print(
        f"F1 Score:  {f1:.4f}"
    )

# ==========================================================
# 15. SAVE FINAL MODEL
# ==========================================================

import joblib
from pathlib import Path


FINAL_THRESHOLD = 0.30

model_directory = Path("models")
model_directory.mkdir(exist_ok=True)

model_path = model_directory / "churn_model.joblib"

model_package = {
    "model": random_forest_model,
    "threshold": FINAL_THRESHOLD
}

joblib.dump(
    model_package,
    model_path
)

print("\n" + "=" * 60)
print("FINAL MODEL SAVED")
print("=" * 60)

print(f"Model: Random Forest")
print(f"Decision threshold: {FINAL_THRESHOLD}")
print(f"Saved to: {model_path}")

# ==========================================================
# 16. FEATURE IMPORTANCE
# ==========================================================

# Get transformed feature names
feature_names = (
    random_forest_model
    .named_steps["preprocessor"]
    .get_feature_names_out()
)

# Get Random Forest feature importances
importances = (
    random_forest_model
    .named_steps["classifier"]
    .feature_importances_
)

feature_importance_df = pd.DataFrame({
    "feature": feature_names,
    "importance": importances
})

feature_importance_df = feature_importance_df.sort_values(
    by="importance",
    ascending=False
)

print("\n" + "=" * 60)
print("TOP CHURN FEATURES")
print("=" * 60)

print(
    feature_importance_df.head(10)
)
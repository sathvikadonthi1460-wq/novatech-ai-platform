# 🚀 NovaTech AI & Data Intelligence Platform

An end-to-end enterprise AI and data intelligence platform combining **Retrieval-Augmented Generation (RAG)**, **PostgreSQL Business Analytics**, and **Machine Learning-based Customer Churn Prediction** in a unified Streamlit application.

The platform demonstrates how generative AI, structured enterprise data, and predictive machine learning can work together in a single business intelligence system.

---

## 📌 Project Overview

Organizations typically store information across multiple systems:

- Internal documents and policies
- Relational databases
- Customer activity data
- Machine learning systems

NovaTech AI & Data Intelligence Platform brings these sources together through one intelligent application.

The system automatically routes different types of user requests to the appropriate AI or data-processing component.

### The platform contains three major capabilities:

1. **Company Knowledge Assistant — RAG**
2. **Business Analytics — PostgreSQL**
3. **Customer Churn Prediction — Machine Learning**

---

# 🏗️ System Architecture

```text
                         USER
                           │
                           ▼
                 ┌──────────────────┐
                 │ Streamlit Web UI │
                 └────────┬─────────┘
                          │
                          ▼
                 ┌──────────────────┐
                 │   Query Router   │
                 └────────┬─────────┘
                          │
          ┌───────────────┼────────────────┐
          │               │                │
          ▼               ▼                ▼

 ┌────────────────┐ ┌──────────────┐ ┌──────────────────┐
 │ Company        │ │ Business     │ │ Churn Prediction │
 │ Knowledge RAG  │ │ Analytics    │ │ Machine Learning │
 └───────┬────────┘ └──────┬───────┘ └────────┬─────────┘
         │                 │                   │
         ▼                 ▼                   ▼
 ┌────────────────┐ ┌──────────────┐ ┌──────────────────┐
 │ ChromaDB       │ │ PostgreSQL   │ │ Random Forest    │
 │ Vector Search  │ │ SQL Queries  │ │ Classifier       │
 └───────┬────────┘ └──────────────┘ └──────────────────┘
         │
         ▼
 ┌────────────────┐
 │ Sentence       │
 │ Transformers   │
 └───────┬────────┘
         │
         ▼
 ┌────────────────┐
 │ Ollama / LLM   │
 └────────────────┘
```

---

# 🧠 1. Company Knowledge — RAG

The Company Knowledge module allows users to ask natural-language questions about NovaTech's internal documents.

Example questions include:

- How long does a refund take?
- What is the maximum cancellation discount?
- What features are included in the Premium plan?
- What subscription plans are available?

### RAG Pipeline

```text
User Question
      │
      ▼
Sentence Transformer
      │
      ▼
Vector Embedding
      │
      ▼
ChromaDB Similarity Search
      │
      ▼
Relevant Document Chunks
      │
      ▼
LLM
      │
      ▼
Grounded Answer + Sources
```

The system retrieves relevant information before generating an answer, helping reduce unsupported responses.

If the requested information is not available in the provided knowledge base, the system can indicate that the information is unavailable rather than inventing an answer.

---

# 📊 2. Business Analytics

The Business Analytics module connects directly to a **PostgreSQL database**.

The dashboard provides business metrics including:

- Total Customers
- Active Customers
- Churned Customers
- Overall Churn Rate
- Customers by Subscription Plan
- Customers by Customer Segment
- Churn Rate by Plan

Users can also ask supported natural-language business questions.

### Example

```text
Which customer segment generates the most revenue?
```

The query router recognizes this as a business analytics request and routes it to the SQL analytics layer.

```text
Question
   │
   ▼
Query Router
   │
   ▼
SQL Analytics
   │
   ▼
PostgreSQL
   │
   ▼
Business Answer
```

Example supported questions include:

- Which customer segment generates the most revenue?
- Which plan has the highest churn rate?
- How many total customers are there?

---

# 🔮 3. Customer Churn Prediction

NovaTech includes a machine learning system for predicting customer churn risk.

The prediction pipeline uses customer information such as:

- Customer Segment
- Country
- Subscription Plan
- Monthly Price
- Customer Tenure
- Support Ticket Count
- Average Logins
- Average Feature Usage
- Average Session Duration

The trained model calculates a churn probability and converts it into a business-friendly risk category.

### Prediction Output

```text
Churn Probability
        │
        ▼
Decision Threshold
        │
        ▼
Prediction
        │
        ├── Likely to Stay
        │
        └── Likely to Churn
        │
        ▼
Risk Level
   LOW / MEDIUM / HIGH
```

The application supports both:

### Existing Customer Prediction

Customer information is retrieved from the business database and passed to the trained model.

### What-If Scenario

Users can modify customer characteristics to explore how different scenarios affect predicted churn risk.

---

# 🧭 Intelligent Query Routing

NovaTech contains a query router that determines which subsystem should process a request.

```text
User Question
       │
       ▼
   Query Router
       │
       ├── Company policies/features/refunds → RAG
       │
       ├── Revenue/customers/churn metrics → SQL
       │
       └── Customer churn prediction → ML
```

This creates a unified interface over multiple AI and data systems.

---

# 🛠️ Technology Stack

| Component | Technology |
|---|---|
| Programming Language | Python |
| Frontend | Streamlit |
| Database | PostgreSQL |
| Data Processing | Pandas |
| Machine Learning | Scikit-learn |
| ML Model | Random Forest |
| Model Persistence | Joblib |
| Vector Database | ChromaDB |
| Embeddings | Sentence Transformers |
| LLM Integration | Ollama |
| Environment Management | python-dotenv |
| Version Control | Git / GitHub |

---

# 📂 Project Structure

```text
enterprise-rag-platform/
│
├── app/
│   └── streamlit_app.py
│
├── data/
│
├── models/
│   └── churn_model.joblib
│
├── src/
│   │
│   ├── analytics/
│   │   └── sql_analytics.py
│   │
│   ├── ml/
│   │   └── predict_churn.py
│   │
│   ├── retrieval/
│   │   ├── rag_pipeline.py
│   │   └── hybrid_search.py
│   │
│   └── router/
│       ├── query_router.py
│       └── unified_assistant.py
│
├── tests/
│
├── .env.example
├── .gitignore
├── requirements.txt
└── README.md
```

---

# ⚙️ Installation

## 1. Clone the Repository

```bash
git clone <YOUR-GITHUB-REPOSITORY-URL>
cd enterprise-rag-platform
```

---

## 2. Create a Virtual Environment

### Windows

```bash
python -m venv .venv
.venv\Scripts\activate
```

### macOS / Linux

```bash
python3 -m venv .venv
source .venv/bin/activate
```

---

## 3. Install Dependencies

```bash
pip install -r requirements.txt
```

---

## 4. Configure Environment Variables

Copy:

```text
.env.example
```

to:

```text
.env
```

Configure your PostgreSQL connection:

```env
DB_HOST=localhost
DB_PORT=5432
DB_NAME=your_database_name
DB_USER=your_database_user
DB_PASSWORD=your_database_password
```

Never commit the real `.env` file to GitHub.

---

## 5. Start Ollama

The RAG module requires a locally available Ollama model.

Make sure Ollama is running and that the model configured in the RAG pipeline is available locally.

---

## 6. Run the Application

From the project root:

```bash
python -m streamlit run app/streamlit_app.py
```

Open the local Streamlit address displayed in the terminal.

---

# 🖥️ Application Modules

The Streamlit application contains three primary sections:

### 📚 Company Knowledge

Search internal company information using RAG.

### 📊 Business Analytics

Explore PostgreSQL-powered KPIs, charts, and supported natural-language business questions.

### 🔮 Churn Prediction

Predict customer churn risk using a trained Random Forest model and explore what-if scenarios.

---

# 🔐 Security

Sensitive configuration is stored using environment variables.

The repository excludes:

```text
.env
virtual environments
Python cache files
local cache files
temporary files
```

A safe `.env.example` file is provided for configuration.

---

# 🎯 Project Goals

This project demonstrates practical skills in:

- Python application development
- Retrieval-Augmented Generation
- Large Language Model integration
- Embeddings and vector search
- PostgreSQL and SQL analytics
- Machine learning
- Classification models
- Feature preprocessing
- Model deployment
- Streamlit application development
- AI routing architecture
- Business intelligence
- End-to-end AI system integration

---

# 🚀 Future Improvements

Potential extensions include:

- Dynamic LLM-based query routing
- Broader natural-language-to-SQL support
- Additional business analytics queries
- User authentication and authorization
- Cloud-hosted vector databases
- API-based model serving
- Automated model monitoring
- Churn prediction history
- Additional enterprise documents
- Containerization with Docker
- Cloud deployment

---

# 👩‍💻 Author

**SATHVIKA DONTHIREDDY**

M.S. Data Science & Analytics

Skills demonstrated in this project:

`Python` • `SQL` • `Machine Learning` • `LLMs` • `RAG` • `PostgreSQL` • `ChromaDB` • `Streamlit` • `Business Analytics`

---

# ⭐ NovaTech AI & Data Intelligence Platform

A portfolio project demonstrating how **Generative AI, Retrieval-Augmented Generation, Business Analytics, SQL, and Machine Learning** can be integrated into one enterprise intelligence application.
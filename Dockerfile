# ==========================================================
# NOVATECH AI & DATA INTELLIGENCE PLATFORM
# Docker Image
# ==========================================================

FROM python:3.11-slim

# Prevent Python from writing .pyc files
ENV PYTHONDONTWRITEBYTECODE=1

# Show Python output immediately in logs
ENV PYTHONUNBUFFERED=1

# Container working directory
WORKDIR /app
ENV PYTHONPATH="/app:/app/src:/app/src/ML:/app/src/router:/app/src/retrieval:/app/src/analytics"

# Install basic system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Copy requirements first for Docker layer caching
COPY requirements.txt .

# Upgrade pip and install Python dependencies
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Copy NovaTech project into container
COPY . .

# Streamlit default port
EXPOSE 8501

# Start NovaTech
CMD ["streamlit", "run", "app/streamlit_app.py", \
     "--server.address=0.0.0.0", \
     "--server.port=8501", \
     "--server.headless=true"]
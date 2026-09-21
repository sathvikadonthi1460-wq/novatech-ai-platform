-- ============================================================
-- NovaTech AI & Data Intelligence Platform
-- PostgreSQL Database Schema
-- ============================================================


-- 1. CUSTOMERS
CREATE TABLE IF NOT EXISTS customers (
    customer_id INTEGER PRIMARY KEY,
    customer_name VARCHAR NOT NULL,
    email VARCHAR NOT NULL,
    country VARCHAR,
    signup_date DATE NOT NULL,
    customer_segment VARCHAR
);


-- 2. PRODUCT USAGE
CREATE TABLE IF NOT EXISTS product_usage (
    usage_id INTEGER PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    usage_date DATE NOT NULL,
    login_count INTEGER,
    feature_usage_count INTEGER,
    session_minutes NUMERIC,

    CONSTRAINT fk_product_usage_customer
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);


-- 3. SUBSCRIPTIONS
CREATE TABLE IF NOT EXISTS subscriptions (
    subscription_id INTEGER PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    plan_name VARCHAR NOT NULL,
    monthly_price NUMERIC,
    start_date DATE NOT NULL,
    status VARCHAR,
    churned BOOLEAN,

    CONSTRAINT fk_subscription_customer
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);


-- 4. SUPPORT TICKETS
CREATE TABLE IF NOT EXISTS support_tickets (
    ticket_id INTEGER PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    issue_type VARCHAR,
    priority VARCHAR,
    status VARCHAR,
    created_date DATE NOT NULL,
    resolution_hours NUMERIC,

    CONSTRAINT fk_support_ticket_customer
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);


-- 5. TRANSACTIONS
CREATE TABLE IF NOT EXISTS transactions (
    transaction_id INTEGER PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    amount NUMERIC NOT NULL,
    transaction_date DATE NOT NULL,
    transaction_type VARCHAR,

    CONSTRAINT fk_transaction_customer
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);
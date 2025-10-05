📘 ShopAI – End-to-End AI Data Pipeline

(PostgreSQL · Python · Pandas · SQLAlchemy · Feature Engineering · Automation)

🏗️ 1. Project Overview

ShopAI is a simulated AI data pipeline project designed to showcase real-world data engineering and AI workflow automation skills.

It demonstrates how to:

Collect, clean, and store raw user and order data in PostgreSQL

Generate machine learning–ready features using SQL

Automate daily ETL updates with Python (pandas + SQLAlchemy)

Train a simple churn prediction model using scikit-learn

Schedule recurring updates for production-like data refresh

🎯 2. Project Objectives

🧱 3. Architecture Diagram

 ┌─────────────────────────────┐
 │         Raw Data            │
 │  users.csv   orders.csv     │
 └──────────────┬──────────────┘
                │
         Load to PostgreSQL
                │
 ┌──────────────┴──────────────┐
 │  PostgreSQL (Data Lake)     │
 │  - users                    │
 │  - orders                   │
 │  - feature views            │
 └──────────────┬──────────────┘
                │
         Python ETL (pandas + SQLAlchemy)
                │
        Feature Store (Materialized View)
                │
        ┌──────────────┬──────────────┐
        │ ML Model     │  Dashboard   │
        │ (sklearn)    │ (optional)   │
        └──────────────┴──────────────┘


📂 4. Folder Structure

ShopAI-DataPipeline/
│
├── sql/
│   ├── 01_schema.sql              # Create tables
│   ├── 02_insert_sample_data.sql  # Load demo data
│   ├── 03_cleaning.sql            # Remove duplicates, fix nulls
│   ├── 04_features.sql            # Feature engineering queries
│   ├── 05_feature_store.sql       # Materialized view
│
├── python/
│   ├── etl_shopai.py              # Main ETL pipeline script
│   ├── model_train.py             # Logistic regression training
│   ├── scheduler.py               # Automation using schedule
│
├── data/
│   ├── users.csv                  # Optional: sample dataset
│   ├── orders.csv
│
├── notebooks/
│   ├── EDA_Features.ipynb         # Jupyter notebook for exploration
│
├── docs/
│   ├── README.md                  # Full project documentation
│   ├── architecture.png           # Diagram
│   ├── requirements.txt           # Python dependencies
│
└── train_dataset.csv              # Generated for ML


⚙️ 5. Setup Instructions

🐘 Step 1: Install PostgreSQL

Install via apt or brew:

sudo apt install postgresql postgresql-contrib


Create a new database:

psql -U postgres
CREATE DATABASE ai_course;


🧩 Step 2: Create Tables & Load Sample Data

Run:

psql -U postgres -d ai_course -f sql/01_schema.sql
psql -U postgres -d ai_course -f sql/02_insert_sample_data.sql


🧠 Step 3: Install Python Libraries

Create a virtual environment and install dependencies:

pip install pandas sqlalchemy psycopg2-binary schedule scikit-learn


Example requirements.txt:

pandas==2.2.2
SQLAlchemy==2.0.30
psycopg2-binary==2.9.9
schedule==1.2.1
scikit-learn==1.5.0


🧠 Step 4: Configure Connection

Edit connection string in etl_shopai.py:

engine = create_engine(”postgresql://postgres:password@localhost:5432/ai_course”)


🧩 Step 5: Run ETL Pipeline

python python/etl_shopai.py


Expected output:

🧩 Starting ETL...
✅ ETL completed and stored in PostgreSQL.


🧩 Step 6: Run Model Training

python python/model_train.py


Expected output:

Model coefficients: [ 0.01  0.04 -0.02  0.1]
✅ Model trained on SQL-generated features.


🕒 Step 7: Automate Daily ETL

Run the scheduler:

python python/scheduler.py


This will trigger the ETL job every 24 hours automatically.

🧮 6. Sample Queries

Total active vs inactive users

SELECT activity_flag, COUNT(*) FROM user_feature_store GROUP BY 1;


Top spenders per city

SELECT city, name, total_spend
FROM user_feature_store
WHERE rank_in_city <= 3;


🧩 7. Expected Outputs

PostgreSQL Tables:

Sample Output:

📊 8. Model Summary (Logistic Regression Example)

🔁 9. Future Improvements

Add Airflow DAG for scheduling.

Store models in PostgreSQL (bytea format).

Add API endpoint for model inference (FastAPI).

Integrate with Grafana or Metabase dashboards.

Add monitoring on ETL job success/failure logs.
# ShopAI - End-to-End AI Data Pipeline (Demo)
This demo repository contains a minimal end-to-end data pipeline using PostgreSQL and Python.
It includes:
- SQL files to create schema and sample data
- Python ETL to compute simple features and write them back to Postgres
- A small model training script that reads features and trains a logistic regression
- A scheduler script template

## Quick Start
1. Ensure PostgreSQL is installed and create database `ai_course`.
2. Update DATABASE_URL environment variable or edit Python files to match your DB credentials.
3. Run SQL scripts to create schema and insert sample data:
   psql -U postgres -d ai_course -f sql/01_schema.sql
   psql -U postgres -d ai_course -f sql/02_insert_sample_data.sql
   psql -U postgres -d ai_course -f sql/03_cleaning.sql
   psql -U postgres -d ai_course -f sql/04_features.sql
   psql -U postgres -d ai_course -f sql/05_feature_store.sql
4. Install Python deps:
   pip install -r requirements.txt
5. Run ETL:
   python python/etl_shopai.py
6. Train model:
   python python/model_train.py

## Notes
- Adjust the database connection string in the Python scripts or set the environment variable DATABASE_URL.
- This is a demo; in production you'd use secrets management, Docker, and proper orchestration (Airflow).

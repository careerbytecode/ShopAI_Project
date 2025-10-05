# ðŸ§  ShopAI - End-to-End AI Data Pipeline

A **full-featured PostgreSQL + Python project** simulating a real-world AI data workflow.  
This project demonstrates how to design, build, and automate a complete data pipeline â€” from raw data ingestion to AI-ready feature generation and model training.

---

## ðŸš€ Tech Stack

**Languages & Tools:**  
PostgreSQL Â· Python Â· pandas Â· SQLAlchemy Â· psycopg2 Â· scikit-learn Â· schedule  

**Concepts Covered:**  
ETL Pipelines Â· Feature Engineering Â· Data Cleaning Â· Automation Â· ML Integration Â· Scheduling  

---

## ðŸ“¦ Features

- SQL-based feature engineering with PostgreSQL  
- Automated Python ETL pipeline (pandas + SQLAlchemy)  
- Daily data refresh via scheduler  
- AI-ready dataset export  
- Logistic Regression model integration  
- Modular SQL and Python code structure for learning and debugging  

---

## ðŸ§© Run Locally

### Install dependencies
```bash
pip install -r requirements.txt
```

### Run ETL pipeline
```bash
python python/etl_shopai.py
```

### Train machine learning model
```bash
python python/model_train.py
```

### Automate daily ETL refresh
```bash
python python/scheduler.py
```

---

## ðŸ“Š Example Features

| Feature | Description |
|----------|-------------|
| total_orders | Total number of orders made by the user |
| avg_spend | Average amount spent per order |
| days_since_last_order | Number of days since last purchase |
| activity_flag | User activity label (Active / Inactive) |
| rank_in_city | Ranking of user by spend within their city |

---

## ðŸ§  Project Overview

**ShopAI** simulates an **AI-driven data pipeline** used in e-commerce and analytics environments.  
It demonstrates:

- How to design a PostgreSQL schema for analytics  
- Build a Python-based ETL system  
- Create feature stores for ML models  
- Automate data refresh using scheduling techniques  

This workflow mirrors how modern DataOps and MLOps teams manage AI datasets in production.

---

## ðŸ§© Folder Structure

```
ShopAI-DataPipeline/
â”‚
â”œâ”€â”€ sql/
â”‚   â”œâ”€â”€ 01_schema.sql
â”‚   â”œâ”€â”€ 02_insert_sample_data.sql
â”‚   â”œâ”€â”€ 03_cleaning.sql
â”‚   â”œâ”€â”€ 04_features.sql
â”‚   â”œâ”€â”€ 05_feature_store.sql
â”‚
â”œâ”€â”€ python/
â”‚   â”œâ”€â”€ etl_shopai.py
â”‚   â”œâ”€â”€ model_train.py
â”‚   â”œâ”€â”€ scheduler.py
â”‚
â”œâ”€â”€ data/
â”‚   â”œâ”€â”€ users.csv
â”‚   â”œâ”€â”€ orders.csv
â”‚
â”œâ”€â”€ docs/
â”‚   â”œâ”€â”€ architecture.png
â”‚   â”œâ”€â”€ architecture.txt
â”‚
â”œâ”€â”€ requirements.txt
â””â”€â”€ README.md
```

---

## ðŸ“¸ Architecture Diagram

### ðŸ§± Flow

**Raw CSV â†’ PostgreSQL â†’ SQL Feature Views â†’ Python ETL â†’ Materialized Feature Store â†’ ML Model**

---

## ðŸ§ª Assessment (For Learners)

Students enrolled in the CareerByteCode **AI Data Pipeline Course** must use this repository as part of their practical assessment.

**Objective:**  
Identify, debug, and fix small intentional issues in the project to gain real-world experience.

| Task | Description |
|------|-------------|
| ðŸ§© Fix Script Errors | Identify small SQL or Python syntax issues and correct them |
| ðŸ§¹ Clean Data | Validate and clean datasets using SQL |
| ðŸ§  Run ETL | Execute and debug `etl_shopai.py` |
| ðŸ§® Verify Features | Confirm expected columns in `user_feature_store_py` |
| ðŸ¤– Train Model | Run `model_train.py` and validate model output |
| â° Automate | Test scheduler by changing interval to 1 minute |
| ðŸ’¡ Extend Features | Add one new feature (e.g., `days_since_signup`) |
| ðŸ§¾ Document | Add notes in README about fixes and improvements |

---

### âœ… Completion Criteria

Youâ€™ve successfully completed the project when:

- All scripts and Python files run end-to-end without errors  
- `user_feature_store_py` populates correctly  
- Model trains successfully with visible coefficients  
- Scheduler triggers ETL automatically  
- You can explain every step (schema â†’ ETL â†’ model)

---

### ðŸ’¡ Bonus Challenges

- Create an additional **materialized view** that aggregates daily revenue  
- Add a **plot or visualization** of average spend per city using Python  
- Build a **Dockerfile** to containerize the project  
- Deploy the PostgreSQL + ETL pipeline using **Docker Compose**  
- Integrate with **Grafana** or **Metabase** for dashboard visualization  

---

## ðŸ§  Learning Outcomes

After completing this project, youâ€™ll master:

- **SQL for AI & Feature Engineering**  
- **Python + PostgreSQL ETL Automation**  
- **Data Cleaning and Quality Validation**  
- **Feature Store Design for ML Models**  
- **Automation and Scheduling Concepts**

---

## ðŸ§© Example Output Tables

| Table | Description |
|--------|-------------|
| users | Raw customer data |
| orders | Transaction data |
| user_features | Derived features per user |
| user_feature_store | Materialized feature table |
| user_feature_store_py | ETL-generated feature table |

### Example:

| user_id | name | total_spend | avg_spend | days_since_last_order | activity_flag |
|----------|------|-------------|------------|------------------------|----------------|
| 1 | Alice | 300 | 100 | 5 | Active |
| 2 | Ben | 350 | 175 | 8 | Inactive |

---

## ðŸ§© Run ETL + Model (Quick Demo)

```bash
python python/etl_shopai.py
python python/model_train.py
```

### Output Example:

```
Starting ETL...
ETL finished. Features written to table 'user_feature_store_py'.
Model trained. Coefficients: {'total_orders': 0.01, 'total_spend': 0.04, 'avg_spend': -0.02, 'days_since_last_order': 0.1}
```

---

## ðŸ§ª Assessment Rubric (Optional for Mentors)

| Area | Marks | Description |
|------|-------|-------------|
| SQL Setup & Schema | 10 | Database structure and data correctness |
| Data Cleaning | 10 | Proper handling of duplicates, nulls |
| Feature Engineering | 20 | Accuracy and creativity of SQL features |
| ETL & Integration | 20 | Functional Python ETL pipeline |
| Automation | 10 | Scheduler working as expected |
| Model Training | 10 | Successful model execution |
| Documentation | 10 | Clear fixes and explanations |
| Extension Features | 10 | Added new feature successfully |

**Total: 100 marks**

---

## ðŸ† Author

**careerbytecode**  
DevOps & Cloud Engineer | Building AI-ready DataOps workflows  
ðŸ”— [https://github.com/careerbytecode](https://github.com/careerbytecode)

---

## ðŸ’¬ Contribute

Learners and contributors are encouraged to:

- Submit pull requests fixing issues  
- Add new SQL or Python utilities  
- Create new AI features for practice  
- Document discovered bugs or improvements  

---

## ðŸ License

This project is open-source under the **MIT License**.  
Use it for learning, practicing, and building your AI & DataOps portfolio.

---

âœ… **Next Step:**  
I can now generate this `README.md` as a **downloadable file** (`/mnt/data/README.md`) so you can upload it directly to your GitHub repo.  

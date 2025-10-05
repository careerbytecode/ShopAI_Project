# 🧠 ShopAI - End-to-End AI Data Pipeline

A **full-featured PostgreSQL + Python project** simulating a real-world AI data workflow.  
This project demonstrates how to design, build, and automate a complete data pipeline — from raw data ingestion to AI-ready feature generation and model training.

---

## 🚀 Tech Stack

**Languages & Tools:**  
PostgreSQL · Python · pandas · SQLAlchemy · psycopg2 · scikit-learn · schedule  

**Concepts Covered:**  
ETL Pipelines · Feature Engineering · Data Cleaning · Automation · ML Integration · Scheduling  

---

## 📦 Features

- SQL-based feature engineering with PostgreSQL  
- Automated Python ETL pipeline (pandas + SQLAlchemy)  
- Daily data refresh via scheduler  
- AI-ready dataset export  
- Logistic Regression model integration  
- Modular SQL and Python code structure for learning and debugging  

---

## 🧩 Run Locally

### Install dependencies
```bash
pip install -r requirements.txt
````

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

## 📊 Example Features

| Feature               | Description                                |
| --------------------- | ------------------------------------------ |
| total_orders          | Total number of orders made by the user    |
| avg_spend             | Average amount spent per order             |
| days_since_last_order | Number of days since last purchase         |
| activity_flag         | User activity label (Active / Inactive)    |
| rank_in_city          | Ranking of user by spend within their city |

---

## 🧠 Project Overview

**ShopAI** simulates an **AI-driven data pipeline** used in e-commerce and analytics environments.
It demonstrates:

* How to design a PostgreSQL schema for analytics
* Build a Python-based ETL system
* Create feature stores for ML models
* Automate data refresh using scheduling techniques

This workflow mirrors how modern DataOps and MLOps teams manage AI datasets in production.

---

## 🧩 Folder Structure

```text
ShopAI-DataPipeline/
│
├── sql/
│   ├── 01_schema.sql
│   ├── 02_insert_sample_data.sql
│   ├── 03_cleaning.sql
│   ├── 04_features.sql
│   ├── 05_feature_store.sql
│
├── python/
│   ├── etl_shopai.py
│   ├── model_train.py
│   ├── scheduler.py
│
├── data/
│   ├── users.csv
│   ├── orders.csv
│
├── docs/
│   ├── architecture.png
│   ├── architecture.txt
│
├── requirements.txt
└── README.md
```

---

## 📸 Architecture Diagram

### 🧱 Flow

**Raw CSV → PostgreSQL → SQL Feature Views → Python ETL → Materialized Feature Store → ML Model**

---

## 🧪 Assessment (For Learners)

Students enrolled in the CareerByteCode **AI Data Pipeline Course** must use this repository as part of their practical assessment.

**Objective:**
Identify, debug, and fix small intentional issues in the project to gain real-world experience.

| Task                 | Description                                                 |
| -------------------- | ----------------------------------------------------------- |
| 🧩 Fix Script Errors | Identify small SQL or Python syntax issues and correct them |
| 🧹 Clean Data        | Validate and clean datasets using SQL                       |
| 🧠 Run ETL           | Execute and debug `etl_shopai.py`                           |
| 🧮 Verify Features   | Confirm expected columns in `user_feature_store_py`         |
| 🤖 Train Model       | Run `model_train.py` and validate model output              |
| ⏰ Automate           | Test scheduler by changing interval to 1 minute             |
| 💡 Extend Features   | Add one new feature (e.g., `days_since_signup`)             |
| 🧾 Document          | Add notes in README about fixes and improvements            |

---

### ✅ Completion Criteria

You’ve successfully completed the project when:

* All scripts and Python files run end-to-end without errors
* `user_feature_store_py` populates correctly
* Model trains successfully with visible coefficients
* Scheduler triggers ETL automatically
* You can explain every step (schema → ETL → model)

---

### 💡 Bonus Challenges

* Create an additional **materialized view** that aggregates daily revenue
* Add a **plot or visualization** of average spend per city using Python
* Build a **Dockerfile** to containerize the project
* Deploy the PostgreSQL + ETL pipeline using **Docker Compose**
* Integrate with **Grafana** or **Metabase** for dashboard visualization

---

## 🧠 Learning Outcomes

After completing this project, you’ll master:

* **SQL for AI & Feature Engineering**
* **Python + PostgreSQL ETL Automation**
* **Data Cleaning and Quality Validation**
* **Feature Store Design for ML Models**
* **Automation and Scheduling Concepts**

---

## 🧩 Example Output Tables

| Table                 | Description                 |
| --------------------- | --------------------------- |
| users                 | Raw customer data           |
| orders                | Transaction data            |
| user_features         | Derived features per user   |
| user_feature_store    | Materialized feature table  |
| user_feature_store_py | ETL-generated feature table |

### Example:

| user_id | name  | total_spend | avg_spend | days_since_last_order | activity_flag |
| ------- | ----- | ----------- | --------- | --------------------- | ------------- |
| 1       | Alice | 300         | 100       | 5                     | Active        |
| 2       | Ben   | 350         | 175       | 8                     | Inactive      |

---

## 🧩 Run ETL + Model (Quick Demo)

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

## 🧪 Assessment Rubric (Optional for Mentors)

| Area                | Marks | Description                             |
| ------------------- | ----- | --------------------------------------- |
| SQL Setup & Schema  | 10    | Database structure and data correctness |
| Data Cleaning       | 10    | Proper handling of duplicates, nulls    |
| Feature Engineering | 20    | Accuracy and creativity of SQL features |
| ETL & Integration   | 20    | Functional Python ETL pipeline          |
| Automation          | 10    | Scheduler working as expected           |
| Model Training      | 10    | Successful model execution              |
| Documentation       | 10    | Clear fixes and explanations            |
| Extension Features  | 10    | Added new feature successfully          |

**Total: 100 marks**

---

## 🏆 Author

**careerbytecode**
DevOps & Cloud Engineer | Building AI-ready DataOps workflows
🔗 [https://github.com/careerbytecode](https://github.com/careerbytecode)

---

## 💬 Contribute

Learners and contributors are encouraged to:

* Submit pull requests fixing issues
* Add new SQL or Python utilities
* Create new AI features for practice
* Document discovered bugs or improvements

---

## 🏁 License

This project is open-source under the **MIT License**.
Use it for learning, practicing, and building your AI & DataOps portfolio.

---

✅ **Next Step:**
Copy this complete README content into your repository’s `README.md` file.
It’s fully formatted for GitHub with headings, code blocks, and tables that render cleanly.

```


# etl_shopai.py
# Simple ETL: extracts users and orders, computes basic features, and writes a feature table
# Adjust DATABASE_URL below to match your Postgres setup

from sqlalchemy import create_engine, text
import pandas as pd
import os
from datetime import date

DATABASE_URL = os.getenv('DATABASE_URL', 'postgresql://postgres:password@localhost:5432/ai_course')

engine = create_engine(DATABASE_URL)

def run_etl():
    print("Starting ETL...")
    # extract
    df_users = pd.read_sql('SELECT * FROM users;', engine)
    df_orders = pd.read_sql('SELECT * FROM orders;', engine)

    if df_orders.empty:
        print("No orders found; creating empty feature table based on users.")
        df_features = df_users.copy()
        df_features['total_orders'] = 0
        df_features['total_spend'] = 0.0
        df_features['avg_spend'] = 0.0
        df_features['last_order'] = pd.NaT
        df_features['days_since_last_order'] = None
    else:
        # transform: aggregate orders per user
        df_orders['order_date'] = pd.to_datetime(df_orders['order_date'])
        agg = df_orders.groupby('user_id').agg(
            total_orders=pd.NamedAgg(column='order_id', aggfunc='count'),
            total_spend=pd.NamedAgg(column='amount', aggfunc='sum'),
            avg_spend=pd.NamedAgg(column='amount', aggfunc='mean'),
            last_order=pd.NamedAgg(column='order_date', aggfunc='max')
        ).reset_index()
        # compute days_since_last_order using current date
        today = pd.to_datetime(os.getenv('ETL_RUN_DATE', date.today().isoformat()))
        agg['days_since_last_order'] = (today - pd.to_datetime(agg['last_order'])).dt.days
        df_features = pd.merge(df_users, agg, left_on='user_id', right_on='user_id', how='left')
        df_features[['total_orders','total_spend','avg_spend','days_since_last_order']] =                     df_features[['total_orders','total_spend','avg_spend','days_since_last_order']].fillna(0)
    # finalize and load
    df_features.to_sql('user_feature_store_py', engine, if_exists='replace', index=False)
    print("ETL finished. Features written to table 'user_feature_store_py'.")

if __name__ == '__main__':
    run_etl()

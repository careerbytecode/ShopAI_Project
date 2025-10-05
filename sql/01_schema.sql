-- 01_schema.sql : Create schema for ShopAI demo
DROP TABLE IF EXISTS orders CASCADE;
DROP TABLE IF EXISTS users CASCADE;

CREATE TABLE users (
  user_id SERIAL PRIMARY KEY,
  name TEXT,
  signup_date DATE,
  city TEXT
);

CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY,
  user_id INT REFERENCES users(user_id),
  order_date DATE,
  amount NUMERIC(10,2)
);

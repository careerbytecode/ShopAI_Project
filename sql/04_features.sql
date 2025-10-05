-- 04_features.sql : Create user_features view
CREATE OR REPLACE VIEW user_features AS
SELECT
  u.user_id,
  u.name,
  u.city,
  COUNT(o.order_id) AS total_orders,
  COALESCE(SUM(o.amount),0) AS total_spend,
  ROUND(COALESCE(AVG(o.amount),0),2) AS avg_spend,
  MAX(o.order_date) AS last_order,
  CURRENT_DATE - MAX(o.order_date) AS days_since_last_order
FROM users u
LEFT JOIN orders o ON u.user_id = o.user_id
GROUP BY u.user_id, u.name, u.city;

-- 05_feature_store.sql : Materialized feature view
DROP MATERIALIZED VIEW IF EXISTS user_feature_store;

CREATE MATERIALIZED VIEW user_feature_store AS
SELECT *,
       RANK() OVER (PARTITION BY city ORDER BY total_spend DESC) AS rank_in_city,
       CASE WHEN (CURRENT_DATE - COALESCE(last_order, CURRENT_DATE)) > 5 THEN 'Inactive' ELSE 'Active' END AS activity_flag
FROM user_features;

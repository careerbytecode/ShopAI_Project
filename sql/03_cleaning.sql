-- 03_cleaning.sql : Simple cleaning steps
-- remove exact duplicates (same user_id + order_date + amount)
DELETE FROM orders a
USING orders b
WHERE a.ctid < b.ctid
  AND a.user_id = b.user_id
  AND a.order_date = b.order_date
  AND a.amount = b.amount;

-- replace null cities with 'Unknown'
UPDATE users SET city = COALESCE(city, 'Unknown');

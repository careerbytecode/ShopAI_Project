-- 02_insert_sample_data.sql : Insert demo data
INSERT INTO users (name, signup_date, city) VALUES
('Alice','2025-01-01','Paris'),
('Ben','2025-01-03','London'),
('Carmen','2025-01-05','Paris'),
('David','2025-01-10','Berlin');

INSERT INTO orders (user_id, order_date, amount) VALUES
(1,'2025-01-02',100),
(1,'2025-01-05',120),
(1,'2025-01-10',80),
(2,'2025-01-04',200),
(2,'2025-01-07',150),
(3,'2025-01-10',50),
(4,'2025-01-11',300),
(4,'2025-01-14',200);

use ecommerce;
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(150),
    city VARCHAR(100),
    registration_date DATE
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_amount DECIMAL(10, 2),
    order_status VARCHAR(30),
    order_date DATE,
    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);
INSERT INTO customers
    (customer_id, customer_name, email, city, registration_date)
VALUES
    (101, 'Arpitha', 'james@example.com', 'Hyderabad', '2024-01-15'),
    (102, 'Emily ', 'emily@example.com', 'Bengaluru', '2024-03-20'),
    (103, 'Michael Brown', 'michael@example.com', 'Chandigarh', '2026-11-10'),
    (104, 'Sophia Miller', 'sophia@example.com', 'Goa', '2025-06-05'),
    (105, 'Daniel Taylor', 'daniel@example.com', 'Mumbai', '2023-08-18'),
    (106, 'Olivia Davis', 'olivia@example.com', 'Assam', '2024-09-12'),
	(107, 'Girish', 'Girish@example.com', 'Hyderabad', '2023-08-26'),
	(108, 'Soundarya', 'Soundarya@example.com', 'Mumbai', '2023-08-18'),
	(109, 'Yashas', 'yashas@example.com', 'Tamilnadu', '2025-08-18'),
	(110, 'Daniel Taylor', 'daniel@example.com', 'Mumbai', '2023-08-08');
    
INSERT INTO orders
    (order_id, customer_id, order_amount, order_status, order_date)
VALUES
    (1001, 101, 250.00, 'Completed', '2024-02-10'),
    (1002, 102, 120.00, 'Pending', '2023-04-15'),
    (1003, 103, 450.00, 'Completed', '2024-01-20'),
    (1004, 101, 180.00, 'Completed', '2026-05-12'),
    (1005, 104, 90.00, 'Cancelled', '2023-06-18'),
    (1006, 105, 600.00, 'Completed', '2024-07-25'),
    (1007, 106, 320.00, 'Pending', '2026-10-05'),
    (1008, 103, 150.00, 'Completed', '2024-11-14'),
    (1009, 105, 600.00, 'Pending', '2024-07-25'),
    (1010, 109, 1000.00, 'Completed', '2025-07-25');
    
select * from customers;
SELECT customer_id, customer_name, city
FROM customers
WHERE city IN ('Mumbai', 'Hyderabad');
select avg(order_amount) from orders;
select * from customers order by  city desc;
select city, count(customer_id) from customers group by city;
select * from orders where order_amount > 500;

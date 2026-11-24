CREATE DATABASE sales2;
USE sales2;
CREATE TABLE  customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(120) UNIQUE
);
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    total_amount DECIMAL(10, 2) NOT NULL,
    CONSTRAINT fk_orders_customer
        FOREIGN KEY (customer_id) REFERENCES customers (customer_id)
);
INSERT INTO customers (full_name, email) VALUES
    ('Amina Hassan', 'amina@example.com'),
    ('David Otieno', 'david@example.com');
INSERT INTO orders (customer_id, order_date, total_amount) VALUES
    (1, '2026-11-15', 4500.00),
    (2, '2026-11-20', 8200.00);

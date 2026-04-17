CREATE TABLE raw_data.customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    city VARCHAR(50),
    updated_at TIMESTAMP
);

CREATE TABLE raw_data.products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    updated_at TIMESTAMP
);

CREATE TABLE raw_data.orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    order_date TIMESTAMP
);

CREATE TABLE raw_data.payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    payment_method VARCHAR(50),
    amount DECIMAL(10,2),
    payment_date TIMESTAMP
);
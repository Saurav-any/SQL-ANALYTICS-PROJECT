CREATE DATABASE food_delivery_analytics;
USE food_delivery_analytics;
-- =========================================
-- TABLE 1 : CUSTOMERS
-- =========================================
CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15) UNIQUE,
    city VARCHAR(50),
    signup_date DATE,
    customer_type VARCHAR(20)
);
-- =========================================
-- TABLE 2 : RESTAURANTS
-- =========================================
CREATE TABLE restaurants (
    restaurant_id INT PRIMARY KEY AUTO_INCREMENT,
    restaurant_name VARCHAR(100) NOT NULL,
    city VARCHAR(50),
    cuisine_type VARCHAR(50),
    opening_time TIME,
    closing_time TIME,
    average_rating DECIMAL(2,1),
    total_reviews INT
);
-- =========================================
-- TABLE 3 : DELIVERY_PARTNERS
-- =========================================
CREATE TABLE delivery_partners (
    partner_id INT PRIMARY KEY AUTO_INCREMENT,
    partner_name VARCHAR(100),
    phone VARCHAR(15) UNIQUE,
    vehicle_type VARCHAR(30),
    joining_date DATE,
    city VARCHAR(50),
    rating DECIMAL(2,1)
);
-- =========================================
-- TABLE 4 : MENU_ITEMS
-- =========================================
CREATE TABLE menu_items (
    item_id INT PRIMARY KEY AUTO_INCREMENT,
    restaurant_id INT,
    item_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    is_available BOOLEAN,

    FOREIGN KEY (restaurant_id)
    REFERENCES restaurants(restaurant_id)
);
-- =========================================
-- TABLE 5 : ORDERS
-- =========================================
CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    restaurant_id INT,
    partner_id INT,
    order_date DATETIME,
    delivery_time INT,
    order_amount DECIMAL(10,2),
    delivery_fee DECIMAL(10,2),
    discount_amount DECIMAL(10,2),
    final_amount DECIMAL(10,2),
    payment_method VARCHAR(30),
    order_status VARCHAR(30),

    FOREIGN KEY (customer_id)
    REFERENCES customers(customer_id),

    FOREIGN KEY (restaurant_id)
    REFERENCES restaurants(restaurant_id),

    FOREIGN KEY (partner_id)
    REFERENCES delivery_partners(partner_id)
);
-- =========================================
-- TABLE 6 : ORDERS_ITMES
-- =========================================
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    item_id INT,
    quantity INT,
    total_price DECIMAL(10,2),

    FOREIGN KEY (order_id)
    REFERENCES orders(order_id),

    FOREIGN KEY (item_id)
    REFERENCES menu_items(item_id)
);
-- =========================================
-- TABLE 7 : PAYMENTS
-- =========================================
CREATE TABLE payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    payment_status VARCHAR(30),
    payment_date DATETIME,

    FOREIGN KEY (order_id)
    REFERENCES orders(order_id)
);
-- =========================================
-- TABLE 8 : RATING
-- =========================================
CREATE TABLE ratings (
    rating_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    restaurant_rating INT,
    delivery_rating INT,
    feedback TEXT,

    FOREIGN KEY (order_id)
    REFERENCES orders(order_id)
);
-- =========================================
-- CUSTOMERS DATA
-- =========================================
INSERT INTO customers
(customer_name, email, phone, city, signup_date, customer_type)
VALUES
('Saurav Kumar', 'saurav@gmail.com', '9876543210', 'Jaipur', '2025-01-10', 'Gold'),
('Rahul Sharma', 'rahul@gmail.com', '9876543211', 'Delhi', '2025-02-15', 'Silver'),
('Priya Verma', 'priya@gmail.com', '9876543212', 'Mumbai', '2025-03-12', 'Gold'),
('Aman Singh', 'aman@gmail.com', '9876543213', 'Pune', '2025-04-01', 'Regular'),
('Ankit Sharma', 'ankit.sharma@gmail.com', '9876501001', 'Delhi', '2025-01-15', 'Gold'),
('Neha Verma', 'neha.verma@gmail.com', '9876501002', 'Mumbai', '2025-01-18', 'Silver'),
('Rohit Meena', 'rohit.meena@gmail.com', '9876501003', 'Jaipur', '2025-01-22', 'Regular'),
('Simran Kaur', 'simran.kaur@gmail.com', '9876501004', 'Chandigarh', '2025-02-01', 'Gold'),
('Pooja Singh', 'pooja.singh@gmail.com', '9876501006', 'Pune', '2025-02-11', 'Regular'),
('Kunal Arora', 'kunal.arora@gmail.com', '9876501007', 'Noida', '2025-02-14', 'Gold'),
('Sneha Patel', 'sneha.patel@gmail.com', '9876501008', 'Ahmedabad', '2025-02-20', 'Silver'),
('Harsh Raj', 'harsh.raj@gmail.com', '9876501009', 'Patna', '2025-03-01', 'Regular'),
('Ishita Jain', 'ishita.jain@gmail.com', '9876501010', 'Indore', '2025-03-06', 'Gold');
-- =========================================
-- RESTAURANTS DATA
-- =========================================
INSERT INTO restaurants
(restaurant_name, city, cuisine_type, opening_time, closing_time, average_rating, total_reviews)
VALUES
('Burger Hub', 'Jaipur', 'Fast Food', '10:00:00', '23:00:00', 4.5, 1200),
('Pizza World', 'Delhi', 'Italian', '09:00:00', '22:30:00', 4.2, 980),
('Biryani House', 'Mumbai', 'Indian', '11:00:00', '01:00:00', 4.7, 2100);
-- =========================================
-- DELIVERY PARTNERS DATA
-- =========================================
INSERT INTO delivery_partners
(partner_name, phone, vehicle_type, joining_date, city, rating)
VALUES
('Ravi', '9991110001', 'Bike', '2024-01-10', 'Jaipur', 4.8),
('Mohit', '9991110002', 'Scooter', '2024-03-15', 'Delhi', 4.5),
('Karan', '9991110003', 'Bike', '2024-05-20', 'Mumbai', 4.7);
-- =========================================
-- MENU ITEMS DATA
-- =========================================
INSERT INTO menu_items
(restaurant_id, item_name, category, price, is_available)
VALUES
(1, 'Veg Burger', 'Burger', 149, TRUE),
(1, 'Cheese Burger', 'Burger', 199, TRUE),
(1, 'French Fries', 'Snacks', 99, TRUE),
(1, 'Cold Coffee', 'Beverage', 129, TRUE),
(2, 'Margherita Pizza', 'Pizza', 299, TRUE),
(2, 'Farmhouse Pizza', 'Pizza', 399, TRUE),
(2, 'Garlic Bread', 'Sides', 149, TRUE),
(2, 'Coke', 'Beverage', 59, TRUE),
(3, 'Chicken Biryani', 'Biryani', 349, TRUE),
(3, 'Mutton Biryani', 'Biryani', 499, TRUE),
(3, 'Paneer Biryani', 'Biryani', 299, TRUE),
(3, 'Raita', 'Sides', 49, TRUE);
-- =========================================
-- ORDERS DATA
-- =========================================

INSERT INTO orders
(customer_id,
 restaurant_id,
 partner_id,
 order_date,
 delivery_time,
 order_amount,
 delivery_fee,
 discount_amount,
 final_amount,
 payment_method,
 order_status)
VALUES
(1, 1, 1, '2025-05-01 13:10:00', 25, 348, 40, 50, 338, 'UPI', 'Delivered'),
(2, 2, 2, '2025-05-01 19:45:00', 32, 599, 50, 100, 549, 'Card', 'Delivered'),
(3, 3, 3, '2025-05-02 14:20:00', 40, 499, 45, 70, 474, 'Cash', 'Delivered'),
(4, 1, 1, '2025-05-02 18:05:00', 20, 248, 35, 20, 263, 'UPI', 'Delivered'),
(5, 2, 2, '2025-05-03 21:15:00', 38, 799, 60, 120, 739, 'Wallet', 'Delivered'),
(6, 3, 3, '2025-05-03 12:40:00', 28, 349, 40, 30, 359, 'UPI', 'Delivered'),
(7, 1, 1, '2025-05-04 17:30:00', 22, 199, 30, 10, 219, 'Card', 'Delivered'),
(8, 2, 2, '2025-05-04 20:50:00', 45, 899, 70, 150, 819, 'UPI', 'Cancelled'),
(9, 3, 3, '2025-05-05 15:00:00', 35, 649, 50, 90, 609, 'Cash', 'Delivered'),
(10, 1, 1, '2025-05-05 11:25:00', 18, 149, 25, 0, 174, 'UPI', 'Delivered');
-- =========================================
-- ORDER ITEMS DATA
-- =========================================

INSERT INTO order_items
(order_id, item_id, quantity, total_price)
VALUES
(1, 1, 2, 298),
(1, 3, 1, 99),
(2, 5, 1, 299),
(2, 6, 1, 399),
(3, 9, 1, 349),
(3, 12, 1, 49),
(4, 2, 1, 199),
(5, 6, 2, 798),
(6, 11, 1, 299),
(7, 1, 1, 149),
(8, 5, 2, 598),
(9, 10, 1, 499),
(10, 4, 1, 129);
-- =========================================
-- PAYMENTS DATA
-- =========================================
INSERT INTO payments
(order_id, payment_status, payment_date)
VALUES
(1, 'Success', '2025-05-01 13:15:00'),
(2, 'Success', '2025-05-01 19:50:00'),
(3, 'Success', '2025-05-02 14:25:00'),
(4, 'Success', '2025-05-02 18:10:00'),
(5, 'Success', '2025-05-03 21:20:00'),
(6, 'Success', '2025-05-03 12:45:00'),
(7, 'Success', '2025-05-04 17:35:00'),
(8, 'Failed', '2025-05-04 20:55:00'),
(9, 'Success', '2025-05-05 15:05:00'),
(10, 'Success', '2025-05-05 11:30:00');
-- =========================================
-- RATINGS DATA
-- =========================================
INSERT INTO ratings
(order_id,
 restaurant_rating,
 delivery_rating,
 feedback)
VALUES
(1, 5, 5, 'Excellent food and fast delivery'),
(2, 4, 4, 'Pizza was good'),
(3, 5, 4, 'Biryani taste was amazing'),
(4, 4, 5, 'Quick delivery'),
(5, 5, 4, 'Loved the pizza quality'),
(6, 4, 4, 'Good food'),
(7, 3, 5, 'Burger was average'),
(9, 5, 4, 'Very tasty biryani'),
(10, 4, 5, 'Coffee was good');
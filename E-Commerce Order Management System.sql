CREATE DATABASE EcommerceDB3;
USE EcommerceDB3;
-- Create Customers Table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    city VARCHAR(50),
    registration_date DATE
);
-- Create Products Table
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    brand VARCHAR(50),
    price DECIMAL(10,2),
    stock_quantity INT
);
-- Create Orders Table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    order_status VARCHAR(20),
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id)
    REFERENCES Customers(customer_id)
);
-- Create Order_Details Table
CREATE TABLE Order_Details (
    order_detail_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10,2),
    FOREIGN KEY (order_id)
    REFERENCES Orders(order_id),
    FOREIGN KEY (product_id)
    REFERENCES Products(product_id)
);
-- Create Payments Table
CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    payment_method VARCHAR(30),
    payment_status VARCHAR(20),
    payment_date DATE,
    FOREIGN KEY (order_id)
    REFERENCES Orders(order_id)
);
-- Create Shipping Table
CREATE TABLE Shipping (
    shipping_id INT PRIMARY KEY,
    order_id INT,
    courier_name VARCHAR(50),
    shipping_status VARCHAR(30),
    delivery_date DATE,
    FOREIGN KEY (order_id)
    REFERENCES Orders(order_id)
);
SHOW TABLES;
INSERT INTO Customers (customer_id, first_name, last_name, email, phone, city, registration_date) VALUES
(1,'Aditya','Naik','aditya1@gmail.com','9876500001','Pune','2025-01-01'),
(2,'Rahul','Sharma','rahul2@gmail.com','9876500002','Mumbai','2025-01-02'),
(3,'Priya','Patil','priya3@gmail.com','9876500003','Nagpur','2025-01-03'),
(4,'Amit','Verma','amit4@gmail.com','9876500004','Delhi','2025-01-04'),
(5,'Sneha','Joshi','sneha5@gmail.com','9876500005','Pune','2025-01-05'),
(6,'Rohit','Singh','rohit6@gmail.com','9876500006','Bengaluru','2025-01-06'),
(7,'Neha','Kulkarni','neha7@gmail.com','9876500007','Hyderabad','2025-01-07'),
(8,'Karan','Mehta','karan8@gmail.com','9876500008','Ahmedabad','2025-01-08'),
(9,'Anjali','Gupta','anjali9@gmail.com','9876500009','Chennai','2025-01-09'),
(10,'Vikas','Yadav','vikas10@gmail.com','9876500010','Lucknow','2025-01-10'),
(11,'Pooja','Desai','pooja11@gmail.com','9876500011','Surat','2025-01-11'),
(12,'Arjun','Rao','arjun12@gmail.com','9876500012','Jaipur','2025-01-12'),
(13,'Nisha','Shinde','nisha13@gmail.com','9876500013','Pune','2025-01-13'),
(14,'Manish','Kumar','manish14@gmail.com','9876500014','Delhi','2025-01-14'),
(15,'Kavita','Mishra','kavita15@gmail.com','9876500015','Indore','2025-01-15'),
(16,'Deepak','Jain','deepak16@gmail.com','9876500016','Bhopal','2025-01-16'),
(17,'Riya','Kapoor','riya17@gmail.com','9876500017','Chandigarh','2025-01-17'),
(18,'Sagar','More','sagar18@gmail.com','9876500018','Nashik','2025-01-18'),
(19,'Meera','Nair','meera19@gmail.com','9876500019','Kochi','2025-01-19'),
(20,'Harsh','Patel','harsh20@gmail.com','9876500020','Vadodara','2025-01-20'),
(21,'Ayesha','Khan','ayesha21@gmail.com','9876500021','Mumbai','2025-01-21'),
(22,'Nitin','Chauhan','nitin22@gmail.com','9876500022','Noida','2025-01-22'),
(23,'Shreya','Iyer','shreya23@gmail.com','9876500023','Chennai','2025-01-23'),
(24,'Tarun','Bansal','tarun24@gmail.com','9876500024','Gurugram','2025-01-24'),
(25,'Divya','Reddy','divya25@gmail.com','9876500025','Hyderabad','2025-01-25');
SELECT * FROM Customers;
INSERT INTO Customers (customer_id, first_name, last_name, email, phone, city, registration_date) VALUES
(26,'Akash','Mali','akash26@gmail.com','9876500026','Kolhapur','2025-01-26'),
(27,'Sonal','Pawar','sonal27@gmail.com','9876500027','Aurangabad','2025-01-27'),
(28,'Abhishek','Gupta','abhishek28@gmail.com','9876500028','Kanpur','2025-01-28'),
(29,'Komal','Jadhav','komal29@gmail.com','9876500029','Solapur','2025-01-29'),
(30,'Yash','Patil','yash30@gmail.com','9876500030','Pune','2025-01-30'),
(31,'Aniket','Shinde','aniket31@gmail.com','9876500031','Nashik','2025-01-31'),
(32,'Ritika','Sharma','ritika32@gmail.com','9876500032','Delhi','2025-02-01'),
(33,'Mohit','Agarwal','mohit33@gmail.com','9876500033','Jaipur','2025-02-02'),
(34,'Simran','Kaur','simran34@gmail.com','9876500034','Amritsar','2025-02-03'),
(35,'Nikhil','Joshi','nikhil35@gmail.com','9876500035','Nagpur','2025-02-04'),
(36,'Tanvi','Deshmukh','tanvi36@gmail.com','9876500036','Pune','2025-02-05'),
(37,'Sachin','More','sachin37@gmail.com','9876500037','Satara','2025-02-06'),
(38,'Vaishnavi','Kulkarni','vaish38@gmail.com','9876500038','Sangli','2025-02-07'),
(39,'Pratik','Chavan','pratik39@gmail.com','9876500039','Kolhapur','2025-02-08'),
(40,'Isha','Patel','isha40@gmail.com','9876500040','Ahmedabad','2025-02-09'),
(41,'Om','Bhosale','om41@gmail.com','9876500041','Pune','2025-02-10'),
(42,'Aarti','Verma','aarti42@gmail.com','9876500042','Lucknow','2025-02-11'),
(43,'Kishor','Naidu','kishor43@gmail.com','9876500043','Hyderabad','2025-02-12'),
(44,'Bhavna','Rao','bhavna44@gmail.com','9876500044','Bengaluru','2025-02-13'),
(45,'Siddharth','Mishra','sid45@gmail.com','9876500045','Bhopal','2025-02-14'),
(46,'Payal','Yadav','payal46@gmail.com','9876500046','Indore','2025-02-15'),
(47,'Ramesh','Nair','ramesh47@gmail.com','9876500047','Kochi','2025-02-16'),
(48,'Kriti','Saxena','kriti48@gmail.com','9876500048','Noida','2025-02-17'),
(49,'Varun','Kapoor','varun49@gmail.com','9876500049','Chandigarh','2025-02-18'),
(50,'Pallavi','Thakur','pallavi50@gmail.com','9876500050','Shimla','2025-02-19');
SELECT * 
FROM Customers
WHERE customer_id BETWEEN 26 AND 50;
INSERT INTO Customers (customer_id, first_name, last_name, email, phone, city, registration_date) VALUES
(51,'Rohan','Patil','rohan51@gmail.com','9876500051','Pune','2025-02-20'),
(52,'Ananya','Sharma','ananya52@gmail.com','9876500052','Mumbai','2025-02-21'),
(53,'Kunal','Joshi','kunal53@gmail.com','9876500053','Nagpur','2025-02-22'),
(54,'Snehal','Kulkarni','snehal54@gmail.com','9876500054','Nashik','2025-02-23'),
(55,'Harshal','More','harshal55@gmail.com','9876500055','Kolhapur','2025-02-24'),
(56,'Priti','Desai','priti56@gmail.com','9876500056','Surat','2025-02-25'),
(57,'Akshay','Jadhav','akshay57@gmail.com','9876500057','Aurangabad','2025-02-26'),
(58,'Monika','Verma','monika58@gmail.com','9876500058','Delhi','2025-02-27'),
(59,'Vivek','Kumar','vivek59@gmail.com','9876500059','Noida','2025-02-28'),
(60,'Swati','Patel','swati60@gmail.com','9876500060','Ahmedabad','2025-03-01'),
(61,'Ajay','Rao','ajay61@gmail.com','9876500061','Hyderabad','2025-03-02'),
(62,'Bhavna','Mishra','bhavna62@gmail.com','9876500062','Lucknow','2025-03-03'),
(63,'Nilesh','Shinde','nilesh63@gmail.com','9876500063','Pune','2025-03-04'),
(64,'Rutuja','Pawar','rutuja64@gmail.com','9876500064','Satara','2025-03-05'),
(65,'Tejas','Naik','tejas65@gmail.com','9876500065','Goa','2025-03-06'),
(66,'Sakshi','Singh','sakshi66@gmail.com','9876500066','Jaipur','2025-03-07'),
(67,'Gaurav','Gupta','gaurav67@gmail.com','9876500067','Kanpur','2025-03-08'),
(68,'Mansi','Chavan','mansi68@gmail.com','9876500068','Solapur','2025-03-09'),
(69,'Nitin','Patil','nitin69@gmail.com','9876500069','Sangli','2025-03-10'),
(70,'Shruti','Nair','shruti70@gmail.com','9876500070','Kochi','2025-03-11'),
(71,'Abhay','Yadav','abhay71@gmail.com','9876500071','Indore','2025-03-12'),
(72,'Pallavi','Joshi','pallavi72@gmail.com','9876500072','Bhopal','2025-03-13'),
(73,'Tushar','Mehta','tushar73@gmail.com','9876500073','Vadodara','2025-03-14'),
(74,'Ishita','Kapoor','ishita74@gmail.com','9876500074','Chandigarh','2025-03-15'),
(75,'Sandeep','Chauhan','sandeep75@gmail.com','9876500075','Gurugram','2025-03-16');
SELECT *
FROM Customers
WHERE customer_id BETWEEN 51 AND 75;
INSERT INTO Customers (customer_id, first_name, last_name, email, phone, city, registration_date) VALUES
(76,'Ankita','Patil','ankita76@gmail.com','9876500076','Pune','2025-03-17'),
(77,'Rakesh','Sharma','rakesh77@gmail.com','9876500077','Mumbai','2025-03-18'),
(78,'Megha','Joshi','megha78@gmail.com','9876500078','Nagpur','2025-03-19'),
(79,'Sameer','Kulkarni','sameer79@gmail.com','9876500079','Nashik','2025-03-20'),
(80,'Prachi','Deshmukh','prachi80@gmail.com','9876500080','Aurangabad','2025-03-21'),
(81,'Kartik','Patel','kartik81@gmail.com','9876500081','Ahmedabad','2025-03-22'),
(82,'Nidhi','Gupta','nidhi82@gmail.com','9876500082','Delhi','2025-03-23'),
(83,'Abhinav','Verma','abhinav83@gmail.com','9876500083','Noida','2025-03-24'),
(84,'Shivani','Yadav','shivani84@gmail.com','9876500084','Lucknow','2025-03-25'),
(85,'Adarsh','Singh','adarsh85@gmail.com','9876500085','Jaipur','2025-03-26'),
(86,'Poonam','Rao','poonam86@gmail.com','9876500086','Hyderabad','2025-03-27'),
(87,'Vishal','Naik','vishal87@gmail.com','9876500087','Goa','2025-03-28'),
(88,'Khushi','Mehta','khushi88@gmail.com','9876500088','Surat','2025-03-29'),
(89,'Soham','More','soham89@gmail.com','9876500089','Kolhapur','2025-03-30'),
(90,'Aishwarya','Pawar','aish90@gmail.com','9876500090','Satara','2025-03-31'),
(91,'Yogesh','Jain','yogesh91@gmail.com','9876500091','Bhopal','2025-04-01'),
(92,'Rashmi','Khan','rashmi92@gmail.com','9876500092','Indore','2025-04-02'),
(93,'Pranav','Chavan','pranav93@gmail.com','9876500093','Solapur','2025-04-03'),
(94,'Komal','Mishra','komal94@gmail.com','9876500094','Kanpur','2025-04-04'),
(95,'Harsh','Agarwal','harsh95@gmail.com','9876500095','Chandigarh','2025-04-05'),
(96,'Nehal','Iyer','nehal96@gmail.com','9876500096','Chennai','2025-04-06'),
(97,'Omkar','Bhosale','omkar97@gmail.com','9876500097','Sangli','2025-04-07'),
(98,'Sonal','Thakur','sonal98@gmail.com','9876500098','Shimla','2025-04-08'),
(99,'Dev','Nair','dev99@gmail.com','9876500099','Kochi','2025-04-09'),
(100,'Ritika','Chopra','ritika100@gmail.com','9876500100','Gurugram','2025-04-10');
SELECT COUNT(*) AS Total_Customers
FROM Customers;
INSERT INTO Products (product_id, product_name, category, brand, price, stock_quantity) VALUES
(1,'iPhone 15','Electronics','Apple',79999.00,50),
(2,'Galaxy S24','Electronics','Samsung',74999.00,45),
(3,'OnePlus 12','Electronics','OnePlus',64999.00,40),
(4,'Redmi Note 13 Pro','Electronics','Xiaomi',28999.00,60),
(5,'Realme GT 6','Electronics','Realme',35999.00,55),
(6,'MacBook Air M3','Electronics','Apple',114999.00,20),
(7,'Dell Inspiron 15','Electronics','Dell',62999.00,35),
(8,'HP Pavilion 14','Electronics','HP',58999.00,30),
(9,'Lenovo IdeaPad Slim 5','Electronics','Lenovo',54999.00,28),
(10,'ASUS VivoBook 15','Electronics','ASUS',51999.00,25),
(11,'Sony WH-1000XM5','Electronics','Sony',29999.00,40),
(12,'Boat Rockerz 550','Electronics','Boat',2499.00,100),
(13,'JBL Flip 6','Electronics','JBL',11999.00,45),
(14,'Apple Watch Series 10','Electronics','Apple',46999.00,30),
(15,'Samsung Galaxy Watch 7','Electronics','Samsung',32999.00,35),
(16,'Nike Air Max 270','Fashion','Nike',10999.00,70),
(17,'Adidas Ultraboost Light','Fashion','Adidas',13999.00,60),
(18,'Puma Running Shoes','Fashion','Puma',6999.00,75),
(19,'Levi''s 511 Jeans','Fashion','Levis',2999.00,80),
(20,'Allen Solly Formal Shirt','Fashion','Allen Solly',1999.00,90),
(21,'Woodland Boots','Fashion','Woodland',4999.00,50),
(22,'Titan Analog Watch','Fashion','Titan',7999.00,45),
(23,'Fastrack Sunglasses','Fashion','Fastrack',1999.00,70),
(24,'American Tourister Backpack','Fashion','American Tourister',2499.00,65),
(25,'Wildcraft Rain Jacket','Fashion','Wildcraft',3499.00,55);
SELECT * FROM Products;
INSERT INTO Products (product_id, product_name, category, brand, price, stock_quantity) VALUES
(26,'Prestige Pressure Cooker 5L','Home & Kitchen','Prestige',2499.00,60),
(27,'Pigeon Non-Stick Cookware Set','Home & Kitchen','Pigeon',3499.00,45),
(28,'Philips Air Fryer','Home & Kitchen','Philips',8999.00,30),
(29,'Bajaj Mixer Grinder','Home & Kitchen','Bajaj',3999.00,40),
(30,'Milton Water Bottle 1L','Home & Kitchen','Milton',599.00,120),
(31,'Cello Dinner Set','Home & Kitchen','Cello',2999.00,35),
(32,'Butterfly Gas Stove','Home & Kitchen','Butterfly',4999.00,25),
(33,'Kent Water Purifier','Home & Kitchen','Kent',14999.00,20),
(34,'LG Microwave Oven','Home & Kitchen','LG',11999.00,18),
(35,'Samsung Refrigerator 253L','Home & Kitchen','Samsung',28999.00,15),
(36,'Atomic Habits','Books','Penguin',499.00,100),
(37,'The Psychology of Money','Books','Jaico',399.00,90),
(38,'Rich Dad Poor Dad','Books','Plata',450.00,95),
(39,'The Alchemist','Books','Harper',350.00,85),
(40,'Ikigai','Books','Penguin',399.00,100),
(41,'Campus Running Shoes','Sports','Campus',2499.00,60),
(42,'Yonex Badminton Racket','Sports','Yonex',1999.00,50),
(43,'Nivia Football','Sports','Nivia',899.00,80),
(44,'Cosco Cricket Bat','Sports','Cosco',1799.00,40),
(45,'Boldfit Yoga Mat','Sports','Boldfit',999.00,70),
(46,'Mamaearth Face Wash','Beauty','Mamaearth',349.00,100),
(47,'Lakme Sunscreen SPF50','Beauty','Lakme',499.00,90),
(48,'Nivea Body Lotion','Beauty','Nivea',399.00,110),
(49,'Dove Shampoo 650ml','Beauty','Dove',549.00,85),
(50,'Beardo Beard Oil','Beauty','Beardo',299.00,95);
SELECT *
FROM Products
WHERE product_id BETWEEN 26 AND 50;
INSERT INTO Products (product_id, product_name, category, brand, price, stock_quantity) VALUES
(51,'Aashirvaad Atta 10kg','Grocery','Aashirvaad',549.00,150),
(52,'Fortune Sunflower Oil 5L','Grocery','Fortune',899.00,100),
(53,'Tata Salt 1kg','Grocery','Tata',30.00,300),
(54,'India Gate Basmati Rice 5kg','Grocery','India Gate',699.00,120),
(55,'Tata Tea Gold 1kg','Grocery','Tata',649.00,80),
(56,'Bru Instant Coffee 200g','Grocery','Bru',425.00,90),
(57,'Maggi Noodles Pack of 12','Grocery','Nestle',180.00,200),
(58,'Amul Ghee 1L','Grocery','Amul',699.00,100),
(59,'Kellogg''s Corn Flakes 875g','Grocery','Kellogg''s',375.00,75),
(60,'Oreo Biscuits Family Pack','Grocery','Oreo',120.00,180),
(61,'Colgate Toothpaste 200g','Health & Personal Care','Colgate',199.00,150),
(62,'Dettol Hand Wash 900ml','Health & Personal Care','Dettol',249.00,120),
(63,'Himalaya Neem Face Wash','Health & Personal Care','Himalaya',210.00,100),
(64,'Gillette Mach3 Razor','Health & Personal Care','Gillette',499.00,70),
(65,'Whisper Ultra Pads XL','Health & Personal Care','Whisper',399.00,90),
(66,'Classmate Notebook Pack','Office Supplies','Classmate',350.00,110),
(67,'Cello Ball Pens Pack of 10','Office Supplies','Cello',120.00,200),
(68,'Casio Scientific Calculator','Office Supplies','Casio',999.00,60),
(69,'HP A4 Printer Paper 500 Sheets','Office Supplies','HP',350.00,85),
(70,'Logitech Wireless Mouse','Office Supplies','Logitech',899.00,55),
(71,'LEGO Classic Building Blocks','Toys & Games','LEGO',2499.00,40),
(72,'Funskool Monopoly','Toys & Games','Funskool',999.00,45),
(73,'Pedigree Adult Dog Food 3kg','Pet Supplies','Pedigree',899.00,60),
(74,'Whiskas Cat Food 1.2kg','Pet Supplies','Whiskas',599.00,50),
(75,'Dog Chew Toy','Pet Supplies','Trixie',299.00,100);
SELECT *
FROM Products
WHERE product_id BETWEEN 51 AND 75;
INSERT INTO Products (product_id, product_name, category, brand, price, stock_quantity) VALUES
(76,'Nilkamal Office Chair','Furniture','Nilkamal',4999.00,35),
(77,'Godrej Study Table','Furniture','Godrej',6999.00,25),
(78,'Sleepwell Single Mattress','Furniture','Sleepwell',8999.00,20),
(79,'Urban Ladder Coffee Table','Furniture','Urban Ladder',5499.00,18),
(80,'IKEA Bookshelf','Furniture','IKEA',7499.00,22),

(81,'Voltas 1.5 Ton AC','Appliances','Voltas',35999.00,15),
(82,'IFB Front Load Washing Machine','Appliances','IFB',28999.00,12),
(83,'Havells Ceiling Fan','Appliances','Havells',2499.00,45),
(84,'Prestige Electric Kettle','Appliances','Prestige',1499.00,60),
(85,'Philips Steam Iron','Appliances','Philips',1999.00,50),
(86,'boAt Airdopes 311','Mobile Accessories','boAt',1499.00,100),
(87,'Samsung 25W Fast Charger','Mobile Accessories','Samsung',1299.00,80),
(88,'Ambrane 20000mAh Power Bank','Mobile Accessories','Ambrane',1999.00,70),
(89,'Spigen Phone Case','Mobile Accessories','Spigen',999.00,120),
(90,'Sandisk 128GB microSD Card','Mobile Accessories','SanDisk',1199.00,90),
(91,'Logitech K380 Keyboard','Computer Accessories','Logitech',2999.00,40),
(92,'HP Wireless Mouse','Computer Accessories','HP',999.00,60),
(93,'Dell 24-inch Monitor','Computer Accessories','Dell',12999.00,25),
(94,'Seagate 1TB External HDD','Computer Accessories','Seagate',4499.00,30),
(95,'TP-Link WiFi Router','Computer Accessories','TP-Link',2499.00,45),
(96,'Sony PlayStation 5','Gaming','Sony',54990.00,10),
(97,'Xbox Series X','Gaming','Microsoft',52999.00,10),
(98,'Sony DualSense Controller','Gaming','Sony',5999.00,35),
(99,'Redgear Gaming Mouse','Gaming','Redgear',1499.00,70),
(100,'Cosmic Byte Gaming Headset','Gaming','Cosmic Byte',2499.00,55);
SELECT COUNT(*) AS Total_Products
FROM Products;
INSERT INTO Orders (order_id, customer_id, order_date, order_status, total_amount) VALUES
(1,1,'2025-04-01','Delivered',79999.00),
(2,2,'2025-04-02','Delivered',74999.00),
(3,3,'2025-04-03','Shipped',64999.00),
(4,4,'2025-04-04','Processing',28999.00),
(5,5,'2025-04-05','Cancelled',35999.00),
(6,6,'2025-04-06','Delivered',114999.00),
(7,7,'2025-04-07','Delivered',62999.00),
(8,8,'2025-04-08','Shipped',58999.00),
(9,9,'2025-04-09','Processing',54999.00),
(10,10,'2025-04-10','Delivered',51999.00),
(11,11,'2025-04-11','Delivered',29999.00),
(12,12,'2025-04-12','Delivered',2499.00),
(13,13,'2025-04-13','Shipped',11999.00),
(14,14,'2025-04-14','Delivered',46999.00),
(15,15,'2025-04-15','Cancelled',32999.00),
(16,16,'2025-04-16','Delivered',10999.00),
(17,17,'2025-04-17','Processing',13999.00),
(18,18,'2025-04-18','Delivered',6999.00),
(19,19,'2025-04-19','Delivered',2999.00),
(20,20,'2025-04-20','Shipped',1999.00),
(21,21,'2025-04-21','Delivered',4999.00),
(22,22,'2025-04-22','Delivered',7999.00),
(23,23,'2025-04-23','Processing',1999.00),
(24,24,'2025-04-24','Delivered',2499.00),
(25,25,'2025-04-25','Delivered',3499.00);
SELECT * FROM Orders;
INSERT INTO Orders (order_id, customer_id, order_date, order_status, total_amount) VALUES
(26,26,'2025-04-26','Delivered',2499.00),
(27,27,'2025-04-27','Shipped',3499.00),
(28,28,'2025-04-28','Delivered',8999.00),
(29,29,'2025-04-29','Processing',3999.00),
(30,30,'2025-04-30','Delivered',599.00),
(31,31,'2025-05-01','Delivered',2999.00),
(32,32,'2025-05-02','Cancelled',4999.00),
(33,33,'2025-05-03','Delivered',14999.00),
(34,34,'2025-05-04','Shipped',11999.00),
(35,35,'2025-05-05','Delivered',28999.00),
(36,36,'2025-05-06','Delivered',499.00),
(37,37,'2025-05-07','Processing',399.00),
(38,38,'2025-05-08','Delivered',450.00),
(39,39,'2025-05-09','Delivered',350.00),
(40,40,'2025-05-10','Shipped',399.00),
(41,41,'2025-05-11','Delivered',2499.00),
(42,42,'2025-05-12','Delivered',1999.00),
(43,43,'2025-05-13','Processing',899.00),
(44,44,'2025-05-14','Delivered',1799.00),
(45,45,'2025-05-15','Delivered',999.00),
(46,46,'2025-05-16','Cancelled',349.00),
(47,47,'2025-05-17','Delivered',499.00),
(48,48,'2025-05-18','Delivered',399.00),
(49,49,'2025-05-19','Shipped',549.00),
(50,50,'2025-05-20','Delivered',299.00);
INSERT INTO Orders (order_id, customer_id, order_date, order_status, total_amount) VALUES
(51,51,'2025-05-21','Delivered',549.00),
(52,52,'2025-05-22','Delivered',899.00),
(53,53,'2025-05-23','Processing',30.00),
(54,54,'2025-05-24','Delivered',699.00),
(55,55,'2025-05-25','Delivered',649.00),
(56,56,'2025-05-26','Shipped',425.00),
(57,57,'2025-05-27','Delivered',180.00),
(58,58,'2025-05-28','Cancelled',699.00),
(59,59,'2025-05-29','Delivered',375.00),
(60,60,'2025-05-30','Delivered',120.00),
(61,61,'2025-05-31','Delivered',199.00),
(62,62,'2025-06-01','Processing',249.00),
(63,63,'2025-06-02','Delivered',210.00),
(64,64,'2025-06-03','Delivered',499.00),
(65,65,'2025-06-04','Shipped',399.00),
(66,66,'2025-06-05','Delivered',350.00),
(67,67,'2025-06-06','Delivered',120.00),
(68,68,'2025-06-07','Cancelled',999.00),
(69,69,'2025-06-08','Delivered',350.00),
(70,70,'2025-06-09','Delivered',899.00),
(71,71,'2025-06-10','Processing',2499.00),
(72,72,'2025-06-11','Delivered',999.00),
(73,73,'2025-06-12','Delivered',899.00),
(74,74,'2025-06-13','Shipped',599.00),
(75,75,'2025-06-14','Delivered',299.00);
INSERT INTO Orders (order_id, customer_id, order_date, order_status, total_amount) VALUES
(76,76,'2025-06-15','Delivered',4999.00),
(77,77,'2025-06-16','Processing',6999.00),
(78,78,'2025-06-17','Delivered',8999.00),
(79,79,'2025-06-18','Delivered',5499.00),
(80,80,'2025-06-19','Shipped',7499.00),
(81,81,'2025-06-20','Delivered',35999.00),
(82,82,'2025-06-21','Cancelled',28999.00),
(83,83,'2025-06-22','Delivered',2499.00),
(84,84,'2025-06-23','Delivered',1499.00),
(85,85,'2025-06-24','Processing',1999.00),
(86,86,'2025-06-25','Delivered',1499.00),
(87,87,'2025-06-26','Delivered',1299.00),
(88,88,'2025-06-27','Shipped',1999.00),
(89,89,'2025-06-28','Delivered',999.00),
(90,90,'2025-06-29','Delivered',1199.00),
(91,91,'2025-06-30','Delivered',2999.00),
(92,92,'2025-07-01','Processing',999.00),
(93,93,'2025-07-02','Delivered',12999.00),
(94,94,'2025-07-03','Delivered',4499.00),
(95,95,'2025-07-04','Cancelled',2499.00),
(96,96,'2025-07-05','Delivered',54990.00),
(97,97,'2025-07-06','Delivered',52999.00),
(98,98,'2025-07-07','Shipped',5999.00),
(99,99,'2025-07-08','Delivered',1499.00),
(100,100,'2025-07-09','Delivered',2499.00);
SELECT COUNT(*) AS Total_Orders
FROM Orders;
INSERT INTO Order_Details (order_detail_id, order_id, product_id, quantity, unit_price) VALUES
(1,1,1,1,79999.00),
(2,2,2,1,74999.00),
(3,3,3,1,64999.00),
(4,4,4,1,28999.00),
(5,5,5,1,35999.00),
(6,6,6,1,114999.00),
(7,7,7,1,62999.00),
(8,8,8,1,58999.00),
(9,9,9,1,54999.00),
(10,10,10,1,51999.00),
(11,11,11,1,29999.00),
(12,12,12,1,2499.00),
(13,13,13,1,11999.00),
(14,14,14,1,46999.00),
(15,15,15,1,32999.00),
(16,16,16,1,10999.00),
(17,17,17,1,13999.00),
(18,18,18,1,6999.00),
(19,19,19,1,2999.00),
(20,20,20,1,1999.00),
(21,21,21,1,4999.00),
(22,22,22,1,7999.00),
(23,23,23,1,1999.00),
(24,24,24,1,2499.00),
(25,25,25,1,3499.00);
INSERT INTO Order_Details (order_detail_id, order_id, product_id, quantity, unit_price) VALUES
(26,26,26,1,2499.00),
(27,27,27,1,3499.00),
(28,28,28,1,8999.00),
(29,29,29,1,3999.00),
(30,30,30,1,599.00),
(31,31,31,1,2999.00),
(32,32,32,1,4999.00),
(33,33,33,1,14999.00),
(34,34,34,1,11999.00),
(35,35,35,1,28999.00),
(36,36,36,1,499.00),
(37,37,37,1,399.00),
(38,38,38,1,450.00),
(39,39,39,1,350.00),
(40,40,40,1,399.00),
(41,41,41,1,2499.00),
(42,42,42,1,1999.00),
(43,43,43,1,899.00),
(44,44,44,1,1799.00),
(45,45,45,1,999.00),
(46,46,46,1,349.00),
(47,47,47,1,499.00),
(48,48,48,1,399.00),
(49,49,49,1,549.00),
(50,50,50,1,299.00);
INSERT INTO Order_Details (order_detail_id, order_id, product_id, quantity, unit_price) VALUES
(51,51,51,2,549.00),
(52,52,52,1,899.00),
(53,53,53,5,30.00),
(54,54,54,1,699.00),
(55,55,55,1,649.00),
(56,56,56,1,425.00),
(57,57,57,3,180.00),
(58,58,58,1,699.00),
(59,59,59,2,375.00),
(60,60,60,2,120.00),
(61,61,61,2,199.00),
(62,62,62,2,249.00),
(63,63,63,1,210.00),
(64,64,64,1,499.00),
(65,65,65,2,399.00),
(66,66,66,3,350.00),
(67,67,67,5,120.00),
(68,68,68,1,999.00),
(69,69,69,2,350.00),
(70,70,70,1,899.00),
(71,71,71,1,2499.00),
(72,72,72,1,999.00),
(73,73,73,1,899.00),
(74,74,74,2,599.00),
(75,75,75,3,299.00);
INSERT INTO Order_Details (order_detail_id, order_id, product_id, quantity, unit_price) VALUES
(76,76,76,1,4999.00),
(77,77,77,1,6999.00),
(78,78,78,1,8999.00),
(79,79,79,1,5499.00),
(80,80,80,1,7499.00),
(81,81,81,1,35999.00),
(82,82,82,1,28999.00),
(83,83,83,2,2499.00),
(84,84,84,2,1499.00),
(85,85,85,1,1999.00),
(86,86,86,2,1499.00),
(87,87,87,2,1299.00),
(88,88,88,1,1999.00),
(89,89,89,2,999.00),
(90,90,90,2,1199.00),
(91,91,91,1,2999.00),
(92,92,92,2,999.00),
(93,93,93,1,12999.00),
(94,94,94,1,4499.00),
(95,95,95,1,2499.00),
(96,96,96,1,54990.00),
(97,97,97,1,52999.00),
(98,98,98,1,5999.00),
(99,99,99,2,1499.00),
(100,100,100,1,2499.00);
SELECT COUNT(*) AS Total_Order_Details
FROM Order_Details;
INSERT INTO Payments (payment_id, order_id, payment_method, payment_status, payment_date) VALUES
(1,1,'UPI','Success','2025-04-01'),
(2,2,'Credit Card','Success','2025-04-02'),
(3,3,'Debit Card','Success','2025-04-03'),
(4,4,'Net Banking','Pending','2025-04-04'),
(5,5,'UPI','Refunded','2025-04-05'),
(6,6,'Credit Card','Success','2025-04-06'),
(7,7,'Debit Card','Success','2025-04-07'),
(8,8,'Cash on Delivery','Pending','2025-04-08'),
(9,9,'UPI','Success','2025-04-09'),
(10,10,'Credit Card','Success','2025-04-10'),
(11,11,'Debit Card','Success','2025-04-11'),
(12,12,'UPI','Success','2025-04-12'),
(13,13,'Net Banking','Pending','2025-04-13'),
(14,14,'Credit Card','Success','2025-04-14'),
(15,15,'UPI','Refunded','2025-04-15'),
(16,16,'Debit Card','Success','2025-04-16'),
(17,17,'Cash on Delivery','Pending','2025-04-17'),
(18,18,'UPI','Success','2025-04-18'),
(19,19,'Credit Card','Success','2025-04-19'),
(20,20,'Debit Card','Success','2025-04-20'),
(21,21,'UPI','Success','2025-04-21'),
(22,22,'Net Banking','Success','2025-04-22'),
(23,23,'Cash on Delivery','Pending','2025-04-23'),
(24,24,'Credit Card','Success','2025-04-24'),
(25,25,'UPI','Success','2025-04-25');
INSERT INTO Payments (payment_id, order_id, payment_method, payment_status, payment_date) VALUES
(26,26,'Debit Card','Success','2025-04-26'),
(27,27,'UPI','Success','2025-04-27'),
(28,28,'Credit Card','Success','2025-04-28'),
(29,29,'Net Banking','Pending','2025-04-29'),
(30,30,'Cash on Delivery','Success','2025-04-30'),
(31,31,'UPI','Success','2025-05-01'),
(32,32,'Credit Card','Refunded','2025-05-02'),
(33,33,'Debit Card','Success','2025-05-03'),
(34,34,'UPI','Success','2025-05-04'),
(35,35,'Credit Card','Success','2025-05-05'),
(36,36,'UPI','Success','2025-05-06'),
(37,37,'Debit Card','Success','2025-05-07'),
(38,38,'Cash on Delivery','Success','2025-05-08'),
(39,39,'UPI','Success','2025-05-09'),
(40,40,'Credit Card','Success','2025-05-10'),
(41,41,'Net Banking','Success','2025-05-11'),
(42,42,'Debit Card','Success','2025-05-12'),
(43,43,'UPI','Pending','2025-05-13'),
(44,44,'Credit Card','Success','2025-05-14'),
(45,45,'Cash on Delivery','Success','2025-05-15'),
(46,46,'UPI','Refunded','2025-05-16'),
(47,47,'Debit Card','Success','2025-05-17'),
(48,48,'Credit Card','Success','2025-05-18'),
(49,49,'UPI','Success','2025-05-19'),
(50,50,'Net Banking','Pending','2025-05-20');
SELECT COUNT(*) AS Total_Payments
FROM Payments;
INSERT INTO Shipping (shipping_id, order_id, courier_name, shipping_status, delivery_date) VALUES
(1,1,'Blue Dart','Delivered','2025-04-04'),
(2,2,'Delhivery','Delivered','2025-04-05'),
(3,3,'DTDC','In Transit','2025-04-07'),
(4,4,'Ecom Express','Processing','2025-04-08'),
(5,5,'Blue Dart','Cancelled',NULL),
(6,6,'Delhivery','Delivered','2025-04-09'),
(7,7,'DTDC','Delivered','2025-04-10'),
(8,8,'XpressBees','In Transit','2025-04-12'),
(9,9,'India Post','Processing','2025-04-13'),
(10,10,'Blue Dart','Delivered','2025-04-14'),
(11,11,'Delhivery','Delivered','2025-04-15'),
(12,12,'DTDC','Delivered','2025-04-16'),
(13,13,'Ecom Express','In Transit','2025-04-17'),
(14,14,'Blue Dart','Delivered','2025-04-18'),
(15,15,'XpressBees','Cancelled',NULL),
(16,16,'India Post','Delivered','2025-04-20'),
(17,17,'Delhivery','Processing','2025-04-21'),
(18,18,'DTDC','Delivered','2025-04-22'),
(19,19,'Blue Dart','Delivered','2025-04-23'),
(20,20,'Ecom Express','In Transit','2025-04-24'),
(21,21,'Delhivery','Delivered','2025-04-25'),
(22,22,'DTDC','Delivered','2025-04-26'),
(23,23,'India Post','Processing','2025-04-27'),
(24,24,'Blue Dart','Delivered','2025-04-28'),
(25,25,'XpressBees','Delivered','2025-04-29');
INSERT INTO Shipping (shipping_id, order_id, courier_name, shipping_status, delivery_date) VALUES
(26,26,'Delhivery','Delivered','2025-04-30'),
(27,27,'DTDC','Delivered','2025-05-01'),
(28,28,'Blue Dart','Delivered','2025-05-02'),
(29,29,'Ecom Express','Processing','2025-05-03'),
(30,30,'India Post','Delivered','2025-05-04'),
(31,31,'XpressBees','Delivered','2025-05-05'),
(32,32,'Blue Dart','Cancelled',NULL),
(33,33,'Delhivery','Delivered','2025-05-07'),
(34,34,'DTDC','In Transit','2025-05-08'),
(35,35,'Blue Dart','Delivered','2025-05-09'),
(36,36,'India Post','Delivered','2025-05-10'),
(37,37,'Ecom Express','Delivered','2025-05-11'),
(38,38,'Delhivery','Delivered','2025-05-12'),
(39,39,'DTDC','Delivered','2025-05-13'),
(40,40,'Blue Dart','In Transit','2025-05-14'),
(41,41,'XpressBees','Delivered','2025-05-15'),
(42,42,'India Post','Delivered','2025-05-16'),
(43,43,'Delhivery','Processing','2025-05-17'),
(44,44,'DTDC','Delivered','2025-05-18'),
(45,45,'Blue Dart','Delivered','2025-05-19'),
(46,46,'Ecom Express','Cancelled',NULL),
(47,47,'India Post','Delivered','2025-05-21'),
(48,48,'Delhivery','Delivered','2025-05-22'),
(49,49,'DTDC','In Transit','2025-05-23'),
(50,50,'Blue Dart','Delivered','2025-05-24');
SELECT COUNT(*) AS Total_Shipping
FROM Shipping;

-- Basic Queries
-- 1. View all customers
SELECT * FROM Customers;
-- 2. View all products
SELECT * FROM Products;
-- 3. Display delivered orders
SELECT *
FROM Orders
WHERE order_status = 'Delivered';
-- 4. Products costing more than ₹10,000
SELECT * FROM Products
WHERE price > 10000;

-- 5. Customers from Pune
SELECT * FROM Customers
WHERE city = 'Pune';

-- Aggregate Functions
-- Total number of customers
SELECT COUNT(*) AS Total_Customers
FROM Customers;

-- Total sales
SELECT SUM(total_amount) AS Total_Sales
FROM Orders;

-- Average order value
SELECT AVG(total_amount) AS Average_Order_Value
FROM Orders;

-- Highest priced product
SELECT MAX(price) AS Highest_Price
FROM Products;
-- Lowest priced product
SELECT MIN(price) AS Lowest_Price
FROM Products;
-- GROUP BY
-- Number of customers in each city
SELECT city, COUNT(*) AS Total_Customers
FROM Customers
GROUP BY city;
-- Products by category
SELECT category, COUNT(*) AS Total_Products
FROM Products
GROUP BY category;
-- Revenue by order status
SELECT order_status,
SUM(total_amount) AS Revenue
FROM Orders
GROUP BY order_status;
-- ORDER BY
-- Top 10 expensive products
SELECT *
FROM Products
ORDER BY price DESC
LIMIT 10;
-- Latest orders
SELECT *
FROM Orders
ORDER BY order_date DESC;
-- INNER JOIN
-- Customer order history
SELECT
c.first_name,
c.last_name,
o.order_id,
o.order_date,
o.total_amount
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id;
-- Product details for each order
SELECT
od.order_id,
p.product_name,
od.quantity,
od.unit_price
FROM Order_Details od
JOIN Products p
ON od.product_id = p.product_id;
-- 18. Customer payment details
SELECT
c.first_name,
o.order_id,
pay.payment_method,
pay.payment_status
FROM Customers c
JOIN Orders o
ON c.customer_id=o.customer_id
JOIN Payments pay
ON o.order_id=pay.order_id;
-- GROUP BY + JOIN
-- 19. Total spending by customer
SELECT
c.customer_id,
c.first_name,
SUM(o.total_amount) AS Total_Spent
FROM Customers c
JOIN Orders o
ON c.customer_id=o.customer_id
GROUP BY c.customer_id,c.first_name;
-- 20. Best-selling products
SELECT
p.product_name,
SUM(od.quantity) AS Quantity_Sold
FROM Products p
JOIN Order_Details od
ON p.product_id=od.product_id
GROUP BY p.product_name
ORDER BY Quantity_Sold DESC;
-- HAVING
-- 21. Customers spending more than ₹50,000
SELECT
c.customer_id,
c.first_name,
SUM(o.total_amount) AS TotalSpent
FROM Customers c
JOIN Orders o
ON c.customer_id=o.customer_id
GROUP BY c.customer_id,c.first_name
HAVING SUM(o.total_amount)>50000;

-- Subqueries
-- Product with maximum price
SELECT * FROM Products
WHERE price=(SELECT MAX(price) FROM Products);
-- Customers with cancelled orders
SELECT * FROM Customers
WHERE customer_id IN
(
SELECT customer_id
FROM Orders
WHERE order_status='Cancelled'
);

-- Date Analysis
-- . Monthly sales
SELECT
MONTH(order_date) AS Month,
SUM(total_amount) AS Sales
FROM Orders
GROUP BY MONTH(order_date);

-- . Orders placed in May 2025
SELECT * FROM Orders
WHERE MONTH(order_date)=5
AND YEAR(order_date)=2025;

-- Payment Analysis
-- Payment method usage
SELECT payment_method,
COUNT(*) AS Total
FROM Payments
GROUP BY payment_method;

-- Successful payments
SELECT * FROM Payments
WHERE payment_status='Success';

-- Shipping Analysis
-- Delivered shipments
SELECT * FROM Shipping
WHERE shipping_status='Delivered';
-- Courier-wise deliveries
SELECT courier_name,
COUNT(*) AS Deliveries
FROM Shipping
GROUP BY courier_name;

-- Advanced Query
-- Top 5 Customers by Total Spending
SELECT
c.customer_id,
c.first_name,
c.last_name,
SUM(o.total_amount) AS Total_Spent
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY Total_Spent DESC
LIMIT 5;

-- Top 5 Most Expensive Products
SELECT *
FROM Products
ORDER BY price DESC
LIMIT 5;  
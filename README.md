E-Commerce Order Management System | SQL

Project Overview

The E-Commerce Order Management System is a SQL-based database project developed using MySQL. The main objective is to manage e-commerce data and analyze business performance through SQL queries.

This project focuses on analyzing sales revenue, customer purchasing behavior, product performance, payment trends, order status, and shipping operations to generate meaningful business insights.

Project Objectives

- Design and manage a relational database for an e-commerce business.
- Analyze total revenue and average order value.
- Identify top-performing products and product categories.
- Analyze customer purchasing behavior and spending patterns.
- Monitor order cancellations and payment status.
- Evaluate shipping and courier performance.
- Generate business insights to support data-driven decisions.

Database Structure

The database consists of **6 relational tables with 500 records**.

| Table Name | Number of Records |
|---|---:|
| Customers | 100 |
| Products | 100 |
| Orders | 100 |
| Order_Details | 100 |
| Payments | 50 |
| Shipping | 50 |
| **Total** | **500** |

Table Relationships

- Customers → Orders
- Orders → Order_Details
- Products → Order_Details
- Orders → Payments
- Orders → Shipping

Tools & Technologies

- Database: MySQL
- IDE: MySQL Workbench
- Language: SQL

SQL Concepts & Techniques Used

- DDL – CREATE, ALTER, DROP
- DML – INSERT, UPDATE, DELETE
- SELECT, WHERE, ORDER BY, DISTINCT
- Aggregate Functions – SUM(), AVG(), COUNT(), MIN(), MAX()
- GROUP BY and HAVING
- Joins – INNER JOIN, LEFT JOIN
- Subqueries
- Common Table Expressions (CTEs)
- Window Functions – RANK(), DENSE_RANK(), ROW_NUMBER()
- Views
- Data Analysis using SQL

Key Business Analysis

The following business areas were analyzed:

1. **Sales Analysis:** Total revenue and average order value.
2. **Product Analysis:** Best-selling products and product categories.
3. **Customer Analysis:** Highest-spending customers.
4. **Order Analysis:** Order status and cancelled orders.
5. **Payment Analysis:** Popular payment methods and payment status.
6. **Shipping Analysis:** Courier performance and delivery status.

## 📈 Key Business Insights

Based on the project data:

| Business Metric | Result |
|---|---:|
| Total Order Value | ₹11,75,612 |
| Average Order Value | ₹11,756.12 |
| Total Orders | 100 |
| Delivered Orders | 65 |
| Cancelled Orders | 8 |
| Top Customer | Rohit Singh |
| Top Customer Spending | ₹1,14,999 |
| Best-Selling Category | Electronics |
| Electronics Sales | ₹7,53,485 |
| Most Popular Payment Method | UPI |
| Top Courier by Delivered Shipments | Blue Dart |

*Note: Overall order value is calculated from the Orders table, while category sales are calculated from Order_Details.*

## 💡 Business Recommendations

- Maintain sufficient stock of high-performing electronic products.
- Provide loyalty offers to high-value customers.
- Investigate cancelled orders to reduce potential revenue loss.
- Monitor pending and refunded payments.
- Evaluate courier performance to improve delivery operations.

## 📂 Project Structure

```text
E-Commerce-Order-Management-System/
│
├── SQL_Scripts/
│   ├── Database_Creation.sql
│   ├── Table_Creation.sql
│   ├── Data_Insertion.sql
│   └── Business_Analysis_Queries.sql
│
└── README.md
```

*Adjust the folder and file names according to the SQL files uploaded to your repository.*

## 🚀 How to Run This Project

1. Install MySQL Server and MySQL Workbench.
2. Clone or download this GitHub repository.
3. Open MySQL Workbench.
4. Execute the database and table creation scripts.
5. Insert the project data.
6. Run the SQL analysis queries.
7. Explore the business insights generated from the results.

Skills Demonstrated

- SQL Query Writing
- Relational Database Management
- Data Analysis
- Business Analysis
- Data Aggregation
- Advanced SQL
- Problem Solving
- Business Insight Generation

## 👨‍💻 Author

**Aditya Naik**

B.Sc. Computer Science Graduate | Aspiring Data Analyst


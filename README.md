# Course Management System Database (MySQL)

This project demonstrates the design and implementation of a relational database for managing an online course platform using MySQL.

## Features
- Relational database design with multiple interconnected tables
- SQL joins for retrieving related data
- Aggregate queries for data analysis
- View for reporting
- Stored procedure for reusable database logic
- Trigger for automated database operations

## Database Tables
- students
- instructors
- courses
- enrollments
- payments

## SQL Concepts Used
- Primary Keys
- Foreign Keys
- JOIN
- GROUP BY
- Aggregate Functions (SUM, COUNT, AVG)
- Views
- Stored Procedures
- Triggers

## Example Queries
- Find students enrolled in courses
- Calculate total revenue from payments
- Identify courses taught by instructors
- Count number of students in each course

## Technologies Used
- MySQL (Relational Database Management System)
- SQL (Query Language)
- MySQL Workbench (Database Client Tool)
- ## Database Schema

![ER Diagram](er_diagram.png)
## How to Run the Project

1. Open MySQL Workbench.
2. Run the `schema.sql` file to create the database and tables.
3. Run the `insert_data.sql` file to insert sample data.
4. Run the `queries.sql` file to test SQL queries.
5. Run `views.sql`, `procedures.sql`, and `triggers.sql` to create advanced database objects.

Database name: `course_management`

CREATE DATABASE course_management;
USE course_management;

-- Create Students Table
CREATE TABLE students (
student_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100),
email VARCHAR(100),
registration_date DATE
);

-- Create Instructors Table
CREATE TABLE instructors (
instructor_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100),
specialization VARCHAR(100)
);

-- Create Courses Table
CREATE TABLE courses (
course_id INT AUTO_INCREMENT PRIMARY KEY,
course_name VARCHAR(100),
price DECIMAL(10,2),
instructor_id INT,
FOREIGN KEY (instructor_id) REFERENCES instructors(instructor_id)
);

-- Create Enrollments Table
CREATE TABLE enrollments (
enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
student_id INT,
course_id INT,
enroll_date DATE,
FOREIGN KEY (student_id) REFERENCES students(student_id),
FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- Create Payments Table
CREATE TABLE payments (
payment_id INT AUTO_INCREMENT PRIMARY KEY,
student_id INT,
amount DECIMAL(10,2),
payment_date DATE,
FOREIGN KEY (student_id) REFERENCES students(student_id)
);

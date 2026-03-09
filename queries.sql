-- Show Students with Their Courses
SELECT s.name AS student_name, c.course_name
FROM enrollments e
JOIN students s ON e.student_id = s.student_id
JOIN courses c ON e.course_id = c.course_id;

-- Show Courses with Instructor Names
SELECT c.course_name, i.name AS instructor_name
FROM courses c
JOIN instructors i ON c.instructor_id = i.instructor_id;

-- Total Students Enrolled in Each Course
SELECT c.course_name, COUNT(e.student_id) AS total_students
FROM courses c
LEFT JOIN enrollments e ON c.course_id = e.course_id
GROUP BY c.course_name;

-- Total Revenue Generated
SELECT SUM(amount) AS total_revenue
FROM payments;

-- Highest Paying Student
SELECT student_id, SUM(amount) AS total_paid
FROM payments
GROUP BY student_id
ORDER BY total_paid DESC
LIMIT 1;

-- Courses Taken by a Particular Student
SELECT c.course_name
FROM enrollments e
JOIN courses c ON e.course_id = c.course_id
WHERE e.student_id = 1;

-- Students with Their Payment Amount
SELECT s.name, p.amount
FROM students s
JOIN payments p ON s.student_id = p.student_id;

-- Students Enrolled After a Certain Date
SELECT *
FROM enrollments
WHERE enroll_date > '2024-04-15';

-- Average Course Price
SELECT AVG(price) AS average_course_price
FROM courses;

-- Instructor with Number of Courses
SELECT i.name, COUNT(c.course_id) AS total_courses
FROM instructors i
LEFT JOIN courses c ON i.instructor_id = c.instructor_id
GROUP BY i.name;

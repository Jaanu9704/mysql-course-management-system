-- Stored Procedure: Get Courses Taken by a Specific Student

DELIMITER //

CREATE PROCEDURE GetStudentCourses(IN sid INT)
BEGIN
SELECT c.course_name
FROM enrollments e
JOIN courses c ON e.course_id = c.course_id
WHERE e.student_id = sid;
END //

DELIMITER ;

-- View: Student Course Report

CREATE VIEW student_course_report AS
SELECT 
    s.name AS student_name,
    c.course_name,
    e.enroll_date
FROM enrollments e
JOIN students s ON e.student_id = s.student_id
JOIN courses c ON e.course_id = c.course_id;

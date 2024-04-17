CREATE OR REPLACE FUNCTION GetStudentsInCourse(p_course_name VARCHAR) RETURNS TABLE (
student_id INT, 
full_name VARCHAR, 
email VARCHAR, 
phone_number VARCHAR, 
address VARCHAR, 
admission_date DATE, 
graduation_date DATE
) AS $$ BEGIN
RETURN QUERY SELECT
S.student_id,
CONCAT(S.first_name, ' ', S.last_name)::VARCHAR AS full_name, S.email::VARCHAR,
S.phone_number::VARCHAR,
S.address::VARCHAR,
S.admission_date,
S.graduation_date
FROM
Students S
INNER JOIN
Enrollment E ON S.student_id = E.student_id
INNER JOIN
Courses C ON E.course_id = C.course_id
WHERE
C.course_name = p_course_name;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM GetStudentsInCourse('Mechanics');

SELECT distinct(student_id,full_name) as enrolled_student_info
 FROM GetStudentsInCourse('Introduction to Programming');

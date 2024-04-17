SELECT p.first_name, p.last_name, p.email
FROM Professors as p natural join departments as d
WHERE d.department_name = 'Computer Science';
SELECT*FROM professors;
SELECT* FROM departments;

 --INNER JOIN-
SELECT s.department_id, s.student_id, s.first_name, c.course_name FROM students s
JOIN courses c ON c.department_id = s.department_id;

--LEFT OUTER JOIN-
SELECT Students.department_id, Students.student_id, Courses.course_name, Courses.credits
FROM Students
LEFT OUTER JOIN Courses ON Students.department_id = Courses.department_id;
  -- RIGHT OUTER JOIN-
SELECT *
FROM Professors
RIGHT OUTER JOIN Departments ON Professors.department_id = Departments.department_id;
-- FULL OUTER JOIN- 
SELECT *
FROM Professors
FULL OUTER JOIN Departments ON Professors.department_id = Departments.department_id;
-- NATURAL JOIN-
SELECT department_id,student_id,first_name,course_name
FROM students
NATURAL JOIN courses;

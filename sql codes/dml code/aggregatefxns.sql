SELECT d.department_name, COUNT(distinct s.student_id) AS num_students 
FROM Departments AS d JOIN Students AS s using(department_id)
WHERE d.department_name = 'Chemistry' 
GROUP BY d.department_name;

SELECT AVG(salary) from professors AS avg_pay;

SELECT department_id , AVG(salary) AS avg_salary
FROM professors
GROUP BY department_id
HAVING AVG(salary) >= 40000;

SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM Students;

SELECT email,
SUBSTRING(email, POSITION('@' IN email) + 1) AS domain FROM Students;


SELECT first_name,
length(first_name) AS len_name
FROM students;

SELECT salary,
ROUND(salary * 1.234, 2) AS modified_salary 
FROM Professors;


SELECT salary,
ROUND(ABS(salary - (SELECT AVG(salary) FROM Professors)), 2) AS abs_salary_difference
FROM professors


SELECT first_name,
last_name,
date_of_birth, AGE(date_of_birth) AS age
FROM Professors;
SELECT first_name,
last_name,
EXTRACT(month FROM date_of_birth) AS birth_month, EXTRACT(year FROM date_of_birth) AS birth_year
FROM Professors;


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

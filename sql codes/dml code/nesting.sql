--set membership
SELECT student_id,concat(first_name,' ',last_name)as full_name FROM Students
WHERE student_id IN (
SELECT DISTINCT student_id FROM Enrollment
WHERE course_id IN (
SELECT course_id
FROM Courses
WHERE department_id = (SELECT department_id FROM Departments WHERE
department_name = 'Computer Science') )
);
--use of ALL
select first_name ,salary
from professors
where salary>= all(select salary
from professors );

--with clause in nesting
WITH StudentDepartment AS (
SELECT Students.student_id, Departments.department_name
FROM Students
LEFT JOIN Departments ON Students.department_id = Departments.department_id
)
SELECT *
FROM StudentDepartment;
INSERT INTO Departments (department_id, department_name, location) VALUES
(1, 'Computer Science', 'Building A'), 
(2, 'Mathematics', 'Building B'),
(3, 'Physics', 'Building C');

INSERT INTO Courses (course_id, course_name, credits, department_id) VALUES 
(1,'Introduction to Programming', 3, 1),
(2,'Calculus I', 4, 2),
(3,'Mechanics', 3, 3);


INSERT INTO Professors (professor_id,first_name, last_name, date_of_birth, gender, email, phone_number, department_id, course_id, salary) VALUES
(1,'Amit', 'Patel', '1985-09-15', 'Male', 'amitpatel@example.com', '111-222-3333', 1, 1, 72000.00),
(2,'Priya', 'Sharma', '1978-04-20', 'Female', 'priyasharma@example.com', '444-555-6666', 2, 2, 69000.00),
(3,'Rahul', 'Gupta', '1992-07-25', 'Male', 'rahulgupta@example.com', '777-888-9999', 3, 3, 64000.00);
SELECT * FROM departments;

INSERT INTO Students (student_id, first_name, last_name, date_of_birth, gender, email, phone_number, address, admission_date, graduation_date, department_id) VALUES
(1,'Aarav', 'Patel', '2000-02-20', 'Male', 'aarav.patel@example.com', '111-222-3333', '120 Dwarka Sector 10', '2018-09-01', '2022-05-15', 1),
(2,'Neha', 'Sharma', '1999-07-10', 'Female', 'neha.sharma@example.com', '444-555-6666', '122 Navada', '2019-01-15', '2023-06-30', 2),
(3,'Aaradhya', 'Gupta', '2001-11-05', 'Female', 'aaradhya.gupta@example.com', '777-888-9999', '911 Rohini', '2020-03-10', NULL, 3);

INSERT INTO Enrollment (student_id, course_id, enrollment_date, grade) VALUES
(1, 1, '2018-09-05', 'A'),
(2, 2, '2019-01-20', 'B'),
(3, 3, '2020-03-15', NULL);

INSERT INTO Departments (department_id, department_name, location) VALUES
(4, 'Biology', 'Building D'),
(5, 'Chemistry', 'Building E');

INSERT INTO Professors (professor_id, first_name, last_name, date_of_birth, gender, email, phone_number, department_id, course_id, salary) VALUES
(4, 'Priya', 'Joshi', '1978-08-25', 'Female', 'priya.joshi@example.com', '111-222-3333', 4, 5, 72000.00),
(5, 'Rahul', 'Kumar', '1985-06-12', 'Male', 'rahul.kumar@example.com', '444-555-6666', 5, 4, 78000.00);

INSERT INTO Students (student_id, first_name, last_name, date_of_birth, gender, email, phone_number, address, admission_date, graduation_date, department_id) VALUES
(4, 'Aaradhya', 'Desai', '2000-10-15', 'Female', 'aaradhya.desai@example.com', '333-444-5555', '123 Khan Market, Connaught Place', '2019-09-01', '2023-05-15', 4),
(5, 'Aryan', 'Patel', '2002-03-20', 'Male', 'aryan.patel@example.com', '666-777-8888', '456 Lajpat Nagar', '2020-01-15', NULL, 5);

INSERT INTO Students (student_id, first_name, last_name, date_of_birth, gender, email, phone_number, address, admission_date, graduation_date, department_id) VALUES
(6, 'Aditi', 'Joshi', '2000-10-15', 'Female', 'aditi.joshi@example.com', '9999999999', '789 Dwarka Sector 12', '2019-09-01', '2023-05-15', 5),
(7, 'Rahul', 'Kumar', '2002-03-20', 'Male', 'rahul.kumar@example.com', '8888888888', '101 Saket', '2020-01-15', NULL, 5),
(8, 'Priya', 'Singh', '2001-05-12', 'Female', 'priya.singh@example.com', '7777777777', '202 Chanakyapuri', '2020-01-15', NULL, 5);


INSERT INTO Courses (course_id, course_name, credits, department_id ) VALUES 
(4, 'Genetics', 3, 4),
(5, 'Organic Chemistry', 4, 5);

-- Table for storing information about students 
CREATE TABLE Departments (
department_id SERIAL PRIMARY KEY,
department_name VARCHAR(100), 
location VARCHAR(255)
);
-- Table for storing information about departments 
CREATE TABLE Professors (
professor_id SERIAL PRIMARY KEY,
first_name VARCHAR(50), 
last_name VARCHAR(50), 
date_of_birth DATE,
gender VARCHAR(10),
email VARCHAR(100),
phone_number VARCHAR(20),
department_id INT,
course_id SERIAL,
salary DECIMAL(10, 2),
FOREIGN KEY (department_id) REFERENCES Departments(department_id), FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

-- Table for storing information about students 
CREATE TABLE Students (
student_id SERIAL PRIMARY KEY, 
first_name VARCHAR(50), 
last_name VARCHAR(50), 
date_of_birth DATE,
gender VARCHAR(10),
email VARCHAR(100),
phone_number VARCHAR(20),
address VARCHAR(255),
admission_date DATE,
graduation_date DATE,
department_id INT,
FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

-- Table for storing information about students
 CREATE TABLE Courses (
course_id SERIAL PRIMARY KEY,
 course_name VARCHAR(100), 
 credits INT,
department_id INT,
FOREIGN KEY (department_id) REFERENCES Departments(department_id) );

-- Table for storing information about students 
CREATE TABLE Enrollment (
enrollment_id SERIAL PRIMARY KEY, 
student_id INT,
course_id INT,
enrollment_date DATE,
grade VARCHAR(2),
FOREIGN KEY (student_id) REFERENCES Students(student_id), FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);
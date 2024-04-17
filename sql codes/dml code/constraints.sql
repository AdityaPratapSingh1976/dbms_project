CREATE TABLE Exams (
exam_id INT PRIMARY KEY,
course_id INT NOT NULL,
exam_date DATE NOT NULL CHECK (exam_date >= CURRENT_DATE), -- Ensures exam_date is in the future
exam_type VARCHAR(20) NOT NULL, average_grade VARCHAR(2) DEFAULT NULL,
FOREIGN KEY (course_id) REFERENCES Courses(course_id),
UNIQUE (course_id, exam_date) -- Ensures each exam for a course is unique on a specific date
);
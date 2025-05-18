
-- Write a SQL query to retrieve the 
-- first name, last name, 
-- and email address of all students in the "Students" table.

CREATE TABLE Students (
  student_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(100),
  major VARCHAR(100)
);

INSERT INTO Students (student_id, first_name, last_name, email,major) VALUES
(1, 'Alice', 'Johnson', 'alice.johnson@example.com','dev'),
(2, 'Bob', 'Smith', 'bob.smith@example.com','front-end'),
(3, 'Charlie', 'Brown', 'charlie.brown@example.com','dataeng');

SELECT first_name, last_name, email
FROM Students;

SELECT count(student_id) as total_students
FROM Students;

SELECT COUNT(*) AS total_students FROM Students;

-- Write a SQL query to update the email 
-- address of the student with student_id = 3 to 'new_email@example.com'
UPDATE Students
SET email = 'new.email@example.com'
WHERE student_id = 3;

SELECT * FROM Students;

-- Write a SQL query to delete the student with student_id = 2 
-- from the "Students" table.
-- DELETE FROM Students
-- WHERE student_id = 2;

-- SELECT * FROM Students;

-- Write a SQL query to find the average age 
-- of all students in the "Students" table.
ALTER TABLE Students
ADD COLUMN age INT;

SELECT * FROM Students;



UPDATE Students SET age = 20 WHERE student_id = 1;
UPDATE Students SET age = 22 WHERE student_id = 2;
UPDATE Students SET age = 21 WHERE student_id = 3;

SELECT * FROM Students;

SELECT AVG(age) AS average_age
FROM Students;

-- Write a SQL query to find the maximum age among all students.
SELECT max(age) as max_age
from Students;

INSERT INTO Students (student_id, first_name, last_name, email,major,age) VALUES
(4, 'Shif', 'Johnson', 'shif.johnson@example.com','dev','25');

SELECT * FROM Students;

-- Write a SQL query to count the number of students in each major.
-- Display the major and the count.

SELECT COUNT(*) AS student_count_major, major
FROM Students
GROUP BY major;


-- Write a SQL query to find the total number of unique majors 
-- in the "Students" table.

SELECT COUNT(DISTINCT major) AS unique_majors
FROM Students;

-- Write a SQL query to find the youngest student in each major
SELECT major, student_id, age
FROM Students s
WHERE age = (
    SELECT min(age)
    FROM Students
    WHERE major = s.major
);




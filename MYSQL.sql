CREATE DATABASE IF NOT EXISTS xyz_company;

USE xyz_company;

DROP TABLE employee_info;

CREATE TABLE  IF NOT EXISTS employee_info(
	id INT PRIMARY KEY,
    name VARCHAR(100),
    salary INT
    );
    
INSERT INTO employee_info
		(id, name, salary)
VALUES (1, "ADAM", 25000),
		(2, "BOB", 30000),
        (3, "CASEY", 40000);

SELECT * FROM xyz_company;
SELECT * FROM employee_info;

CREATE TABLE temp1 (
	id INT UNIQUE
);

INSERT INTO temp1 VALUES (101);

SELECT * FROM temp1;

DROP TABLE temp1;

CREATE TABLE temp1 (
	id INT,
    name VARCHAR(20),
    age INT,
    city VARCHAR(20), 
    PRIMARY KEY(id, name)
);

CREATE TABLE emp (
	id INT,
    salary INT DEFAULT 25000
);

INSERT INTO emp (id) VALUES (101);
INSERT INTO emp (id) VALUES ( 00 );


SELECT * FROM emp;

CREATE TABLE city (
	id INT PRIMARY KEY,
    city VARCHAR(50),
    age INT,
    CONSTRAINT age_check CHECK (age >= 18 AND city = "Delhi")
);

INSERT INTO city
	(id, city, age)
VALUES (1, "Delhi", 10);

CREATE TABLE newTab (
	age INT CHECK (age >= 18)
);

INSERT INTO newTab(age)
VALUES(13);

USE  college;
DROP  database college;


CREATE DATABASE IF NOT EXISTS college;  

CREATE DATABASE college;

USE college;

CREATE TABLE student (
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101, "ANIL", 78, "c", "PUNE"),
(102, "BHUMIKA", 93, "A", "MUMBAI"),
(103, "CHETAN", 85, "B", "MUMBAI"),
(104, "EMANUEL", 12, "F", "DELHI"),
(105, "DHRUV", 96, "A", "DELHI"),
(106, "FARAH", 82, "B", "DELHI");

 ALTER TABLE student
 ADD COLUMN age INT NOT NULL;

ALTER TABLE student
DROP COLUMN StudentAge ;

RENAME TABLE stu TO student;

ALTER TABLE student
change column age StudentAge VARCHAR(50);

ALTER TABLE stu
change student;

ALTER  

SELECT * FROM student;

-- ADD COLUMN.
ALTER TABLE student
ADD COLUMN age INT NOT NULL DEFAULT 19;

-- MIDIFY COLUMN
ALTER TABLE student
MODIFY COLUMN age VARCHAR(2);

-- CHANGE COLUMN(RENAME)
ALTER TABLE student
CHANGE age stu_age INT;


INSERT INTO student 
(rollno, name, marks, stu_age)
VALUES
(107, "gargi", 68, 100);

-- DROP COLUMN
ALTER TABLE student
DROP COLUMN stu_age;

-- RENAME TABLE-- 
SELECT * FROM student;

ALTER TABLE student
change column age StudentAge VARCHAR(50);

USE college;

ALTER TABLE student
RENAME column name TO  full_name ;


SELECT * FROM student
limit 3;



SELECT * FROM student;

SELECT *
FROM student
WHERE marks > 75
limit 3;

SELECT * 
FROM student
ORDER BY city ASC;

SELECT * 
FROM student
ORDER BY marks ASC;


SELECT * 
FROM student
ORDER BY marks DESC;

SELECT * 
FROM student
ORDER BY marks DESC
LIMIT 3;

SELECT MAX(marks)
FROM student;

SELECT MIN(marks)
FROM student;

SELECT AVG(marks)
FROM student;

SELECT COUNT(rollno)
FROM student;

SELECT DISTINCT city FROM student;

SELECT city, count(name)
FROM student
GROUP BY city;

SELECT city,  COUNT(rollno)
FROM student
GROUP BY city;

SELECT city, name, COUNT(rollno)
FROM student
GROUP BY city, name;

SELECT city, avg(marks)
FROM student
GROUP BY city;

-- Write the Query  to find avg marks in each city in ascending order.
SELECT city, avg(marks)
FROM student
GROUP BY city
-- ORDER BY city ASC;
ORDER BY city DESC;

SELECT grade, count(rollno)
FROM student
GROUP BY grade
ORDER BY grade asc;

-- For the given table, find the total payment according to each payment method.  
CREATE TABLE PAYMENT(
	CUSTOMER_ID INT PRIMARY KEY,
    CUSTOMER VARCHAR(50),
    MODE VARCHAR(50),
    CITY VARCHAR(50)
); 

SELECT * FROM PAYMENT;

INSERT INTO PAYMENT
(CUSTOMER_ID, CUSTOMER, MODE, CITY)
VALUES
 (101, 'OLIVIA BARRET');
;


-- Having Clause
-- simillar to where i.e applies some condition on rows.
-- Used when we want to apply any condition after grouping.

-- Count number of students in each city where max marks cross 90.

SELECT DISTINCT count(rollno)
FROM student
GROUP BY city
HAVING max(marks) > 90;




SELECT city 
FROM student 
WHERE grade = 'A'
GROUP BY city
HAVING MAX(marks) >= 90;
ORDER BY city desc;

SET SQL_SAFE_UPDATES = 0;

UPDATE student
SET grade = "O"
WHERE grade = "A";
 
 
 UPDATE student 
 SET marks = 82
 WHERE rollno =  105;
 
 
 UPDATE student 
 SET grade = "B"
 WHERE marks BETWEEN 80 AND 90;
 
 
 UPDATE student
 SET marks = marks + 1;
 
 USE college;
 
 
 UPDATE student 
 SET marks = 12
 WHERE rollno = 105;
 
 DELETE FROM student 
 WHERE marks < 33;
 
 
 
 SELECT * FROM student;
 
 DROP TABLE teacher;
 
 USE college;
 
 CREATE TABLE teacher (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

CREATE TABLE dept (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);


INSERT INTO dept
VALUES
(101, "english"),
(102, "IT");


INSERT INTO teacher
VALUES
(101, "Adam", 101),
(102, "Eve", 102);

  SELECT * FROM dept;
  
  UPDATE dept
  SET id = 103
  WHERE id = 102;
  
  SELECT * FROM teacher;
  
  
  
  
  
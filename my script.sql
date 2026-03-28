show databases;
CREATE DATABASE pet_shop;
show databases;
create database SlimeStore;
show databases;
USE slimestore;
show databases;
USE SlimeStore;
show databases;
SELECT database() ;
Create database tea_shop ;
USE tea_shop;
Select database();
SHOW databases;
Drop database SlimeStore;
SHOW databases;
Create database SlimeStore;
Show databases;
Select database();	
SELECT database();
show databases;
USE pet_shop;
CREATE TABLE cats ( name VARCHAR(50), age INT );
SHOW databases;
CREATE TABLE dogs ( name VARCHAR(50), breed VARCHAR(50), age INT );
SHOW columns FROM cats;
SHOW columns FROM dogs;
DESC dogs;
-- CREATE TABLE pastries ( name VARCHAR(50), quantity INT );
-- DESC pastries;
-- SHOW TABLES;
 DROP TABLE pastries;
SHOW TABLES;
DESC dogs;
DESC cats;
INSERT INTO cats(name, age) Values ('Jenkins', 7);
SELECT * FROM cats;
INSERT INTO cats(name, age)
VALUES ('Meatball', 5),
       ('Turkey', 1),
       ('Potato face', 15);
SELECT * FROM cats;
Create table People (first_name VARCHAR(20), last_name VARCHAR(20), age INT);

SELECT * FROM People;
DESC People;
SELECT * FROM People;
SHOW TABLES;
SELECT * FROM cats;
SELECT * FROM cars;
DROP TABLE cars;
show tables;
SELECT * FROM cats;
CREATE TABLE cat2 (name VARCHAR(50) NOT NULL, age INT NOT NULL);
DESC cat2;
INSERT INTO cat2(name, age)
VALUES ('Bilbo', 9);
SELECT * FROM cat2;
SHOW TABLES;
CREATE TABLE shop (name VARCHAR(500));
SHOW TABLES;
DESC shop;

SELECT * FROM shop;
INSERT INTO shop(name)
VALUES ('She said "HA HA"');
SELECT * FROM shop;
CREATE TABLE cat3(
name VARCHAR(50) DEFAULT 'unnamed',
age INT DEFAULT 99
);
DESC cat3;
INSERT INTO cat3(age)
VALUES (12);
SELECT * FROM cat3;
CREATE TABLE cat_4 (id INT NOT NULL PRIMARY KEY, name VARCHAR(500), age INT);
DESC cat_4;
INSERT INTO cat_4(
id, name, age)
VALUES (1, 'Jack', 15);
SELECT * FROM cat_4;
INSERT INTO cat_4(
id, name, age)
VALUES (2, 'Bingo', 18);
SELECT * FROM cat_4;
SELECT DATABASE();
DROP TABLE cat_4;
SHOW TABLES;
CREATE TABLE cat_4(id INT AUTO_INCREMENT, name VARCHAR(50), age INT, PRIMARY KEY(id));
DESC cat_4;
INSERT INTO cat_4(name, age)
VALUES ('Bingo', 7);
SELECT * FROM cat_4;
INSERT INTO cat_4(name, age)
VALUES ('jack', 12);
SELECT * FROM cat_4;
CREATE TABLE Employees (id INT AUTO_INCREMENT PRIMARY KEY, 
last_name VARCHAR(50) NOT NULL, 
first_name VARCHAR(50) NOT NULL, 
middle_name VARCHAR(50), 
age INT NOT NULL, 
current_status VARCHAR(50) NOT NULL DEFAULT 'employed');
SHOW TABLES;
SHOW DATABASES;
DESC employees;
INSERT INTO employees (first_name, last_name, age)
VALUES ('Peter', 'chicken', 20);
SELECT * FROM employees;
SHOW DATABASES;
SELECT DATABASE();
USE book_shop;
SHOW DATABASES;
SHOW DATABASES;
SHOW TABLES;
SELECT DATABASE();
SHOW TABLES;
SELECT * FROM books;
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Lulu', '1985-04-11', '09:45:10', '1985-04-11 9:45:10');
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Juan', '2020-08-15', '23:59:00', '2020-08-15 23:59:00');
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Hazel', CURDATE(), CURTIME(), NOW());
SELECT DATABASE();
SHOW DATABASES;USE book_shop;
SELECT * FROM books;
SELECT 
    title,
    stock_quantity,
    CASE
        WHEN stock_quantity BETWEEN 0 AND 40 THEN '*'
        WHEN stock_quantity BETWEEN 41 AND 70 THEN '**'
        WHEN stock_quantity BETWEEN 71 AND 100 THEN '***'
        WHEN stock_quantity BETWEEN 101 AND 140 THEN '****'
        ELSE '*****'
    END AS stock 
FROM
    books;
    SELECT * FROM books WHERE author_lname IS  NOT NULL;
SELECT * FROM books WHERE title IS NULL;
DELETE  FROM books WHERE title IS NULL;
DELETE  FROM books WHERE title IS NULL;
SELECT * FROM books WHERE title IS NULL;
SELECT * FROM companies;
SHOW TABLES;
CREATE TABLE customers (
	id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name varchar(50),
    email VARCHAR(50)
);
CREATE TABLE orders (
	id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE,
    amount DECIMAL(8,2),
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(id) ON DELETE CASCADE
);
SHOW DATABASES;
SELECT DATABASE();
CREATE DATABASE shop;
USE shop;
SHOW TABLES;
DESC customers;
INSERT INTO customers (first_name, last_name, email)
VALUES ('Boy', 'George', 'george@gmail.com'),
	   ('George', 'Micheal', 'gm@gmail.com'),
       ('Davis', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steel', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016-02-10', 99.99, 1),
	   ('2017-11-11', 35.50, 1),
       ('2014-12-12', 800.67, 2),
       ('2015-01-03', 12.50, 2),
       ('1999-04-11', 450.25, 5);
SELECT * FROM customers;
SELECT * FROM orders;
DROP TABLE orders;
DESC orders;
INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2025-09-23', 78.99, 3);
SELECT DATABASE();
USE shop;	
SHOW TABLES;
SELECT * FROM customers;
SELECT * FROM orders;
SELECT id FROM customers WHERE last_name = 'George';
SELECT * FROM orders WHERE customer_id = 1;
SELECT * FROM customers
JOIN orders ON orders.customer_id = customers.id;
SELECT first_name, last_name, order_date, amount FROM customers
JOIN orders ON orders.customer_id = customers.id;
SELECT first_name, last_name,order_date, amount FROM customers
JOIN orders ON orders.customer_id = customers.id;

SELECT first_name, last_name, SUM(amount) AS Total FROM customers
JOIN orders ON orders.customer_id = customers.id
GROUP BY first_name, last_name
ORDER BY Total DESC;

SELECT first_name, last_name, order_date, amount FROM customers
LEFT JOIN orders ON orders.customer_id = customers.id;

DROP TABLE orders;
DROP TABLE customers;

CREATE TABLE students (id INT PRIMARY KEY AUTO_INCREMENT, first_name VARCHAR(100));
CREATE TABLE papers (title VARCHAR(200), 
			 grade INT,
             student_id INT,
             FOREIGN KEY (student_id) REFERENCES students(id) ON DELETE CASCADE
             );
SHOW TABLES;

INSERT INTO students (first_name)
VALUES ('Caleb'), ('Samatha'), ('Raj'), ('Carlos'), ('Lisa');

SELECT * FROM students;

INSERT INTO papers (student_id, title, grade)
VALUES (1, 'My first book report', 60),
	   (1, 'My second book report', 75),
       (2, 'Russian Lit Through the Ages', 94),
       (2, 'Do Montaigne and The Art of The Essay', 98),
       (4, 'Borges and magical Realism', 89);
       
SELECT first_name, title, grade FROM students
JOIN papers ON papers.student_id = students.id
ORDER BY grade DESC;

SELECT first_name, IFNULL(title, 'MISSING') AS title, IFNULL(grade, 0) as grade FROM students
LEFT JOIN papers ON papers.student_id = students.id;

SELECT first_name, IFNULL(AVG(grade), 0) AS Average FROM students
LEFT JOIN papers ON papers.student_id = students.id
GROUP BY first_name
ORDER BY Average DESC;

SELECT first_name, IFNULL(AVG(grade), 0) AS Average,
	CASE
		 WHEN IFNULL(AVG(grade), 0) >= 75 THEN 'PASSING'
		 ELSE 'FAILING'
	END AS passing_status
FROM students
LEFT JOIN papers ON papers.student_id = students.id
GROUP BY first_name
ORDER BY Average DESC;

CREATE TABLE reviewers 
	(id INT PRIMARY KEY AUTO_INCREMENT, 
	 first_name VARCHAR(50) NOT NULL,
     last_name VARCHAR(50) NOT NULL
     );
     
CREATE TABLE series
	(id INT PRIMARY KEY AUTO_INCREMENT,
     title VARCHAR(100),
     released_year YEAR,
     genre VARCHAR(100)
     );
     
CREATE TABLE reviews
	(id INT PRIMARY KEY AUTO_INCREMENT,
     rating DECIMAL(2,1),
     series_id INT,
     reviewer_id INT,
     FOREIGN KEY (series_id) REFERENCES series(id),
     FOREIGN KEY (reviewer_id) REFERENCES reviewers(id)
     );
     
INSERT INTO series (title, released_year, genre)
VALUES ('Archer', 2009, 'Animation'),
	   ('Arrested Development', 2003, 'Comedy'),
       ('Bob\'s Burgers', 2011, 'Animation'),
       ('Bojack Horseman', 2014, 'Animation'),
       ('Breaking Bad', 2008, 'Drama'),
       ('Curb Your Enthusiasm', 2000, 'Comedy'),
       ('Fargo', 2014, 'Drama'),
       ('Freaks and Geeks', 1999, 'Comedy'),
       ('General Hospital', 1963, 'Drama'),
       ('Halt and Catch Fire', 2014, 'Drama'),
       ('Malcolm In The Middle', 2000, 'Comedy'),
       ('Pushing Daisies', 2007, 'Comedy'),
       ('Seinfeld', 1989, 'Comedy'),
       ('Stranger Things', 2016, 'Drama');
       
USE tv_db;
SHOW TABLES;

INSERT INTO reviewers (first_name, last_name)
VALUES ('Thomas', 'Stoneman'),
	   ('Wyatt', 'Skaggs'),
       ('Kimbra', 'Masters'),
       ('Domingo', 'Cortes'),
       ('Colt', 'Steele'),
       ('Pinkie', 'Petit'),
       ('Marlon', 'Crafford');
       
INSERT INTO reviews (series_id, reviewer_id, rating)
VALUES (1, 1, 8.0), (1, 2, 7.5), (1, 3, 8.5), (1, 4, 7.7), (1, 5, 8.9),
	   (2, 1, 8.1), (2, 4, 6.0), (2, 3, 8.0), (2, 6, 8.4), (2, 5, 9.9),
       (3, 1, 7.0), (3, 6, 7.5), (3, 4, 8.0), (3, 3, 7.1), (3, 5, 8.0),
       (4, 1, 7.5), (4, 3, 7.8), (4, 4, 8.3), (4, 2, 7.6), (4, 5, 8.5),
       (5, 1, 9.5), (5, 3, 9.0), (5, 4, 9.1), (5, 2, 9.3), (5, 5, 9.9),
       (6, 2, 6.5), (6, 3, 7.8), (6, 4, 8.8), (6, 2, 8.4), (6, 5, 9.1),
       (7, 2, 9.1), (7, 5, 9.7), (8, 4, 8.5), (8, 2, 7.8), (8, 6, 8.8),
       (8, 5, 9.3), (9, 2, 5.5), (9, 3, 6.8), (9, 4, 5.8), (9, 6, 4.3),
       (9, 5, 4.5), (10, 5, 9.9), (13, 3, 8.0), (13, 4, 7.2), (14, 2, 8.5),
       (14, 3, 8.9), (14, 4, 8.9);
       
SELECT * FROM series;
SELECT * FROM reviewers;
SELECT * FROM reviews;

SELECT title, rating FROM series
JOIN reviews ON reviews.series_id = series.id
LIMIT 15;

SELECT title, ROUND(AVG(rating), 2) AS Avg_rating FROM series
JOIN reviews ON reviews.series_id = series.id
GROUP BY title
ORDER BY Avg_rating ASC;

SHOW DATABASES;USE tv_db;
SELECT first_name, last_name, rating FROM reviewers
JOIN reviews ON reviews.reviewer_id = reviewers.id;

SELECT * FROM reviews, series;

SELECT * FROM series
JOIN reviews ON reviews.series_id = series.id;

SELECT * FROM series
LEFT JOIN reviews ON reviews.series_id = series.id;

SELECT * FROM series
LEFT JOIN reviews ON reviews.series_id = series.id
WHERE rating IS NULL;

SELECT title AS unreviewed_series FROM series
LEFT JOIN reviews ON reviews.series_id = series.id
WHERE rating IS NULL;

SELECT title AS unreviewed_series FROM reviews
RIGHT JOIN series ON reviews.series_id = series.id
WHERE rating IS NULL;

SELECT genre, ROUND(AVG(rating), 2) AS avg_rating FROM series
JOIN reviews ON reviews.series_id = series.id
GROUP BY genre;

SELECT first_name, last_name, COUNT(rating) AS COUNT, IFNULL(MIN(rating), 0) AS MIN, IFNULL(MAX(rating), 0) AS MAX, IFNULL(AVG(rating), 0) AS AVG,
	CASE
		 WHEN COUNT(rating) >= 10 THEN 'POWERUSER'
		 WHEN COUNT(rating) > 0 THEN 'ACTIVE'
		 ELSE 'INACTIVE'
	END AS status
FROM reviewS
RIGHT JOIN reviewers ON reviews.reviewer_id = reviewers.id
GROUP BY first_name, last_name;

SELECT title, rating, CONCAT(first_name, ' ', last_name) AS reviewer FROM reviews
JOIN series ON reviews.series_id = series.id
JOIN reviewers ON reviews.reviewer_id = reviewers.id
ORDER BY title;


SELECT title, released_year, rating, genre, first_name, last_name FROM reviews
JOIN series ON series.id = reviews.series_id
JOIN reviewers ON reviewers.id = reviews.reviewer_id;

CREATE VIEW full_reviews AS
SELECT title, released_year, rating, genre, first_name, last_name FROM reviews
JOIN series ON series.id = reviews.series_id
JOIN reviewers ON reviewers.id = reviews.reviewer_id;

DROP VIEW full_reviews;

SHOW TABLES;

SELECT * FROM full_reviews
WHERE genre = 'comedy';

SELECT * FROM full_reviews;

SELECT title, AVG(rating) FROM full_reviews
GROUP BY title HAVING count(rating) >1;

SELECT title, AVG(rating) FROM full_reviews
GROUP BY title WITH ROLLUP;

SELECT title, COUNT(rating) FROM full_reviews
GROUP BY title WITH ROLLUP;

SELECT title, genre, AVG(rating) FROM full_reviews
GROUP BY title, genre WITH ROLLUP;

SELECT first_name, released_year, genre, AVG(rating) FROM full_reviews
GROUP BY released_year, genre, first_name WITH ROLLUP;

SELECT @@GLOBAL.sql_mode;
SELECT @@SESSION.sql_mode;

SELECT * FROM full_reviews;

SELECT title, genre, AVG(rating) OVER(PARTITION BY genre) AS HA FROM full_reviews;

SELECT title, genre, AVG(rating) AS HA FROM full_reviews
GROUP BY title, genre;

CREATE DATABASE window_funcs;

USE window_funcs;

CREATE TABLE employees (emp_no INT PRIMARY KEY AUTO_INCREMENT, department VARCHAR(20), salary INT);

INSERT INTO employees (department, salary)
VALUES ('engineering', 80000),
	   ('engineering', 69000),
       ('engineering', 70000),
       ('engineering', 103000),
       ('engineering', 67000),
       ('engineering', 89000),
       ('engineering', 91000),
       ('sales', 59000),
       ('sales', 70000),
       ('sales', 159000),
       ('sales', 72000),
       ('sales', 60000),
       ('sales', 61000),
       ('sales', 61000),
       ('customer service', 38000),
       ('customer service', 45000),
       ('customer service', 61000),
       ('customer service', 40000),
       ('customer service', 31000),
       ('customer service', 56000),
	   ('customer service', 55000);
       SHOW DATABASES;
	SELECT DATABASE();
SHOW TABLES;
SELECT * FROM employees;

SELECT department, salary, AVG(salary) FROM employees
GROUP BY department, salary WITH ROLLUP;

SELECT emp_no, department, salary, AVG(salary) OVER(PARTITION BY department) AS rate FROM employees;

SELECT emp_no, department, salary, AVG(salary) OVER(PARTITION BY department) AS dept_avg, 
AVG(salary) OVER() AS comp_avg
FROM employees;
SELECT emp_no, department, salary, SUM(salary) OVER(PARTITION BY department) AS dept_payroll, SUM(salary) OVER() AS Pay_roll FROM employees;  

SELECT emp_no, department, salary, SUM(salary) OVER(PARTITION BY department ORDER BY salary) AS rolling_payroll, SUM(salary) OVER() AS total_payroll FROM employees;     
DESC employees;

SELECT emp_no, department, salary, SUM(salary) OVER(PARTITION BY department ORDER BY salary) AS rolling_payroll, SUM(salary) OVER(PARTITION BY department) AS total_payroll FROM employees;

SELECT emp_no, department, salary, RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS rolling_payroll, RANK() OVER(ORDER BY salary DESC) AS total_payroll FROM employees ORDER BY department;

SELECT emp_no, department, salary, FIRST_VALUE(emp_no) OVER(PARTITION BY department ORDER BY salary DESC) AS highestpaid_dept, FIRST_VALUE(emp_no) OVER(ORDER BY salary DESC) AS highestpay_overall FROM employees;

SELECT emp_no, department, salary, salary - LAG(salary) OVER(ORDER BY salary DESC) AS salary_diff FROM employees;

SELECT emp_no, department, salary, salary - LEAD(salary) OVER(ORDER BY salary DESC) AS salary_diff FROM employees;

SELECT emp_no, department, salary, salary - LAG(salary) OVER(PARTITION BY department ORDER BY salary DESC) AS deptsalary_diff FROM employees;
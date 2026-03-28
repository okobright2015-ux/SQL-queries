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

;;;;;;;
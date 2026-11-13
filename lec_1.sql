-- FIRST CLASS OF DBMS  
# create a database named as tb 

# DDL command to create database
# CREATE DATABASE tb;

# USE tb;

CREATE DATABASE IF NOT EXISTS tb;

USE tb;

DROP DATABASE IF EXISTS tb;


# DDL commands for table  for students -> enroll_id, name, email, password

CREATE TABLE IF NOT EXISTS students (
enroll_id INT,
name VARCHAR(255),
email VARCHAR(255),
password VARCHAR(255) );

DROP TABLE IF EXISTS students;

# create a table named as student having headers (std_id, roll_no, marks, subject)


CREATE TABLE IF NOT EXISTS students (
std_id INT,
roll_no INT,
marks INT,
subject VARCHAR(255));


INSERT INTO students (std_id, roll_no, marks, subject)
VALUES
(1, 1, 100, 'maths'),
(2, 2, 90, 'chemistry');


TRUNCATE TABLE students;




  







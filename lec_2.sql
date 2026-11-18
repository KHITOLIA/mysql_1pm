USE tb;
# CONSTRAINTS 
-- 1. NOT NULL : 

SHOW TABLES;


CREATE TABLE IF NOT EXISTS customers
(cust_id INT NOT NULL,
name VARCHAR(255) NOT NULL,
email VARCHAR(255) NOT NULL,
password VARCHAR(255) NOT NULL);



INSERT INTO customers (cust_id,name, email, password)
VALUES
(1, 'shashank', 'shashank@gmail.com', '1234'),
(2, 'fareed', 'fareed@gmail.com', '0987');

# UNIQUE : 
DROP TABLE IF EXISTS customers;

CREATE TABLE IF NOT EXISTS customers
(cust_id INT NOT NULL,
name VARCHAR(255) NOT NULL,
email VARCHAR(255) NOT NULL,
password VARCHAR(255) NOT NULL,
CONSTRAINT customers_cust_id_unique UNIQUE(cust_id),
CONSTRAINT customer_email_unique UNIQUE(email)
);



# PRIMARY KEY : int col -> not null -> unique
CREATE TABLE IF NOT EXISTS customers
(cust_id INT AUTO_INCREMENT ,
name VARCHAR(255) NOT NULL,
email VARCHAR(255) NOT NULL UNIQUE,
password VARCHAR(255) NOT NULL,
CONSTRAINT customers_cust_id_pk PRIMARY KEY(cust_id));



INSERT INTO customers(name, email, password)
VALUES
('shashank', 'shashank@gmail.com', '1234'),
('fareed', 'fareed@gmail.com', '0987');


# CHECK 
CREATE TABLE IF NOT EXISTS bar_customers
(id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(255) NOT NULL,
age INT NOT NULL,
time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
CONSTRAINT bar_customer_age_check CHECK(age > 21 AND age < 40));




INSERT INTO bar_customers(name, age)
VALUES
('Tushar', 30),
('vansh', 23);


# default : any fixed value if not entered
DROP TABLE IF EXISTS bar_customers;


# FOREIGN KEY : 
CREATE TABLE IF NOT EXISTS bar_customers
(id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(255) NOT NULL,
age INT NOT NULL,
time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
CONSTRAINT bar_customer_age_check CHECK(age > 21 AND age < 40));


CREATE TABLE IF NOT EXISTS bar_orders
(order_id INT PRIMARY KEY AUTO_INCREMENT,
id INT NOT NULL,
order_name VARCHAR(255) NOT NULL,
CONSTRAINT bar_orders_id_fk FOREIGN KEY(id) REFERENCES bar_customers(id));


SHOW TABLES;

DROP TABLE IF EXISTS students;


CREATE TABLE IF NOT EXISTS employee
(eid INT AUTO_INCREMENT,
name VARCHAR(255) NOT NULL,
email VARCHAR(255) NOT NULL,
password VARCHAR(255) NOT NULL,
join_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
age INT NOT NULL,

CONSTRAINT employee_email_unq UNIQUE(email),
CONSTRAINT employee_age_chk CHECK(age > 24),
CONSTRAINT employee_pk PRIMARY KEY(eid));


INSERT INTO employee(name, email, password, age)
VALUES
('fareed', 'f@gmail.com', 'f1234', 25),
('shashank', 's@gmail.com', 's1234', 26),
('sohit', 'so@gmail.com', 's1234', 29);


TRUNCATE TABLE employee;





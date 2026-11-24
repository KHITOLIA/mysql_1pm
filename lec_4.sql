USE tb;

# DML (data manipulation language) (CRUD) operations -> create, read/retrieve, update, delete


# INSERT : ADD SOME DATA INTO TABLE 

ALTER TABLE customers
DROP COLUMN location,
DROP COLUMN age;

INSERT INTO customers(name, password, email)
VALUES
('Tushar', '0987','tushar@trainingbasket.co'),
('shashank', '1234', 'shashank@gmail.com'),
('vansh', '4567', 'vansh@gmail.com');


INSERT INTO customers(password, name, email)
VALUES
('2345','fareed','fareed@gmail.com');


INSERT INTO customers
VALUES
(5,'sohit', '6789', 'sohit@gmail.com');
	

INSERT INTO customers(name, email)
VALUES
('training basket', 'training@trainingbasket.co');



# SELECT : retreive data from the table

SELECT * FROM customers;

SELECT * FROM tb.customers;





















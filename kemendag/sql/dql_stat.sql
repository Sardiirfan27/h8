CREATE TABLE teachers (
    teacher_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    school VARCHAR(100),
    hire_date DATE,
    salary DECIMAL(10,2)
);

INSERT INTO teachers (first_name, last_name, school, hire_date, salary) VALUES
('John', 'Cole', 'Myers Middle School', '2015-08-12', 35000),
('Jane', 'Bush', 'Myers Middle School', '2016-07-19', 39000),
('Sam', 'Adams', 'F.D. Roosevelt HS', '2013-06-10', 37000),
('Lisa', 'Smith', 'F.D. Roosevelt HS', '2018-01-25', 41000),
('Mike', 'Johnson', 'F.D. Roosevelt HS', '2012-09-14', 42000),
('Emily', 'Clark', 'Lincoln Elementary', '2020-03-02', 32000),
('Robert', 'Brown', 'Myers Middle School', '2017-11-20', 45000),
('Patricia', 'Taylor', 'Lincoln Elementary', '2019-05-14', 36000),
('Michael', 'Anderson', 'F.D. Roosevelt HS', '2014-03-10', 38500),
('Linda', 'Thomas', 'Lincoln Elementary', '2016-10-30', 43000),
('William', 'Jackson', 'Myers Middle School', '2018-04-01', 41000),
('Elizabeth', 'White', 'F.D. Roosevelt HS', '2011-12-19', 40000),
('David', 'Harris', 'Lincoln Elementary', '2013-07-15', 39000),
('Barbara', 'Martin', 'Myers Middle School', '2021-09-01', 37000),
('Richard', 'Thompson', 'Lincoln Elementary', '2015-02-23', 44000);


CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(100),
    salary DECIMAL(10,2)
);

INSERT INTO employees (first_name, last_name, department, salary) VALUES
('John', 'Doe', 'IT', 60000),
('Jane', 'Smith', 'HR', 45000),
('Sam', 'Brown', 'IT', 52000),
('Emily', 'Clark', 'Finance', 70000),
('Mike', 'Johnson', 'Finance', 72000),
('Robert', 'Taylor', 'HR', 48000),
('Patricia', 'Miller', 'IT', 55000),
('Linda', 'Davis', 'Finance', 68000),
('David', 'Wilson', 'IT', 51000),
('Barbara', 'Anderson', 'HR', 47000),
('William', 'Thomas', 'Marketing', 62000),
('Elizabeth', 'Jackson', 'Marketing', 61000),
('James', 'White', 'Marketing', 64000),
('Mary', 'Harris', 'Finance', 71000),
('Richard', 'Martin', 'HR', 46000);


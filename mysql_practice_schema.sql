-- MySQL Practice Dump for testdb
-- Employees with departments (joined via foreign key)

DROP DATABASE IF EXISTS testdb;
CREATE DATABASE testdb;
USE testdb;

-- Create departments table
CREATE TABLE departments (
    dept_id INT AUTO_INCREMENT PRIMARY KEY,
    dept_name VARCHAR(100)
);

-- Insert sample departments
INSERT INTO departments (dept_name) VALUES
('Engineering'),
('Human Resources'),
('Finance');

-- Create employees table with foreign key to departments
CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(100),
    salary DECIMAL(10,2),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

-- Insert sample employees
INSERT INTO employees (name, position, salary, dept_id) VALUES
('Alice', 'Engineer', 82000.00, 1),
('Bob', 'Manager', 92000.00, 2),
('Charlie', 'Analyst', 64000.50, 3);

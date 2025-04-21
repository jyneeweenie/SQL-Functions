-- Create Department Table
CREATE TABLE Department (
    Dept_ID INT PRIMARY KEY,
    Dept_Name VARCHAR(50) NOT NULL
);

-- Create Employee Table
CREATE TABLE Employee (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(100) NOT NULL,
    Salary DECIMAL(10, 2) NOT NULL,
    Dept_ID INT,
    FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID)
);
-- Insert Data into Department Table
INSERT INTO Department (Dept_ID, Dept_Name) VALUES
(1, 'Sales'),
(2, 'Production'),
(3, 'Marketing'),
(4, 'HR'),
(5, 'Finance');

-- Insert Data into Employee Table
INSERT INTO Employee (Emp_ID, Emp_Name, Salary, Dept_ID) VALUES
(101, 'Alice', 5000.00, 1),
(102, 'Bob', 6000.00, 1),
(103, 'Charlie', 7000.00, 2),
(104, 'David', 8000.00, 2),
(105, 'Eve', 9000.00, 3),
(106, 'Frank', 10000.00, 3),
(107, 'Grace', 11000.00, 4),
(108, 'Hank', 12000.00, 4),
(109, 'Ivy', 13000.00, 5),
(110, 'Jack', 14000.00, 5);
SELECT
    SUM(E.Salary) AS Total_Salary,
    AVG(E.Salary) AS Average_Salary,
    COUNT(DISTINCT E.Dept_ID) AS Department_Count,
    MIN(E.Salary) AS Min_Salary,
    MAX(E.Salary) AS Max_Salary
FROM
    Employee E;

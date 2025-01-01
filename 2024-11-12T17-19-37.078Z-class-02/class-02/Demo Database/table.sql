CREATE TABLE Employee (
    EmployeeID INT AUTO_INCREMENT PRIMARY KEY,  -- Unique identifier for each employee
    FirstName VARCHAR(50) NOT NULL,             -- Employee's first name
    LastName VARCHAR(50) NOT NULL,              -- Employee's last name
    Email VARCHAR(100) NOT NULL UNIQUE,         -- Employee's email address
    PhoneNumber VARCHAR(15),                    -- Employee's phone number
    HireDate DATE NOT NULL,                     -- Date when the employee was hired
    JobTitle VARCHAR(50) NOT NULL,              -- Employee's job title
    Department VARCHAR(50),                     -- Department of the employee
    Salary DECIMAL(10, 2),                      -- Employee's salary
    ManagerID INT
);

INSERT INTO Employee (FirstName, LastName, Email, PhoneNumber, HireDate, JobTitle, Department, Salary, ManagerID)
VALUES
('John', 'Doe', 'john.doe@example.com', '123-456-7890', '2023-01-15', 'Software Engineer', 'IT', 75000.00, NULL),
('Jane', 'Smith', 'jane.smith@example.com', '987-654-3210', '2022-03-22', 'Project Manager', 'IT', 90000.00, 1),
('Michael', 'Johnson', 'michael.j@example.com', '555-234-5678', '2021-06-10', 'QA Engineer', 'IT', 65000.00, 2),
('Emily', 'Davis', 'emily.davis@example.com', '555-876-5432', '2023-09-12', 'UI/UX Designer', 'Design', 72000.00, NULL),
('Chris', 'Brown', 'chris.brown@example.com', '555-987-6543', '2020-05-20', 'DevOps Engineer', 'IT', 80000.00, 1),
('Sarah', 'Wilson', 'sarah.wilson@example.com', '555-543-9876', '2019-11-03', 'HR Manager', 'HR', 85000.00, NULL),
('David', 'Garcia', 'david.garcia@example.com', '555-234-7654', '2023-02-15', 'Business Analyst', 'Operations', 70000.00, 6),
('Sophia', 'Martinez', 'sophia.martinez@example.com', '555-654-3210', '2021-07-19', 'Marketing Manager', 'Marketing', 82000.00, NULL),
('James', 'Lee', 'james.lee@example.com', '555-789-0123', '2022-10-25', 'Content Writer', 'Marketing', 62000.00, 8),
('Olivia', 'Clark', 'olivia.clark@example.com', '555-321-7890', '2020-08-30', 'Customer Support', 'Support', 50000.00, NULL),
('Liam', 'Walker', 'liam.walker@example.com', '555-876-0987', '2023-01-05', 'Data Analyst', 'IT', 68000.00, 2),
('Emma', 'Hall', 'emma.hall@example.com', '555-123-4567', '2018-09-18', 'Finance Manager', 'Finance', 92000.00, NULL),
('Noah', 'Allen', 'noah.allen@example.com', '555-765-4321', '2022-01-12', 'Accountant', 'Finance', 58000.00, 12),
('Isabella', 'Young', 'isabella.young@example.com', '555-432-1098', '2020-03-10', 'Graphic Designer', 'Design', 70000.00, 4),
('William', 'King', 'william.king@example.com', '555-210-9876', '2023-05-25', 'Sales Executive', 'Sales', 60000.00, NULL),
('Ava', 'Wright', 'ava.wright@example.com', '555-987-6540', '2022-11-14', 'Sales Manager', 'Sales', 75000.00, 15),
('Lucas', 'Harris', 'lucas.harris@example.com', '555-345-6789', '2023-08-20', 'Intern', 'IT', 40000.00, 1),
('Mia', 'Moore', 'mia.moore@example.com', '555-654-8907', '2021-04-01', 'Recruiter', 'HR', 58000.00, 6),
('Benjamin', 'Taylor', 'benjamin.taylor@example.com', '555-098-7654', '2019-12-20', 'System Administrator', 'IT', 70000.00, 1),
('Charlotte', 'Anderson', 'charlotte.anderson@example.com', '555-567-4321', '2023-03-29', 'SEO Specialist', 'Marketing', 63000.00, 8),
('Ethan', 'Thomas', 'ethan.thomas@example.com', '555-234-8907', '2022-07-22', 'Technical Writer', 'IT', 61000.00, 2),
('Amelia', 'White', 'amelia.white@example.com', '555-890-1234', '2020-02-16', 'Product Manager', 'Operations', 92000.00, 7),
('Alexander', 'Hernandez', 'alexander.hernandez@example.com', '555-321-0987', '2023-06-13', 'IT Support', 'Support', 48000.00, 11),
('Evelyn', 'Martin', 'evelyn.martin@example.com', '555-678-5432', '2021-01-17', 'Legal Advisor', 'Legal', 87000.00, NULL),
('Daniel', 'Lopez', 'daniel.lopez@example.com', '555-432-8765', '2023-04-06', 'Backend Developer', 'IT', 74000.00, 1),
('Harper', 'Scott', 'harper.scott@example.com', '555-789-6543', '2021-05-25', 'Frontend Developer', 'IT', 72000.00, 2),
('Matthew', 'Green', 'matthew.green@example.com', '555-543-2109', '2023-09-01', 'Cloud Engineer', 'IT', 85000.00, 5),
('Ella', 'Adams', 'ella.adams@example.com', '555-678-9012', '2020-07-09', 'Supply Chain Manager', 'Operations', 80000.00, NULL),
('Jackson', 'Baker', 'jackson.baker@example.com', '555-890-5678', '2018-12-15', 'Quality Manager', 'Operations', 87000.00, 7),
('Abigail', 'Carter', 'abigail.carter@example.com', '555-123-9876', '2022-02-27', 'Social Media Manager', 'Marketing', 65000.00, 8);

SELECT Department, COUNT(*) AS EmployeeCount
FROM Employee
WHERE `Department` = 'IT'
GROUP BY Department;

SELECT `Department`, SUM(`Salary`) AS TotalSalary
FROM Employee
WHERE `Department` = 'IT'
GROUP BY `Department`;
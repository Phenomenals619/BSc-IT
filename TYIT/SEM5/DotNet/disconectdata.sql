
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Title NVARCHAR(50),
    Department NVARCHAR(50)
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, Title, Department) 
VALUES (1, 'John', 'Doe', 'Manager', 'Sales'),
       (2, 'Jane', 'Smith', 'Developer', 'IT'),
       (3, 'Mark', 'Brown', 'Analyst', 'Finance');
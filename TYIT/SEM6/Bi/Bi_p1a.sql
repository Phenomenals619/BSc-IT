CREATE DATABASE SalesDB;
GO
USE SalesDB;
GO
CREATE TABLE SalesData (
    Region NVARCHAR(50),
    Product NVARCHAR(50),
    Salesperson NVARCHAR(50),
    Month NVARCHAR(50),
    Sales INT
);
GO
INSERT INTO SalesData (Region, Product, Salesperson, Month, Sales)
VALUES
('North', 'Laptop', 'John', 'January', 12000),
('North', 'Printer', 'Sarah', 'January', 8000),
('South', 'Laptop', 'Mike', 'January', 15000),
('South', 'Printer', 'Emily', 'January', 6000),
('East', 'Laptop', 'John', 'February', 10000),
('East', 'Printer', 'Sarah', 'February', 7000),
('West', 'Laptop', 'Mike', 'February', 13000),
('West', 'Printer', 'Emily', 'February', 9000),
('North', 'Laptop', 'John', 'March', 14000),
('North', 'Printer', 'Sarah', 'March', 7500),
('South', 'Laptop', 'Mike', 'March', 16000),
('South', 'Printer', 'Emily', 'March', 8500),
('East', 'Laptop', 'John', 'April', 11000),
('East', 'Printer', 'Sarah', 'April', 6500),
('West', 'Laptop', 'Mike', 'April', 12000),
('West', 'Printer', 'Emily', 'April', 9500);
GO

SELECT * FROM SalesData;
GO
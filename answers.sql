-- Question 1
-- Create ProductDetail table to achieve 1NF
CREATE TABLE ProductDetail(
    OrderID INT,
    CustomerName VARCHAR(100),
    Products VARCHAR(100)
);

--Insert sample data into ProductDetail table
INSERT INTO ProductDetail(OrderID,CustomerName,Products)
VALUES
(101,'John Doe','Laptop'),
(101,'John Doe','Mouse'),
(102,'Jane Smith','Tablet'),
(102,'Jane Smith','Keyboard'),
(102,'Jane Smith','Mouse'),
(103,'Emily Clark','Phone');

-- Create Orders table
CREATE TABLE Orders(
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

-- Insert INTO Orders table
INSERT INTO Orders(OrderID,CustomerName)
VALUES
(101,'John Doe'),
(102,'Jane Smith'),
(103,'Emily Clark');

-- Create Product table
CREATE TABLE Product(
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    PRIMARY KEY(OrderID,Product),
    FOREIGN KEY(OrderID) REFERENCES Orders(OrderID)
);

-- Insert into Product table
INSERT INTO Product(OrderID,Product,Quantity)
VALUES
(101,'Laptop',2),
(101,'Mouse',1),
(102,'Tablet',3),
(102,'Keyboard',1),
(102,'Mouse',2),
(103,'Phone',1);
-- Question 1 --
-- Split ProductDetail table into two tables i.e products table and productsDetail table to achieve 1NF
-- Creating products table
CREATE TABLE products(
    productID INT PRIMARY KEY,
    productName VARCHAR(100)
);

-- Creating productDetail table
-- productID foreign key is used to establish relationship between two tables ensuring referential integrity
CREATE TABLE productDetails(
    productDetailsID INT PRIMARY KEY,
    OrderID INT ,
    customerName VARCHAR(100),
    productID INT,
    FOREIGN KEY(productID) REFERENCES products(productID)
);
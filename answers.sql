-- Question 1 --
-- Split ProductDetail table into two tables i.e products table and productsDetail table to achieve 1NF
-- Creating products table
CREATE TABLE products(
    productID INT AUTO_INCREMENT PRIMARY KEY,
    productName VARCHAR(100)
);

-- Creating productDetail table
-- productID foreign key is used to establish relationship between two tables ensuring referential integrity
CREATE TABLE productDetails(
    productDetailsID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT ,
    customerName VARCHAR(100),
    productID INT,
    FOREIGN KEY(productID) REFERENCES products(productID)
);

-- Question 2 ---
-- Moving partially dependent attributes to their own table i.e customer name attribute and product to achieve 2NF
-- Creating customers table
CREATE TABLE customers(
   customerID INT AUTO_INCREMENT PRIMARY KEY,
   customerName VARCHAR(100)
);

--Creating orderDetails table with two foreign keys to link customers table and products table with order details table
CREATE TABLE orderDetails(
    orderDetailsID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT,
    customerID INT,
    productID INT,
    quantity INT,
    FOREIGN KEY(customerID) REFERENCES customers(customerID),
    FOREIGN KEY(productID) REFERENCES products(productID)
);

-- Initial table 
CREATE TABLE ProductDetail(
OrderID INT,
CustomerName VARCHAR(100),
Products VARCHAR(255)
 );

INSERT INTO productdetail(OrderID, CustomerName, Products )
VALUES (101, 'John_Doe', 'Laptop,Mouse'),
(102, 'Jane_Smith', 'Tablet, Keyboard, Mouse'),
(103, 'Emily_Clark', 'Phone');

-- Question 1
DROP TABLE productdetail;
CREATE TABLE ProductDetail(
OrderID INT,
CustomerName VARCHAR(100),
Products VARCHAR(255),
Quantity INT
 );

 INSERT INTO productdetail(OrderID, CustomerName, Products, Quantity )
VALUES (101, 'John_Doe', 'Laptop', 1),
(101, 'John_Doe', 'Mouse', 1),
(102, 'Jane_Smith', 'Tablet', 1),
(102, 'Jane_Smith', 'Keyboard', 1),
(102, 'Jane_Smith', 'Mouse', 1),
(103, 'Emily_Clark', 'Phone', 1);

-- Question 2

CREATE TABLE Orders1 (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

INSERT INTO Orders1 (OrderID, CustomerName)
VALUES
    (101, 'John Doe'),
    (102, 'Jane Smith'),
    (103, 'Emily Clark');

 CREATE TABLE OrderDetails1 (
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders1(OrderID)
);

INSERT INTO OrderDetails1 (OrderID, Product, Quantity)
VALUES
    (101, 'Laptop', 2),
    (101, 'Mouse', 1),
    (102, 'Tablet', 3),
    (102, 'Keyboard', 1),
    (102, 'Mouse', 2),
    (103, 'Phone', 1);


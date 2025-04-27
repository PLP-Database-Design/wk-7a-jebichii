
-- QUESTION 1
-- Transform into 1NF
SELECT OrderID, CustomerName, Product
FROM (
    VALUES
        (101, 'John Doe', 'Laptop'),
        (101, 'John Doe', 'Mouse'),
        (102, 'Jane Smith', 'Tablet'),
        (102, 'Jane Smith', 'Keyboard'),
        (102, 'Jane Smith', 'Mouse'),
        (103, 'Emily Clark', 'Phone')
) AS NormalizedTable (OrderID, CustomerName, Product);
-- QUESTION 2
-- Create Orders Table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(255)
);

INSERT INTO Orders (OrderID, CustomerName)
VALUES
    (101, 'John Doe'),
    (102, 'Jane Smith'),
    (103, 'Emily Clark');

-- Create OrderDetails Table
CREATE TABLE OrderDetails (
    OrderID INT,
    Product VARCHAR(255),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

INSERT INTO OrderDetails (OrderID, Product, Quantity)
VALUES
    (101, 'Laptop', 2),
    (101, 'Mouse', 1),
    (102, 'Tablet', 3),
    (102, 'Keyboard', 1),
    (102, 'Mouse', 2),
    (103, 'Phone', 1);


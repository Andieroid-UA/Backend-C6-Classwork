CREATE TABLE Customers (
    CustomerID SERIAL PRIMARY KEY,
    Name TEXT,
    Email TEXT
);

INSERT INTO Customers (Name, Email)
VALUES ('Alice Johnson', 'alice.johnson@email.com');

INSERT INTO Customers (Name, Email)
VALUES ('Bob Smith', 'bob.smith@email.com');

INSERT INTO Customers (Name, Email)
VALUES ('Charlie Brown', 'charlie.brown@email.com');

CREATE TABLE Books (
    BookID SERIAL PRIMARY KEY,
    Title TEXT
);

INSERT INTO Books (Title)
VALUES ('Book 1');

INSERT INTO Books (Title)
VALUES ('Book 2');

INSERT INTO Books (Title)
VALUES ('Book 3');

CREATE TABLE Orders (
    OrderID SERIAL PRIMARY KEY,
    CustomerID INT REFERENCES Customers(CustomerID),
    BookID INT REFERENCES Books(BookID),
    Quantity INT
);

INSERT INTO Orders (CustomerID, BookID, Quantity)
VALUES (1, 1, 2);

INSERT INTO Orders (CustomerID, BookID, Quantity)
VALUES (2, 2, 1);

INSERT INTO Orders (CustomerID, BookID, Quantity)
VALUES (3, 3, 3);

-------------------------------------------------------

SELECT
    c.Name AS CustomerName,
    b.Title AS BookTitle,
    o.Quantity
FROM
    Orders o
JOIN
    Customers c ON o.CustomerID = c.CustomerID
JOIN
    Books b ON o.BookID = b.BookID;

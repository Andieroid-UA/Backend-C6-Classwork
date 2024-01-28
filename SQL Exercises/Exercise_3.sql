

CREATE TABLE Customers (
    CustomerID int,
    Name text,
    Email text
);


INSERT INTO Customers (CustomerID, Name, Email)
VALUES (1, 'Alice Johnson', 'alice.johnson@email.com');

INSERT INTO Customers (CustomerID, Name, Email)
VALUES (2, 'Bob Smith', 'bob.smith@email.com');

INSERT INTO Customers (CustomerID, Name, Email)
VALUES (3, 'Charlie Brown', 'charlie.brown@email.com');

DELETE FROM Customers
WHERE CustomerID = 3;

SELECT * FROM Customers;
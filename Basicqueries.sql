-- Question 1
SELECT ProductID, ProductName, UnitPrice
FROM products;

-- Question 2
SELECT ProductID, ProductName, UnitPrice
FROM products
ORDER BY UnitPrice;

-- Question 3
SELECT ProductID, ProductName, UnitPrice
FROM northwind.products
ORDER BY UnitPrice ASC;

-- Question 4
SELECT ProductID, UnitPrice
FROM northwind.products
WHERE UnitPrice <= 7.50;

-- Question 5
SELECT productName, UnitsInStock
FROM northwind.products
WHERE UnitsInStock >= 100;

-- Question 6
SELECT DISTINCT productName, UnitInStock
FROM northwind.products
WHERE UnitsInStock >= 100
ORDER BY UnitPrice DESC, productName;

-- Question 7
SELECT productName, UnitsInStock
FROM products
WHERE UnitsInStock >= 1 
ORDER BY ProductName;

/* Qusetion 8
The table holds the types of items Northwind sells */alter

-- Question 9
SELECT * 
FROM categories;

-- Question 10 
SELECT CatgoryID, productName
FROM products
WHERE CategoryID = 8;

-- Question 11
SELECT firstName, lastName
FROM employees;

-- Question Number 12
SELECT firstName, lastName, title
FROM  employees
WHERE title LIKE "%Manager%";

-- Question Number 13
SELECT firstName, lastName, title
FROM employees;

-- Question Number 14
SELECT firstName, lastName, title, salary
FROM employees
WHERE salary BETWEEN 2000 AND 2500;

-- Question Number 15
SELECT * FROM suppliers;

-- Question Number 16
SELECT supplierID, productName
FROM products
WHERE SupplierID = 4;

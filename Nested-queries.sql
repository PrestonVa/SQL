-- Question 1

SELECT productName, UnitPrice
FROM products
WHERE UnitPrice = (SELECT MAX(UnitPrice)
                    FROM products);

-- Question 2

SELECT  orderId, shipName, shipAddress, ShipVia
FROM orders
 WHERE ShipVia IN (SELECT ShipperID
                    FROM shippers
                    WHERE ShipperID = 3);

-- Question 3
 
 SELECT o.productID, o.OrderID
 FROM `order details` as o
 WHERE o.ProductID IN(SELECT p.ProductID
				     FROM  products as p
                     WHERE p.productID = 34);
 
-- Question 4
 
 SELECT firstName, lastName, EmployeeID
 FROM employees
 WHERE EmployeeID IN (SELECT o.EmployeeID
					 FROM orders o
                     WHERE o.EmployeeID = 3);
 
-- Question 5
 
SELECT CompanyName, customerID
 FROM customers
 WHERE customerID IN (SELECT o.CustomerID
					 FROM orders o
                     WHERE o.CustomerID = "WARTH");
 
-- Question 1

SELECT productID, productName, unitPrice, categoryName
FROM products
INNER JOIN categories
ON products.CategoryID = categories.CategoryID
ORDER BY CategoryName, ProductName;

-- Question 2

SELECT productID, productName, UnitPrice, CompanyName
FROM products
Left JOIN suppliers
ON products.SupplierID = suppliers.SupplierID
WHERE UnitPrice >= 75
ORDER BY ProductName;

-- Question 3

SELECT p.productID, p.productName,
 p.unitPrice, c.categoryName, s.CompanyName
FROM products p
INNER JOIN categories c
ON p.CategoryID = c.CategoryID
INNER JOIN suppliers s
on p.SupplierID = S.SupplierID
ORDER BY p.ProductName;

-- Question 4

SELECT p.ProductName, c.CategoryName
FROM products as p
JOIN categories as c
ON p.CategoryID = c.CategoryID
WHERE p.UnitPrice = (SELECT max(UnitPrice)
                   FROM products);



-- Question 5

SELECT o.orderID, o.shipName, o.shipAddress,
 s.companyName
 FROM orders o
 LEFT JOIN shippers s
 ON o.ShipVia = s.ShipperID
 WHERE o.ShipCountry = "Germany";


-- Question 6

SELECT o.orderID, o.orderDate, o.shipName, o.shipAddress
FROM orders o
JOIN `order details` od
ON o.orderID = od.orderID
JOIN products p
ON p.productID = od.productID
WHERE p.productname = "Sasquatch Ale";
INSERT INTO suppliers
(SupplierID, companyname,
contactname, contacttitle, address, city, postalcode,
 country, phone, fax, homepage)
VALUES (30, "Preston's Enterprises",
"Preston Vang", "Production Manager",
"123 ABC Lane", "Charlotte", "28216",
"USA", "704-444-4444", "803-333-3333",
"prestonenterprises.com");

INSERT INTO products
VALUES ( 78, "Lobster", 30, 8, 35,
100.00, 20, 5, 5, 0);

SELECT p.productname, s.companyname
FROM products p
JOIN suppliers s
ON p.supplierid = s.supplierid;

UPDATE products
SET unitprice = unitprice + (unitprice * 0.15)
WHERE productid = 78;

SELECT productname, unitprice
FROM products
WHERE supplier1d = 30;

DELETE FROM products
WHERE productid = 78;

DELETE FROM suppliers
WHERE supplierid = 30;

SELECT *
FROM products;

SELECT *
FROM suppliers;
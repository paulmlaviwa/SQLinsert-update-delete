-- Create a new folder called insert-update-delete to hold your •sql scripts. 
-- Let's continue working with Northwind. 
-- 1. Add a new supplier. 
INSERT INTO suppliers(CompanyName, ContactName, ContactTitle, Address, City, PostalCode, Country, Phone)
VALUES ("PJ Eatery", "Paul Mlaviwa II", "Logistics Manager", "1075 Goodman Cir, Apt J", "Gastonia", "28054", "USA", "70400902854");

-- 2. Add a new product provided by that supplier 
INSERT INTO products(ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued)
VALUES ("Ukwaju", 30, 1, "12 16oz bottles", 18.00, 50, 0, 10, 0);

-- 3. List all products and their suppliers.
SELECT p.ProductName, s.CompanyName AS Supplier
FROM products AS p
JOIN suppliers AS s
ON p.SupplierID = s.SupplierID;
 
-- 4. Raise the price of your new product by 15%.
UPDATE products
SET UnitPrice = (15/100*18.00) + 18.00
WHERE  ProductID = 78;

-- 5. List the products and prices of all products from that supplier.
SELECT ProductName, UnitPrice
FROM products AS p
JOIN suppliers AS s ON p.SupplierID = s.SupplierID
WHERE s.SupplierID = 30;


-- 6. Delete the new product. 
DELETE FROM products
WHERE ProductID = 78;

-- 7. Delete the new supplier. 
DELETE FROM suppliers
WHERE SupplierID = 30;

-- 8. List all products. 
SELECT ProductName
FROM products;

-- 9. List all suppliers.
SELECT CompanyName
FROM suppliers;
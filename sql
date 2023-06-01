-- create
CREATE TABLE Supplier (
  Sup_No INT PRIMARY KEY,
  Sup_Name VARCHAR(50),
  Item_Supplied VARCHAR(50),
  Item_Price DECIMAL(10, 2),
  City VARCHAR(50)
);
--a
SELECT Sup_No, Sup_Name
FROM Supplier
WHERE Sup_Name LIKE 'S%';
--b
ALTER TABLE Supplier
ADD CONTACTNO VARCHAR(20);
--c
SELECT Sup_No, Sup_Name, Item_Price
FROM Supplier
WHERE City = 'Chennai'
ORDER BY Item_Price ASC;
--d
CREATE VIEW SupplierView AS
SELECT Sup_No, Sup_Name
FROM Supplier;
--e
CREATE PROCEDURE UpdateItemPrice(
  IN p_Sup_No INT,
  IN p_Item_Price DECIMAL(10, 2)
)
BEGIN
  UPDATE Supplier
  SET Item_Price = p_Item_Price
  WHERE Sup_No = p_Sup_No;
END;
--add
CALL UpdateItemPrice(123, 9.99);
-- fetch 
SELECT * FROM Supplier;

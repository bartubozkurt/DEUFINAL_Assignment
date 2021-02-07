-------------------------SORU1-------------------------

CREATE PROC soru1(@urun varchar(30) = 'Wimmers gute Semmelknödel')
AS
BEGIN
SELECT s.CompanyName FROM Supplier s,Product p 
WHERE s.Id=p.SupplierId and p.ProductName = @urun
END
-------------------------SORU2-------------------------

CREATE PROC soru2(@fiyat int = 30)
AS
BEGIN
SELECT AVG(p.UnitPrice) FROM Product p 
WHERE p.UnitPrice > @fiyat    
END

------------------------SORU3--------------------------

CREATE PROC soru3(@fiyat int = 38)
AS
BEGIN
SELECT AVG(p.UnitPrice) FROM Product p ,Customer c ,"Order" o , OrderItem oi
WHERE o.CustomerId=c.Id AND p.Id=oi.ProductId AND p.UnitPrice < @fiyat
END

-------------------------SORU4-------------------------

CREATE PROC soru4(@urun nvarchar(30) = 'Wimmers gute Semmelknödel')
AS
BEGIN
SELECT SUM(o.Quantity) FROM Product p,OrderItem o 
WHERE o.ProductId=p.Id AND @urun = p.ProductName
END

-------------------------SORU5-------------------------

ALTER PROC soru5(@urun nvarchar(30) = 'Wimmers gute Semmelknödel')
AS
BEGIN
SELECT COUNT(o.OrderId) FROM Product p,OrderItem o 
WHERE o.ProductId=p.Id AND @urun = p.ProductName
END

-------------------------SORU6-------------------------

ALTER PROC soru6(@urun nvarchar(30) = 'Wimmers gute Semmelknödel')
AS
BEGIN	 
SELECT p.ProductName FROM Product p,OrderItem o 
WHERE o.ProductId=p.Id AND @urun=p.ProductName
GROUP BY o.OrderId,p.ProductName
END

-------------------------SORU7-------------------------

CREATE PROC soru7(@ulke nvarchar(15) = 'Germany')
AS
BEGIN
SELECT SUM(o.TotalAmount) FROM "Order" o,Customer c 
WHERE c.Id=o.CustomerId AND c.Country = @ulke
END

-------------------------SORU8-------------------------

CREATE PROC soru8(@ulke nvarchar(15) = 'USA')
AS
BEGIN
SELECT COUNT(o.Id) FROM "Order" o,Customer c
WHERE c.Id=o.CustomerId AND c.Country = @ulke
END

-------------------------SORU9-------------------------
CREATE PROC soru9(@musteri nvarchar(50) = 'Hanna')
AS 
BEGIN
SELECT o.Id , o.OrderDate FROM "Order" o,Customer c 
WHERE c.Id=o.CustomerId and c.FirstName = @musteri 
ORDER BY o.OrderDate
END

-------------------------SORU10-------------------------

CREATE PROC soru10(@sirketİsmi nvarchar(20) = 'New England Seafood Cannery')
As
BEGIN
SELECT p.ProductName, o.OrderDate FROM "Order" o, Customer c, OrderItem oitem, Product p 
WHERE c.Id = o.CustomerId and c.FirstName = @sirketİsmi AND oitem.OrderId = o.Id AND oitem.ProductId = p.ProductName 
ORDER BY  o.OrderDate 
END


/* Bartu Bozkurt - 2017280013 - Bilgisayar Bilimleri */
-------------------------SORU1-------------------------

SELECT * FROM Customer ORDER BY City

-------------------------SORU2-------------------------

SELECT FirstName,LastName,SUM(TotalAmount) AS "Toplam ödedikleri miktar" FROM Customer 
	INNER JOIN "Order" ON Customer.Id="Order".CustomerId
GROUP BY FirstName,LastName

-------------------------SORU3-------------------------

SELECT TOP 1 FirstName,LastName,TotalAmount FROM Customer,"Order" 
WHERE Customer.Id="Order".CustomerId 
ORDER BY TotalAmount DESC

-------------------------SORU4-------------------------

SELECT FirstName,LastName,SUM(Quantity) AS UrunMiktarı FROM Customer
	INNER JOIN "Order" ON Customer.Id="order".CustomerId
	INNER JOIN OrderItem ON "Order".Id=OrderItem.OrderId 
GROUP BY FirstName,LastName

-------------------------SORU5-------------------------

SELECT c.FirstName, p.ProductName,SUM(p.Id) FROM "Order" o,Customer c ,OrderItem Oi,Product p 
WHERE c.Id=o.CustomerId AND  p.Id=Oi.ProductId AND Oi.OrderId=o.Id
GROUP BY c.FirstName,p.ProductName
ORDER BY c.FirstName

-------------------------SORU6-------------------------

SELECT FirstName,LastName,c.ProductName FROM Customer,"Order",OrderItem,Product c
WHERE Customer.Id="Order".CustomerId and "Order".Id=OrderItem.OrderId and OrderItem.ProductId=c.Id
GROUP BY FirstName,LastName,ProductName

-------------------------SORU7-------------------------

SELECT OrderDate,ProductName FROM "Order"
	INNER JOIN OrderItem ON "Order".Id=OrderItem.OrderId
	INNER JOIN Product ON OrderItem.ProductId=Product.Id
GROUP BY OrderDate,ProductName

-------------------------SORU8-------------------------

SELECT * FROM Product ORDER BY UnitPrice ASC

-------------------------SORU9-------------------------

SELECT DISTINCT Country FROM Customer

-------------------------SORU10-------------------------

SELECT "Order".Id,COUNT(OrderItem.ProductId) FROM "Order",OrderItem
WHERE "Order".Id=OrderItem.OrderId
GROUP BY "Order".Id

/* Bartu Bozkurt - 2017280013 - Bilgisayar Bilimleri */
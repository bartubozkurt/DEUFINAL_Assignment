-------------------------SORU1-------------------------
Select Supplier.CompanyName from Supplier,Customer
where Supplier.Country=Customer.Country AND Customer.Id > 10
Group By CompanyName
-------------------------SORU2-------------------------
SELECT [Order].Id "Order ID", COUNT(OrderItem.ProductId) "Ürün Çeşidi Sayısı" FROM [Order], OrderItem
WHERE TotalAmount > (SELECT AVG(TotalAmount) FROM [Order]) AND [Order].Id = OrderItem.OrderId
GROUP BY [Order].Id  
-------------------------SORU3-------------------------
SELECT TOP 10 Product.Id, Product.ProductName,Product.UnitPrice, AVG(OrderItem.Quantity) "Satış Adedi" FROM Product, OrderItem
WHERE OrderItem.ProductId = Product.Id
GROUP BY Product.Id, Product.ProductName, Product.UnitPrice ORDER BY Product.UnitPrice DESC
-------------------------SORU4-------------------------
SELECT c.FirstName, c.LastName, c.Country FROM Customer c, Supplier s
WHERE c.Country = s.Country
GROUP BY c.FirstName, c.LastName, c.Country HAVING COUNT(s.Country) > 1
ORDER BY c.Country
-------------------------SORU5-------------------------
SELECT Supplier.CompanyName, Product.ProductName FROM Supplier, Product
WHERE Supplier.Id = Product.SupplierId
-------------------------SORU6-------------------------
SELECT c.FirstName + ' ' + c.LastName "Customer Name", SUM(o.TotalAmount) "Toplam Fiyat" FROM Customer c, [Order] o
WHERE LEN(c.Country) = '3' AND c.Id = o.CustomerId
GROUP BY c.FirstName, c.LastName
-------------------------SORU7-------------------------
SELECT o.OrderDate, c.Phone FROM [Order] o, Customer c
WHERE c.Id = o.CustomerId AND o.OrderDate = (SELECT MAX(o.OrderDate) FROM [Order] o)
GROUP BY o.OrderDate, c.Phone
-------------------------SORU8-------------------------
SELECT Product.ProductName, SUM(OrderItem.Quantity)
FROM Product, OrderItem WHERE Product.Id = OrderItem.ProductId
GROUP BY Product.ProductName
-------------------------SORU9-------------------------
SELECT Product.ProductName, COUNT(OrderItem.ProductId) FROM Product, OrderItem
WHERE Product.Id = OrderItem.ProductId
GROUP BY Product.ProductName
-------------------------SORU10-------------------------
SELECT Product.Id, COUNT(DISTINCT [Order].CustomerId) "En ucuz urun satis adedi" FROM [Order], Product, OrderItem
WHERE Product.UnitPrice = (SELECT MIN(UnitPrice) FROM Product) AND [Order].Id = OrderItem.OrderId AND OrderItem.ProductId = Product.Id
GROUP BY Product.Id

/* Bartu Bozkurt - 2017280013 - Bilgisayar Bilimleri */
SELECT Customers.CustomerName, Products.ProductName, Products.Price ,COUNT(Orders.OrderID)
FROM Customers
INNER JOIN Orders
	ON Customers.CustomerID = Orders.CustomerID
INNER JOIN OrderDetails
	ON Orders.OrderID = OrderDetails.OrderID
INNER JOIN Products 
	ON OrderDetails.ProductID = Products.ProductID
GROUP BY Customers.CustomerName,Products.ProductName,Products.Price
;
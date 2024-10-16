SELECT CustomerName,
COUNT(OrderID)
FROM Customers 
INNER JOIN Orders
	ON Customers.CustomerID = Orders.CustomerID
GROUP BY CustomerName
;
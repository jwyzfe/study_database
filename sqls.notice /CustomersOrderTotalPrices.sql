SELECT CCC.CustomerName, 
       CCC.Country, 
       SUM(OrderDetails.Quantity * Products.Price) AS TotalAmount
FROM (
    SELECT CustomerID, CustomerName, Country
    FROM Customers
    WHERE CustomerID IN (5, 10, 22)
) AS CCC
LEFT JOIN Orders
    ON CCC.CustomerID = Orders.CustomerID
LEFT JOIN OrderDetails
    ON Orders.OrderID = OrderDetails.OrderID
LEFT JOIN Products
    ON OrderDetails.ProductID = Products.ProductID
GROUP BY CCC.CustomerName, CCC.Country
ORDER BY TotalAmount DESC
; 
SELECT SupplierName, COUNT(O.OrderID) AS OrderCount
FROM Orders AS O
LEFT JOIN OrderDetails AS OD
	ON O.OrderID = OD.OrderID
LEFT JOIN Products AS P
	ON OD.ProductID = P.ProductID
LEFT JOIN Suppliers AS S
	ON P.SupplierID = S.SupplierID
GROUP BY SupplierName
ORDER BY OrderCount DESC


;
        
        
        
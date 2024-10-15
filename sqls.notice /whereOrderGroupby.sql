#EmployeeID가 7,9 직원에 주문 갯수를 각각 표시
#
SELECT EmployeeID, COUNT(*) AS OrderCount
FROM Orders
WHERE EmployeeID IN (7, 9)
GROUP BY EmployeeID
;
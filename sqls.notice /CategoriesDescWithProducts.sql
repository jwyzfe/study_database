SELECT PRO_TB.CNT, Categories.CategoryName
FROM (SELECT CategoryID, COUNT(ProductID) AS CNT
    FROM Products
    GROUP BY CategoryID) AS PRO_TB 
INNER JOIN Categories 
    ON PRO_TB.CategoryID = Categories.CategoryID
ORDER BY PRO_TB.CNT DESC
;
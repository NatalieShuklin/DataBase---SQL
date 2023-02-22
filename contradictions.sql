SELECT DISTINCT s1.transactionno, s1.productno
FROM sales s1, sales s2
 WHERE (s1.TransactionNo = s2.TransactionNo and (s1.Date != s2.Date or s1.CustomerNo!=s2.CustomerNo)) or
  (s1.ProductNo = s2.ProductNo and s1.ProductName != s2.ProductName) or
  (s1.CustomerNo = s2.CustomerNo and s1.Country != s2.Country)
ORDER BY TransactionNo ASC, ProductNo ASC;
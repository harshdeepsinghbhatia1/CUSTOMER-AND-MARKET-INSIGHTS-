SELECT 
    d.EnglishCountryRegionName AS Region,
    SUM(f.SalesAmount) AS TotalSales
FROM FactInternetSales f
JOIN DimCustomer c ON f.CustomerKey = c.CustomerKey
JOIN DimGeography d ON c.GeographyKey = d.GeographyKey
GROUP BY d.EnglishCountryRegionName

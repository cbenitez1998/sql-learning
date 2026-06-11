-- ===========================
-- Análisis general de productos
-- ===========================

-- Top 10 productos por ventas totales
SELECT Product_Name, SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 10;

-- Top 10 productos por ganancias totales
SELECT Product_Name, SUM(Profit) AS Total_Profit
FROM Superstore
GROUP BY Product_Name
ORDER BY Total_Profit DESC
LIMIT 10;

-- Top 10 productos menos rentables
SELECT Product_Name, SUM(Profit) AS Total_Profit
FROM Superstore
GROUP BY Product_Name
ORDER BY Total_Profit ASC
LIMIT 10;

-- ===========================
-- Análisis por categoría
-- ===========================

-- Ventas totales por categoría
SELECT Category, SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY Category
ORDER BY Total_Sales DESC;

-- Ganancias totales por categoría
SELECT Category, SUM(Profit) AS Total_Profit
FROM Superstore
GROUP BY Category
ORDER BY Total_Profit DESC;

-- Margen de ganancia por categoría (%)
SELECT Category, ((SUM(Profit) / SUM(Sales)) * 100.0) AS Margin
FROM Superstore
GROUP BY Category
ORDER BY Margin DESC;

-- Descuento total acumulado por categoría
SELECT Category, SUM(Discount) AS Total_Discount
FROM Superstore
GROUP BY Category
ORDER BY Total_Discount DESC;

-- Descuento promedio por categoría (%)
SELECT Category, (AVG(Discount) * 100.0) AS Average_Discount
FROM Superstore
GROUP BY Category
ORDER BY Average_Discount DESC;

-- Ventas promedio por categoría
SELECT Category, AVG(Sales) AS Average_Sales
FROM Superstore
GROUP BY Category
ORDER BY Average_Sales DESC;

-- Ganancias promedio por categoría
SELECT Category, AVG(Profit) AS Average_Profit
FROM Superstore
GROUP BY Category
ORDER BY Average_Profit DESC;

-- Unidades vendidas por categoría
SELECT Category, SUM(Quantity) AS Total_Quantity
FROM Superstore
GROUP BY Category
ORDER BY Total_Quantity DESC;

-- Ingreso promedio por unidad vendida
SELECT Category, (SUM(Sales) / SUM(Quantity)) AS Sales_Per_Unit
FROM Superstore
GROUP BY Category
ORDER BY Sales_Per_Unit DESC;

-- ===========================
-- Investigación de Furniture
-- ===========================

-- Ganancias totales por subcategoría de Furniture
SELECT Sub_Category, SUM(Profit) AS Total_Profit
FROM Superstore
WHERE Category = 'Furniture'
GROUP BY Sub_Category
ORDER BY Total_Profit DESC;

-- Ventas totales por subcategoría de Furniture
SELECT Sub_Category, SUM(Sales) AS Total_Sales
FROM Superstore
WHERE Category = 'Furniture'
GROUP BY Sub_Category
ORDER BY Total_Sales DESC;

-- Margen de ganancia por subcategoría de Furniture (%)
SELECT Sub_Category, ((SUM(Profit) / SUM(Sales)) * 100.0) AS Margin
FROM Superstore
WHERE Category = 'Furniture'
GROUP BY Sub_Category
ORDER BY Margin DESC;

-- Descuento total acumulado por subcategoría de Furniture
SELECT Sub_Category, SUM(Discount) AS Total_Discount
FROM Superstore
WHERE Category = 'Furniture'
GROUP BY Sub_Category
ORDER BY Total_Discount DESC;

-- Descuento promedio por subcategoría de Furniture (%)
SELECT Sub_Category, (AVG(Discount) * 100.0) AS Average_Discount
FROM Superstore
WHERE Category = 'Furniture'
GROUP BY Sub_Category
ORDER BY Average_Discount DESC;

-- ===========================
-- Investigación de Tables
-- ===========================

-- Número de registros de ventas en la subcategoría Tables
SELECT COUNT(*) AS Total_Records
FROM Superstore
WHERE Sub_Category = 'Tables';

-- Ventas de los productos de Tables (mayor a menor)
SELECT Product_Name, Sales
FROM Superstore
WHERE Sub_Category = 'Tables'
ORDER BY Sales DESC;

-- Ventas de los productos de Tables (menor a mayor)
SELECT Product_Name, Sales
FROM Superstore
WHERE Sub_Category = 'Tables'
ORDER BY Sales ASC;

-- Ganancias de los productos de Tables (mayor a menor)
SELECT Product_Name, Profit
FROM Superstore
WHERE Sub_Category = 'Tables'
ORDER BY Profit DESC;

-- Ganancias de los productos de Tables (menor a mayor)
SELECT Product_Name, Profit
FROM Superstore
WHERE Sub_Category = 'Tables'
ORDER BY Profit ASC;

-- Descuentos de los productos de Tables (menor a mayor)
SELECT Product_Name, Discount
FROM Superstore
WHERE Sub_Category = 'Tables'
ORDER BY Discount ASC;

-- Descuentos de los productos de Tables (mayor a menor)
SELECT Product_Name, Discount
FROM Superstore
WHERE Sub_Category = 'Tables'
ORDER BY Discount DESC;

-- Porcentaje de ventas rentables en Tables
SELECT ((SUM(Profit > 0) * 100.0) / COUNT(*)) AS Profitable_Sales_Percentage
FROM Superstore
WHERE Sub_Category = 'Tables';

-- Pérdida promedio de las ventas no rentables en Tables
SELECT AVG(Profit) AS Average_Profit
FROM Superstore
WHERE Sub_Category = 'Tables'
AND Profit < 0;

SELECT
    YEAR(STR_TO_DATE(`ORDER DATE`, '%m/%d/%Y %H:%i')) AS `Year`,
    QUARTER(STR_TO_DATE(`ORDER DATE`, '%m/%d/%Y %H:%i')) AS `Quarter`,
    MONTH(STR_TO_DATE(`ORDER DATE`, '%m/%d/%Y %H:%i')) AS `Month`,
    SUM(`SALES`) AS `Total_Sales`
FROM
    `sales data`
WHERE
    STR_TO_DATE(`ORDER DATE`, '%m/%d/%Y %H:%i') IS NOT NULL
GROUP BY
    `Year`, `Quarter`, `Month`
ORDER BY
    `Year` DESC, `Quarter` DESC, `Month` DESC;

    
    SELECT 
    `PRODUCTLINE`, 
    SUM(`SALES`) AS `Total_Sales`
FROM 
    `sales data`
GROUP BY 
    `PRODUCTLINE`
ORDER BY 
    `Total_Sales` DESC;

SELECT 
    `COUNTRY`, 
    SUM(`SALES`) AS `Total_Sales`
FROM 
    `sales data`
GROUP BY 
    `COUNTRY`
ORDER BY 
    `Total_Sales` DESC;

SELECT 
    `TERRITORY`, 
    SUM(`SALES`) AS `Total_Sales`
FROM 
    `sales data`
GROUP BY 
    `TERRITORY`
ORDER BY 
    `Total_Sales` DESC;

SELECT 
    AVG(`SALES`) AS `Average_Sales_Per_Order`
FROM 
    `sales data`;

SELECT 
    `CUSTOMERNAME`, 
    SUM(`SALES`) AS `Total_Sales`
FROM 
    `sales data`
GROUP BY 
    `CUSTOMERNAME`
ORDER BY 
    `Total_Sales` DESC;


DESCRIBE `sales data`;


SELECT 
    YEAR(STR_TO_DATE(`ORDER DATE`, '%m/%d/%Y %H:%i')) AS Year,
    MONTH(STR_TO_DATE(`ORDER DATE`, '%m/%d/%Y %H:%i')) AS Month,
    SUM(`SALES`) AS Total_Sales
FROM 
    `sales data`
WHERE 
    STR_TO_DATE(`ORDER DATE`, '%m/%d/%Y %H:%i') IS NOT NULL
GROUP BY 
    Year, Month
ORDER BY 
    Year DESC, Month DESC;
    
    
    SELECT
    PRODUCTLINE,
    SUM(`SALES`) AS `Total_Sales`
FROM
    `sales data`
WHERE
    STR_TO_DATE(`ORDER DATE`, '%m/%d/%Y %H:%i') IS NOT NULL
GROUP BY
    PRODUCTLINE
ORDER BY
    `Total_Sales` DESC
LIMIT 1;


SELECT
    PRODUCTLINE,
    SUM(`SALES`) AS `Total_Sales`
FROM
    `sales data`
WHERE
    STR_TO_DATE(`ORDER DATE`, '%m/%d/%Y %H:%i') IS NOT NULL
GROUP BY
    PRODUCTLINE
ORDER BY
    `Total_Sales` ASC
LIMIT 1;

    
    
SELECT
    `STATE`,
    EXTRACT(YEAR FROM STR_TO_DATE(`ORDER DATE`, '%m/%d/%Y %H:%i')) AS `Year`,
    EXTRACT(MONTH FROM STR_TO_DATE(`ORDER DATE`, '%m/%d/%Y %H:%i')) AS `Month`,
    SUM(`SALES`) AS `Total_Sales`
FROM
    `sales data`
WHERE
    STR_TO_DATE(`ORDER DATE`, '%m/%d/%Y %H:%i') IS NOT NULL
GROUP BY
    `STATE`, `Year`, `Month`
ORDER BY
    `Year` DESC, `Month` DESC, `STATE`;


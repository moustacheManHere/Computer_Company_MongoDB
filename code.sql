USE [CompAccInc_OLTPRam];

-- PRODUCTS
SELECT *
FROM PRODUCTS
FOR JSON PATH;

-- PRODUCT STOCK
SELECT 
    P.PRODUCT_ID, P.PRODUCT_NAME, W.WAREHOUSE_ID, L.LOCATION_ID, W.WAREHOUSE_NAME,
    L.LOCATION_ADDRESS, C.COUNTRY_NAME, R.REGION_NAME, Inv.QUANTITY
FROM PRODUCTS P 
JOIN INVENTORIES Inv ON P.PRODUCT_ID = Inv.PRODUCT_ID
JOIN WAREHOUSES W ON Inv.WAREHOUSE_ID = W.WAREHOUSE_ID
JOIN LOCATIONS L ON L.LOCATION_ID = W.LOCATION_ID
JOIN COUNTRIES C ON L.COUNTRY_ID = C.COUNTRY_ID
JOIN REGIONS R ON C.REGION_ID = R.REGION_ID
FOR JSON PATH;

-- PRODUCT SOLD
SELECT P.PRODUCT_ID, ISNULL(SUM(O.QUANTITY),0) as QUANTITY
FROM PRODUCTS P
LEFT JOIN ORDER_ITEMS O ON P.PRODUCT_ID = O.PRODUCT_ID
GROUP BY P.PRODUCT_ID
FOR JSON PATH;

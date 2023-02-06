/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [productkey],
       [productalternatekey]           AS "Item Code",
       [englishproductname]            AS "Product Name",
       [englishproductcategoryname]    AS "Product Category",
       [englishproductsubcategoryname] AS "Product Subcategory",
       [modelname]                     AS "Model Name",
       [englishdescription]            AS "English Description",
       [color],
       [size],
       Isnull (p.status, 'Outdated')   AS [Product Status]
FROM   [AdventureWorksDW2019].[dbo].[dimproduct]AS p
       LEFT JOIN dbo.dimproductsubcategory AS ps
              ON ps.productsubcategorykey = p.productsubcategorykey
       LEFT JOIN dbo.dimproductcategory AS pc
              ON ps.productcategorykey = pc.productcategorykey 


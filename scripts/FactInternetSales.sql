/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [productkey],
       [orderdatekey],
       [duedatekey],
       [shipdatekey],
       [customerkey]
       --,[PromotionKey]
       --,[CurrencyKey]
       --,[SalesTerritoryKey]
       ,
       [salesordernumber]
       --,[SalesOrderLineNumber]
       --,[RevisionNumber]
       --,[OrderQuantity]
       --,[UnitPrice]
       --,[ExtendedAmount]
       --,[UnitPriceDiscountPct]
       --,[DiscountAmount]
       --,[ProductStandardCost]
       --,[TotalProductCost]
       ,
       [salesamount]
--,[TaxAmt]
--,[Freight]
--,[CarrierTrackingNumber]
--,[CustomerPONumber]
--,[OrderDate]
--,[DueDate]
--,[ShipDate]
FROM   [AdventureWorksDW2019].[dbo].[factinternetsales]
WHERE  LEFT ([orderdatekey], 4) >= Year(Getdate()) - 2 -- Ensure that the script only fetches data within a range of 2 years from the date of running it.

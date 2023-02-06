/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [customerkey],
       [customeralternatekey]         AS [CM ID],
       [firstname]                    AS [First Name],
       [lastname]                     AS [Last Name],
       [firstname] + ' ' + [lastname] AS [Full Name],
       [numbercarsowned]              AS [Number of Cars Owned],
       [city],
       [stateprovincename]            AS [Province],
       [englishcountryregionname]     AS [Region],
       [birthdate]                    AS [Date of Birth],
       CASE [maritalstatus]
         WHEN 'M' THEN 'Married'
         WHEN 'S' THEN 'Single'
         ELSE 'Unspecified'
       END                            AS [Marital Status],
       CASE [gender]
         WHEN 'M' THEN 'Male'
         WHEN 'F' THEN 'Female'
         ELSE 'Others'
       END                            AS [Gender],
       [yearlyincome]                 AS [Annual Income],
       [totalchildren]                AS [Total Children],
       [englisheducation]             AS [Education Level],
       [englishoccupation]            AS [Occupation],
       CASE [houseownerflag]
         WHEN '1' THEN 'Yes'
         WHEN '0' THEN 'No'
         ELSE 'Unspecified'
       END                            AS [House Owner]
FROM   [AdventureWorksDW2019].[dbo].[dimcustomer] AS c
       LEFT JOIN [AdventureWorksDW2019].[dbo].[dimgeography] AS g
              ON g.[geographykey] = c.[geographykey] 
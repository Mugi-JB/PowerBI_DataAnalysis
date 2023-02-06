/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [datekey],
       [fulldatealternatekey] AS [Full Date]
       --,[DayNumberOfWeek]
       ,
       [englishdaynameofweek] AS [Day]
       --,[SpanishDayNameOfWeek]
       --,[FrenchDayNameOfWeek]
       --,[DayNumberOfMonth] AS [Day of the Month]
       --,[DayNumberOfYear]
       --,[WeekNumberOfYear]
       ,
       [englishmonthname]     AS [Month]
       --,[SpanishMonthName]
       --,[FrenchMonthName]
       --,[MonthNumberOfYear]
       ,
       [calendarquarter]      AS [Calendar Quarter],
       [calendaryear]         AS [Calendar Year]
       --,[CalendarSemester]
       ,
       [fiscalquarter]        AS [Fiscal Quarter]
	   --,[FiscalYear]
	   --,[FiscalSemester]
FROM   [AdventureWorksDW2019].[dbo].[dimdate]
WHERE  LEFT (datekey, 4) > Year(Getdate()) - 2 -- Ensure that the script only fetches data within a range of 2 years from the date of running it.

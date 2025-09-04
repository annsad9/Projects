-- DimDate_Clear --

SELECT [DateKey] ,
       [FullDateAlternateKey] AS Date ,
       [EnglishDayNameOfWeek] AS DAY ,
       [WeekNumberOfYear] AS WeekNo ,
       [EnglishMonthName] AS MONTH ,
       LEFT([EnglishMonthName], 3) AS MonthShort ,
       [MonthNumberOfYear] AS MonthNo ,
       [CalendarQuarter] AS QUARTER ,
       [CalendarYear] AS YEAR
FROM [AdventureWorksDW2022].[dbo].[DimDate]
WHERE CalendarYear>=YEAR(GETDATE())-2 -- always look at the last two years
  




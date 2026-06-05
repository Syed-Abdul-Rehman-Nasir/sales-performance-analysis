-- Cleaned DIM_Date / Calendar Table (Phase 4 Ready)

SELECT
    d.DateKey,
    d.FullDateAlternateKey AS [Date],

    d.EnglishDayNameOfWeek AS [Day],
    d.EnglishMonthName AS [Month],
    LEFT(d.EnglishMonthName, 3) AS [MonthShort],

    d.MonthNumberOfYear AS [MonthNo],
    d.CalendarQuarter AS [Quarter],
    d.CalendarYear AS [Year],

    d.DayNumberOfWeek,
    d.DayNumberOfMonth,
    d.DayNumberOfYear,
    d.WeekNumberOfYear
FROM dbo.DimDate AS d
WHERE
    d.CalendarYear >= (SELECT MIN(CalendarYear) FROM dbo.DimDate)
ORDER BY
    d.DateKey;
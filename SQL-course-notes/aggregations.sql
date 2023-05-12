--AGGREGATIONS SQL

--Common commands: These functions operate down columns, not across rows.
    --COUNT how many rows are in a particular column.
    --SUM adds together all values in a particular column. Only columns with numerical values.
    --MIN and MAX return the lowest and highest values in a particular column. Notice that MIN and MAX are aggregators that again ignore NULL values.
    --AVG calculates the average of all values in a particular column. This aggregate function again ignores the NULL values in both the numerator and the denominator.
    --NULL are a datatype that specifies where no data exists in SQL. = NULL doesn't work, NULL is not a values.
    --GROUP BY allows creating segments that will agregate independent from one another. It allows to takesum of data limitedto each account rather than across the entire dataset. The GROUP BY always goes between WHERE and ORDER BY.
    
--Exmaples: Without []
    SELECT [column or columns or *] FROM [table] WHERE [column or columns or *] IS NULL;
    SELECT [column or columns or *] FROM [table] WHERE [column or columns or *] IS NOT NULL;
    SELECT COUNT([column or columns or *]) FROM [table] WHERE [conditional];
    SELECT SUM([column or columns or *]) AS [alias], SUM([column or columns or *]) AS [alias], ... FROM [table];
    SELECT MIN([column or columns or *]) AS [alias], MAX([column or columns or *]) AS [alias], ... FROM [table];
    SELECT AVG([column or columns or *]) AS [alias], MAX([column or columns or *]) AS [alias], ... FROM [table];
    SELECT [column or columns or *], SUM([column or columns or *]) AS [alias], ... FROM [table] GROUP BY [first column in SELECT]; 

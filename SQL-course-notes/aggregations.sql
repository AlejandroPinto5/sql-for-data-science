--AGGREGATIONS SQL

--Common commands: These functions operate down columns, not across rows.
    --COUNT how many rows are in a particular column.
    --SUM adds together all values in a particular column. Only columns with numerical values.
    --MIN and MAX return the lowest and highest values in a particular column. Notice that MIN and MAX are aggregators that again ignore NULL values.
    --AVG calculates the average of all values in a particular column. This aggregate function again ignores the NULL values in both the numerator and the denominator.
    --NULL are a datatype that specifies where no data exists in SQL. = NULL doesn't work, NULL is not a values.
    --GROUP BY allows creating segments that will agregate independent from one another. It allows to takesum of data limitedto each account rather than across the entire dataset. The GROUP BY always goes between WHERE and ORDER BY.
    --DISTINCT is always used in SELECT statements, and it provides the unique rows for all columns written in the SELECT statement. 
    --HAVING is the “clean” way to filter a query that has been aggregated, but this is also commonly done using a subquery. Any time you want to perform a WHERE on an element of your query that was created by an aggregate, you need to use HAVING instead.
    --DATE_TRUNC allows you to truncate your date to a particular part of your date-time column. Common trunctions are day, month, and year. 
    --DATE_PART can be useful for pulling a specific portion of a date, but notice pulling month or day of the week (dow) means that you are no longer keeping the years in order.
    --DATE_PART can be useful for pulling a specific portion of a date, but notice pulling month or day of the week (dow) means that you are no longer keeping the years in order.
    --CASE WHEN ELSE END statement always goes in the SELECT clause.
    
--Examples: Without []
    SELECT [column or columns or *] FROM [table] WHERE [column or columns or *] IS NULL;
    SELECT [column or columns or *] FROM [table] WHERE [column or columns or *] IS NOT NULL;
    SELECT COUNT([column or columns or *]) FROM [table] WHERE [conditional];
    SELECT SUM([column or columns or *]) AS [alias], SUM([column or columns or *]) AS [alias], ... FROM [table];
    SELECT MIN([column or columns or *]) AS [alias], MAX([column or columns or *]) AS [alias], ... FROM [table];
    SELECT AVG([column or columns or *]) AS [alias], MAX([column or columns or *]) AS [alias], ... FROM [table];
    SELECT [column or columns or *], SUM([column or columns or *]) AS [alias], ... FROM [table] GROUP BY [column or columns]; 
    SELECT DISTINCT [column or columns or *] FROM table;
    SELECT [column or columns or *], SUM([column or columns *]) FROM [table] GROUP BY [column] HAVING SUM([column or columns or *]) [condicional]
    SELECT DATE_TRUNC('day', [column datetime data type]) AS [alias], ... FROM [table] GROUP BY DATE_TRUNC('day', [column datetime data type]) ORDER BY DATE_TRUNC('day, [column datetime data type])
    SELECT [column or oclumns or *] CASE [conditional or conditionals] END AS [alias] FROM [table]
-----------------------------------------------------------------------------------------------

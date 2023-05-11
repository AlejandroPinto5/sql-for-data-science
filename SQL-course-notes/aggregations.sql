--AGGREGATIONS SQL

--Common commands: These functions operate down columns, not across rows.
    --COUNT how many rows are in a particular column.
    --SUM adds together all values in a particular column. Only columns with numerical values.
    --MIN and MAX return the lowest and highest values in a particular column.
    --AVERAGE calculates the average of all values in a particular column.
    --NULL are a datatype that specifies where no data exists in SQL. = NULL doesn't work, NULL is not a values.
    
--Exmaples: Without []
    SELECT [column or columns or *] FROM [table] WHERE [column or columns or *] IS NULL;
    SELECT [column or columns or *] FROM [table] WHERE [column or columns or *] IS NOT NULL;
    SELECT COUNT([column or columns or *]) FROM [table] WHERE [conditional];
    SELECT SUM([column or columns or *]) AS [alias], SUM([column or columns or *]) AS [alias] ... FROM [table];


    

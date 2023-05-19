--SUBQUIERIES (INNER QUERIES OR NESTED QUERIES) SQL

-- Both subqueries and table expressions are methods for being able to write a query that creates a table, and then write a query that interacts with this newly created table.
-- Subqueries allow you to answer more complex questions than you can with a single database table. 
-- ctes can help break queries into separate components so that your query logic is more easily readable.
-- WITH statement is often called a Common Table Expression or CTE. Though these expressions serve the exact same purpose as subqueries
-- When creating multiple tables using WITH, you add a comma after every table leading to yuor final query.
-- The new table name is always aliased using 'table_name AS', which is followed by your query nested between parenthesis.

  --Examples: Without []
    SELECT [column or columns or * or aggregations] FROM ([query]) [alias];
    SELECT [column or columns or * or aggregations] FROM ([query]) [alias1] JOIN ([query]) [alias2] ON [alias_id1] = [alias_id2];
    WITH [alias] AS ([query]) SELECT [column or columns or * or aggregations] FROM [alias] GROUP BY ...  ORDER BY ...;

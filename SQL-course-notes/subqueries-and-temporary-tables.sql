--SUBQUIERIES (INNER QUERIES OR NESTED QUERIES) SQL

-- Both subqueries and table expressions are methods for being able to write a query that creates a table, and then write a query that interacts with this newly created table.
-- Subqueries allow you to answer more complex questions than you can with a single database table. 

  --Examples: Without []
    SELECT [column or columns or * or aggregations] FROM ([query]) [alias];
    SELECT [column or columns or * or aggregations] FROM ([query]) [alias1] JOIN ([query]) [alias2] ON [alias_id1] = [alias_id2];

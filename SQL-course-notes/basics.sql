--BASIC SQL WHAT YOU'D LIKE TO DO WITH THE DATA

-- Intro to SQL:
--          SQL queries can be run successfully whether characters are written in upper- or lower-case. In other words, SQL queries are not case-sensitive. 
--          It is common and best practice to capitalize all SQL commands, like SELECT and FROM, and keep everything else in your query lower case.
--          It is common to use underscores and avoid spaces in column names.

   -- Advantange: Many people can use at once
   --          Can be secured with encryption
   --          More Storage
   --          An entity relationship diagram (ERD) is a common way to view data in a database
   --          Consistent column types are one of the main reasons working with databases is fast
   
-- Tables:
--          records(rows) and fields(columns)
--          identifier is an unique value that identify a record

--Commands:
--          CREATE TABLE is a statement that creates a new table in a database.
--          DROP TABLE is a statement that removes a table in a database.

--          SELECT allows you to read data and display it. This is called a query. Commonly used. It indicates which column(s) you want to be given the data for.
--          FROM specifies from which table(s) you want to select the columns. Notice the columns need to exist in this table.
--	    LIMIT  is useful when you want to see just the first few rows of a table. This can be much faster for loading than if we load the entire dataset.
--	    ORDER BY allows us to sort our results using the data in any column.  always comes in a query after the SELECT and FROM statements, but before the LIMIT statement.
--	    DESC after ORDER BY shows in descendent order. Its opitional.
--	    WHERE command as filtering the data. we can display subsets of tables based on conditions that must be met. It's used with symbols: <, >, >=, <=, =, !=.

--          VARCHAR data type is very commonly used for storing strings.
--          NUMERIC data type is commonly used for mathematical operations.
--          INT data type is commonly used for storing numerical values.

	--Examples: Without [], columns are separate by comma
				SELECT [column or columns or *] FROM [table];
				SELECT [column or columns or *] FROM [table] LIMIT [number of rows];
				SELECT [column or columns or *] FROM [table] ORDER BY [column or columns] DESC(optional);
				SELECT [column or columns or *] FROM [table] ORDER BY [column or columns] DESC(optional), [column];
				SELECT [column or columns or *] FROM [table] WHERE [conditional];

--Arithmetic (and others) Operators: Not writable. Use parenthesis, recommended.
--			Creating a new column that is a combination of existing columns is known as a derived column. You can use *, /, +, -.
--			AS gives a name, or "alias" to your new column.
--			LIKE operator is extremely useful for working with text. The % tells us that we might want any number of characters leading up to a particular set of characters or following a certain set of characters.
--			IN operator works to find specific values from a specific column.
--			NOT operator is an extremely useful operator for working with the previous two operators we introduced: IN and LIKE. By specifying NOT LIKE or NOT IN, we can grab all of the rows that do not meet a particular criteria.
--			AND operator is used within a WHERE statement to consider more than one logical clause at a time.
--			BETWEEN is used with the word and with the symbols: >=, <=. See the example.
--			OR operator can combine multiple statements. It's a logical operator that allows you to select rows that satisfy either of two conditions.

	--Exmaples: Without [], columns are separate by comma
				SELECT [column][arithmetic operator][column or number] FROM [table];
				SELECT [column or columns or *] FROM [table] WHERE [column] LIKE '%[particular number or character]%';
				SELECT [column or columns or *] FROM [table] WHERE [column] LIKE '[character starts with]%';
				SELECT [column or columns or *] FROM [table] WHERE [column] LIKE '%[character finishes with]';
				SELECT [column or columns or *] FROM [table] WHERE [column] IN [(value, value,...)];
				SELECT [column or columns or *] FROM [table] WHERE [column] NOT LIKE '%[particular number or character]%';
				SELECT [column or columns or *] FROM [table] WHERE [column] NOT IN [(value, value,...)];
				SELECT [column or columns or *] FROM [table] WHERE [column] >= [value] AND [column] <= [value];
				SELECT [column or columns or *] FROM [table] WHERE [column] BETWEEN [value] AND [value];
				SELECT [column or columns or *] FROM [table] WHERE [column] NOT LIKE '%[particular number or character]%' AND [column] LIKE '%[particular number or character]%';
				SELECT [column or columns or *] FROM [table] WHERE [conditional] OR [conditional]
--------------------------------------------------------------------------------------------------------------------------------------

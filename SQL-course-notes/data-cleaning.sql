--DATA CLEANING

--Clean and re-structure messy data.
--Convert columns to different data types.
--Tricks for manipulating NULLs.

--LEFT pulls characters from the left side of the string and present them a separate string. it separates one column into another, taking account the characters.
--RIGHT pulls from the right side of the string and present as a separate string.
--LENGTH pulls the length of a string
--POSITION provides the position of a string counting from the left. It allows you to separate a sub-string.
--STRPOS provides the position of a string counting from left. It is a case sensitive function.
--SUBSTR 
--LOWER and UPPER used to lowercase or capitalize all characters of a string

  --EXAMPLE: without []
    SELECT [column], LEFT([column], [number of characters]) AS [alias]    FROM [table]
    SELECT [column], RIGHT(column], [number of characters]) AS [alias]    FROM [table]
    SELECT [column], LEFT([column], LENGTH([column]) - [number of characters]) AS [alias] FROM [table]
    SELECT [column], POSITION(',' IN [column]) AS [alias] FROM [table] --You can put another separate sign or letter instead of [,]
    SELECT [column], STRPOS([column], ',') AS [alias] FROM [table] --You can put another separate sign or letter instead of [,]
    SELECT LOWER([column]) AS [alias], UPPER([column]) AS [alias] FROM [table]
    SELECT LEFT([column], POSITION(',', IN [column])) AS [alias] FROM [table]

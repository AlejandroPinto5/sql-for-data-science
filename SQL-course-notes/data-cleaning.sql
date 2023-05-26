--DATA CLEANING

--Clean and re-structure messy data.
--Convert columns to different data types.
--Tricks for manipulating NULLs.

--LEFT pulls characters from the left side of the string and present them a separate string. it separates one column into another, taking account the characters.
--RIGHT pulls from the right side of the string and present as a separate string.
--LENGTH pulls the length of a string

  --EXAMPLE: without []
    SELECT [column], LEFT([column], [number of characters]) AS [alias]    FROM [table]
    SELECT [column], RIGHT(column], [number of characters]) AS [alias]    FROM [table]
    SELECT [column], LEFT([column], LENGTH([column]) - [number of characters]) AS [alias]    FROM [table]

--JOINS SQL WHY WOULD WE WANT TO SPLIT DATA INTO SEPARATE TABLES

--Intro:
    --Orders and accounts are different types of objects.
    --This allows quieries to execute more quickly.
    --If you are in charge of setting up a new database, it is important to have a thorough understanding of database normalization.
    --The PK here stands for primary key. A primary key exists in every table, and it is a column that has a unique value for every row.
    --A foreign key (FK) is a column in one table that is a primary key in a different table.
    
    --JOIN statements is to allow us to pull data from more than one table at a time. You will need to know how to specify tables and columns in the SELECT statement:
    --ON statement to specify a JOIN condition which is a logical statement to combine the table. It is a link for our PK to equal the FK.
    --ALIAS
    
        --Examples:
          SELECT [talbe].[column or columns or *] FROM [table] JOIN [table] ON [table].[column_id] = [table].[column_id];
          SELECT [talbe].[column or columns or *] FROM [table] JOIN [table] ON [table].[column_id] = [table].[column_id] JOIN [table] ON [table].[column] = [table].[column];

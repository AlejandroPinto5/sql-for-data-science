--The data is from campony paper (Parch and Posey). They have 50 salesreps spread across the United Statesin four regions.
--They sell three types of paper: regular, posterand glossy. theirclinets are primarily large Fortune 100 companies whom they attrack by advertising on Google, Facebook and Twitter.
--Here, It is presented the relational database.


--  web_events:                                                 sales_reps:
--  PK         id                                               PK          id
--  FK         account_id                                                   name
--             occurred_at                                      FK          region_id
--             channel
               
--  accounts:                                                   region:
--  PK         id                                               PK          id
--             name                                                         name
--             website
--             lat
--             long
--             primary_poc
--  FK         account_id

--  orders:
--  PK         id
--  FK         account_id
--             standard_qty
--             poster_qty
--             gloss_qty
--             total
--             occurred_at
--             standard_amt_usd
--             gloss_amt_usd
--             poster_amt_usd
--             total_amt_usd

--1. For each account, determine the average amount of each type of paper they purchased across their orders.
   --Your result should have four columns - one for the account name and one for the average spent on each of the paper types.

      SELECT a.name, AVG(o.standard_qty) avg_stand, AVG(o.gloss_qty) avg_gloss, AVG(o.poster_qty) avg_post
      FROM accounts a
      JOIN orders o
      ON a.id = o.account_id
      GROUP BY a.name;
     
--2. Which accounts used facebook as a channel to contact customers more than 6 times?
    
      SELECT a.id, a.name, w.channel, COUNT(*) use_of_channel
      FROM accounts a
      JOIN web_events w
      ON a.id = w.account_id
      GROUP BY a.id, a.name, w.channel
      HAVING COUNT(*) > 6 AND w.channel = 'facebook'
      ORDER BY use_of_channel;
      
--3. In which month of which year did Walmart spend the most on gloss paper in terms of dollars?

      SELECT DATE_TRUNC('month', o.occurred_at) ord_date, SUM(o.gloss_amt_usd) tot_spent
      FROM orders o 
      JOIN accounts a 
      ON a.id = o.account_id
      WHERE a.name = 'Walmart'
      GROUP BY 1
      ORDER BY 2 DESC
      LIMIT 1;
               
--4. We would like to identify top performing sales reps, which are sales reps associated with more than 200 orders or more than 750000 in total sales. 
  -- The middle group has any rep with more than 150 orders or 500000 in sales. 
  -- Create a table with the sales rep name, the total number of orders, total sales across all orders, and a column with top, middle, or low depending on this criteria. 
  -- Place the top sales people based on dollar amount of sales first in your final table. You might see a few upset sales people by this criteria!             
        
        SELECT s.name, COUNT(*), SUM(o.total_amt_usd) total_spent, 
              CASE WHEN COUNT(*) > 200 OR SUM(o.total_amt_usd) > 750000 THEN 'top'
              WHEN COUNT(*) > 150 OR SUM(o.total_amt_usd) > 500000 THEN 'middle'
              ELSE 'low' END AS sales_rep_level
        FROM orders o
        JOIN accounts a
        ON o.account_id = a.id 
        JOIN sales_reps s
        ON s.id = a.sales_rep_id
        GROUP BY s.name
        ORDER BY 3 DESC;     
               

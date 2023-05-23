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


--1. Provide the name of the sales_rep in each region with the largest amount of total_amt_usd sales.
    
    SELECT r.name, COUNT(o.total) total_orders
    FROM sales_reps s
    JOIN accounts a
    ON a.sales_rep_id = s.id
    JOIN orders o
    ON o.account_id = a.id
    JOIN region r
    ON r.id = s.region_id
    GROUP BY r.name
    HAVING SUM(o.total_amt_usd) = (
            SELECT MAX(total_amt)
            FROM (SELECT r.name region_name, SUM(o.total_amt_usd) total_amt
                    FROM sales_reps s
                    JOIN accounts a
                    ON a.sales_rep_id = s.id
                    JOIN orders o
                    ON o.account_id = a.id
                    JOIN region r
                    ON r.id = s.region_id
                    GROUP BY r.name) sub);
    
--2. For the account that purchased the most (in total over their lifetime as a customer) standard_qty paper, how many accounts still had more in total purchases?

    WITH t1 AS (
         SELECT a.name account_name, SUM(o.standard_qty) total_std, SUM(o.total) total
          FROM accounts a
          JOIN orders o
          ON o.account_id = a.id
          GROUP BY 1
          ORDER BY 2 DESC
          LIMIT 1), 
    t2 AS (
          SELECT a.name
          FROM orders o
          JOIN accounts a
          ON a.id = o.account_id
          GROUP BY 1
          HAVING SUM(o.total) > (SELECT total FROM t1))
    SELECT COUNT(*)
    FROM t2;
    
--3. How many accounts had more total purchases than the account name which has bought the most standard_qty paper throughout their lifetime as a customer?

    SELECT COUNT(*)
    FROM (SELECT a.name
              FROM orders o
              JOIN accounts a
              ON a.id = o.account_id
              GROUP BY 1
              HAVING SUM(o.total) > (SELECT total 
                          FROM (SELECT a.name act_name, SUM(o.standard_qty) tot_std, SUM(o.total) total
                                FROM accounts a
                                JOIN orders o
                                ON o.account_id = a.id
                                GROUP BY 1
                                ORDER BY 2 DESC
                                LIMIT 1) inner_tab)
                          ) counter_tab;
-----------------------------------------------------------------------------------------------------------

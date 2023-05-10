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
               
               
--  1.  Provide a table that provides the region for each sales_rep along with their associated accounts.
--      This time only for accounts where the sales rep has a last name starting with K and in the Midwest region. 
--      Your final table should include three columns: the region name, the sales rep name, and the account name. 
--      Sort the accounts alphabetically (A-Z) according to account name.

SELECT r.name AS Region, s.name AS Sales, a.name AS Account FROM region r
	JOIN sales_reps s ON s.region_id = r.id
    	JOIN accounts a ON a.sales_rep_id = s.id
      		WHERE s.name LIKE ' K%' AND r.name = 'Midwest'
	      		ORDER BY a.name;
 
-- 2. Provide the name for each region for every order, as well as the account name and the unit price they paid (total_amt_usd/total) for the order. 
--    However, you should only provide the results if the standard order quantity exceeds 100 and the poster order quantity exceeds 50. 
--    Your final table should have 3 columns: region name, account name, and unit price. 
--    Sort for the largest unit price first.
--    In order to avoid a division by zero error, adding .01 to the denominator here is helpful total_amt_usd/(total+0.01).
      
SELECT r.name region, a.name account, (o.total_amt_usd / (o.total + 0.01)) unitprice FROM region r
	JOIN sales_reps s ON s.region_id = r.id
    	JOIN accounts a ON a.sales_rep_id = s.id
    	JOIN orders o ON o.account_id = a.id
    		WHERE o.standard_qty > 100 AND poster_qty > 50
        	    	ORDER BY unitprice DESC; 

-- 3. Find all the orders that occurred in 2015. 
--    Your final table should have 4 columns: occurred_at, account name, order total, and order total_amt_usd.

SELECT o.occurred_at, a.name account, o.total, o.total_amt_usd FROM orders o
    JOIN accounts a ON o.account_id = a.id
    		WHERE o.occurred_at BETWEEN '01-01-2015' AND '12-31-2015'
            		ORDER BY o.occurred_at;



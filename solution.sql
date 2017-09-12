-- Get all users from Chicago.
SELECT * FROM syntax_practice WHERE city='chicago'; 

-- Get all users with usernames that contain the letter a.
SELECT * FROM syntax_practice WHERE username LIKE '%a%';

-- The bank is giving a new customer bonus! Update all records with an account balance of 0.00 and a transactions_attempted of 0. Give them a new account balance of 10.00.
UPDATE syntax_practice SET account_balance=10.00 WHERE transactions_attempted=0 AND account_balance=0;

-- Select all users that have attempted 9 or more transactions.
SELECT * FROM syntax_practice WHERE transactions_attempted > 8;

-- Get the username and account balance of the 3 users with the highest balances, sort highest to lowest balance. NOTE: Research LIMIT
-- not working
SELECT * FROM syntax_practice MAX(account_balance) LIMIT 3;
SELECT * FROM syntax_practice ORDER BY MAX(account_balance) ASC LIMIT 3 ;

-- Get the username and account balance of the 3 users with the lowest balances, sort lowest to highest balance.
-- Not Working
SELECT * FROM syntax_practice MIN(account_balance) LIMIT 3;

-- Get all users with account balances that are more than $100.
SELECT * FROM syntax_practice

-- Add a new record.
-- Untested
INSERT INTO syntax_practice(username, city, transactions_completed, transactions_attempted, account_balance)
VALUES('hunter', 0, 0, 666.00);


-- The bank is losing money in Miami and Phoenix and needs to unload low transaction customers: Delete users that reside in miami OR phoenix and have completed fewer than 5 transactions.
-- untested
DELETE * FROM syntax_practice WHERE city=('miami') OR city=('phoenix') AND account_transactions < 5;

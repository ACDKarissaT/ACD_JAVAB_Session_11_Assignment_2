USE bankdb;

-- q4.1a)
SELECT *
FROM customer
WHERE customer.customer_id IN 
	(SELECT accounts.customer_id
	FROM accounts
	WHERE account_type = "savings");
	

-- q4.1b)
SELECT customer.customer_name, customer.customer_address
FROM customer
WHERE customer.customer_id
IN
	(SELECT accounts.customer_id
	FROM accounts, loans
	WHERE accounts.account_number = loans.account_id
	AND loans.loan_amount > 50000);
	

-- q4.1c)
UPDATE customer
SET customer.customer_name = "ABC"
WHERE customer.customer_id IN
	(SELECT accounts.customer_id
	FROM accounts
	WHERE accounts.account_number = 'TU001');
	

-- q4.1d)
SELECT DISTINCT transactions.transaction_account AS account_number
FROM transactions
WHERE transactions.transaction_amount > 80000;


-- q4.1e)
SELECT count(*)
FROM accounts
WHERE accounts.account_type = 'fixed';


-- q4.1f)
SELECT *
FROM customer
WHERE customer.customer_id
IN (SELECT accounts.customer_id
	FROM accounts
	WHERE accounts.date_of_creation >= '2008-01-20'
	AND accounts.date_of_creation <= '2008-08-20');


-- q4.1g)
SELECT *
FROM transactions
WHERE transactions.transaction_date = '28-AUG-08';


-- q4.1h)
SELECT transactions.action, sum(transactions.transaction_amount)
FROM transactions
WHERE transactions.transaction_date = '29-AUG-08'
AND (transactions.action = 'deposit' OR transactions.action = 'withdraw')
GROUP BY transactions.action;


-- q4.1i)
SELECT *
FROM customer
WHERE customer.customer_id IN
	(SELECT accounts.customer_id
	FROM accounts, loans
	WHERE accounts.account_number = loans.account_id);
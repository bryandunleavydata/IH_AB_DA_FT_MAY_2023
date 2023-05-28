/*

Explore the bank database

*/

use bank;


-- How many clients and accounts are there, overall?


select count(c.client_id), count(a.account_id) from client as c 
inner join account as a
on c.district_id = a.district_id;

select count(c.client_id) from client as c ;	

select count(a.account_id) from account as a ;	


-- How many clients are "owners" and how many "disponents" of the accounts?

select count(b.disp_id) from disp as b 
inner join client as c
on b.client_id = c.client_id;

SET SQL_SAFE_UPDATES = 0;

-- Update the "account" table: translate the "frequency" values to English

update account
#set frequency = REPLACE(frequency, 'POPLATEK MESICNE', 'MONTHLY FEE')
set frequency = REPLACE(frequency, 'POPLATEK TYDNE', 'WEEKLY FEE')
#set frequency = REPLACE(frequency, 'POPLATEK PO OBRATU', 'FEE AFTER TURNOVER')
WHERE frequency LIKE '%POPLATEK%';	

#select replace(replace(frequency,'POPLATEK MESICNE', 'MONTHLY FEE'), 'POPLATEK TYDNE', 'WEEKLY FEE') from account


select distinct frequency from account;

-- Update the "order" table: translate the "remark" values to English

select * from `trans`;


-- Update the "trans" table: translate the values to English


-- Rename the columns on the "district" table to something that you can identify
-- https://dev.mysql.com/doc/refman/8.0/en/alter-table.html


-- How many clients & accounts are there by region?

select count(a.account_id), count(c.client_id), a.district_id from account as a 
left join client as c on a.district_id = c.district_id
group by a.district_id 
order by a.district_id;

-- Explore the loans given to clients

select loan_id, amount, c.client_id from loan as l
join account as a on a.account_id = l.account_id
join client as c on c.district_id = a.district_id
order by amount desc;
-- How could we define clients as valuable / not valuable?



-- Once you've defined how to classify clients as valuable / not valuable:
	-- describe both groups of clients based on information you'll find accross all tables
    -- (what type of client they are, where do they live, what type of card, etc.)
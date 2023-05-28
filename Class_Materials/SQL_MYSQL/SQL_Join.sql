

################################################## Inner Join 

/*SELECT ta.col_n, …., tb.col_m FROM table_a AS ta
INNER JOIN table_b AS tb
ON ta.col_x = tb.col_y */

use bank;

select * from loan;

select * from `account`;

-- Query for the two table account and loan, joining them on the account_id key.
select * from `account` as a
inner join loan as l on 
a.account_id = l.account_id;

### another version
select * from `account` as a
join loan as l using(account_id);

### shortest version
select * from `account` as a
join loan as l  
using(account_id);



### with an aggregation. For each account with a loan, how much has been paid towards the balancs

select sum(payments), loan_id from loan 
group by loan_id;

select l.account_id, l.loan_id, sum(l.payments) as amt_paid  from `loan` as l
join `account` as a using(account_id)
group by a.account_id, l.loan_id
having amt_paid > 2000
order by amt_paid desc;

################################################## Left Join
/*
SELECT ta.col_n, …., tb.col_m FROM table_a AS ta
LEFT JOIN table_b AS tb
ON ta.col_x = tb.col_y

*/
select * from bank.account as a
left join bank.loan as l              # take all the data from loan
on a.account_id = l.account_id;

################################################# Right Join
/*
SELECT ta.col_n, …., tb.col_m FROM table_a AS ta
RIGHT JOIN table_b AS tb
ON ta.col_x = tb.col_y;
*/

select * from bank.account as a
right join bank.loan as l 
on a.account_id = l.account_id;
# using (account_id)




################################################## Full outer Join
/*
SELECT ta.col_n, …., t_b.col_m FROM table_a AS ta
LEFT JOIN table_b AS tb
ON ta.col_x = tb.col_y
UNION
SELECT ta.col_n, …., t_b.col_m FROM table_a AS ta
RIGHT  JOIN table_b AS tb
ON ta.col_x = tb.col_y

*/
select * from `account` as a
left join bank.loan as l using(account_id)
union 
select * from bank.account as a
right join bank.loan as l 
on a.account_id = l.account_id;




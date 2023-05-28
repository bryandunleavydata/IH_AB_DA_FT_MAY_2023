#### DML statement 
INSERT INTO `sakila`.`actor`
(`actor_id`,
`first_name`,
`last_name`)
VALUES
(12345,
"Moritz",
"jost");

use sakila;
select * from actor 
where actor_id=12345;

##### UPDATE statement 
UPDATE `sakila`.`actor`
SET
`first_name` = "Rodrigo"
WHERE `actor_id` = 12345;


### DELETE Statement
DELETE FROM `sakila`.`actor`
WHERE `actor_id` = 12345;


#### DDL STATEMENTS 
#### CREATE TABLE 
CREATE TABLE `test` (
  `test_id` int NOT NULL AUTO_INCREMENT,
  `f_name` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`test_id`)
) ;

### Updating table 
ALTER TABLE `test`
ADD l_name VARCHAR(45) NOT NULL;

select * from test ;

###. Dropping table 
DROP TABLE test 



##### VIEWS IN SQL 
CREATE VIEW test_view AS 
SELECT first_name from actor join film_actor using(actor_id)
where film_id in (1,2,3,4,5,6,7,8,9,10)


SELECT *  from test_view



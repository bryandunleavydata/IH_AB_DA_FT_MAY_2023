![logo_ironhack_blue 7](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)

# Lab | SQL Queries - Join Two Tables

In this lab, you will be using the [Sakila](https://dev.mysql.com/doc/sakila/en/) database of movie rentals. If you need to get the data again, refer to the official [installation link](https://dev.mysql.com/doc/sakila/en/sakila-installation.html).

The database is structured as follows:
![DB schema](https://education-team-2020.s3-eu-west-1.amazonaws.com/data-analytics/database-sakila-schema.png)

### Instructions

1. Which actor has appeared in the most films? 

```Hint:  group by actor_id```

Expected output:
```shell
GINA DEGENERES	42
```
2. Most active customer (the customer that has rented the most number of films)

Expected output:
```shell
ELEANOR HUNT	46
```
3. List number of films per `category`.

Expected output:
```shell
Action	64
Animation	66
Children	60
Classics	57
Comedy	58
Documentary	68
Drama	62
Family	69
Foreign	73
Games	61
Horror	56
Music	51
New	63
Sci-Fi	61
Sports	74
Travel	57
```
4. Display the first and last names, as well as the address, of each staff member.

Expected output:
```shell
Mike	Hillyer		23 Workhaven Lane
Jon	Stephens	1411 Lillydale Drive
```
5. get films titles where the film language is either English or italian, 
and whose titles starts with letter "M" , sorted by title descending.

Expected output:
71 rows including
```shell
title,name
"MYSTIC TRUMAN",English
"MUSSOLINI SPOILERS",English
"MUSKETEERS WAIT",English
"MUSIC BOONDOCK",English
"MUSCLE BRIGHT",English
"MURDER ANTITRUST",English
"MUPPET MILE",English
"MUMMY CREATURES",English
"MULHOLLAND BEAST",English
```
6. Display the total amount rung up by each staff member in August of 2005.

Expected output:
```shell
Jon Stephens	12218.48
Mike Hillyer	11853.65
```
7. List each film and the number of actors who are listed for that film.

Expected output: Top 10 out of 997 rows
```shell
LAMBS CINCINATTI		15
CHITTY LOCK			13
CRAZY HOME			13
RANDOM GO			13
DRACULA CRYSTAL		13
BOONDOCK BALLROOM	13
MUMMY CREATURES		13
HELLFIGHTERS SIERRA	12
LONELY ELEPHANT		12
ARABIA DOGMA		12
```
8. Using the tables `payment` and `customer` and the JOIN command, list the total paid by each customer. List the customers alphabetically by last name.

Expected output:  Top 10 out of 599 rows
```shell
RAFAEL	ABNEY	97.79
NATHANIEL	ADAM	133.72
KATHLEEN	ADAMS	92.73
DIANA	ALEXANDER	105.73
GORDON	ALLARD	160.68
SHIRLEY	ALLEN	126.69
CHARLENE	ALVAREZ	114.73
LISA	ANDERSON	106.76
JOSE	ANDREW	96.75
IDA	ANDREWS	76.77
```

9. Write sql statement to check if you can find any actor who never particiapted in any film. 

Expect output: no actor found. 

10. Get the addresses that have NO customers, and end with the letter "e" 
```shell
address
"47 MySakila Drive"
"23 Workhaven Lane"
"1411 Lillydale Drive"
```

- **Optional**: what is the most rented film?

The answer is "Bucket Brotherhood" . <br>
This query might require using more than one join statement. Give it a try.


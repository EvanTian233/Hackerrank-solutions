/*
Revising Aggregations - The Count Function
https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem
Query a count of the number of cities in CITY having a Population larger than 100000.
*/
SELECT COUNT(DISTINCT(NAME)) FROM CITY
WHERE POPULATION > 100000;

/*
Revising Aggregations - The Sum Function
https://www.hackerrank.com/challenges/revising-aggregations-sum/problem?h_r=next-challenge&h_v=zen
Query the total population of all cities in CITY where District is California.
*/
SELECT SUM(POPULATION) FROM CITY
WHERE DISTRICT = 'California';

/*
Revising Aggregations - Averages
https://www.hackerrank.com/challenges/revising-aggregations-the-average-function/problem?h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
Query the average population of all cities in CITY where District is California.
*/
SELECT AVG(POPULATION) FROM CITY
WHERE DISTRICT = 'California';

/*
Average Population
https://www.hackerrank.com/challenges/average-population/problem?h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
Query the average population for all cities in CITY, rounded down to the nearest integer.
*/
SELECT FLOOR(AVG(POPULATION)) FROM CITY;

/*
Japan Population
https://www.hackerrank.com/challenges/japan-population/problem?h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.
*/
SELECT SUM(POPULATION) FROM CITY
WHERE COUNTRYCODE = 'JPN';

/*
Population Density Difference
https://www.hackerrank.com/challenges/population-density-difference/problem?h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
Query the difference between the maximum and minimum populations in CITY.
*/
SELECT MAX(POPULATION) - MIN(POPULATION) FROM CITY;

/*
The Blunder
https://www.hackerrank.com/challenges/the-blunder/problem
Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, but did not realize her keyboard's  key was broken until after completing the calculation. She wants your help finding the difference between her miscalculation (using salaries with any zeroes removed), and the actual average salary.
Write a query calculating the amount of error (i.e.: actural - miscalculated average monthly salaries), and round it up to the next integer.
*/
SELECT CEIL(AVG(Salary)-AVG(REPLACE(Salary,'0',''))) FROM EMPLOYEES;


/*
Top Earners
https://www.hackerrank.com/challenges/earnings-of-employees/problem
"group by 1" means - group by first column from SELECT . The same pattern could be used for ORDER BY
*/
select (salary * months)as earnings ,count(*) from employee 
group by 1 order by earnings desc limit 1;
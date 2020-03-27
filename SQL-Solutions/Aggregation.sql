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

/*
Weather Observation Station 2
https://www.hackerrank.com/challenges/weather-observation-station-2/problem?h_r=next-challenge&h_v=zen
Query the following two values from the STATION table:
The sum of all values in LAT_N rounded to a scale of 2 decimal places.
The sum of all values in LONG_W rounded to a scale of 2 decimal places.
*/
SELECT ROUND(SUM(LAT_N),2), ROUND(SUM(LONG_W),2) FROM STATION;

/*
Weather Observation Station 13
https://www.hackerrank.com/challenges/weather-observation-station-13/problem
Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than  and less than . Truncate your answer to 4 decimal places.
*/
SELECT TRUNCATE(SUM(LAT_N), 4) FROM STATION
WHERE LAT_N BETWEEN 38.7880 AND 137.2345;

/*
Weather Observation Station 14
https://www.hackerrank.com/challenges/weather-observation-station-14/problem
Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than . Truncate your answer to 4 decimal places.
*/
SELECT TRUNCATE(MAX(LAT_N),4) FROM STATION
WHERE LAT_N < 137.2345;

/*
Weather Observation Station 15
https://www.hackerrank.com/challenges/weather-observation-station-15/problem
Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than . Round your answer to 4 decimal places.
*/
SELECT ROUND(LONG_W,4) FROM STATION
WHERE LAT_N = (SELECT MAX(LAT_N) FROM STATION 
               WHERE LAT_N < 137.2345);

/*
Weather Observation Station 16
https://www.hackerrank.com/challenges/weather-observation-station-16/problem
Query the smallest Northern Latitude (LAT_N) from STATION that is greater than . Round your answer to 4 decimal places.
*/
SELECT ROUND(MIN(LAT_N),4) FROM STATION
WHERE LAT_N > 38.7780;

/*
Weather Observation Station 17
https://www.hackerrank.com/challenges/weather-observation-station-17/problem?h_r=next-challenge&h_v=zen
Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than . Round your answer to 4 decimal places.
*/
SELECT ROUND(LONG_W,4) FROM STATION
WHERE LAT_N = (SELECT MIN(LAT_N) FROM STATION 
               WHERE LAT_N > 38.7780);
               
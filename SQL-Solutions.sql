/*
Revising the Select Query I
https://www.hackerrank.com/challenges/revising-the-select-query/problem
*/
SELECT * FROM CITY
WHERE POPULATION > 100000
AND COUNTRYCODE = 'USA';


/*
Revising the Select Query II
https://www.hackerrank.com/challenges/revising-the-select-query-2/problem
*/
SELECT NAME FROM CITY
WHERE POPULATION > 120000
AND COUNTRYCODE = 'USA';


/*
Select All
https://www.hackerrank.com/challenges/select-all-sql/problem
*/
SELECT * FROM CITY;


/*
Select By ID
https://www.hackerrank.com/challenges/select-by-id/problem
*/
SELECT * FROM CITY
WHERE ID = 1661;

/*
Japanese Cities' Attributes
https://www.hackerrank.com/challenges/japanese-cities-attributes/problem
*/
SELECT * FROM CITY
WHERE COUNTRYCODE = 'JPN';

 
 /*
 Japanese Cities' Names
 https://www.hackerrank.com/challenges/japanese-cities-name/problem
*/
SELECT NAME FROM CITY
WHERE COUNTRYCODE = 'JPN';


/*
Weather Observation Station 1
https://www.hackerrank.com/challenges/weather-observation-station-1/problem
*/
SELECT CITY, STATE FROM STATION;

/*
Weather Observation Station 3
https://www.hackerrank.com/challenges/weather-observation-station-3/problem
*/
SELECT DISTINCT CITY FROM STATION
WHERE MOD(ID, 2) = 0
ORDER BY CITY;


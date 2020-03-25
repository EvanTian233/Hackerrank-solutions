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

/*
Weather Observation Station 4
https://www.hackerrank.com/challenges/weather-observation-station-4/problem
*/
SELECT COUNT(CITY) - COUNT(DISTINCT CITY) FROM STATION;

/*
Weather Observation Station 5
https://www.hackerrank.com/challenges/weather-observation-station-5/problem
*/
SELECT CITY, LENGTH(CITY) FROM STATION 
ORDER BY LENGTH(CITY), CITY LIMIT 1; 

select CITY, length(CITY) from station 
order by length(CITY) desc, city limit 1; 

/*
Weather Observation Station 6
https://www.hackerrank.com/challenges/weather-observation-station-6/problem
*/
SELECT DISTINCT city FROM station WHERE city REGEXP "^[aeiou].*";


/*
Weather Observation Station 7
https://www.hackerrank.com/challenges/weather-observation-station-7/problem
Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
*/
SELECT DISTINCT CITY FROM STATION 
WHERE LOWER(SUBSTR(CITY,LENGTH(CITY),1)) 
IN ('a','e','i','o','u');

/*
Weather Observation Station 8
https://www.hackerrank.com/challenges/weather-observation-station-8/problem
Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.
*/
select distinct city from station 
where left(city,1) in ('a','e','i','o','u') 
and right(city, 1) in ('a','e','i','o','u');

/*
Weather Observation Station 9
https://www.hackerrank.com/challenges/weather-observation-station-9/problem
Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
*/
SELECT DISTINCT CITY FROM STATION 
WHERE CITY NOT REGEXP '^[aeiou]';

/*
Weather Observation Station 10
https://www.hackerrank.com/challenges/weather-observation-station-10/problem
Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
*/
SELECT DISTINCT CITY FROM STATION 
WHERE CITY NOT REGEXP '[AEIOU]$';

/*
Weather Observation Station 11
https://www.hackerrank.com/challenges/weather-observation-station-11/problem
Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.
*/
select city from station 
where city not in (select city from station 
                   where left(city,1) in ('a','i','u','e','o') 
                   and right(city,1) in ('a','i','u','e','o')) 
                   group by city;


/*
Higher Than 75 Marks
https://www.hackerrank.com/challenges/more-than-75-marks/problem
Query the Name of any student in STUDENTS who scored higher than 75 Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.
*/
SELECT Name FROM STUDENTS
WHERE Marks > 75
ORDER BY RIGHT(NAME, 3), ID ASC;

/*
Employee Names
https://www.hackerrank.com/challenges/name-of-employees/problem?h_r=next-challenge&h_v=zen
Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.
*/
SELECT name FROM Employee
ORDER BY name ASC; 
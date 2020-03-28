/*
Asian Population
https://www.hackerrank.com/challenges/asian-population/problem
Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
*/
SELECT SUM(CI.Population) FROM CITY AS CI
INNER JOIN COUNTRY As CO
ON CI.Countrycode=CO.Code
WHERE CONTINENT = 'Asia';


/*
African Cities
https://www.hackerrank.com/challenges/african-cities/problem?h_r=next-challenge&h_v=zen
Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
*/
SELECT CI.NAME FROM CITY AS CI
INNER JOIN COUNTRY AS CO
ON CI.COUNTRYCODE = CO.CODE
WHERE CONTINENT = 'Africa';


/*
Average Population of Each Continent
https://www.hackerrank.com/challenges/average-population-of-each-continent/problem
Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
*/
SELECT country.continent, FLOOR(AVG(city.population)) 
FROM country 
INNER JOIN city 
ON city.countrycode = country.code 
GROUP BY country.continent;



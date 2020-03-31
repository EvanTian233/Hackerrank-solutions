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



/*
The Report
https://www.hackerrank.com/challenges/the-report/problem


CASE：
In MySql, CASE statement acts like a "if" condition, 
so if the expression after CASE statement matches the boolean value after WHEN clause, 
it executes the result after THEN clause; otherwise it will execute result after ELSE clause.
*/
SELECT (CASE g.grade>=8 WHEN TRUE 
        THEN s.name ELSE null END),
        g.grade,s.marks FROM students s 
        INNER JOIN grades g 
ON s.marks BETWEEN min_mark AND max_mark 
ORDER BY g.grade DESC,s.name,s.marks;


/*
Top Competitors
https://www.hackerrank.com/challenges/full-score/problem

Julia just finished conducting a coding contest, 
and she needs your help assembling the leaderboard! 
Write a query to print the respective hacker_id and name of hackers who achieved full scores for more than one challenge. 
Order your output in descending order by the total number of challenges in which the hacker earned a full score. 
If more than one hacker received full scores in same number of challenges, then sort them by ascending hacker_id.

*/
select h.hacker_id, h.name
from submissions s
inner join challenges c
on s.challenge_id = c.challenge_id
inner join difficulty d
on c.difficulty_level = d.difficulty_level 
inner join hackers h
on s.hacker_id = h.hacker_id
where s.score = d.score and c.difficulty_level = d.difficulty_level
group by h.hacker_id, h.name
having count(s.hacker_id) > 1
order by count(s.hacker_id) desc, s.hacker_id asc;




/*
Ollivander's Inventory
https://www.hackerrank.com/challenges/harry-potter-and-wands/problem

Harry Potter and his friends are at Ollivander's with Ron, finally replacing Charlie's old broken wand.
Hermione decides the best way to choose is by determining the minimum number of gold galleons needed to buy each non-evil wand of high power and age. 
Write a query to print the id, age, coins_needed, and power of the wands that Ron's interested in, sorted in order of descending power. 
If more than one wand has same power, sort the result in order of descending age.

*/

select a.id, b.age, a.coins_needed, a.power 
from Wands a 
inner join Wands_Property b 
on a.code=b.code 
where b.is_evil!=1 
and a.coins_needed=(select min(Wands.coins_needed) 
                    from Wands inner join Wands_Property 
                    on Wands.code=Wands_Property.code 
                    where Wands_Property.age=b.age 
                    and Wands.power=a.power) 
order by a.power desc,b.age desc;


/*
Challenges
https://www.hackerrank.com/challenges/challenges/problem

Julia asked her students to create some coding challenges. 
Write a query to print the hacker_id, name, and the total number of challenges created by each student. 
Sort your results by the total number of challenges in descending order. 
If more than one student created the same number of challenges, then sort the result by hacker_id. 
If more than one student created the same number of challenges and the count is less than the maximum number of challenges created, then exclude those students from the result.
*/
SELECT h.hacker_id, 
       h.name, 
       COUNT(c.challenge_id) AS c_count
FROM Hackers h
JOIN Challenges c ON c.hacker_id = h.hacker_id
GROUP BY h.hacker_id, h.name
HAVING c_count = 
    (SELECT COUNT(c2.challenge_id) AS c_max
     FROM challenges as c2 
     GROUP BY c2.hacker_id 
     ORDER BY c_max DESC limit 1)
OR c_count IN 
    (SELECT DISTINCT c_compare AS c_unique
     FROM (SELECT h2.hacker_id, 
                  h2.name, 
                  COUNT(challenge_id) AS c_compare
           FROM Hackers h2
           JOIN Challenges c ON c.hacker_id = h2.hacker_id
           GROUP BY h2.hacker_id, h2.name) counts
     GROUP BY c_compare
     HAVING COUNT(c_compare) = 1)
ORDER BY c_count DESC, h.hacker_id;
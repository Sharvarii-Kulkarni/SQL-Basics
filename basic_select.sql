/*basic select queries*/
SELECT * FROM CITY WHERE COUNTRYCODE='USA' AND POPULATION>100000;

SELECT * FROM CITY WHERE ID=1661

SELECT CITY,STATE FROM STATION;

SELECT CITY, LENGTH(CITY) AS name_length 
FROM STATION 
ORDER BY LENGTH(CITY) ASC, CITY ASC 
LIMIT 1;

SELECT CITY, LENGTH(CITY) AS name_length 
FROM STATION 
ORDER BY LENGTH(CITY) DESC, CITY ASC 
LIMIT 1;

/*LEFT() FUNCTION*/

SELECT DISTINCT CITY  
FROM STATION  
WHERE LEFT(CITY, 1) IN ('A', 'E', 'I', 'O', 'U');
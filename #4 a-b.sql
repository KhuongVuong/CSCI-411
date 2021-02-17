/* a
SELECT MIN(low) AS Min_Temp
FROM FORECAST
WHERE CITY = 'Duluth'; */

/* b they both display the same thing. im not sure which is correct
/*
SELECT consumers.pid, person.name 
FROM consumers
JOIN person on consumers.pid = person.pid
WHERE consumers.pid IN (SELECT views.pid
                        FROM views);

/*Another way for b
SELECT person.pid, person.name FROM person
WHERE person.pid IN (SELECT consumers.pid FROM consumers, views
                 WHERE consumers.pid = views.pid);
*/

/* c
SELECT DISTINCT streetaddress, city, state, MAX(temperature)
FROM Observations 
GROUP  BY streetaddress, city, state */







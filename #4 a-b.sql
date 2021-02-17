/* a
SELECT MIN(low) AS Min_Temp
FROM FORECAST
WHERE CITY = 'Duluth'; */

/* b */
/*
SELECT consumers.pid, person.name 
FROM consumers, person, views, address, forecast
WHERE consumers.pid = views.pid 
AND views.pid = person.pid 
AND person.pid = address.pid
AND views.fid = forecast.fid
AND address.city = forecast.city 
GROUP BY consumers.pid, person.name;
*/

/* c
SELECT DISTINCT streetaddress, city, state, MAX(temperature)
FROM Observations 
GROUP  BY streetaddress, city, state */







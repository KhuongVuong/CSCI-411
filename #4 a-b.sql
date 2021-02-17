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

/* d
SELECT records.fid,
COUNT(CASE method WHEN 'notebook' THEN 1 ELSE NULL END) AS "notebook",
COUNT(CASE method WHEN 'online' THEN 1 ELSE NULL END) AS "online"
FROM records , Forecast, Observations
WHERE records.fid = Forecast.fid AND records.oid = Observations.oid
GROUP BY records.fid, records.oid 
ORDER BY records.fid */





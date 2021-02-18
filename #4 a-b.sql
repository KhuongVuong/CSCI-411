
/* a */
SELECT MIN(low) AS Min_Temp
FROM FORECAST
WHERE CITY = 'Duluth'; 
/*Out put
  MIN_TEMP
----------
         7 */
/* b */
SELECT consumers.pid, person.name 
FROM consumers, person, viewed, livesat, forecast
WHERE consumers.pid = viewed.pid 
AND viewed.pid = person.pid 
AND person.pid = livesat.pid
AND viewed.fid = forecast.fid
AND livesat.city = forecast.city 
GROUP BY consumers.pid, person.name;
/*
OutPut
       PID NAME                
---------- --------------------
      3289 George  
*/


/* c */
SELECT DISTINCT streetaddress, city, state, MAX(temperature)
FROM Observations 
GROUP  BY streetaddress, city, state 
/*
Out put
STREETADDRESS        CITY                 STATE      Max_Temperature
-------------------- -------------------- ---------- ---------------
892 streetM          Minneapolis          MN                      38
65 streetS           St.Cloud             MN                      42
798 streetE          Duluth               MN                      19 */

/* d */
SELECT forecast.fid,
COUNT(CASE method WHEN 'notebook' THEN 1 ELSE NULL END) AS "notebook",
COUNT(CASE method WHEN 'online' THEN 1 ELSE NULL END) AS "online"
FROM records , forecast, observations
WHERE records.fid = forecast.fid AND records.oid = observations.oid
GROUP BY forecast.fid, records.oid 
ORDER BY forecast.fid */
/*
Out Put
FID          notebook     online
---------- ---------- ----------
F02                 1          0
F03                 1          1
F04                 1          1
F05                 1          0
F08                 0          1
F09                 0          1
F15                 1          0

7 rows selected. */




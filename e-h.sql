/* PROBLEM E */

SELECT DISTINCT address.streetaddress, address.city, address.state
FROM address,observers,observations,meteorologists,consumers
WHERE address.streetaddress NOT IN
    (SELECT OBSERVATIONS.streetAddress
    from observations)
AND address.pid NOT IN
    (SELECT meteorologists.pid
    from meteorologists)
AND address.pid NOT IN
    (SELECT consumers.pid
    from consumers)   
AND address.pid NOT IN
    (SELECT observers.pid
    from observers);
/* output: 6 street A, St.Paul, MN */   
/* correct because that is bill's address and he is an outsider */

/* PROBLEM F */
SELECT person.pid person.name, COUNT(DISTINCT viewed.fid) AS "Vcount", COUNT(DISTINCT presents.fid) AS "Pcount"
FROM person
LEFT OUTER JOIN viewed ON person.pid = viewed.pid
LEFT JOIN forecast ON viewed.fid = forecast.fid 
LEFT JOIN presents ON person.pid = presents.pid
GROUP BY person.pid person.name;
ORDER BY person.pid;
/* OutPut
       PID     Vcount     Pcount
---------- ---------- ----------
      2557          0          0
      3289          2          0
     10234          2          2
     11567          0          0
     17645          0          7
     74591          0          0
     88331          2          0

7 rows selected. 
*/

/* PROBLEM G */
SELECT observations.city, observations.ob_date, observations.temperature, forecast.low 
FROM observations, forecast
WHERE forecast.city = observations.city
AND forecast.forecast_date = observations.ob_date
AND forecast.low > observations.temperature /* FORECASTED LOW was higher than the actual temp */
ORDER BY observations.ob_date, observations.city;

SELECT wservice.wid, wservice.w_name, COUNT(DISTINCT forecast.fid) AS "Accurarate_Forecasts"
FROM observations, forecast, makes, wservice
WHERE forecast.city = observations.city
AND forecast.fid = makes.fid
AND observations.ob_date = forecast.forecast_date
AND wservice.wid = makes.wid
AND observations.temperature >= forecast.low
AND observations.temperature <= forecast.high
group by wservice.wid, wservice.w_name;

/*

       WID W_NAME                         Accurarate_Forecasts
---------- ------------------------------ --------------------
       200 Minnesota Weather Service                         1
       600 Canadian Weather Service                          1

*/

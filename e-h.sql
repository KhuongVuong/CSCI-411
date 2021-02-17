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

/* PROBLEM G */
SELECT observations.city, observations.ob_date, observations.temperature, forecast.low 
FROM observations, forecast
WHERE forecast.city = observations.city
AND forecast.forecast_date = observations.ob_date
AND forecast.low > observations.temperature /* FORECASTED LOW was higher than the actual temp */
ORDER BY observations.ob_date, observations.city;

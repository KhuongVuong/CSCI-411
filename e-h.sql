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

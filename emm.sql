/*For each observer, count the number of observations they recorded*/

SELECT observers.pid, COUNT(observations.pid) AS Numcount
FROM observers, observations
WHERE observations.pid = observers.pid
GROUP BY observers.pid;

/* OUTPUT

       PID   NUMCOUNT
---------- ----------
     11567          6
     88331          4
      3289          4

JUSTIFICATION:  the person id and number of observations is in the output

	
*/


/*List of all persons with the city they live in(id, name, city)*/

SELECT person.pid, person.name, livesat.city
FROM person, livesat
WHERE person.pid = livesat.pid
GROUP BY person.pid, person.name, livesat.city;

/*OUTPUT

       PID NAME                 CITY                
---------- -------------------- --------------------
     10234 Able                 Monticello          
     17645 Mary                 Monticello          
      2557 Bill                 St.Paul             
      3289 George               Minneapolis         
     11567 Baker                Monticello          
     88331 Alice                Monticello          
     74591 Jane                 Duluth              

7 rows selected. 

JUSTIFICATION:  the person id and name, the city name and number of person in list who is living in the city are in the output
/*



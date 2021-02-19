/*For each observer, count the number of observations they recorded*/

SELECT observers.pid, COUNT(observations.pid) AS Numcount
FROM observers, observations
WHERE observations.pid = observers.pid
GROUP BY observers.pid;
ORDER BY observers.pid
/* OUTPUT
PID	Numcount
--------------------------------
	3289	4
	10234	0
	11567	6
	88331	4

JUSTIFICATION:  the person id and number of observations is in the output

	
*/


/*List of all persons with the city they live in, also count amount of person living in the city(id, name, city)*/

SELECT person.pid, person.name, address.city, COUNT(address.city) AS Numcount
FROM person, address
WHERE person.pid = address.pid
GROUP BY person.pid person.name;
ORDER BY person.pid
/*OUTPUT
	PID	NAME		CITY		Numcount
------------------------------------------------------------------------------
	2577	Bill		St. Paul	1
	3289	George		Minneapolis	1
	74591	Jane		Duluth		1
	10234	Able		Monticello	4
	11567	Baker		Monticello	4
	17645	Mary		Monticello	4
	88331	Alice		Monticello	4

JUSTIFICATION:  the person id and name, the city name and number of person in list who is living in the city are in the output


	
*/

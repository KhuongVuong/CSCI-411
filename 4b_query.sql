select DISTINCT person.name, consumers.pid from consumers, person ,viewed, observations, address 
where consumers.pid = viewed.pid AND viewed.pid = person.pid AND observations.pid = address.pid AND observations.city = address.city
ORDER BY person.name, consumers.pid

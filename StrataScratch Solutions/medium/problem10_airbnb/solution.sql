select nationality,count(distinct unit_id) 
from airbnb_units u inner join airbnb_hosts h on h.host_id = u.host_id 
where u.unit_type = 'Apartment' and h.age < 30 ;
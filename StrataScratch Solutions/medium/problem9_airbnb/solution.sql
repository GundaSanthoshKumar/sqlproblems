select id_guest,
dense_rank() over (order by sum(n_messages) desc) as ranks,sum(n_messages) as t_messages
from airbnb_contacts
group by id_guest
order by t_messages desc;
select video_id
,count(distinct coalesce(user_firstname,user_lastname)) as num_unique_users 
from user_flags
where flag_id is not null
group by video_id;
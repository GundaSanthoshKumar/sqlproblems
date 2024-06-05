with cte as (
select user_id_sender,user_id_receiver,date
    ,sum(case when action='sent' then 1 else 0 end) as numof_req_sent
    ,sum(case when action ='accepted' then 1 else 0 end) as numof_req_accepted
from fb_friend_requests
group by 1,2
order by 3
)
select date, sum(numof_req_accepted)/sum(numof_req_sent)
from cte
group by date;
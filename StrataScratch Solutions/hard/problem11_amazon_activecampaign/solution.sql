with cte2 as (
select *
        ,rank() over(partition by user_id order by created_at) as rank1
        ,rank() over(partition by user_id,product_id order by created_at) as rank2
from marketing_campaign
)
select count(distinct user_id) from cte2 where rank1>1 and rank2=1;
with cte as (
select *
        ,percent_rank() over(partition by state order by fraud_score desc) as percentile
from fraud_score
)
select policy_num,state,claim_cost,fraud_score from cte where percentile<=0.05;
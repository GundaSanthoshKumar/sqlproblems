with cte as(
select *, round(1.0/count(*) over(partition by voter),3) as vote
from voting_results 
where candidate is not null
order by voter
)
select candidate 
from cte 
group by candidate
order by sum(vote) desc
LIMIT 1;
with cte as (
select company_name,year,count(*) as cnt from car_launches 
group by year,company_name order by company_name,year
),
cte2 as (
select 
company_name,cnt - lag(cnt) over(partition by company_name order by year) as total_launch 
from cte
)
select * from cte2 where total_launch is not null;
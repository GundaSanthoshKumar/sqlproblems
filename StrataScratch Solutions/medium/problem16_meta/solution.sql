with cte as (select date,sum(consumption) as consum from
(select *
from fb_eu_energy e
union
select *
from fb_asia_energy a
union
select *
from fb_na_energy n) ct
group by date)

select * from cte where consum=(select max(consum) from cte);
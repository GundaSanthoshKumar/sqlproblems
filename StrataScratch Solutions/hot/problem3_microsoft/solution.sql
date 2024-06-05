with cte as (
select mad.paying_customer,mdf.date,mdf.downloads
from ms_user_dimension mud
join ms_acc_dimension mad on mud.acc_id = mad.acc_id
join ms_download_facts mdf on mud.user_id = mdf.user_id
)
select date,
        sum(case when paying_customer = 'no' then downloads else 0 end) as non_paying,
        sum(case when paying_customer = 'yes' then downloads else 0 end) as paying
from cte
group by date
having non_paying>paying
order by date;
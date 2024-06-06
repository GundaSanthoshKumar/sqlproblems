select date_format(created_at,'%Y-%m') as ym
        ,Round(100*(sum(value) - lag(sum(value)) over(order by date_format
        (created_at,'%Y-%m')) ) / lag(sum(value)) over(order by date_format
        (created_at,'%Y-%m')),2) as revenue_diff_pct
from sf_transactions
group by month(created_at);
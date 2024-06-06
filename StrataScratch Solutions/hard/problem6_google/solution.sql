with cte as (
select filename,contents,
    sum(case when contents regexp '\\bbull\\b' then 1 else 0 end) as bull
    ,sum(case when contents regexp '\\bbear\\b' then 1 else 0 end) as bear
from google_file_store
group by filename
)
select 'bull' as word, sum(bull) as count from cte
union
select 'bear' as word, sum(bear) as count from cte
with cte as (
select 
        (row_number() over(order by page_number)-1)*2 as left_page
        ,(row_number() over(order by page_number)-1)*2 + 1 as right_page

from cookbook_titles
)
select t1.left_page,t2.title as left_title,t3.title as right_title
from cte as t1
left join
cookbook_titles as t2 on t1.left_page = t2.page_number
left join
cookbook_titles as t3 on t1.right_page = t3.page_number;
with cte as(
select * from facebook_friends
union
select user2 AS user1, user1 AS user2
from facebook_friends 
order BY user1
)
select user1,
    100 * (count(*) / (select count(distinct(user1)) from cte)) as percentage_popularity
from cte
group by user1;
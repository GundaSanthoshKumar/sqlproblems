SELECT spam_summary.post_date,
       (n_spam/n_posts)*100 AS spam_share
FROM
(select post_date,count(*)  as n_posts
from facebook_posts p
join facebook_post_views pv on p.post_id = pv.post_id
group by p.post_date) posts_summary
LEFT JOIN
(select post_date,count(*)  as n_spam
from facebook_posts p
join facebook_post_views pv on p.post_id = pv.post_id
where post_keywords like '%spam%'
group by p.post_date) spam_summary
ON
spam_summary.post_date=posts_summary.post_date
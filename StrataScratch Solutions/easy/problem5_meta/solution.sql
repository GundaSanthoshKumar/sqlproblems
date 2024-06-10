select distinct p.* 
from facebook_reactions r
join facebook_posts p
on r.post_id=p.post_id
where r.reaction = 'heart';
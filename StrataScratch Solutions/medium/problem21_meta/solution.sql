select (active_users*1.0 / users) as active_users_share from
(select count(*) as active_users from fb_active_users where country = 'USA' and status = 'open') as a,
(select count(*) as users from fb_active_users where country = 'USA'
) as b;
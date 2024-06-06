select language,
       COUNT(DISTINCT
             CASE
                 WHEN e.device IN('macbook pro','iphone 5s','ipad air') THEN e.user_id ELSE NULL
             END) AS n_apple_user,
        COUNT(DISTINCT e.user_id) AS n_total_users
from playbook_events e join playbook_users u on e.user_id = u.user_id group by language order by n_total_users desc;
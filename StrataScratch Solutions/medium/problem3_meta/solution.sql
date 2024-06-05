select user_id,AVG(TIMESTAMPDIFF(SECOND,load_time,exit_time)) as ind_time 
from (
  select user_id,DATE(timestamp),MAX(IF(action='page_load',timestamp,NULL)) as load_time
  ,MIN(IF(action='page_exit',timestamp,NULL)) as exit_time 
  from facebook_web_log Group by Day(timestamp),user_id
  ) t 
group by user_id having ind_time is NOT NULL;
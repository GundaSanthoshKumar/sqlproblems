select employee_title,sex,sum(salary+t_bonus)/count(*) as avg_compensation from 
(select id,first_name,employee_title,salary,sum(bonus) as t_bonus,sex
from sf_employee e
right join sf_bonus b
on e.id = b.worker_ref_id
group by e.id) ct
group by employee_title;
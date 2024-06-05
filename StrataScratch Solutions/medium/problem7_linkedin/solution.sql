select p.title,p.budget,
        ceiling( (sum(salary) * datediff(end_date,start_date) /365)) as prorated_emp_expense 
from linkedin_projects p
inner join linkedin_emp_projects ep on p.id = ep.project_id
inner join linkedin_employees e on ep.emp_id = e.id
group by title,budget, end_date, start_date
having budget<prorated_emp_expense order by title asc;
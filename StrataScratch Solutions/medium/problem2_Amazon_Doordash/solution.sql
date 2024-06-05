Select * from
(SELECT CASE
         WHEN salary = (select max(salary) from worker) then worker_title
       END AS best_paid_title
FROM worker
INNER JOIN title on worker.worker_id = title.worker_ref_id) sq where best_paid_title is not NULL;
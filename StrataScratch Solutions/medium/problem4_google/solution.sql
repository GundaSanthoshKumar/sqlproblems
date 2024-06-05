select 
from_user,count(*) as total_emails,ROW_NUMBER() OVER(ORDER BY count(*) desc,from_user ASC) 
from google_gmail_emails 
group by from_user 
ORDER BY total_emails desc, from_user ASC;
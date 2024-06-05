Premium vs Freemium

Microsoft Hard ID 10300

Find the total number of downloads for paying and non-paying users by date. Include only records where non-paying customers have more downloads than paying customers. The output should be sorted by earliest date first and contain 3 columns date, non-paying downloads, paying downloads.

Tables: ms_user_dimension, ms_acc_dimension, ms_download_facts

ms_user_dimension
-----------------
user_id: int ;
acc_id: int ;

ms_acc_dimension
-----------------
acc_id: int ;
paying_customer: varchar ;

ms_download_facts
-----------------
date: datetime ;
user_id: int ;
downloads: int ;
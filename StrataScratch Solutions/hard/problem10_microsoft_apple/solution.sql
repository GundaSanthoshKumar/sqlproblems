with cte as (
select client_id,
        user_id,
        (sum(case when event_type in ('video call received', 'video call sent', 'voice call received', 'voice call sent') then 1 else 0 end))/count( *) as ratio 
        from fact_events group by 1,2
)

select client_id from cte where ratio > 0.5;
WITH cte AS (
    SELECT state, business_id, stars FROM yelp_business where stars=5
),
cte2 AS (
    SELECT *, COUNT(business_id) as five_star_counts, rank() OVER (ORDER BY count(business_id) desc) AS state_rank FROM cte group by state
)

select state,five_star_counts from cte2 where state_rank<=5;
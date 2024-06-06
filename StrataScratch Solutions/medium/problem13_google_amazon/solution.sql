SELECT
        o.id,
        CASE WHEN address IS NULL THEN False ELSE True END AS is_shipable
    FROM    
        orders o
     JOIN
        customers c
    ON
        o.cust_id = c.id;
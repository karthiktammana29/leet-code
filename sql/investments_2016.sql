--Write a solution to report the sum of all total investment values in 2016 tiv_2016, for all policyholders who: have the same tiv_2015 value as one or more other policyholders, and are not located in the same city as any other policyholder (i.e., the (lat, lon) attribute pairs must be unique).
--create a cte with both the conditions, use window functions and then add the filter criteria from cte

with main_cte AS(
    select *,
    COUNT(*) OVER (PARTITION BY tiv_2015) as tiv_cnt,
    COUNT(*) OVER (PARTITION BY lat, lon) as loc_cnt
    from insurance
)

select ROUND(SUM(tiv_2016)::numeric,2) as tiv_2016
from main_cte
where loc_cnt = 1 and tiv_cnt > 1
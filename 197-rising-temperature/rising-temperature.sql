# Write your MySQL query statement below
SELECT id
FROM(
    select id,
	recorddate,
	LAG(recorddate) over (order by recorddate) as prev_date,
    temperature,
    LAG(temperature) over (order by recorddate) as prev_temp
    from weather) t
where temperature > prev_temp and datediff(recorddate,prev_date) = 1;
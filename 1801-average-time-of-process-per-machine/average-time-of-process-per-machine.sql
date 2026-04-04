# Write your MySQL query statement below
select machine_id, Round(AVG(process_time),3) as processing_time
from(
select machine_id, process_id, 
(max(timestamp) - min(timestamp)) as process_time
from Activity
group by machine_id, process_id) t
group by machine_id;
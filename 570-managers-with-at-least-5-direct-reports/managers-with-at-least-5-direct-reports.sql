# Write your MySQL query statement below
SELECT name 
FROM employee
where id in(
    select managerid
    from employee
    group by managerid
    having count(*) >= 5
    );
---first cte question 1

WITH employees_info AS (
  SELECT
    e.name
    salary
    Round(AVG(salary), 3) AS avgSalary
  FROM
    employees AS e
    INNER JOIN departments AS d
    ON department_id=d.id
   WHERE salary > avgSalary 
   GROUP BY e.name, salary 
    
)
SELECT  
        e.name,
        salary 
FROM employees_info;


---second  cte question 2

WITH HighestEmployees_info AS (
  SELECT
    e.name
    salary
    d.name
  FROM
    employees AS e
    INNER JOIN departments AS d
    ON department_id=d.id
  Order by salary DESC 
  limit 3
    
)
SELECT  
        e.name,
        salary,
        d.name
FROM HighestEmployees_info;



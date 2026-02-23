
--First sub query question 3

SELECT  
        name,
        salary 
FROM employees  
  WHERE salary > (      
  SELECT
    department_id,
    Round(AVG(salary), 3) AS avgSalary
  FROM
    employees 
   GROUP BY department_id
  );

  --second sub query question 4

  SELECT  
     *
   FROM employees  
   WHERE salary = ( 
    SELECT 
    salary 
    FROM 
    employees
   ORDER BY salary DESC
  LIMIT 2 OFFSET 1
  );


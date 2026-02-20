
--First sub query 

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

  --second sub query 

  SELECT  
     *
   FROM employees  
   WHERE salary = ( 
    SELECT 
    salary 
    FROM 
    employees
   ORDER BY salary DESC
  LIMIT 1 OFFSET 1
  );


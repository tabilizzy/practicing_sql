--question 5

SELECT 
c.name,
o.amount,
o.date
FROM customer AS c
INNER JOIN order AS o
ON customer_id=c.id;

--question 6

SELECT
    e.name,
    d.name
  FROM
    employees AS e
    INNER JOIN departments AS d
    ON department_id=d.id;

 --question 7
 SELECT
     e.name,
    d.name
  FROM
    employees AS e
    FULL JOIN departments AS d
    ON department_id=d.id;
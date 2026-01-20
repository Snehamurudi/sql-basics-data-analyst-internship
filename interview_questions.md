# Interview Questions – SQL Basics

## 1. Difference between WHERE and HAVING
- WHERE filters rows before grouping.
- HAVING filters groups after GROUP BY.
- WHERE cannot use aggregate functions, HAVING can.

## 2. What does GROUP BY do?
GROUP BY groups rows with the same values so aggregate functions can be applied.

## 3. When is ORDER BY used?
ORDER BY is used to sort query results in ascending or descending order.

## 4. What happens if a column is used without GROUP BY?
SQL throws an error unless the column is part of an aggregate function.

## 5. Purpose of COUNT(), SUM(), AVG()
- COUNT(): counts rows
- SUM(): adds values
- AVG(): calculates average

## 6. Example using WHERE and HAVING
```sql
SELECT customer_id, SUM(amount)
FROM orders
WHERE amount > 1000
GROUP BY customer_id
HAVING SUM(amount) > 50000;

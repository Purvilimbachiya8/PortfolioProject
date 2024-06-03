/* check first 10 rows */
SELECT * FROM store_sales
LIMIT 10;

/* check how many rows */
SELECT COUNT(*)
FROM store_sales;

/* how many rows in each month */
SELECT month_of_year, COUNT(*) AS total
FROM store_sales
GROUP BY month_of_year
ORDER BY month_of_year ASC;

/* maximum number of employees during any shift of the year */
SELECT MAX(employee_shifts)
FROM store_sales;

/* what is the smallest number of employees during any shift of the year */
SELECT MIN(employee_shifts)
FROM store_sales;

/* min, max together */
SELECT MAX(employee_shifts), MIN(employee_shifts)
FROM store_sales;

/* min, max employees in during per shift of the year*/
SELECT month_of_year, MAX(employee_shifts), MIN(employee_shifts)
FROM store_sales
GROUP BY month_of_year
ORDER BY month_of_year ASC;

/******************************************************************/

/* What is the total unit sold? */
SELECT SUM(units_sold)
FROM store_sales;

/* What is the total unit sold , avg unit sold per month? */
SELECT month_of_year, SUM(units_sold) AS total_unit_sold, ROUND(AVG(units_sold), 2) AS average_unit_sold
FROM store_sales
GROUP BY month_of_year
ORDER BY month_of_year ASC;


/*********************************************************************/

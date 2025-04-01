-- 📌 Basic SQL Queries

-- 1️⃣ Retrieve all records from a table
SELECT * FROM employees;

-- 2️⃣ Retrieve specific columns
SELECT name, age FROM employees;

-- 3️⃣ Filter data using WHERE
SELECT * FROM employees WHERE age > 30;

-- 4️⃣ Sorting results using ORDER BY
SELECT * FROM employees ORDER BY salary DESC;

-- 5️⃣ Using LIMIT to fetch a specific number of records
SELECT * FROM employees LIMIT 5;

-- 6️⃣ Grouping data using GROUP BY
SELECT department, COUNT(*) FROM employees GROUP BY department;

-- 7️⃣ Using JOIN to combine tables
SELECT employees.name, departments.department_name 
FROM employees 
JOIN departments ON employees.department_id = departments.id;

-- 8️⃣ Aggregating data using SUM and AVG
SELECT department, SUM(salary) AS total_salary FROM employees GROUP BY department;
SELECT department, AVG(salary) AS average_salary FROM employees GROUP BY department;

-- 9️⃣ Updating data
UPDATE employees SET salary = salary * 1.1 WHERE department = 'IT';

-- 🔟 Deleting records
DELETE FROM employees WHERE age < 25;

-- 🚀 More practice queries can be added here!
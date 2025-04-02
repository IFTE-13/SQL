-- 📌 Advanced SQL Queries

-- 1️⃣ Find the second highest salary
SELECT MAX(salary) AS second_highest_salary 
FROM employees 
WHERE salary < (SELECT MAX(salary) FROM employees);

-- 2️⃣ Retrieve employees who earn more than the department average
SELECT name, salary, department 
FROM employees 
WHERE salary > (SELECT AVG(salary) FROM employees GROUP BY department);

-- 3️⃣ Find employees who have the same salary
SELECT e1.name, e1.salary, e2.name AS duplicate_employee 
FROM employees e1 
JOIN employees e2 ON e1.salary = e2.salary AND e1.id <> e2.id;

-- 4️⃣ Use a Common Table Expression (CTE) to get the top 3 highest paid employees
WITH TopSalaries AS (
    SELECT name, salary, RANK() OVER (ORDER BY salary DESC) AS rank 
    FROM employees
)
SELECT name, salary FROM TopSalaries WHERE rank <= 3;

-- 5️⃣ Retrieve employees who have no assigned department
SELECT * FROM employees 
LEFT JOIN departments ON employees.department_id = departments.id 
WHERE departments.id IS NULL;

-- 6️⃣ Find employees who joined in the last 6 months
SELECT * FROM employees 
WHERE join_date >= NOW() - INTERVAL 6 MONTH;

-- 7️⃣ Recursive Query to retrieve hierarchical data (e.g., managers and subordinates)
WITH RECURSIVE EmployeeHierarchy AS (
    SELECT id, name, manager_id 
    FROM employees WHERE manager_id IS NULL
    UNION ALL
    SELECT e.id, e.name, e.manager_id 
    FROM employees e 
    JOIN EmployeeHierarchy eh ON e.manager_id = eh.id
)
SELECT * FROM EmployeeHierarchy;

-- 8️⃣ Find the department with the highest average salary
SELECT department, AVG(salary) AS avg_salary 
FROM employees 
GROUP BY department 
ORDER BY avg_salary DESC 
LIMIT 1;

-- 🚀 More advanced queries can be added here!

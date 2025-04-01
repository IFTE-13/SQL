# 📌 SQL Joins

SQL **JOIN** clauses are used to retrieve data from multiple tables based on a related column between them. Understanding joins is crucial for working with relational databases.

## 🔹 Types of Joins

### 1️⃣ INNER JOIN
Retrieves records that have matching values in both tables.
```sql
SELECT employees.name, departments.department_name 
FROM employees 
INNER JOIN departments ON employees.department_id = departments.id;
```

### 2️⃣ LEFT JOIN (or LEFT OUTER JOIN)
Retrieves all records from the left table and matching records from the right table. If no match is found, NULL is returned for columns from the right table.
```sql
SELECT employees.name, departments.department_name 
FROM employees 
LEFT JOIN departments ON employees.department_id = departments.id;
```

### 3️⃣ RIGHT JOIN (or RIGHT OUTER JOIN)
Retrieves all records from the right table and matching records from the left table. If no match is found, NULL is returned for columns from the left table.
```sql
SELECT employees.name, departments.department_name 
FROM employees 
RIGHT JOIN departments ON employees.department_id = departments.id;
```

### 4️⃣ FULL JOIN (or FULL OUTER JOIN)
Retrieves all records where there is a match in either table. If there’s no match, NULL is returned for missing values.
```sql
SELECT employees.name, departments.department_name 
FROM employees 
FULL JOIN departments ON employees.department_id = departments.id;
```

### 5️⃣ CROSS JOIN
Returns the Cartesian product of both tables (every row from the first table is combined with every row from the second table).
```sql
SELECT employees.name, departments.department_name 
FROM employees 
CROSS JOIN departments;
```

## 🔗 Next Steps
Now that you understand SQL joins, move on to **Stored-Procedures.md** to learn about SQL stored procedures.

Happy Querying! 🚀
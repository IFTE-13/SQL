# 📌 SQL Syntax

SQL (Structured Query Language) follows a standard syntax for querying and managing relational databases. This guide covers the fundamental syntax rules and common SQL commands.

## 🔹 Basic SQL Query Structure
```sql
SELECT column_name(s)
FROM table_name
WHERE condition;
```
- `SELECT`: Specifies which columns to retrieve.
- `FROM`: Defines the table to query.
- `WHERE`: (Optional) Filters the results based on a condition.

## 🔹 Common SQL Commands

### 1️⃣ Data Retrieval (SELECT)
```sql
SELECT name, age FROM employees WHERE age > 30;
```

### 2️⃣ Inserting Data (INSERT)
```sql
INSERT INTO employees (name, age, salary)
VALUES ('Alice', 28, 50000);
```

### 3️⃣ Updating Data (UPDATE)
```sql
UPDATE employees
SET salary = 55000
WHERE name = 'Alice';
```

### 4️⃣ Deleting Data (DELETE)
```sql
DELETE FROM employees WHERE age < 25;
```

### 5️⃣ Creating a Table (CREATE TABLE)
```sql
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    salary DECIMAL(10,2)
);
```

### 6️⃣ Modifying a Table (ALTER TABLE)
```sql
ALTER TABLE employees ADD COLUMN department VARCHAR(50);
```

### 7️⃣ Deleting a Table (DROP TABLE)
```sql
DROP TABLE employees;
```

## 🔗 Next Steps
Now that you understand SQL syntax, move on to **Queries.sql** to practice hands-on SQL queries.

Happy Querying! 🚀
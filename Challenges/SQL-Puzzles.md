# 🧩 SQL Puzzles & Challenges

A collection of SQL brain teasers to improve logical thinking and complex query building.

## 🔹 Puzzle 1: Second Highest Salary
**Problem:** Find the second highest salary from the `Employees` table.
```sql
SELECT MAX(salary) FROM Employees
WHERE salary < (SELECT MAX(salary) FROM Employees);
```

## 🔹 Puzzle 2: Consecutive Dates
**Problem:** Find users who logged in 3 days in a row.
```sql
SELECT DISTINCT a.user_id
FROM Logins a, Logins b, Logins c
WHERE a.user_id = b.user_id AND b.user_id = c.user_id
  AND a.login_date = DATE_SUB(b.login_date, INTERVAL 1 DAY)
  AND b.login_date = DATE_SUB(c.login_date, INTERVAL 1 DAY);
```

## 🔹 Puzzle 3: Top N per Group
**Problem:** Return top 2 highest salaries per department.
```sql
SELECT * FROM (
  SELECT *, ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC) AS rn
  FROM Employees
) AS ranked
WHERE rn <= 2;
```

## 🔹 Puzzle 4: Duplicate Rows
**Problem:** Find duplicates based on email.
```sql
SELECT email, COUNT(*)
FROM Users
GROUP BY email
HAVING COUNT(*) > 1;
```

## 🔹 Puzzle 5: Missing Numbers
**Problem:** Find missing values in a sequence 1 to N.
```sql
SELECT n.number
FROM (SELECT 1 AS number UNION ALL SELECT 2 UNION ALL ... UNION ALL SELECT N) n
LEFT JOIN actual_table a ON n.number = a.number
WHERE a.number IS NULL;
```

---
✨ Keep practicing and level up your SQL skills!
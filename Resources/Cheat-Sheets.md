# 📝 SQL Cheat Sheets

## 🔹 Basic Syntax
```sql
SELECT column1, column2 FROM table_name;
SELECT * FROM table_name;
INSERT INTO table_name (col1, col2) VALUES (val1, val2);
UPDATE table_name SET col1 = val1 WHERE condition;
DELETE FROM table_name WHERE condition;
```

## 🔹 Clauses
```sql
WHERE col = val
AND / OR / NOT
ORDER BY col ASC|DESC
GROUP BY col
HAVING condition
LIMIT number
```

## 🔹 Joins
```sql
INNER JOIN:     SELECT * FROM A INNER JOIN B ON A.id = B.id;
LEFT JOIN:      SELECT * FROM A LEFT JOIN B ON A.id = B.id;
RIGHT JOIN:     SELECT * FROM A RIGHT JOIN B ON A.id = B.id;
FULL JOIN:      SELECT * FROM A FULL OUTER JOIN B ON A.id = B.id;
```

## 🔹 Aggregate Functions
```sql
COUNT(), SUM(), AVG(), MIN(), MAX()
```

## 🔹 String Functions
```sql
CONCAT(), LENGTH(), UPPER(), LOWER(), SUBSTRING()
```

## 🔹 Date Functions
```sql
NOW(), CURDATE(), DATEDIFF(), DATE_ADD(), DATE_SUB()
```

## 🔹 Subqueries
```sql
SELECT * FROM table WHERE column = (SELECT MAX(column) FROM table);
```

## 🔹 Window Functions
```sql
ROW_NUMBER(), RANK(), DENSE_RANK(), NTILE(), LAG(), LEAD()
```

## 🔹 Useful Links
- [Mode SQL Cheatsheet](https://mode.com/sql-tutorial/sql-cheat-sheet/)
- [SQLBolt Cheat Sheet](https://sqlbolt.com/cheat_sheet)
- [DataCamp SQL Cheat Sheet](https://www.datacamp.com/cheat-sheet/sql-cheat-sheet-for-data-science)

✅ Keep this handy while working on exercises or projects!
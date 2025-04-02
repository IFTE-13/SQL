# 📌 SQL Indexing and Query Optimization

## 🔹 What is an Index?
An **index** is a database structure that improves the speed of data retrieval operations on a table.

### ✅ Benefits of Indexing:
- Faster **SELECT** queries
- Efficient **sorting** and **filtering**
- Optimized **JOIN** operations

### ❌ Drawbacks of Indexing:
- Extra storage space required
- Slight performance overhead for **INSERT**, **UPDATE**, and **DELETE** operations

## 🔹 Types of Indexes

### 1️⃣ Primary Index (Clustered Index)
Each table can have only **one** clustered index, where the table data is physically sorted.
```sql
CREATE INDEX idx_employee_name ON employees(name);
```

### 2️⃣ Unique Index
Ensures that all values in the indexed column(s) are unique.
```sql
CREATE UNIQUE INDEX idx_unique_email ON employees(email);
```

### 3️⃣ Composite Index
Indexes multiple columns together to improve multi-condition queries.
```sql
CREATE INDEX idx_name_age ON employees(name, age);
```

### 4️⃣ Full-Text Index
Used for searching text-based data efficiently.
```sql
CREATE FULLTEXT INDEX idx_description ON products(description);
```

### 5️⃣ Covering Index
An index that contains all the columns needed for a query, reducing disk I/O.

## 🔹 Optimizing SQL Queries

### ✅ Best Practices for Query Optimization:
- **Use Indexes Wisely** 🏷️
- **Avoid SELECT *** (Retrieve only needed columns)
- **Use WHERE clauses efficiently** 📌
- **Use JOINS instead of subqueries** 🔄
- **Use LIMIT to retrieve specific rows** 🔢
- **Optimize ORDER BY with indexing** 🔍

## 🔹 Checking Query Performance with EXPLAIN
The `EXPLAIN` statement helps analyze query execution plans.
```sql
EXPLAIN SELECT * FROM employees WHERE name = 'Alice';
```

## 🔗 Next Steps
Now that you understand **Indexing & Optimization**, move on to **Views.md** to learn about creating virtual tables.

Happy Querying! 🚀
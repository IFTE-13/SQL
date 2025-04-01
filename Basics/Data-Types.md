# 📌 SQL Data Types

In SQL, data types define the kind of data that can be stored in a column. Choosing the right data type ensures data integrity and efficiency.

## 🔹 Common SQL Data Types

### 1️⃣ Numeric Data Types
| Data Type  | Description |
|------------|------------------------------------------------|
| `INT`      | Integer values (whole numbers) |
| `BIGINT`   | Large integer values |
| `DECIMAL(p, s)` | Fixed-point numbers with precision and scale |
| `FLOAT`    | Approximate floating-point values |
| `REAL`     | Similar to `FLOAT`, but with lower precision |

### 2️⃣ String Data Types
| Data Type  | Description |
|------------|------------------------------------------------|
| `CHAR(n)`  | Fixed-length string (up to `n` characters) |
| `VARCHAR(n)` | Variable-length string (up to `n` characters) |
| `TEXT`     | Large text data (varies by database system) |

### 3️⃣ Date and Time Data Types
| Data Type  | Description |
|------------|------------------------------------------------|
| `DATE`     | Stores date (YYYY-MM-DD) |
| `TIME`     | Stores time (HH:MI:SS) |
| `DATETIME` | Stores date and time together |
| `TIMESTAMP` | Stores UNIX timestamp (auto-updating in some systems) |

### 4️⃣ Boolean Data Type
| Data Type  | Description |
|------------|------------------------------------------------|
| `BOOLEAN`  | Stores `TRUE` or `FALSE` values |

## 🚀 Example Usage
```sql
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    salary DECIMAL(10,2),
    hire_date DATE,
    is_active BOOLEAN
);
```

This creates an `employees` table with different data types for various columns.

## 🔗 Next Steps
Now that you understand data types, move on to **SQL Syntax** to learn how to write SQL queries properly.

Happy Learning! 🎯
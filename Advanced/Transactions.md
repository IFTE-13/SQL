# 📌 SQL Transactions

A **transaction** in SQL is a sequence of operations performed as a single unit of work. It ensures data integrity by following the **ACID** properties:

- **Atomicity**: All operations within a transaction are executed successfully, or none are.
- **Consistency**: The database remains in a valid state before and after the transaction.
- **Isolation**: Transactions operate independently without interference.
- **Durability**: Once committed, changes are permanent.

## 🔹 Basic SQL Transaction Syntax
```sql
START TRANSACTION;
    -- SQL operations here
COMMIT; -- Saves the changes permanently
```

## 🔹 Using ROLLBACK to Undo Changes
```sql
START TRANSACTION;
    UPDATE employees SET salary = salary * 1.1 WHERE department = 'IT';
ROLLBACK; -- Cancels the transaction
```

## 🔹 Using SAVEPOINTS to Partially Roll Back
```sql
START TRANSACTION;
    UPDATE employees SET salary = salary * 1.1 WHERE department = 'IT';
    SAVEPOINT before_update;
    DELETE FROM employees WHERE age < 25;
ROLLBACK TO before_update; -- Reverts DELETE but keeps the salary update
COMMIT; -- Finalizes changes
```

## 🔗 Next Steps
Now that you understand transactions, move on to **Indexes.md** to optimize your queries with indexing.

Happy Querying! 🚀
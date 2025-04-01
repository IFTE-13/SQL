# 📌 SQL Stored Procedures

A **Stored Procedure** is a precompiled SQL code block that can be executed multiple times. It helps in improving performance, reducing redundancy, and enhancing security.

## 🔹 Why Use Stored Procedures?
- ✅ Code reusability
- ✅ Improved performance due to precompilation
- ✅ Better security (restricts direct table access)
- ✅ Reduces network traffic by executing multiple queries at once

## 🔹 Creating a Stored Procedure
```sql
DELIMITER //
CREATE PROCEDURE GetAllEmployees()
BEGIN
    SELECT * FROM employees;
END //
DELIMITER ;
```

This stored procedure, when executed, retrieves all records from the `employees` table.

## 🔹 Executing a Stored Procedure
```sql
CALL GetAllEmployees();
```

## 🔹 Stored Procedure with Parameters
```sql
DELIMITER //
CREATE PROCEDURE GetEmployeeByDepartment(IN dept_name VARCHAR(50))
BEGIN
    SELECT * FROM employees WHERE department = dept_name;
END //
DELIMITER ;
```

To execute it:
```sql
CALL GetEmployeeByDepartment('IT');
```

## 🔹 Stored Procedure with Output Parameters
```sql
DELIMITER //
CREATE PROCEDURE GetEmployeeCount(OUT emp_count INT)
BEGIN
    SELECT COUNT(*) INTO emp_count FROM employees;
END //
DELIMITER ;
```

Executing it:
```sql
CALL GetEmployeeCount(@total);
SELECT @total;
```

## 🔗 Next Steps
Now that you understand Stored Procedures, move on to **Indexes.md** to learn about optimizing queries using indexes.

Happy Coding! 🚀
# 🌍 Real-World SQL Scenarios

Explore how SQL is applied in real-world contexts across different industries.

---

## 🏥 1. Healthcare
**Scenario:** Tracking patient admissions and diagnoses.
```sql
SELECT patient_id, COUNT(*) AS visits
FROM Admissions
WHERE diagnosis_code = 'J18.9'
GROUP BY patient_id
ORDER BY visits DESC;
```

## 🛒 2. E-commerce
**Scenario:** Finding best-selling products by revenue.
```sql
SELECT p.name, SUM(oi.quantity * oi.price) AS total_revenue
FROM Order_Items oi
JOIN Products p ON oi.product_id = p.product_id
GROUP BY p.name
ORDER BY total_revenue DESC;
```

## 🏦 3. Banking
**Scenario:** Detect suspicious transactions over a threshold.
```sql
SELECT *
FROM Transactions
WHERE amount > 10000
AND transaction_type = 'WITHDRAWAL';
```

## 🎓 4. Education
**Scenario:** Identifying top-performing students by average grade.
```sql
SELECT student_id, AVG(grade) AS avg_grade
FROM Grades
GROUP BY student_id
HAVING avg_grade > 90;
```

## 🚚 5. Logistics
**Scenario:** Tracking delayed shipments.
```sql
SELECT order_id, DATEDIFF(delivery_date, shipment_date) AS delay_days
FROM Shipments
WHERE delivery_date > shipment_date;
```

---

💡 **Tip:** Try modifying these queries to fit your own datasets or challenges!


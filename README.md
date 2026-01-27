# Task 08 – Mastering SQL JOINs using MySQL

## Task Objective

The objective of this task is to understand and implement different types of SQL JOIN
operations using **MySQL**. JOINs are essential for combining data from multiple tables
in relational databases and are heavily used in real-world applications and interviews.

This task covers:

- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- FULL JOIN (simulated using UNION in MySQL)

## 🛠 Tools Used

- **Database:** MySQL
- **Tool:** MySQL Workbench
- **Version Control:** GitHub

---

## 🗄 Database Information

### Database Name


---

## 📋 Table Structures

### employees

| Column | Data Type | Description |
|------|----------|-------------|
| emp_id | INT | Primary Key |
| emp_name | VARCHAR(50) | Employee name |
| dept_id | INT | Department ID (can be NULL) |

---

### departments

| Column | Data Type | Description |
|------|----------|-------------|
| dept_id | INT | Primary Key |
| dept_name | VARCHAR(50) | Department name |

---

## 📥 Sample Data

### employees

| emp_id | emp_name | dept_id |
|------|---------|--------|
| 1 | Rahul | 101 |
| 2 | Priya | 102 |
| 3 | Aman | NULL |
| 4 | Neha | 103 |

---

### departments
| dept_id | dept_name |
|--------|-----------|
| 101 | HR |
| 102 | IT |
| 104 | Finance |

---

## 🔗 JOIN Operations in MySQL

### 🔹 INNER JOIN

Returns only records that have matching values in both tables.

```sql
SELECT e.emp_id, e.emp_name, d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;

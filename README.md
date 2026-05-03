# 📊 Elevate Lab SQL Task 8: Mastering SQL JOINs
A professional SQL project demonstrating the implementation of relational database queries, specifically focusing on understanding and utilizing different types of SQL JOIN operations.

## 📌 Project Objective
The primary goal of this task is to understand and implement different types of SQL JOIN operations using MySQL. It illustrates how JOINs are essential for combining data from multiple tables in relational databases to provide a unified view of related entities.

## 🛠️ Technical Scope
- **Database Management System:** SQL (MySQL / PostgreSQL / SQL Server compatible)
- **Core Concepts:** Relational Database Queries, Data Retrieval
- **Advanced Techniques:** INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL JOIN (Simulated via UNION)

## 🗄️ Database Schema

### `departments` Table
| Column | Data Type | Constraint / Description |
|--------|-----------|--------------------------|
| `dept_id` | INT | Primary Key |
| `dept_name` | VARCHAR(50) | Name of the Department |

### `employees` Table
| Column | Data Type | Constraint / Description |
|--------|-----------|--------------------------|
| `emp_id` | INT | Primary Key |
| `emp_name` | VARCHAR(50) | Full Name of Employee |
| `dept_id` | INT | Department ID (can be NULL) |

## 💻 SQL Implementations
Key operations demonstrated in the script:

- **Schema Creation & Data Insertion:**
  - Creation of the `task8` database.
  - Creating `departments` and `employees` tables.
  - Populating the tables with sample records, including unmatched rows to properly demonstrate LEFT and RIGHT JOIN behavior.

- **INNER JOIN:**
  - Retrieves records that have matching values in both tables, connecting employees strictly with their valid departments.

- **LEFT JOIN:**
  - Retrieves all records from the left table (`employees`), and the matched records from the right table (`departments`). Demonstrates behavior when an employee has no assigned department (returns `NULL` for department fields).

- **RIGHT JOIN:**
  - Retrieves all records from the right table (`departments`), and the matched records from the left table (`employees`). Demonstrates behavior when a department has no associated employees.

- **FULL JOIN (Simulated):**
  - Demonstrates how to achieve a FULL OUTER JOIN in MySQL by using a `UNION` between a `LEFT JOIN` and a `RIGHT JOIN`, providing a complete view of all employees and all departments.

## 🚀 Setup & Execution
1. **Initialize:** Execute the script to create the `task8` database and both tables.
2. **Populate Data:** Run the `INSERT` statements to load initial `departments` and `employees`.
3. **Execute INNER JOIN:** Run the `INNER JOIN` query to observe matched records.
4. **Execute Outer JOINs:** Run the `LEFT JOIN` and `RIGHT JOIN` queries to observe the inclusion of unmatched records with `NULL` values.
5. **Execute FULL JOIN:** Run the `UNION` query to see the combined results from both outer joins.

> [!IMPORTANT]
> JOIN operations are the backbone of relational database queries. Choosing the correct type of JOIN is critical to ensure accurate data retrieval without unintentionally dropping data or creating Cartesian products.

*Developed for Elevate Lab Internship Program - SQL Practice and Interview Preparation.*

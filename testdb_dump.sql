# MySQL Practice Database – Employees & Departments

This repository contains a clean and simple MySQL database schema created for practicing SQL queries, joins, and foreign keys. It’s designed as a hands-on learning project and portfolio piece to demonstrate relational database skills.

---

## 🗂️ What's Inside

The database (`testdb`) includes:

### 🔹 `departments` Table
| Column     | Type         | Description                    |
|------------|--------------|--------------------------------|
| dept_id    | INT, PK      | Auto-incrementing department ID|
| dept_name  | VARCHAR(100) | Name of the department         |

### 🔹 `employees` Table
| Column     | Type         | Description                          |
|------------|--------------|--------------------------------------|
| id         | INT, PK      | Auto-incrementing employee ID        |
| name       | VARCHAR(100) | Employee name                        |
| position   | VARCHAR(100) | Job title                            |
| salary     | DECIMAL(10,2)| Employee salary                      |
| dept_id    | INT, FK      | Foreign key referencing departments  |

---

## 📥 How to Use

1. Make sure MySQL is installed and running.
2. Import the schema using the terminal or MySQL shell:

```bash
mysql -u root -p < mysql_practice_schema.sql

# SQL Basics Part 1

![GitHub repo size](https://img.shields.io/github/repo-size/Harishmadapakula/sql_basic_part_1)
![GitHub last commit](https://img.shields.io/github/last-commit/Harishmadapakula/sql_basic_part_1)
![GitHub stars](https://img.shields.io/github/stars/Harishmadapakula/sql_basic_part_1?style=social)
[![GitHub license](https://img.shields.io/github/license/Harishmadapakula/sql_basic_part_1)](https://github.com/Harishmadapakula/sql_basic_part_1/blob/main/LICENSE)
[![GitHub issues](https://img.shields.io/github/issues/Harishmadapakula/sql_basic_part_1)](https://github.com/Harishmadapakula/sql_basic_part_1/issues)

## 📌 About the Project
This project provides a foundational understanding of **SQL (Structured Query Language)** through practical examples and exercises. It covers essential SQL concepts and operations used for data manipulation and retrieval.

## 🎥 Demo & Example Queries
Here are some sample SQL queries covered in this project:

```sql
-- Retrieve all records from the employees table
SELECT * FROM employees;

-- Find the total number of employees in each department
SELECT department, COUNT(*) AS total_employees 
FROM employees 
GROUP BY department;

-- Retrieve employees who joined after 2020
SELECT * FROM employees 
WHERE joining_date > '2020-01-01';

-- Find employees earning above average salary using subquery
SELECT * FROM employees 
WHERE salary > (SELECT AVG(salary) FROM employees);

-- Use a window function to calculate running total of salaries
SELECT name, department, salary, 
SUM(salary) OVER (PARTITION BY department ORDER BY salary) AS running_total
FROM employees;

-- Use CASE WHEN for conditional grouping
SELECT name, salary, 
CASE 
    WHEN salary > 70000 THEN 'High Salary' 
    WHEN salary BETWEEN 50000 AND 70000 THEN 'Medium Salary' 
    ELSE 'Low Salary' 
END AS salary_category
FROM employees;

-- Common Table Expression (CTE) example
WITH HighEarners AS (
    SELECT name, salary FROM employees WHERE salary > 70000
)
SELECT * FROM HighEarners;

-- Recursive CTE example for hierarchical data
WITH RECURSIVE EmployeeHierarchy AS (
    SELECT employee_id, name, manager_id FROM employees WHERE manager_id IS NULL
    UNION ALL
    SELECT e.employee_id, e.name, e.manager_id
    FROM employees e
    INNER JOIN EmployeeHierarchy eh ON e.manager_id = eh.employee_id
)
SELECT * FROM EmployeeHierarchy;
```

_Sample Output:_
| Employee ID | Name   | Department | Joining Date |
|------------|--------|------------|--------------|
| 101        | John   | HR         | 2021-06-15   |
| 102        | Alice  | IT         | 2022-03-10   |

## 📂 Repository Structure
```
sql_basic_part_1/
│── datasets/        # Sample datasets used in queries
│── queries/         # SQL query files for different topics
│── notebooks/       # Jupyter notebooks for interactive SQL learning
│── README.md        # Project documentation
│── LICENSE          # License file
│── setup.sql        # SQL script for database setup
```

## 📄 Dataset Details
- **Source:** [Kaggle SQL Dataset](https://www.kaggle.com/datasets/sample-dataset) _(Replace with actual dataset link if applicable)_
- **Data Format:** CSV files
- **Tables Covered:** Employees, Departments, Salaries
- **Preprocessing:** Data cleaning steps applied before querying

## 📌 SQL Concepts Covered
- Basic SQL Queries (SELECT, WHERE, ORDER BY)
- Aggregations (SUM, AVG, COUNT, GROUP BY)
- Joins (INNER JOIN, LEFT JOIN, RIGHT JOIN)
- Subqueries & Nested Queries
- Window Functions (ROW_NUMBER, RANK, SUM OVER)
- Data Modification (INSERT, UPDATE, DELETE)
- **CASE WHEN Statements** for conditional logic
- **Common Table Expressions (CTEs) & Recursive Queries**

## 🛠 Installation & Setup
1. Clone the repository:
   ```bash
   git clone https://github.com/Harishmadapakula/sql_basic_part_1.git
   ```
2. Navigate to the project folder:
   ```bash
   cd sql_basic_part_1
   ```
3. Set up the database:
   ```sql
   mysql -u root -p < setup.sql
   ```
4. Run queries from the `queries/` directory using MySQL, PostgreSQL, or SQLite.

## 📈 Performance Optimization Tips
- Use **indexes** to speed up searches on large datasets
- Avoid **SELECT *** in queries; specify required columns instead
- Optimize JOIN operations by using **appropriate indexing**
- Use **EXPLAIN ANALYZE** to understand query execution plans
- Partition large tables for better query performance

## 🔮 Future Enhancements
- Add more advanced SQL queries and optimization techniques
- Include performance tuning tips for large databases
- Provide interactive SQL exercises with explanations
- **Include query optimization techniques such as indexing strategies**

## 🛠 Troubleshooting
- **Issue:** Database connection error  
  **Solution:** Check if MySQL/PostgreSQL is running and verify database credentials.
- **Issue:** Syntax errors in SQL queries  
  **Solution:** Ensure correct SQL syntax based on the database system used.
- **Issue:** Slow query performance  
  **Solution:** Check if indexes are being used and optimize joins.

## 📖 Learning Resources
- [W3Schools SQL Tutorial](https://www.w3schools.com/sql/)
- [SQL for Data Analysis](https://www.sqlfordataanalysis.com/)
- [PostgreSQL Documentation](https://www.postgresql.org/docs/)
- [MySQL Official Docs](https://dev.mysql.com/doc/)
- **[LeetCode SQL Practice](https://leetcode.com/problemset/database/)**
- **[HackerRank SQL Challenges](https://www.hackerrank.com/domains/sql)**

## 🤝 Contributing
Contributions are welcome! Follow these steps:
1. Fork the repository
2. Create a new branch (`feature-branch`)
3. Follow **SQL formatting best practices** (use UPPERCASE for keywords, proper indentation)
4. Make your changes and commit them
5. Push to your forked repository
6. Open a Pull Request

## 📜 License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 Author
👤 **Harish Madapakula**
- GitHub: [@Harishmadapakula](https://github.com/Harishmadapakula)
- LinkedIn: [Harish Madapakula](https://www.linkedin.com/in/harish-madapakula-6b422222a/)

---
⭐ If you like this project, don't forget to **star the repository!** 🚀

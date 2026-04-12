# 🗄️ SQL Projects

A repository dedicated to storing **pure SQL projects** and **freeCodeCamp** certification activities in SQL.

## 📋 Description

This repository contains a collection of practical projects and exercises developed with SQL, from basic queries to advanced database operations. It includes freeCodeCamp certification activities that cover table creation, CRUD operations, complex joins and query optimizations.

## 🎯 Objective

- 📚 Document progressive learning in SQL
- 🏆 Register completion of freeCodeCamp certification activities
- 💼 Maintain a portfolio of queries and database projects
- 🔄 Serve as a reference for SQL best practices

## 📂 Repository Structure

```
│   LICENSE
│   README.md
│   
├───scripts
│       bike-shop.sh
|       [...]
│       
└───sql
        bike-shop.sql
        universe.sql
        [...]
        
```
## 🚀 Content

- **SQL Fundamentals**: SELECT, INSERT, UPDATE, DELETE, WHERE
- **Advanced Operations**: JOINs, Subqueries, Aggregation, Grouping
- **Data Modeling**: DDL (CREATE TABLE, ALTER, DROP), Constraints
- **Optimization**: Indexes, Execution plans, Query optimization
- **freeCodeCamp Certifications**: Required completion projects
- **Practical Cases**: Real-world database problems

## 🛠️ Technologies

- ![SQL](https://img.shields.io/badge/SQL-CC2927?style=flat&logo=mysql&logoColor=white)
- ![PostgreSQL](https://img.shields.io/badge/PostgreSQL-336791?style=flat&logo=postgresql&logoColor=white)
- ![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=flat&logo=mysql&logoColor=white)

## 📖 How to Use

1. **Clone the repository**:
   ```bash
   git clone https://github.com/m-m-legend/sql-projects.git
   ```

2. **Navigate to the desired project**:
   ```bash
   cd sql-projects/your-project
   ```

3. **Execute the queries** in your favorite DBMS:
   - Open a SQL client (MySQL Workbench, pgAdmin, DBeaver, etc)
   - Copy and execute the content of `.sql` files
   - Check the results

## 📚 Featured Projects

- **Relational Database Challenges** - Required freeCodeCamp projects

## 🎓 Certifications

- ✅ freeCodeCamp - Relational Database (ongoing)

## 💡 Topics Covered

- Data normalization and modeling
- ACID properties
- Transactions and Constraints
- Stored Procedures and Triggers
- Window Functions
- CTEs (Common Table Expressions)
- Performance tuning

## 🔍 Usage Example

```sql
-- Example: Simple query
SELECT id, name, email FROM users WHERE active = 1;

-- Example: JOIN with aggregation
SELECT 
    u.name,
    COUNT(p.id) as total_posts
FROM users u
LEFT JOIN posts p ON u.id = p.user_id
GROUP BY u.id, u.name
ORDER BY total_posts DESC;
```

## 🤝 Contribution

This is a personal learning repository. Suggestions, corrections and improvements are welcome through issues or pull requests.

## 📄 License

This project is under the [MIT](LICENSE) license - feel free to use it as a reference or basis for your own projects.

## 📞 Contact

- GitHub: [@m-m-legend](https://github.com/m-m-legend)
- Email: [nintendo_64m@outlook.com]

---

**Last update**: 2026  
**Status**: Active development

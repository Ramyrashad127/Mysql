
# 🗃️ MySQL Practice Repository

Welcome to my personal **MySQL practice repository**, where I solve real-world SQL problems and explore database design patterns. Each folder in this repo represents a different **practice database**, complete with schema definitions, seed data, and practical SQL tasks.

## 📚 What You’ll Find

Each subfolder corresponds to a specific project/database and contains:

- `schema.sql` — SQL file to create the full database schema (tables, constraints).
- `seed.sql` — Inserts sample/mock data for hands-on querying.
- Query files for specific problems or scenarios.
- Schema modifications, views, procedures, and more.

### Example Project Structure

```
MYSQL/
├── student-records-db/
│   ├── schema.sql
│   ├── seed.sql
│   ├── query_*.sql
│   ├── *.sql
│   └── README.md
├── future-database-folder/
│   ├── schema.sql
│   ├── seed.sql
│   └── README.md
├── README.md  <-- (you're here)
```

## ✅ Completed Projects

| Folder               | Description                                  |
|----------------------|----------------------------------------------|
| `student-records-db` | University database for managing student data, courses, instructors, and enrollments |

More projects will be added soon!

## 💡 Goals of This Repo

- Practice advanced SQL (joins, views, procedures, constraints).
- Learn how to structure and document databases.
- Solve practical data problems with real schema examples.
- Improve my skills in MySQL development, debugging, and optimization.

## 🛠️ Technologies Used

- MySQL 8.x
- SQL (DDL, DML, Views, Procedures)
- Git & GitHub for version control

## 📥 Getting Started

To try out any project:

```bash
cd student-records-db
mysql -u root -p < schema.sql
mysql -u root -p StudentsRecords < seed.sql
```

Then open and run individual `.sql` files using your preferred MySQL tool or terminal.

## ✍️ Author

**Ramy Mohamed**  
📍 GitHub: [@Ramyrashad127](https://github.com/Ramyrashad127)  
🗓️ Started: July 2025

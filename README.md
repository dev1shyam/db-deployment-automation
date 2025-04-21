# 📦 DB Deployment Automation

A simple project to automate SQL Server schema deployments using version-controlled scripts and Docker. Ideal for practicing DevOps workflows for databases.

---

## 🚀 Project Goals

- Automate database schema deployments in a reliable and repeatable way.
- Organize SQL scripts using version numbers.
- Use Docker to quickly spin up SQL Server environments.
- Integrate with CI/CD (GitHub Actions – coming soon).

---

## 🗂️ Project Structure

```plaintext
db-deployment-automation/
│
├── sql/                   # SQL scripts for schema changes
│   ├── 001_create_tables.sql
│   ├── 002_add_indexes.sql
│   └── 003_seed_data.sql
│
├── docker/                # Docker setup for SQL Server
│   └── docker-compose.yml
│
├── scripts/               # Deployment scripts 
│
├── .github/workflows/     # GitHub Actions 
```

## 🐳 Getting Started with Docker
1. Start SQL Server
```
cd docker
docker-compose up -d
```
SQL Server will run locally at:
```
Host: localhost

Port: 1433

User: sa

Password: xxxxxx
```
## 📜 Available SQL Scripts
These are executed in order (manually or by automation scripts later):
```
001_create_tables.sql – Creates the Employees table.

002_add_indexes.sql – Adds an index on the Department column.

003_seed_data.sql – Inserts sample data into the table.
```
## 🧩 What's Next
 Add shell script to auto-run all SQL scripts in order

 Add error handling and logging

 Expand to support Oracle and cross-platform DB support


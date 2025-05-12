# YMCA Database System

This project offers a complete MySQL database setup for the YMCA, starting with the Entity-Relationship model and extending through SQL scripts that define the schema, load example data, and showcase typical query operations. Created as the final project for a Database Management Systems course, I played a major role in shaping the ER diagram and writing all of the SQL scripts.

---

## Features

- Supports diverse offerings for summer camps, holiday sessions, and sports programs  
- Records every participant’s registration and attendance details   
- Manages volunteers, instructors, and administrators along with their facility assignments  
- Built on a normalized relational model to maintain data integrity and enable advanced queries  

---

## Repository Layout

| File             | Purpose                                                        |
|------------------|----------------------------------------------------------------|
| `er-diagram.png` | Graphical depiction of all entities and their relationships    |
| `create.sql`     | SQL statements to define tables, constraints, and indexes      |
| `insert.sql`     | Sample data to populate the database with representative data |
| `query.sql`      | Retrieval queries illustrating joins, filters, and aggregations |

---

## Getting Started

To initialize the database, supply your MySQL user name and the target database, then execute the scripts in sequence. For instance:

```bash
mysql -u your_username -p your_database_name < create.sql
mysql -u your_username -p your_database_name < insert.sql
mysql -u your_username -p your_database_name < query.sql

# YMCA Database Management System

This project delivers a full MySQL-based database for a community organization like the YMCA, capturing camps, classes, volunteers, facilities, participants, and related operations. Created as the capstone for a Database Management Systems course, I led the design of the ER diagram and authored every line of SQL—from table creation and data population to sample retrieval queries.

## Features

The schema models summer camps, holiday camps, and a variety of class formats (group, private, and certification) while tracking participant registrations, guardian information, payment methods, and medical history. Staff roles—from volunteers to instructors—are fully managed alongside facility assignments, ensuring every aspect of a program’s operation is represented. Built on a normalized relational design, this database supports complex joins, filters, and reports with data integrity at its core.

## Repository Structure

| File             | Description                                               |
|------------------|-----------------------------------------------------------|
| `er-diagram.png` | Visual entity-relationship diagram of the full schema     |
| `create.sql`     | SQL statements to create all tables and relationships     |
| `insert.sql`     | Example data to populate the tables                       |
| `query.sql`      | Sample SQL queries demonstrating joins, filters, and relationships |

## How to Use

To recreate the database from scratch, replace `your_username` and `your_database_name` with your MySQL credentials and run:

```bash
mysql -u your_username -p your_database_name < create.sql
mysql -u your_username -p your_database_name < insert.sql
mysql -u your_username -p your_database_name < query.sql

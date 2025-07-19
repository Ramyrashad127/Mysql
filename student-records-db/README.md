
# 🎓 Student Records Database

This project is a MySQL database schema for managing a university's student records. It covers students, instructors, courses, departments, enrollments, and phone numbers — designed for practice, education, and query experimentation.

## 📁 Project Structure

All files are located in a single folder: `student-records-db/`

```
student-records-db/
├── schema.sql                        # Full database schema (CREATE TABLE statements)
├── seed.sql                          # Sample data to populate tables
├── query_students_by_department.sql  # Problem 1
├── query_top_students_per_course.sql # Problem 2
├── query_student_count_per_level.sql # Problem 3
├── query_instructors_courses.sql     # Problem 4
├── 01_add_default_level.sql          # Problem 5
├── 02_remove_check_grade.sql         # Problem 6
├── 03_add_unique_instructor_fullname.sql  # Problem 7
├── student_transcripts_view.sql      # Problem 8
├── department_summary_view.sql       # Problem 9
├── course_instructor_view.sql        # Problem 10
```

## 🧱 Database Schema

The schema includes the following tables:

- `Department(Id, Title)`
- `Student(Id, FullName, Gender, BirthDate, Email, DepartmentId, Level)`
- `StudentPhoneNumber(StudentId, PhoneNumber)`
- `Instructor(Id, FullName, Email, DepartmentId, Gender, BirthDate)`
- `InstructorPhoneNumber(InstructorId, PhoneNumber)`
- `Course(Code, Title, Description, InstructorId, CreditHours, DepartmentId)`
- `Enrollment(StudentId, CourseCode, Semester, Year, Grade)`

Each table is connected with foreign key constraints to maintain referential integrity.

## 🚀 Setup Instructions

### 1. Create the Database and Tables
```bash
mysql -u root -p < schema.sql
```

### 2. Insert Sample Data
```bash
mysql -u root -p StudentsRecords < seed.sql
```

## 🧪 SQL Practice Problems

Each `.sql` file contains a query that solves a real-world problem using the database:

| File                                | Description                                       |
|-------------------------------------|---------------------------------------------------|
| `query_students_by_department.sql`  | List all students in a specific department        |
| `query_top_students_per_course.sql` | Find top-scoring student(s) in each course        |
| `query_student_count_per_level.sql` | Count students by level in each department        |
| `query_instructors_courses.sql`     | List instructors and the courses they teach       |

## 🛠️ Tech Stack

- MySQL 8+
- SQL (DDL + DML)
- Git / GitHub

## ✍️ Author

Ramy Mohamed  
GitHub: [Ramyrashad127]  
Date Created: July 2025

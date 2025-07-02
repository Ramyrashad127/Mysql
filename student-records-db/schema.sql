-- create StudentsRecords database
CREATE DATABASE IF NOT EXISTS StudentsRecords;
USE StudentsRecords;
-- create department table
CREATE TABLE IF NOT EXISTS Department(
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(100) NOT NULL
);

-- create Students table
Create TABLE IF NOT EXISTS Student(
    Id INT PRIMARY KEY AUTO_INCREMENT,
    FullName VARCHAR(250) NOT NULL,
    Gender ENUM('female', 'male') NOT NULL,
    BirthDate Date NOT NULL,
    Email Varchar(100) NOT NULL,
    DepartmentId INT NOT NULL,
    Level ENUM('First', 'Second', 'Third', 'Fourth') NOT NULL,
    UNIQUE(Email),
    FOREIGN KEY (DepartmentId) REFERENCES Department(Id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- create StudentPhoneNumber table
CREATE TABLE IF NOT EXISTS StudentPhoneNumber(
    StudentId INT NOT NULL,
    PhoneNumber VARCHAR(50) NOT NULL,
    PRIMARY KEY (StudentId, PhoneNumber),
    FOREIGN KEY (StudentId) REFERENCES Student(Id) ON DELETE CASCADE ON UPDATE CASCADE
);
-- create instructor table
CREATE TABLE IF NOT EXISTS Instructor(
    Id INT PRIMARY KEY AUTO_INCREMENT,
    FullName VARCHAR(250) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    DepartmentId INT NOT NULL,
    Gender ENUM('female', 'male') NOT NULL,
    BirthDate DATE NOT NULL,
    UNIQUE(Email),
    FOREIGN KEY (DepartmentId) REFERENCES Department(Id) ON DELETE CASCADE ON UPDATE CASCADE
);
-- create Courses table
CREATE TABLE IF NOT EXISTS Course(
    Code INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(100) NOT NULL,
    Description TEXT NOT NULL,
    InstructorId INT NOT NULL,
    CreditHours INT NOT NULL,
    DepartmentId INT NOT NULL,
    FOREIGN KEY (InstructorId) REFERENCES Instructor(Id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (DepartmentId) REFERENCES Department(Id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- create enrollment table
CREATE TABLE IF NOT EXISTS Enrollment(
    StudentId INT NOT NULL,
    CourseCode INT NOT NULL,
    Semester ENUM('1', '2') NOT NULL,
    Year INT NOT NULL,
    Grade INT CHECK (Grade >= 0 AND Grade <= 100),
    PRIMARY KEY (StudentId, CourseCode, Semester, Year),
    FOREIGN KEY (StudentId) REFERENCES Student(Id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (CourseCode) REFERENCES Course(Code) ON DELETE CASCADE ON UPDATE CASCADE
);

-- create InstructorPhoneNumber table
CREATE TABLE IF NOT EXISTS InstructorPhoneNumber(
    InstructorId INT NOT NULL,
    PhoneNumber VARCHAR(50) NOT NULL,
    PRIMARY KEY (InstructorId, PhoneNumber),
    FOREIGN KEY (InstructorId) REFERENCES Instructor(Id) ON DELETE CASCADE ON UPDATE CASCADE
);
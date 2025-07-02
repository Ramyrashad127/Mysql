USE StudentsRecords;
INSERT INTO Department (Title) VALUES
('Computer Science'),
('Electrical Engineering'),
('Mechanical Engineering');

INSERT INTO Student (FullName, Gender, BirthDate, Email, DepartmentId, Level) VALUES
('Ali Ahmed', 'male', '2002-04-15', 'ali.ahmed@example.com', 1, 'First'),
('Sara Hassan', 'female', '2001-11-20', 'sara.hassan@example.com', 1, 'Second'),
('Mohamed Adel', 'male', '2000-01-05', 'mohamed.adel@example.com', 2, 'Third');

INSERT INTO StudentPhoneNumber (StudentId, PhoneNumber) VALUES
(1, '01112345678'),
(1, '01098765432'),
(2, '01234567890');

INSERT INTO Instructor (FullName, Email, DepartmentId, Gender, BirthDate) VALUES
('Dr. Tarek Said', 'tarek.said@univ.edu', 1, 'male', '1975-09-12'),
('Dr. Mona Samir', 'mona.samir@univ.edu', 2, 'female', '1980-05-22');

INSERT INTO InstructorPhoneNumber (InstructorId, PhoneNumber) VALUES
(1, '01000011122'),
(2, '01000022233');

INSERT INTO Course (Title, Description, InstructorId, CreditHours, DepartmentId) VALUES
('Database Systems', 'Intro to relational databases and SQL', 1, 3, 1),
('Digital Circuits', 'Basics of logic gates and circuits', 2, 4, 2);

INSERT INTO Enrollment (StudentId, CourseCode, Semester, Year, Grade) VALUES
(1, 1, '1', 2024, 85),
(2, 1, '1', 2024, 90),
(3, 2, '2', 2024, 75);


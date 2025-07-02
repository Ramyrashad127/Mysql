USE StudentsRecords;
INSERT INTO Department (Title) VALUES
('Civil Engineering'),
('Mathematics'),
('Physics');

INSERT INTO Student (FullName, Gender, BirthDate, Email, DepartmentId, Level) VALUES
('Amira Fathy', 'female', '2002-03-14', 'amira.fathy@example.com', 4, 'First'),
('Youssef Nabil', 'male', '2000-07-09', 'youssef.nabil@example.com', 3, 'Fourth'),
('Laila Sherif', 'female', '2001-10-01', 'laila.sherif@example.com', 5, 'Third'),
('Khaled Mahmoud', 'male', '2002-12-20', 'khaled.mahmoud@example.com', 1, 'Second');

INSERT INTO StudentPhoneNumber (StudentId, PhoneNumber) VALUES
(4, '01122233344'),
(5, '01233445566'),
(6, '01055667788'),
(7, '01010101010'),
(7, '01551551551');

INSERT INTO Instructor (FullName, Email, DepartmentId, Gender, BirthDate) VALUES
('Dr. Sherif El Gamal', 'sherif.gamal@univ.edu', 3, 'male', '1965-06-01'),
('Dr. Hala Mostafa', 'hala.mostafa@univ.edu', 4, 'female', '1970-02-12'),
('Dr. Ahmed Tawfik', 'ahmed.tawfik@univ.edu', 5, 'male', '1983-11-25');

INSERT INTO InstructorPhoneNumber (InstructorId, PhoneNumber) VALUES
(3, '01198989898'),
(4, '01211223344'),
(5, '01012345678');

INSERT INTO Course (Title, Description, InstructorId, CreditHours, DepartmentId) VALUES
('Structural Analysis', 'Introduction to structural mechanics and analysis', 4, 3, 4),
('Linear Algebra', 'Vector spaces, matrices, and linear transformations', 5, 3, 5),
('Thermodynamics', 'Laws of thermodynamics and engineering applications', 3, 4, 3);

INSERT INTO Enrollment (StudentId, CourseCode, Semester, Year, Grade) VALUES
(4, 3, '2', 2024, 81),
(5, 2, '1', 2024, 87),
(6, 5, '1', 2024, 91),
(7, 1, '2', 2024, 68),
(2, 5, '1', 2024, 77),
(3, 4, '2', 2024, 59);

USE studentsrecords;
CREATE TABLE IF NOT EXISTS StudentInsertLog (
    LogId INT AUTO_INCREMENT PRIMARY KEY,
    StudentId INT,
    FullName VARCHAR(250),
    InsertedAt DATETIME
);

CREATE TRIGGER after_student_insert AFTER INSERT
ON student
FOR EACH ROW
BEGIN
INSERT INTO StudentInsertLog (StudentId, FullName, InsertedAt) VALUES (NEW.Id, NEW.FullName, NOW());
END;
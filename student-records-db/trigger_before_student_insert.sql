USE studentsrecords;
CREATE TRIGGER before_student_insert BEFORE INSERT ON student
FOR EACH ROW
BEGIN
IF NEW.Email NOT LIKE "%@university.com" THEN
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Email must end with @university.edu';
END IF;
END;
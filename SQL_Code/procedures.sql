
DELIMITER //

CREATE PROCEDURE InsertTimeTableEntry (
    IN p_Department_Id INT,
    IN p_Course_ID VARCHAR(7),
    IN p_Sem_Id VARCHAR(4),
    IN p_Lec_ID VARCHAR(7),
    IN p_Day ENUM('Mon', 'Tue', 'Wed', 'Thu', 'Fri'),
    IN p_Start_Time TIME,
    IN p_End_Time TIME
)
BEGIN
    -- Insert the new record into the TimeTable
    INSERT INTO TimeTable (Department_Id, Course_ID, Sem_Id, Lec_ID, Day, Start_Time, End_Time)
    VALUES (p_Department_Id, p_Course_ID, p_Sem_Id, p_Lec_ID, p_Day, p_Start_Time, p_End_Time);
END //

DELIMITER ;

CALL InsertTimeTableEntry(1, 'ICT1232', 'L1S1', 'LEC0002', 'Fri', '09:00:00', '12:00:00');



















DELIMITER //

CREATE PROCEDURE CheckFinalExamEligibility (
    IN p_Stu_ID VARCHAR(7),
    IN p_Subject_ID VARCHAR(7)
)
BEGIN
    DECLARE total_classes INT;
    DECLARE attended_classes INT;
    DECLARE attendance_percentage DECIMAL(5,2);
    DECLARE total_ca_marks DECIMAL(5,2);
    DECLARE required_ca_marks DECIMAL(5,2);
    DECLARE eligibility_status VARCHAR(100);

    -- Calculate the required CA marks (50% of total possible CA marks)
    SET required_ca_marks = 50.0; -- Assuming total CA marks possible is 100

    -- Count total attendance records for the student
    SELECT COUNT(*) INTO total_classes
    FROM Attendance
    WHERE Stu_ID = p_Stu_ID;

    -- Count the number of Present and Medical statuses for the student
    SELECT COUNT(*) INTO attended_classes
    FROM Attendance
    WHERE Stu_ID = p_Stu_ID AND (Status = 'Present' OR Status = 'Medical');

    -- Calculate the attendance percentage
    IF total_classes > 0 THEN
        SET attendance_percentage = (attended_classes / total_classes) * 100;
    ELSE
        SET attendance_percentage = 0;
    END IF;

    -- Get the total CA marks for the subject
    SELECT Total_marks INTO total_ca_marks
    FROM Marks
    WHERE Stu_ID = p_Stu_ID AND Sub_ID = p_Subject_ID;

    -- Check eligibility
    IF total_ca_marks >= required_ca_marks AND attendance_percentage >= 80 THEN
        SET eligibility_status = CONCAT('Student ', p_Stu_ID, ' is eligible for the final exam.');
    ELSE
        SET eligibility_status = CONCAT('Student ', p_Stu_ID, ' is NOT eligible for the final exam. CA Marks: ', total_ca_marks, ', Attendance: ', attendance_percentage, '%');
    END IF;

    -- Output eligibility status
    SELECT eligibility_status AS Final_Exam_Eligibility;

END //

DELIMITER ;


CALL CheckFinalExamEligibility('TG00016', 'ICT1213');



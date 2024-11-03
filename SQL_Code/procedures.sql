
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


User Creation and Permission

-- Admin User (with all privileges and GRANT option)
CREATE USER 'admin'@'localhost' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON DBMS_Project.* TO 'admin'@'localhost' WITH GRANT OPTION;

-- Dean User (all privileges without GRANT option)
CREATE USER 'dean'@'localhost' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON DBMS_Project.* TO 'dean'@'localhost';

-- Lecturer User (all privileges except user creation and grant)
CREATE USER 'lecturer'@'localhost' IDENTIFIED BY '1234';
GRANT SELECT, INSERT, UPDATE, DELETE ON DBMS_Project.* TO 'lecturer'@'localhost';

-- Technical Officer User (read, write, and update permissions for attendance-related tables)
CREATE USER 'technical_officer'@'localhost' IDENTIFIED BY '1234';
GRANT SELECT, INSERT, UPDATE ON DBMS_Project.Attendance TO 'technical_officer'@'localhost';
GRANT SELECT, INSERT, UPDATE ON DBMS_Project.Medical TO 'technical_officer'@'localhost';


-- Student User (read-only for marks and attendance)
CREATE USER 'student'@'localhost' IDENTIFIED BY '1234';
GRANT SELECT ON DBMS_Project.Marks TO 'student'@'localhost';
GRANT SELECT ON DBMS_Project.Attendance TO 'student'@'localhost';



FLUSH PRIVILEGES;

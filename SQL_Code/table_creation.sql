CREATE DATABASE TECMIS;

USE TECMIS;

CREATE TABLE Department (
    Dep_Id INT AUTO_INCREMENT PRIMARY KEY,
    Dep_Name VARCHAR(100)
);

CREATE TABLE Semester (
    Sem_Id VARCHAR(4) PRIMARY KEY,
    Sem_Name VARCHAR(50)
);

CREATE TABLE Student (
    Reg_no VARCHAR(7) PRIMARY KEY,
    F_name VARCHAR(50),
    L_name VARCHAR(50),
    Email VARCHAR(100),
    DOB DATE,
    Batch VARCHAR(2),
    Gender ENUM('M', 'F'),
    CGPA DECIMAL(4,2),
    Department_Id INT,
    Mobile VARCHAR(15),
    FOREIGN KEY (Department_Id) REFERENCES Department(Dep_Id)
);

CREATE TABLE Suspend_Students (
    Student_Id VARCHAR(7),
    Suspend_Status BOOLEAN,
    Suspension_Period VARCHAR(100),
    PRIMARY KEY (Student_Id),
    FOREIGN KEY (Student_Id) REFERENCES Student(Reg_no)
);

CREATE TABLE Lecturer (
    Reg_no VARCHAR(7) PRIMARY KEY,
    F_name VARCHAR(50),
    L_name VARCHAR(50),
    Email VARCHAR(100),
    DOB DATE,
    Gender ENUM('M', 'F'),
    Department_Id INT,
    Mobile VARCHAR(15),
    FOREIGN KEY (Department_Id) REFERENCES Department(Dep_Id)
);

CREATE TABLE Technical_Officer (
    Reg_no VARCHAR(7) PRIMARY KEY,
    F_name VARCHAR(50),
    L_name VARCHAR(50),
    Email VARCHAR(100),
    DOB DATE,
    Gender ENUM('M', 'F'),
    Department_Id INT,
    Mobile VARCHAR(15),
    FOREIGN KEY (Department_Id) REFERENCES Department(Dep_Id)
);

CREATE TABLE Course (
    Course_Code VARCHAR(7) PRIMARY KEY,
    Course_Name VARCHAR(100),
    Credit INT,
    Type ENUM('T', 'P', 'TP'),
    Hours INT DEFAULT 30,
    Description TEXT,
    Department_Id INT,
    Semester_Id VARCHAR(4),
    FOREIGN KEY (Department_Id) REFERENCES Department(Dep_Id),
    FOREIGN KEY (Semester_Id) REFERENCES Semester(Sem_Id)
);

CREATE TABLE Marks (
    Stu_ID VARCHAR(7),
    Sub_ID VARCHAR(7),
    Assignment DECIMAL(5, 2),
    Quiz DECIMAL(5, 2),
    Total_marks DECIMAL(5, 2),
    GPA DECIMAL(3, 2),
    Grade VARCHAR(2),
    Eligibility BOOLEAN,
    End_Prac DECIMAL(5, 2),
    End_Theo DECIMAL(5, 2),
    PRIMARY KEY (Stu_ID, Sub_ID),
    FOREIGN KEY (Stu_ID) REFERENCES Student(Reg_no),
    FOREIGN KEY (Sub_ID) REFERENCES Course(Course_Code)
);

CREATE TABLE Attendance (
    Attendance_ID VARCHAR(7) PRIMARY KEY,
    Stu_ID VARCHAR(7),
    Course_ID VARCHAR(7),
    TO_Id VARCHAR(7),
    Date DATE,
    Status VARCHAR(10),
    Session_Type ENUM('Theory', 'Practical'),
    Time_Duration DECIMAL(4, 2),
    FOREIGN KEY (Course_ID) REFERENCES Course(Course_Code),
    FOREIGN KEY (TO_Id) REFERENCES Technical_Officer(Reg_no),
    FOREIGN KEY (Stu_ID) REFERENCES Student(Reg_no)
);


CREATE TABLE exam (
    Course_ID VARCHAR(7) PRIMARY KEY,
    Exam_Date DATE,
    FOREIGN KEY (Course_ID) REFERENCES Course(Course_code)
);

CREATE TABLE Exam_Attendance (
    Exam_Attendance_ID INT AUTO_INCREMENT PRIMARY KEY,
    Course_ID VARCHAR(7),
    Stu_ID VARCHAR(7),
    Status VARCHAR(10),
    FOREIGN KEY (Course_ID) REFERENCES Exam(Course_ID),
    FOREIGN KEY (Stu_ID) REFERENCES Student(Reg_no)
);


CREATE TABLE Student_Exam (
    Student_Id VARCHAR(7),
    Course_ID VARCHAR(7),
    Eligibility BOOLEAN,
    Register BOOLEAN,
    PRIMARY KEY (Student_Id, Course_ID),
    FOREIGN KEY (Student_Id) REFERENCES Student(Reg_no),
    FOREIGN KEY (Course_ID) REFERENCES Exam(course_id)
);

CREATE TABLE Medical (
    Medical_Id INT AUTO_INCREMENT PRIMARY KEY,
    Attendance_ID VARCHAR(7) NULL,
    Student_Id VARCHAR(7),
    Exam_Attendance_Id INT NUll,
    Date_Range VARCHAR(100),
    TO_Id VARCHAR(7),
    Reason TEXT,
    FOREIGN KEY (TO_Id) REFERENCES Technical_Officer(Reg_no),
    FOREIGN KEY (Attendance_ID) REFERENCES Attendance(Attendance_ID),
    FOREIGN KEY (Student_Id) REFERENCES Student(Reg_no),
    FOREIGN KEY (Exam_Attendance_Id) REFERENCES Exam_Attendance(Exam_Attendance_ID)
);

CREATE TABLE TimeTable (
    Department_Id INT,
    Course_ID VARCHAR(7),
    Sem_Id VARCHAR(4),
    Lec_ID VARCHAR(7),
    Day ENUM('Mon', 'Tue', 'Wed', 'Thu', 'Fri'),
    Start_Time TIME,
    End_Time TIME,
    PRIMARY KEY (Department_Id, Sem_Id, Lec_ID, Day, Start_Time),
    FOREIGN KEY (Course_ID) REFERENCES Course(Course_Code),
    FOREIGN KEY (Department_Id) REFERENCES Department(Dep_Id),
    FOREIGN KEY (Lec_ID) REFERENCES Lecturer(Reg_no),
    FOREIGN KEY (Sem_Id) REFERENCES Semester(Sem_Id)
);

CREATE TABLE Student_Semester (
    Student_Id VARCHAR(7),
    Sem_Id VARCHAR(4),
    SGPA DECIMAL(4,2),
    PRIMARY KEY (Student_Id, Sem_Id),
    FOREIGN KEY (Student_Id) REFERENCES Student(Reg_no),
    FOREIGN KEY (Sem_Id) REFERENCES Semester(Sem_Id)
);

CREATE TABLE Student_Course (
    Student_Id VARCHAR(7),
    Course_ID VARCHAR(7),
    Type ENUM('Repeat','Proper'),
    PRIMARY KEY (Student_Id, Course_ID),
    FOREIGN KEY (Student_Id) REFERENCES Student(Reg_no),
    FOREIGN KEY (Course_ID) REFERENCES Course(Course_Code)
);

CREATE TABLE Lecturer_Course (
    Lec_ID VARCHAR(7),
    Course_ID VARCHAR(7),
    PRIMARY KEY (Lec_ID, Course_ID),
    FOREIGN KEY (Lec_ID) REFERENCES Lecturer(Reg_no),
    FOREIGN KEY (Course_ID) REFERENCES Course(Course_Code)
);

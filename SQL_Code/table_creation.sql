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
    Mobile INT(10),
    FOREIGN KEY (Department_Id) REFERENCES Department(Dep_Id)
);


CREATE TABLE Lecturer (
    Reg_no VARCHAR(7) PRIMARY KEY,
    F_name VARCHAR(50),
    L_name VARCHAR(50),
    Email VARCHAR(100),
    DOB DATE,
    Gender ENUM('M', 'F'),
    Department_Id INT,
    Mobile INT(10),
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
    Mobile INT(10),
    FOREIGN KEY (Department_Id) REFERENCES Department(Dep_Id)
);

CREATE TABLE Department (
    Dep_Id INT AUTO_INCREMENT PRIMARY KEY,
    Dep_Name VARCHAR(100)
);

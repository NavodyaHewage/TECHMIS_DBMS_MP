INSERT INTO Marks (Stu_ID, Sub_ID, Assignment, Quiz, Total_marks, GPA, Grade, Eligibility, End_Prac, End_Theo) VALUES
-- For TG00016
('TG00016', 'ICT1213', 20, 20, 85, 4.0, 'A+', TRUE, 15, 30),
('TG00016', 'TCS1212', 20, 20, 70, 3.7, 'A-', TRUE, 10, 20),
('TG00016', 'TMS1233', 20, 20, 80, 4.0, 'A+', TRUE, 10, 30),
('TG00016', 'ICT1232', 20, 20, 50, 2.3, 'C+', TRUE, 10, NULL),
('TG00016', 'ICT1223', 20, 20, 90, 4.0, 'A+', TRUE, NULL, 50),

-- For TG00017
('TG00017', 'ICT1213', 20, 20, 85, 4.0, 'A+', TRUE, 16, 36),
('TG00017', 'TCS1212', 20, 20, 70, 3.7, 'A-', TRUE, 9, 28),
('TG00017', 'TMS1233', 20, 20, 88, 4.0, 'A+', TRUE, 12, 40),
('TG00017', 'ICT1232', 20, 20, 40, 2.0, 'C', TRUE, 10, NULL),
('TG00017', 'ICT1223', 20, 20, 72, 3.0, 'B', TRUE, NULL, 48),

-- For TG00018
('TG00018', 'ICT1213', 20, 20, 85, 4.0, 'A+', TRUE, 18, 39),
('TG00018', 'TCS1212', 20, 20, 64, 2.3, 'C+', TRUE, 8, 30),
('TG00018', 'TMS1233', 20, 20, 90, 3.0, 'B', TRUE, 18, 40),
('TG00018', 'ICT1232', 20, 20, 50, 2.3, 'C+', TRUE, 15, NULL),
('TG00018', 'ICT1223', 20, 20, 68, 2.7, 'B-', TRUE, NULL, 46),

-- For TG00019
('TG00019', 'ICT1213', 20, 20, 92, 3.7, 'A-', TRUE, 17, 35),
('TG00019', 'TCS1212', 20, 20, 56, 2.0, 'C', TRUE, 11, 32),
('TG00019', 'TMS1233', 20, 20, 85, 4.0, 'A+', TRUE, 16, 40),
('TG00019', 'ICT1232', 20, 20, 48, 2.0, 'C', TRUE, 10, NULL),
('TG00019', 'ICT1223', 20, 20, 75, 4.0, 'A', TRUE, NULL, 50),

-- For TG00020
('TG00020', 'ICT1213', 20, 20, 90, 3.0, 'B', TRUE, 19, 36),
('TG00020', 'TCS1212', 20, 20, 60, 2.3, 'C+', TRUE, 12, 30),
('TG00020', 'TMS1233', 20, 20, 97, 4.0, 'A+', TRUE, 15, 42),
('TG00020', 'ICT1232', 20, 20, 40, 2.0, 'C', TRUE, 14, NULL),
('TG00020', 'ICT1223', 20, 20, 65, 2.7, 'B-', TRUE, NULL, 46);





INSERT INTO Student_Course (Student_Id, Course_ID, Type) VALUES
('TG00016', 'ICT1213', 'Proper'),
('TG00016', 'ICT1223', 'Proper'),
('TG00016', 'ICT1232', 'Proper'),
('TG00016', 'ICT1242', 'Proper'),
('TG00016', 'ICT1252', 'Proper'),
('TG00016', 'TCS1212', 'Proper'),
('TG00016', 'TMS1233', 'Proper'),

('TG00017', 'ICT1213', 'Proper'), 
('TG00017', 'ICT1223', 'Proper'), 
('TG00017', 'ICT1232', 'Proper'), 
('TG00017', 'ICT1242', 'Proper'), 
('TG00017', 'ICT1252', 'Proper'), 
('TG00017', 'TCS1212', 'Proper'), 
('TG00017', 'TMS1233', 'Proper'),

('TG00018', 'ICT1213', 'Proper'), 
('TG00018', 'ICT1223', 'Proper'), 
('TG00018', 'ICT1232', 'Proper'), 
('TG00018', 'ICT1242', 'Proper'), 
('TG00018', 'ICT1252', 'Proper'), 
('TG00018', 'TCS1212', 'Proper'), 
('TG00018', 'TMS1233', 'Proper'),

('TG00019', 'ICT1213', 'Proper'), 
('TG00019', 'ICT1223', 'Proper'), 
('TG00019', 'ICT1232', 'Proper'), 
('TG00019', 'ICT1242', 'Proper'), 
('TG00019', 'ICT1252', 'Proper'), 
('TG00019', 'TCS1212', 'Proper'), 
('TG00019', 'TMS1233', 'Proper'),

('TG00020', 'ICT1213', 'Proper'), 
('TG00020', 'ICT1223', 'Proper'), 
('TG00020', 'ICT1232', 'Proper'), 
('TG00020', 'ICT1242', 'Proper'), 
('TG00020', 'ICT1252', 'Proper'), 
('TG00020', 'TCS1212', 'Proper'), 
('TG00020', 'TMS1233', 'Proper'),

('TG00021', 'ICT1213', 'Proper'), 
('TG00021', 'ICT1223', 'Proper'), 
('TG00021', 'ICT1232', 'Proper'), 
('TG00021', 'ICT1242', 'Proper'), 
('TG00021', 'ICT1252', 'Proper'), 
('TG00021', 'TCS1212', 'Proper'), 
('TG00021', 'TMS1233', 'Proper'),

('TG00022', 'ICT1213', 'Proper'), 
('TG00022', 'ICT1223', 'Proper'), 
('TG00022', 'ICT1232', 'Proper'), 
('TG00022', 'ICT1242', 'Proper'), 
('TG00022', 'ICT1252', 'Proper'), 
('TG00022', 'TCS1212', 'Proper'), 
('TG00022', 'TMS1233', 'Proper'),

('TG00023', 'ICT1213', 'Proper'), 
('TG00023', 'ICT1223', 'Proper'), 
('TG00023', 'ICT1232', 'Proper'), 
('TG00023', 'ICT1242', 'Proper'), 
('TG00023', 'ICT1252', 'Proper'), 
('TG00023', 'TCS1212', 'Proper'), 
('TG00023', 'TMS1233', 'Proper'),

('TG00024', 'ICT1213', 'Proper'), 
('TG00024', 'ICT1223', 'Proper'), 
('TG00024', 'ICT1232', 'Proper'), 
('TG00024', 'ICT1242', 'Proper'), 
('TG00024', 'ICT1252', 'Proper'), 
('TG00024', 'TCS1212', 'Proper'), 
('TG00024', 'TMS1233', 'Proper'),

('TG00025', 'ICT1213', 'Proper'), 
('TG00025', 'ICT1223', 'Proper'), 
('TG00025', 'ICT1232', 'Proper'), 
('TG00025', 'ICT1242', 'Proper'), 
('TG00025', 'ICT1252', 'Proper'), 
('TG00025', 'TCS1212', 'Proper'), 
('TG00025', 'TMS1233', 'Proper'),

('TG00026', 'ICT1213', 'Proper'), 
('TG00026', 'ICT1223', 'Proper'), 
('TG00026', 'ICT1232', 'Proper'), 
('TG00026', 'ICT1242', 'Proper'), 
('TG00026', 'ICT1252', 'Proper'), 
('TG00026', 'TCS1212', 'Proper'), 
('TG00026', 'TMS1233', 'Proper'),

('TG00027', 'ICT1213', 'Proper'), 
('TG00027', 'ICT1223', 'Proper'), 
('TG00027', 'ICT1232', 'Proper'), 
('TG00027', 'ICT1242', 'Proper'), 
('TG00027', 'ICT1252', 'Proper'), 
('TG00027', 'TCS1212', 'Proper'), 
('TG00027', 'TMS1233', 'Proper'),

('TG00028', 'ICT1213', 'Proper'), 
('TG00028', 'ICT1223', 'Proper'), 
('TG00028', 'ICT1232', 'Proper'), 
('TG00028', 'ICT1242', 'Proper'), 
('TG00028', 'ICT1252', 'Proper'), 
('TG00028', 'TCS1212', 'Proper'), 
('TG00028', 'TMS1233', 'Proper'),

('TG00029', 'ICT1213', 'Proper'), 
('TG00029', 'ICT1223', 'Proper'), 
('TG00029', 'ICT1232', 'Proper'), 
('TG00029', 'ICT1242', 'Proper'), 
('TG00029', 'ICT1252', 'Proper'), 
('TG00029', 'TCS1212', 'Proper'), 
('TG00029', 'TMS1233', 'Proper'),

('TG00030', 'ICT1213', 'Proper'), 
('TG00030', 'ICT1223', 'Proper'), 
('TG00030', 'ICT1232', 'Proper'), 
('TG00030', 'ICT1242', 'Proper'), 
('TG00030', 'ICT1252', 'Proper'), 
('TG00030', 'TCS1212', 'Proper'), 
('TG00030', 'TMS1233', 'Proper'),

('TG00001', 'ICT1213', 'Repeat'),
('TG00002', 'ICT1213', 'Repeat'),
('TG00006', 'ICT1213', 'Repeat'),
('TG00007', 'ICT1252', 'Repeat'),
('TG00011', 'ICT1213', 'Repeat'),
('TG00012', 'ICT1223', 'Repeat');




INSERT INTO Lecturer_Course (Lec_ID, Course_ID) VALUES
('LEC0001', 'ICT1213'),
('LEC0001', 'ICT1223'),
('LEC0009', 'ICT1232'),
('LEC0002', 'ICT1242'),
('LEC0001', 'ICT1252'),
('LEC0010', 'TCS1212'),
('LEC0001', 'TMS1233');









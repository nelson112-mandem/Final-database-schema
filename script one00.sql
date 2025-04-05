

CREATE TABLE classes (
    class_id INT PRIMARY KEY,
    class_name VARCHAR(50),
    teacher_id INT FOREIGN KEY REFERENCES teachers(teacher_id),
    subject_id INT FOREIGN KEY REFERENCES subjects(subject_id)
);


Teachers Table

CREATE TABLE teachers (
    teacher_id INT PRIMARY KEY,
    teacher_name VARCHAR(50),
    teacher_office VARCHAR(50)
);





Subjects Table

CREATE TABLE subjects (
    subject_id INT PRIMARY KEY,
    subject_name VARCHAR(50)
);


CREATE TABLE Enrollments (
    EnrollmentsID INT,
    StudentID INT PRIMARY KEY,
    ClassID INT,
    EnrollmentDate DATE,
    
);

CREATE TABLE grades (
    GradeID INT,
    EnrollmentID INT,
    Gradevalue,
    GradeDate DATE
    );

CREATE TABLE dicsplinaryAction (
    discplinaryActionID INT,
    studentID INT
    infractionType VARCHAR(100)
    infractionDate DATE

);

CREATE TABLE attendance (
    AttendanceID  INT
    StudentID INT
    AttendanceDate DATE 
    AttendanceStatus VARCHAR(50)
);


Classes Table

INSERT INTO classes (class_id, class_name, teacher_id, subject_id)
VALUES
(1, 'Math 101', 1, 1),
(2, 'Science 202', 2, 2),
(3, 'English 303', 3, 3);


Teachers Table

INSERT INTO teachers (teacher_id, teacher_name, teacher_office)
VALUES
(1, 'John Smith', 'Office 101'),
(2, 'Jane Doe', 'Office 202'),
(3, 'Bob Johnson', 'Office 303');


Subjects Table

INSERT INTO subjects (subject_id, subject_name)
VALUES
(1, 'Math'),
(2, 'Science'),
(3, 'English');


INSERT INTO attendance(Attendance_id Student_id Attendance_date Attendance_Status)
VALUES
(1,'d01', '1', '05.01.2002', 'good'),
(2,'d01', '2', '05.01.2002', 'very good'),
(3,'d01', '3', '05.01.2002', 'bad');

INSERT INTO discplinary_action (Discplinary_Action_id, Student_id, Infraction_date, infraction_type,)
VALUES
(1. 'D.A1', '1', '05.01.2002', 'vandalism'),
(2.'D.A2', '2', '06.01.2002', 'caught out of bound'),
(3.'D.A3', '3', '07.01.2002', 'missing rollcall');


INSERT INTO class (Class_id, Class_name, Grade_level,)
VALUES
(1,'william smith', 'g10',)
(2,'jemaine ndala', 'g10',)
(3,'jacob cole', 'g10',)
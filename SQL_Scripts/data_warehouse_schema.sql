-- Creating the Data Warehouse Schema

CREATE TABLE Dimension_Student (
    student_id INT PRIMARY KEY,
    gender VARCHAR(10),
    nationality VARCHAR(50),
    place_of_birth VARCHAR(50)
);

CREATE TABLE Dimension_Academics (
    academic_id INT PRIMARY KEY,
    education_level VARCHAR(20), -- Primary, Middle, High School
    grade VARCHAR(10),
    section VARCHAR(50),
    subject VARCHAR(50)
);

CREATE TABLE Dimension_Semester (
    semester_id INT PRIMARY KEY,
    semester_name VARCHAR(20) -- First Semester, Second Semester
);

CREATE TABLE Dimension_Attendance (
    attendance_id INT PRIMARY KEY,
    student_id INT,
    semester_id INT,
    total_absences INT,
    FOREIGN KEY (student_id) REFERENCES Dimension_Student(student_id),
    FOREIGN KEY (semester_id) REFERENCES Dimension_Semester(semester_id)
);

CREATE TABLE Fact_StudentEnrollment (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    academic_id INT,
    semester_id INT,
    hands_raised INT,
    resources_accessed INT,
    discussion_participation INT,
    absences INT,
    FOREIGN KEY (student_id) REFERENCES Dimension_Student(student_id),
    FOREIGN KEY (academic_id) REFERENCES Dimension_Academics(academic_id),
    FOREIGN KEY (semester_id) REFERENCES Dimension_Semester(semester_id)
);

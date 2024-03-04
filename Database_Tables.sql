--CREATE TABLE Student (
    Student_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Enrollment_Date DATE,
    Email VARCHAR(255),
    Phone VARCHAR(20),
    Major_ID INT,
    FOREIGN KEY (Major_ID) REFERENCES Department(Department_ID)
);

CREATE TABLE Course (
    Course_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Credit_Hours INT,
    Department_ID INT,
    Prerequisites VARCHAR(255),
    FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID)
);

CREATE TABLE Faculty (
    Faculty_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255),
    Phone VARCHAR(20),
    Office_Hours VARCHAR(255),
    Department_ID INT,
    FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID)
);

CREATE TABLE Classroom (
    Room_Number INT PRIMARY KEY,
    Maximum_Capacity INT
);

CREATE TABLE Enrollment (
    Enrollment_ID INT PRIMARY KEY,
    Student_ID INT,
    Course_ID INT,
    Enrollment_Date DATE,
    Grade VARCHAR(2),
    FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID),
    FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID)
);

CREATE TABLE Department (
    Department_ID INT PRIMARY KEY,
    Department_Name VARCHAR(255),
    Head_of_Department INT,
    FOREIGN KEY (Head_of_Department) REFERENCES Faculty(Faculty_ID)
);



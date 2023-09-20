-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS epic_ridge;

-- Use the database
USE epic_ridge;

-- Create the Users table
CREATE TABLE IF NOT EXISTS Users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(255) NOT NULL,
    lastName VARCHAR(255) NOT NULL,
    role ENUM('admin', 'student', 'parent', 'teacher') NOT NULL,
    profileImageUrl VARCHAR(255) DEFAULT 'default_profile_image_url',
    email VARCHAR(255) NOT NULL
);

-- Create the Admins table
CREATE TABLE IF NOT EXISTS Admins (
    userId INT PRIMARY KEY,
    password VARCHAR(255) NOT NULL,
    FOREIGN KEY (userId) REFERENCES Users(id)
);

-- Create the Students table
CREATE TABLE IF NOT EXISTS Students (
    admissionNumber VARCHAR(255) PRIMARY KEY,
    userId INT UNIQUE,
    FOREIGN KEY (userId) REFERENCES Users(id)
);

-- Create the Parents table
CREATE TABLE IF NOT EXISTS Parents (
    userId INT PRIMARY KEY,
    password VARCHAR(255) NOT NULL,
    FOREIGN KEY (userId) REFERENCES Users(id)
);

-- Create the Teachers table
CREATE TABLE IF NOT EXISTS Teachers (
    tscNumber VARCHAR(255) PRIMARY KEY,
    userId INT UNIQUE,
    password VARCHAR(255) NOT NULL,
    isClassTeacher BOOLEAN NOT NULL,
    FOREIGN KEY (userId) REFERENCES Users(id)
);

-- Create the Subjects table
CREATE TABLE IF NOT EXISTS Subjects (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    UNIQUE (name)
);

-- Create the Grades table
CREATE TABLE IF NOT EXISTS Grades (
    id INT AUTO_INCREMENT PRIMARY KEY,
    gradeName VARCHAR(255) NOT NULL,
    classTeacherId INT,
    FOREIGN KEY (classTeacherId) REFERENCES Teachers(userId)
);

-- Create the Grade_Student junction table for many-to-many relationship
CREATE TABLE IF NOT EXISTS Grade_Student (
    gradeId INT,
    studentId VARCHAR(255),
    PRIMARY KEY (gradeId, studentId),
    FOREIGN KEY (gradeId) REFERENCES Grades(id),
    FOREIGN KEY (studentId) REFERENCES Students(admissionNumber)
);

-- Create the Grade_Teacher junction table for many-to-many relationship
CREATE TABLE IF NOT EXISTS Grade_Teacher (
    gradeId INT,
    teacherId VARCHAR(255),
    PRIMARY KEY (gradeId, teacherId),
    FOREIGN KEY (gradeId) REFERENCES Grades(id),
    FOREIGN KEY (teacherId) REFERENCES Teachers(tscNumber)
);

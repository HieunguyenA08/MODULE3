CREATE DATABASE BT1;
USE BT1;
CREATE TABLE STUDENT(
IDSTUDENT INT PRIMARY KEY NOT NULL,
NAMESTUDENT VARCHAR(45),
AGE INT NULL,
COUNTRY VARCHAR(45)
);
CREATE TABLE CLASS(
IDCLASS INT PRIMARY KEY NOT NULL,
NAMECLASS NVARCHAR(50)
);
CREATE TABLE TEACHER (
IDTEACHER  INT PRIMARY KEY NOT NULL,
NAMETEACHER NVARCHAR(50),
AGE VARCHAR(10),
COUNTRY NVARCHAR(50)
);

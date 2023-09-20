CREATE DATABASE college;

CREATE TABLE Students(
    student_id serial  Primary Key,
    first_name text  Not Null,
    last_name text  Not Null,
    date_of_birth date,
    email text Unique
);

INSERT INTO Students(first_name,last_name ,   date_of_birth ,email )
VALUES
    ('John','Doe','1990-01-15','john.doe@example.com'),
    ('Jane','Smith','1992-05-20','jane.smith@example.com'),
    ('Michael','Johnson','1991-09-10','michael.johnson@example.com'),
    ('Emily','Davis','1993-03-25','emily.davis@example.com');

CREATE TABLE Teachers(
    teacher_id serial  Primary Key,
    first_name text  Not Null,
    last_name text  Not Null,
    date_of_birth date,
    email text  Unique,
    department text,
    hire_date date
);

INSERT INTO Teachers
(first_name,
last_name,
date_of_birth,
email,
department,
hire_date)
VALUES
    ('Professor','Anderson','1975-04-08','prof.anderson@example.com','Computer Science','2010-08-15'),
    ('Dr. Sarah','Wilson','1980-12-20','sarah.wilson@example.com','Mathematics','2015-05-02'),
    ('Mr. James','Brown','1978-06-14','james.brown@example.com','History','2009-11-11')

CREATE TABLE Courses(
    course_id serial  Primary Key,
    course_name text  Not Null,
    department text,
    credits numeric
    );

INSERT INTO Courses(
     course_name,
     department,
     credits)
VALUES
     ('Introduction to Programming','Computer Science',3),
     ('Calculus I','Mathematics',4),
     ('World History','History',3);
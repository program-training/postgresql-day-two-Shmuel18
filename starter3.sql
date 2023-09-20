-- Active: 1695123209154@@127.0.0.1@5432@college@public
CREATE TABLE StudyGroups (
    group_id serial PRIMARY KEY,
    group_name varchar(25)
);

INSERT INTO StudyGroups (group_name)
     VALUES 
     ('The Innovators'),
     ('The Developments'),
     ('The Creative Group'),
     ('The Sharing Group');

     CREATE TABLE StudentsInStudyGroups (
    student_group_id serial PRIMARY KEY,
    student_id integer REFERENCES Students(student_id),
    group_id integer REFERENCES StudyGroups(group_id)
);

INSERT INTO StudentsInStudyGroups (student_id,group_id)
     VALUES 
     (1,2),
     (1,4),
     (2,3),
     (3,2),
     (4,1);

SELECT *
FROM Students;

SELECT *
FROM Courses;

SELECT *
FROM Enrollments;

SELECT *
FROM TeacherCourse;

SELECT *
FROM Grades;

SELECT *
FROM StudyGroups;

SELECT *
FROM StudentsInStudyGroups;




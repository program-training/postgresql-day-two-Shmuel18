-- Active: 1695123209154@@127.0.0.1@5432@college@public
CREATE TABLE Enrollments (
    enrollment_id serial PRIMARY KEY,
    student_id integer REFERENCES Students(student_id),
    course_id integer REFERENCES Courses(course_id)
);

INSERT INTO Enrollments (student_id, course_id)
     VALUES 
     (1, 1),
     (2, 1),
     (3, 2),
     (4, 3),
     (1, 3);

CREATE TABLE TeacherCourse  (
    TeacherCourse_id serial PRIMARY KEY,
    teacher_id integer REFERENCES Teachers(teacher_id),
    course_id integer REFERENCES Courses(course_id)
);

INSERT INTO TeacherCourse (teacher_id, course_id)
     VALUES 
     (1, 1),
     (2, 2),
     (3, 3);
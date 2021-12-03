.open new.db
CREATE TABLE instructor (
name TEXT,
course_id TEXT
);

INSERT INTO instructor (name, course_id)
VALUES
(’Amy’,’CS1000’),
(’Aaron’,’CS700’),
(’Anne’,’CS400’);

CREATE TABLE student (
name TEXT,
course_id TEXT
);

INSERT INTO student (name, course_id)
VALUES
(’Jack’,’CS800’),
(’Jones’,’CS1000’),
(’Jason’, ’CS450’);


.schema
select * from instructor;
select * from student;


select instructor.course_id, instructor.name, student.name from instructor left join student on instructor.course_id=student.course_id
union
select student.course_id, instructor.name, student.name from student left join instructor on instructor.course_id=student.course_id;
.save new.db

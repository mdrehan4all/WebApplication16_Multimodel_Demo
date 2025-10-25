create database StudentInfoDb

use StudentInfoDb

create table Course (
   courseId int identity(1001, 1) constraint pk_courseId primary key,
   courseName varchar(100) not null,
   courseDuration varchar(100) not null,
   courseFee int not null,
)

create table Student(
   stuId int identity(10001, 1) constraint pk_stuId primary key,
   stuName varchar(100) not null,
   stuGender varchar(50) not null,
   stuDob date not null,
   stuPhone varchar(15) not null,
   courseId int,
   constraint fk_courseId foreign key (courseId) references Course(courseId)
 )

alter table Student add courseId int constraint fk_courseId foreign key references Course(courseId)

drop table Student;

insert course (courseName, courseDuration, courseFee)values('Java', '4 Months', 6500)
insert course (courseName, courseDuration, courseFee)values('C#', '3 Months', 6500)
insert course (courseName, courseDuration, courseFee)values('SQL', '3 Months', 3500)
insert course (courseName, courseDuration, courseFee)values('C++', '4 Months', 9500)
insert course (courseName, courseDuration, courseFee)values('PHP', '9 Months', 6500)

/*drop table Course*/

SELECT * FROM Course;
SELECT * FROM Student;

INSERT INTO Student (stuName, stuGender, stuDob, stuPhone, courseId)
values('Md Rehan', 'Male', '1996-06-20', '+918210614418', 1004);
INSERT INTO Student (stuName, stuGender, stuDob, stuPhone, courseId)
values('Md Nouman', 'Male', '1993-06-28', '+918409647627', 1002);
INSERT INTO Student (stuName, stuGender, stuDob, stuPhone, courseId)
values('Md Nouman', 'Male', '1993-06-28', '+918409647627', 1002);

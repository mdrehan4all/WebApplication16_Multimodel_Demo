use testdb;

CREATE TABLE student (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(255) NOT NULL,
    subject NVARCHAR(100) NOT NULL,
    course NVARCHAR(100) NOT NULL
);

INSERT INTO student (name, subject, course)
VALUES ('John Doe', 'Mathematics', 'BSc');

SELECT * FROM student;
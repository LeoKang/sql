CREATE TABLE department (
	dept_id varchar2(10),
	dept_name varchar2(20) NOT NULL, 
	office varchar2(20),
	CONSTRAINT pk_department PRIMARY Key(dept_id)
)

CREATE TABLE student (
	stu_id varchar2(10),
	resident_id varchar2(14) NOT NULL,
	name varchar2(10) NOT NULL,
	YEAR int,
	address varchar2(10),
	dept_id varchar2(10),
	CONSTRAINT pk_student PRIMARY KEY(stu_id),
	CONSTRAINT fk_student FOREIGN key(dept_id)
	REFERENCES department(dept_id)
)

CREATE TABLE professor (
	prof_id varchar2(10),
	resident_id varchar2(14) NOT NULL,
	name varchar2(10) NOT NULL,
	dept_id varchar2(10),
	POSITION varchar2(10),
	year_emp int,
	CONSTRAINT pk_professor PRIMARY key(prof_id),
	CONSTRAINT fk_professor foreign key(dept_id)
		REFERENCES department(dept_id)
)

CREATE TABLE course (
	course_id varchar2(10),
	title varchar2(14) NOT NULL,
	credit int,
	CONSTRAINT pk_course PRIMARY key(course_id)
)

CREATE TABLE class (
	class_id varchar2(10),
	course_id varchar2(10),
	YEAR int,
	semester int,
	division char(1),
	prof_id varchar2(10),
	classroom varchar2(9),
	enroll int,
	CONSTRAINT pk_class PRIMARY key(class_id),
	CONSTRAINT fk_class1 FOREIGN key(course_id)
	REFERENCES course(course_id),
	CONSTRAINT fk_class2 FOREIGN key(prof_id)
	REFERENCES professor(prof_id)
)

CREATE TABLE takes (
	stu_id varchar2(10),
	class_id varchar2(10),
	grade char(5),
	CONSTRAINT pk_takes PRIMARY key(stu_id, class_id),
	CONSTRAINT fk_takes1 FOREIGN key(stu_id)
	REFERENCES student(stu_id),
	CONSTRAINT fk_takes2 FOREIGN key(class_id)
	REFERENCES class(class_id)
)

ALTER TABLE student
ADD age int

ALTER TABLE student
DROP COLUMN age

SELECT * FROM tab;

purge recyclebin;

SELECT NAME 이름, POSITION AS 직위, 2026-YEAR_EMP 재직연수
FROM PROFESSOR

SELECT *
FROM STUDENT S1, STUDENT S2

SELECT S2.NAME
FROM STUDENT S1, STUDENT S2
WHERE S1.ADDRESS = S2.ADDRESS 
AND S1.NAME = '김광식'

SELECT *
FROM STUDENT
WHERE ADDRESS ='서울'

SELECT ADDRESS
FROM STUDENT
WHERE NAME='김광식'

SELECT S.NAME, D.DEPT_NAME
FROM STUDENT s, DEPARTMENT D
WHERE S.DEPT_ID = D.DEPT_ID 

SELECT NAME, STU_ID
FROM STUDENT
WHERE YEAR=3 OR YEAR=4
ORDER BY NAME desc, STU_ID

SELECT STUDENT.STU_ID, STUDENT.DEPT_ID
FROM STUDENT, DEPARTMENT
WHERE STUDENT.DEPT_ID = DEPARTMENT.DEPT_ID 
AND STUDENT.YEAR=3
AND DEPARTMENT.DEPT_NAME ='컴퓨터공학과'

SELECT NAME, DEPT_NAME
FROM STUDENT, DEPARTMENT
WHERE STUDENT.DEPT_ID =DEPARTMENT.DEPT_ID 

SELECT * FROM STUDENT

SELECT * FROM DEPARTMENT


SELECT STUDENT.NAME, STUDENT.STU_ID, DEPARTMENT.DEPT_NAME 
FROM STUDENT, DEPARTMENT
WHERE STUDENT.DEPT_ID =DEPARTMENT.DEPT_ID 

SELECT DEPT_ID, DEPT_NAME
FROM DEPARTMENT

SELECT NAME, STU_ID, DEPT_ID 
FROM STUDENT

SELECT NAME, 2026-YEAR_EMP
FROM PROFESSOR

SELECT RESIDENT_ID, STU_ID, NAME, YEAR
FROM STUDENT

SELECT DISTINCT ADDRESS
FROM STUDENT

SELECT * FROM DEPARTMENT

INSERT INTO STUDENT 
VALUES ('1292002', '900305*1730021', '강승진', 3, '서울', '921')

DELETE --SELECT *
FROM PROFESSOR
WHERE NAME ='김태석'

SELECT * FROM PROFESSOR

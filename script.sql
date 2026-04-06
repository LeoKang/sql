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

CREATE TABLE course (
	course_id varchar2(10),
	title varchar2(14) NOT NULL,
	credit int,
	CONSTRAINT pk_course PRIMARY key(course_id)
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

CREATE TABLE department (
	dept_id varchar2(10),
	dept_name varchar2(20) NOT NULL, 
	office varchar2(20),
	CONSTRAINT pk_department PRIMARY Key(dept_id)
)
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
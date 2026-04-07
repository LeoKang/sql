DROP TABLE professor

CREATE TABLE professor
(
prof_id varchar2(10) PRIMARY key,
resident_id varchar2(14) NOT NULL,
name varchar2(10) NOT NULL,
dept_id varchar2(10),
position varchar2(10),
year_emp int,
FOREIGN key(dept_id) REFERENCES department(dept_id)
);

INSERT INTO PROFESSOR  
   values('92001','590327*1839240','이태규',920,'교수',1997);

INSERT INTO PROFESSOR 
   values('92002','690702*1350026','고희석',920,'부교수',2003);

INSERT INTO PROFESSOR 
   values('92301','741011*2765501','최성희',923,'부교수',2005);

INSERT INTO PROFESSOR 
   values('92302','750728*1102458','김태석',923,'교수',1999);

INSERT INTO PROFESSOR 
   values('92501','620505*1200546','박철재',925,'조교수',2007);

INSERT INTO PROFESSOR 
   values('92502','740101*1830264','장민석',925,'부교수',2005);
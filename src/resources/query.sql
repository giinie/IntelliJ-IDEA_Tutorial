use
tutorial;

CREATE TABLE dept
(
    id   INT AUTO_INCREMENT
        PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    CONSTRAINT dept_name_uindex
        UNIQUE (name)
);

CREATE TABLE student
(
    id      CHAR(9)          NOT NULL
        PRIMARY KEY,
    name    VARCHAR(10)      NOT NULL,
    age     INT              NOT NULL,
    sex     CHAR DEFAULT 'M' NOT NULL,
    dept_id INT              NOT NULL,
    CONSTRAINT student_dept_id_fk
        FOREIGN KEY (dept_id) REFERENCES dept (id)
);

select *
from student;
select *
from dept;

select student.id,
       student.name,
       student.age,
       student.sex,
       dept.name as dept
from student,
     dept
where student.dept_id = dept.id;

INSERT INTO dept(id, name)
VALUES ('87', '건축학과');
INSERT INTO dept(id, name)
VALUES ('89', '경영학과');
INSERT INTO dept(id, name)
VALUES ('90', '게임콘텐츠과');
INSERT INTO dept(id, name)
VALUES ('91', '컴퓨터공학과');
INSERT INTO dept(id, name)
VALUES ('92', '정보통신학과');

INSERT INTO student(id, name, age, sex, dept_id)
VALUES ('201391128', '문상호', 26, 'M', 91);
INSERT INTO student(id, name, age, sex, dept_id)
VALUES ('201590107', '최민', 24, 'M', 90);
INSERT INTO student(id, name, age, sex, dept_id)
VALUES ('201687160', '최우철', 23, 'M', 87);
INSERT INTO student(id, name, age, sex, dept_id)
VALUES ('201691108', '강낙관', 23, 'M', 91);
INSERT INTO student(id, name, age, sex, dept_id)
VALUES ('201887190', '최문국', 21, 'M', 87);
INSERT INTO student(id, name, age, sex, dept_id)
VALUES ('201889124', '김태운', 21, 'M', 89);
INSERT INTO student(id, name, age, sex, dept_id)
VALUES ('201892105', '천민철', 21, 'M', 92);
INSERT INTO student(id, name, age, sex, dept_id)
VALUES ('201892110', '강성오', 21, 'M', 92);
INSERT INTO student(id, name, age, sex, dept_id)
VALUES ('201987129', '최기영', 20, 'M', 87);
INSERT INTO student(id, name, age, sex, dept_id)
VALUES ('201989118', '강웅재', 20, 'M', 89);

INSERT INTO student(id, name, age, sex, dept_id)
VALUES ('201387139', '박내경', 26, 'F', 87);
INSERT INTO student(id, name, age, sex, dept_id)
VALUES ('201390105', '안지연', 26, 'F', 90);
INSERT INTO student(id, name, age, sex, dept_id)
VALUES ('201790111', '정은혜', 22, 'F', 90);
INSERT INTO student(id, name, age, sex, dept_id)
VALUES ('201790137', '염소라', 22, 'F', 90);
INSERT INTO student(id, name, age, sex, dept_id)
VALUES ('201792147', '이래정', 22, 'F', 92);
INSERT INTO student(id, name, age, sex, dept_id)
VALUES ('201891185', '정향숙', 21, 'F', 91);
INSERT INTO student(id, name, age, sex, dept_id)
VALUES ('201990150', '안지연', 20, 'F', 90);
INSERT INTO student(id, name, age, sex, dept_id)
VALUES ('201990194', '최미주', 20, 'F', 90);
INSERT INTO student(id, name, age, sex, dept_id)
VALUES ('201991182', '서미선', 20, 'F', 91);
INSERT INTO student(id, name, age, sex, dept_id)
VALUES ('201992179', '김송은', 20, 'F', 92);
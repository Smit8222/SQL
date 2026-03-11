create database student;
use student;
create table student(RollNo int primary key, Name varchar(100));
insert into student values(2101001,	'ABHISHEK BHALAVI'),
(2101003,	'AGLAVE SURAJ SHAHU'),
(2101004,	'AHER CHETAN BALU'),
(2101005,	'AMATE PRANJALI GOKUL'),
(2101006,	'ANAS HASAN SIDDIQUE'),
(2101007,	'ANGADI SRUSHTI SANTOSH'),
(2101008,	'ANIVESH BHARNE'),
(2101009,	'ARYANSINGH AJITSINGH RANA'),
(2101010,	'BARGE PRABHAT PRAVIN');

select * from student;
create table marks(DBSM	int, IOT int, COM	int, DM int,PM int, ES int);
insert into marks values(9,	6,	6,	10,	7,	5),
(9,	16,	6,	12,	8,	23),
(9,	16,	12,	11,	14,	11),
(9,	9,	18,	13,	5,	24),
(9,	18,	21,	12,	24,	23),
(9,	22,	12,	23,	16,	20),
(9,	11,	19,	5,	13,	19),
(9,	21,	19,	23,	8,	15),
(9,	8,	20,	24,	7,	13),
(9,	14,	17,	7,	14,	11);

select * from marks;
ALTER TABLE marks
ADD RollNo INT;

ALTER TABLE marks
ADD CONSTRAINT fk_roll
FOREIGN KEY (RollNo)
REFERENCES student(RollNo);
UPDATE marks SET RollNo = 2101001 WHERE DBSM=9 LIMIT 1;
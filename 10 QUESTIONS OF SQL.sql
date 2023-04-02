CREATE DATABASE	employees;

CREATE TABLE WORKER(

	ID INT PRIMARY KEY ,
	FIRST CHAR(10),
	LAST CHAR(10),
	SALARY INT,
	JOINING DATETIME,
	DEPARTMENT  CHAR(10)
	   
);
SELECT * FROM WORKER;

INSERT INTO WORKER 

	(ID, FIRST , LAST ,SALARY, JOINING, DEPARTMENT) VALUES
	(1,'Khushal','Sharma',10,14-02-23,'HR')

INSERT INTO WORKER 

	(ID, FIRST , LAST ,SALARY, JOINING, DEPARTMENT) VALUES
	(2,'vishal','Sharma',20,14-02-23,'Manager'),
	(3,'karan','thakur',30,14-02-23,'admin')


	SELECT * FROM WORKER

--Question on SQL 

--Q1 - write date and time 
Select SYSDATETIME()

--Q2- select two letters from first name of employees ?

select substr(FIRST,1,2),LAST from WORKER

--Q3 Create duplicate table from worker table ?

create table  servants as Select  * from WORKER
select * from servants

-- Q4 Create same stucture of the table of worker , don't copy same data ?
create table worker2 as select * from WORKER where 1=0
select * from worker2

--Q5 write a Query to fetch first N Records ?
select * from WORKER limit 2

--Q6 Write first + last name ?
select  concat(first,'',last)  from WORKER

--Q7 last name ends with alphabet a and contains 5 letters ?
Select * from WORKER Last Like '_____a'

--Q8 write excluding khushal ?
Select * from WORKER first Not in ('khushal')

--Q9 write all departments only ?
select  DEPARTMENT from worker 

--Q10 Create a data base and worker table and solve all questions from 1  to 9 ?
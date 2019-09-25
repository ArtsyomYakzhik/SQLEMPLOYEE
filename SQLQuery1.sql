Create table EMPLOYEE(ID int primary key,
 NAME nvarchar(36),
 DEPARTMENT_ID int,
 CHIEF_ID int foreign key references EMPLOYEE(ID),
 POSITION nvarchar(36),
 SALARY int);
 Insert Into EMPLOYEE values (6, 'Pasha', 3, 4, 'Dev', 1000000),
 (5, 'Dima', 2, 0, 'CeanningManager', 100000),
 (4, 'Dima', 3, null, 'Chief', 100),
 (0, 'Slava', 2, null, 'Chief', 100000),
 (1, 'Stas', 2, 0, 'Dev', 500),
 (2, 'Slava', 2, 0, 'Devops', 500),
 (3, 'Dima', 2, 0, 'Test', 500);
--1
--ex1
Select Distinct min(NAME) From EMPLOYEE
Where DEPARTMENT_ID = 2
Group By  POSITION
--ex2
Select Distinct emp.NAME From EMPLOYEE emp
Inner join EMPLOYEE emp2
On emp.ID = emp2.ID
Where emp.DEPARTMENT_ID = 2

--2
Select emp.NAME From EMPLOYEE emp
Where emp.CHIEF_ID is Null AND 
emp.SALARY > (2*(Select avg(emp2.SALARY) From EMPLOYEE emp2 Where emp2.CHIEF_ID = emp.ID))
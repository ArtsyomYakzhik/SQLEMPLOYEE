--1
Select Distinct NAME From EMPLOYEE
Where DEPARTMENT_ID = SEARCHED_DEPATMENT_ID
Group By  POSITION
--2
Select emp.Name From EMPLOYEE emp
Where emp.CHIEF_ID = null AND emp.SALARY > (2 * (Select avg(emp2.SALARY) From EMPLOYEE emp2 Where emp2.CHIEF_ID = emp.CHIEF_ID))
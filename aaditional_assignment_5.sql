
create database employee from dbc 
as perm = 1000000 , spool = 200000 , temporary = 100000 ; 


CREATE TABLE CASESTUDY_5.EMP_2320950 
(
EmpID INT,
Salary INT,
Designation VARCHAR(30)
);

INSERT INTO CASESTUDY_5.EMP_2320950(EmpID, Salary, Designation) VALUES 
(1,50000, 'lead'); 
INSERT INTO CASESTUDY_5.EMP_2320950(EmpID, Salary, Designation) VALUES 
(2,30000, 'associate');
INSERT INTO CASESTUDY_5.EMP_2320950(EmpID, Salary, Designation) VALUES 
(3,60000, 'sr.associate');
INSERT INTO CASESTUDY_5.EMP_2320950(EmpID, Salary, Designation) VALUES 
(4,40000, 'lead');
INSERT INTO CASESTUDY_5.EMP_2320950(EmpID, Salary, Designation) VALUES 
(5,60000, 'śr.associate');
INSERT INTO CASESTUDY_5.EMP_2320950(EmpID, Salary, Designation) VALUES 
(6,20000, 'associate');
INSERT INTO CASESTUDY_5.EMP_2320950(EmpID, Salary, Designation) VALUES 
(7, 10000, 'associate');
INSERT INTO CASESTUDY_5.EMP_2320950(EmpID, Salary, Designation) VALUES 
(8,30000, 'associate');
INSERT INTO CASESTUDY_5.EMP_2320950(EmpID, Salary, Designation) VALUES
(9,50000, 'lead');





-- A) Write a query to fetch the sum of salaries given to each designation.

SELECT Designition, sum(Salary) 

FROM CASESTUDY_5.EMP_2320950

GROUP BY Designation;




-- B) Write a query to fetch employees whose designation is Associate, and increase their salary by 10000

SELECT EmpID, Salary+1000 AS Salary,Designation FROM CASESTUDY_5.EMP_2320950 WHERE Designation='associate':


-- C) Create a new column ‘Quant_Sal’, and populate the Quantile values for all 
-- 	the employees based on the salary column. (Quantile constant – 100


SELECT a.EmpID, a. Salary, (a.rn-1)*10 AS Quant_Sal,a.Designation FROM 
(
SELECT EmpID, Salary, row_number() over (order by Salary, EmpID) AS rn, Designation 
FROM 
CASESTUDY_5.EMP_2320950 )a;




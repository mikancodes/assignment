select database ; 
database employee ; 

CREATE TABLE TableName_2320846
, FALLBACK 
, NO AFTER JOURNAL 
, NO BEFORE JOURNAL 
(
	Emp_id integer not null primary key , 
	Emp_Name varchar(50) title 'Name' not null , 
	Years_of_exp integer  ,
	Salary integer , 
	Designation varchar(50)
) unique primary index (Emp_id) ; 

select * from TableName_2320846 ; 



Insert into TableName_2320846 values(1,'Robin',5,50000,'Lead'); 
Insert into TableName_2320846 values(2,'Sarah',NULL,30000,'Associate'); 
Insert into TableName_2320846 values(3,'Tom',6,60000,'Sr. Associate'); 
Insert into TableName_2320846 values(4,'Wills',4,40000,'Lead'); 
Insert into TableName_2320846 values(5,'Jon',NULL,60000,'Sr. Associate'); 


-- a)	Given the table above, perform all the possible Aggregate Functions based 
--on the salary (Min, Max, Sum, Count, Average etc.).
	select Min(salary) AS MIN_SALARY , 
	Max(salary) AS MAX_SALARY  ,
	Sum(salary) AS SUM_SALARY ,
	count(salary) AS COUNT_SALARY , 
	Avg(salary)  AS AVERAGE_SALARY 
	from TableName_2320846 ; 
	

-- b)	Calculate the average of salary without using Avg() Function.
	
	SELECT SUM(SALARY)/COUNT(SALARY) from TableName_2320846 ; 
	
	
-- c)	Select the employees with the years of experience NULL (Do not using any operator, such as '=', EQ).

	
	SELECT * from TableName_2320846 WHERE Years_of_exp IS NULL; 
	
	
-- d)	Sort the employee record based on the salary (highest to lowest).

	SELECT * from TableName_2320846 ORDER BY SALARY DESC ; 



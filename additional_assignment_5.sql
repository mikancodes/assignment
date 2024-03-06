select database ; 
drop table TableName_2320846 ;
CREATE TABLE TableName_2320846  
        ,FALLBACK
        ,NO BEFORE JOURNAL
        ,NO AFTER JOURNAL
        (
				Emp_id integer not null primary key , 
				Salary Integer, 
				Designation varchar(50)
        )
        UNIQUE PRIMARY INDEX( Emp_id );
        
select * from tablename_2320846 order by emp_id ; 
	


Insert Into TableName_2320846 values(1,50000,'Lead') ;
Insert Into TableName_2320846 values(2,30000,'Associate') ;
Insert Into TableName_2320846 values(3,60000,'Sr. Associate') ;
Insert Into TableName_2320846 values(4,40000,'Lead') ;
Insert Into TableName_2320846 values(5,60000,'Sr. Associate') ;
Insert Into TableName_2320846 values(6,20000,'Associate') ;
Insert Into TableName_2320846 values(7,10000,'Associate') ;
Insert Into TableName_2320846 values(8,30000,'Associate') ;
Insert Into TableName_2320846 values(9	,50000,'Lead ' ) ;



--
--1.	Write a query to fetch the sum of salaries given to each designation.

select t.* , 
	sum(salary) over(partition by Designation order by emp_id 
	rows between unbounded preceding and unbounded following) 
from tablename_2320846 t ; 






--2.	Write a query to fetch employees whose designation is Associate, and increase their salary by 10000


select emp_id ,(salary + 10000) as  salary , designation 
from tablename_2320846 
where designation = 'Associate'; 







--3.	Create a new column 'Quant_Sal', and populate the Quantile values for 
--		all the employees based on the salary column. (Quantile constant - 100)


SELECT 
	EMP_ID , 
	SALARY , 
	(A.RN-1) * 10 AS QUANT_SAL , 
	DESIGNATION 
	FROM (
	SELECT EMP_ID , SALARY, 
	ROW_NUMBER() OVER(ORDER BY SALARY,EMP_ID) 
	AS RN ,
	DESIGNATION
	FROM TABLENAME_2320846) A  ; 
	




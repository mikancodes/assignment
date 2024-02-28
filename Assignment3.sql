
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
        
select * from tablename_2320846 ; 
	

Insert Into TableName_2320846 values(1,50000,'Lead') ;
Insert Into TableName_2320846 values(2,30000,'Associate') ;
Insert Into TableName_2320846 values(3,60000,'Sr. Associate') ;
Insert Into TableName_2320846 values(4,40000,'Lead') ;
Insert Into TableName_2320846 values(5,60000,'Sr. Associate') ;
Insert Into TableName_2320846 values(6,20000,'Associate') ;
Insert Into TableName_2320846 values(7,10000,'Associate') ;
Insert Into TableName_2320846 values(8,30000,'Associate') ;
Insert Into TableName_2320846 values(9	,50000,'Lead ' ) ;


--a)	Create a column named 'Total' and populate the total amount of salary for each designation.

	select t.*  , sum(salary) 
	over(partition by designation order by emp_id 
	rows between unbounded preceding and unbounded following ) 
	as Total 
	from tablename_2320846 t ;






--b)	Find the average amount of salary for each designation with and without using Avg() Function.

	
	select sum(salary)/count(salary) as Average_salary from TableName_2320846 group by salary  ; 
	
	
	
	
	
--c)	Create a new column named 'Cumulative_Sal' 
--		and populate the cumulating sum of salary based on the order of employee ID.

		select 
		Emp_id,
		Salary , 
		sum(salary)
		over(order by emp_id 
		rows between unbounded preceding and current row) 
		as Cumulative_Sal , 
		designation 
		from tablename_2320846 t ; 
		
	
	
	
	
	
	

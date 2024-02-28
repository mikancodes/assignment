
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





--a)	Create a column named 'Count_des', and populate the total number of designation 
--		with the names of designation for the above table.
	
		select t.* , 
		count(*) 
		over(partition by designation
		rows between unbounded preceding and unbounded following
		) as Count_des
		from tablename_2320846 t 
		order by Emp_id; 
	








--b)	Create a new column named 'Move_Sal', and populate the moving sum of salary 
--		for 2 employees based on the order of Employee ID. 
--		For example: Refer below, Sum of salary for Empid 1 and 2 is populated in Move_sal. 
	--•	Sal(empid1)+Sal(empid2) = Move_Sal(emp_id2)
	--•	Sal(empid2) + Sal(empid3) = Move_Sal(empid3)
		
		
		select 
			Emp_id ,
			salary, 
			sum(salary) 
				over(order by emp_id
				rows between 1 preceding and current row
				) as Move_Sal , 
			designation
		from tablename_2320846 t ; 
		
		

		
		
		
		
	



































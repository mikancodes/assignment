create database employee from dbc 
as perm = 1000000 , spool = 200000 , temporary = 100000 ; 

create table employee.TableName_269905 
,FALLBACK 
,NO BEFORE JOURNAL 
,NO AFTER JOURNAL 
(
    Empid INTEGER NOT NULL PRIMARY KEY ,
    Emp_Name VARCHAR(50) ,
    Location VARCHAR(50) , 
    Salary INTEGER 
) UNIQUE PRIMARY INDEX (Empid);


INSERT INTO employee.TableName_269905 VALUES(1,'Robin','Chicago',50000);  
INSERT INTO employee.TableName_269905 VALUES(2,'Sarah','New York',30000);
INSERT INTO employee.TableName_269905 VALUES(3,'Tom','Chicago',60000); 
INSERT INTO employee.TableName_269905 VALUES(4,'Wills','Chicago',40000);
INSERT INTO employee.TableName_269905 VALUES(7,'Trex','New York',45000);
INSERT INTO employee.TableName_269905 VALUES(8,'Jess','Michigan',60000);


SELECT * FROM EMPLOYEE.TableName_269905 ORDER BY SALARY DESC ;

--
--a)    Write a query to find the highest salary from the above table.

SELECT MAX(SALARY) FROM EMPLOYEE.TableName_269905  ;

--b)    Write a query to find the lowest salary from the above table.

SELECT MIN(SALARY) FROM EMPLOYEE.TableName_269905 ; 

--c)    Write a query to find the second highest salary from the above table.

SELECT MAX(SALARY) FROM EMPLOYEE.TableName_269905 WHERE SALARY <> (SELECT MAX(SALARY) FROM EMPLOYEE.TableName_269905) ; 


--d)    Write a query to find the fourth highest salary from the above table.

SELECT MIN(SALARY) FROM (
SELECT TOP 5 * FROM EMPLOYEE.TableName_269905 ORDER BY SALARY DESC ) AS TB ;
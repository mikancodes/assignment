create database internship_2024 from dbc as perm=1000000000 , SPOOL = 3000000 , TEMPORARY = 200000 ;

CREATE TABLE internship_2024.csdaia24db002
        ,FALLBACK
        ,NO BEFORE JOURNAL
        ,NO AFTER JOURNAL
        (
        EMP_ID INTEGER TITLE 'EMP_ID' NOT NULL PRIMARY KEY
        ,EMP_Name VARCHAR(50) NOT NULL 
        CHAR(25)
        TITLE 'Name' NOT NULL
        )
        UNIQUE PRIMARY INDEX( EMP_ID );
    

  insert into internship_2024.csdaia24db002 values(2320572,'JALAJ RAGHAV');
  insert into internship_2024.csdaia24db002 values(2320928,'SAYAN MUKHERJEE');
  insert into internship_2024.csdaia24db002 values(2320828,'RAJANYA KAMILYA');
  insert into internship_2024.csdaia24db002 values(2320846,'SANTANU ADHIKARY');
  insert into internship_2024.csdaia24db002 values(2320440,'SUDIP KUMAR KUNDU');
  insert into internship_2024.csdaia24db002 values(2320529,'SHAMBHAVI SUKLA');
  insert into internship_2024.csdaia24db002 values(2320956,'MIMANSA YADAV');
  insert into internship_2024.csdaia24db002 values(2320382,'HARSHIT YADAV');
  insert into internship_2024.csdaia24db002 values(2320932,'AMRITHA NARAYANAKUTTY');
  insert into internship_2024.csdaia24db002 values(2320872,'GOWRI S');
  insert into internship_2024.csdaia24db002 values(2320539,'NANDINI T');
  insert into internship_2024.csdaia24db002 values(2320748,'CHANDRIKA PAWAR');
  insert into internship_2024.csdaia24db002 values(2320581,'LALITH KISHOR S');
  insert into internship_2024.csdaia24db002 values(2320762,'JAYESH GANESH PRADHAN');
  insert into internship_2024.csdaia24db002 values(2320570,'PRAJWAL MANNANGI');
  insert into internship_2024.csdaia24db002 values(2320670,'MOUNIKA NAGURU');
  insert into internship_2024.csdaia24db002 values(2320614,'PAZHANIVEL SENTHILMURUGAN');
  insert into internship_2024.csdaia24db002 values(2320408,'VEERENDRA ROHIT AMBATI');
 
 
 
 
  select * from internship_2024.csdaia24db002 ;
  
  
  
  ALTER TABLE internship_2024.csdaia24db002 
  ADD TRAINER_NAME VARCHAR(50), 
  ADD COACH_NAME VARCHAR(50);
    
  
  RENAME TABLE internship_2024.csdaia24db002 TO TERADATA_INFO;
  
  
  select * from internship_2024.TERADATA_INFO ;
  
  
  update internship_2024.TERADATA_INFO 
  set coach_name = 'Arthi Rajendra' , trainer_name  = 'Kavin Kumar' ;

  
    insert into internship_2024.TERADATA_INFO values(2620408,'SHREYOSEE DAS');
    insert into internship_2024.TERADATA_INFO values(2720408,'SHRIYA ADHIKARY');
    insert into internship_2024.TERADATA_INFO values(2820408,'TUHINA CHACKRABORY');
    insert into internship_2024.TERADATA_INFO values(2920408,'MEGHNA BERA');
    insert into internship_2024.TERADATA_INFO values(2520408,'SHALINI GHOSH');
    

  
  
  
  
  
  
  update internship_2024.TERADATA_INFO
  set emp_name  = 'Mikan'
  where emp_id = 2320846 ;

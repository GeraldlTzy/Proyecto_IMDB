/*
 * Creation tablespace SU
 */

--Connecting from system

CREATE TABLESPACE su_data
       DATAFILE 'C:\app\kakas\oradata\BD1GERALD\sudata01.dbf' 
       SIZE 10M
       REUSE
       AUTOEXTEND ON
       NEXT 512k
       MAXSIZE 200M;

CREATE TABLESPACE su_ind
       DATAFILE 'C:\app\kakas\oradata\BD1GERALD\suind01.dbf' 
       SIZE 10M
       REUSE
       AUTOEXTEND ON
       NEXT 512k
       MAXSIZE 200M;

CREATE USER su
       IDENTIFIED BY su
       DEFAULT TABLESPACE su_data
       QUOTA 10M ON su_data
       TEMPORARY TABLESPACE temp
       QUOTA 5M ON system ;
       --PROFILE app_user
       --PASSWORD EXPIRE;

--THIS CODE MUST BE EXECUTED FROM SYSTEM
    grant connect to su;
    grant create session to su;
    grant create table to su;
    grant create view to su;
    grant create any index to su;
    grant unlimited tablespace to su;
    GRANT CREATE SEQUENCE TO su;
    GRANT ALTER ANY SEQUENCE TO su;
    GRANT CREATE PROCEDURE TO su;
    GRANT CREATE TRIGGER TO su;

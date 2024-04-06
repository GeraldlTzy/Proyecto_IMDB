ConnectDB.insertUser(1, "Gerald", null,"Calderon", "Castro", "23/06/2004", "GeralC", 728234493, 95787602, "gerald@gmail.com", "\\@22[^Q8xhj#", 1);


delete from nationality;
drop sequence s_nationality;

CREATE SEQUENCE s_nationality
START WITH 1
INCREMENT BY 1
MINVALUE 1
MAXVALUE 1000000
NOCACHE
NOCYCLE;

CALL pkgBasic.insertNationality('Costarricense');
select * from nationality;


delete from sex;
drop sequence s_sex;

CREATE SEQUENCE s_sex
START WITH 1
INCREMENT BY 1
MINVALUE 1
MAXVALUE 1000000
NOCACHE
NOCYCLE;

select s_person.currval from dual;
select * from sex;
CALL pkgBasic.insertSex('Masculino');

delete from end_user;
drop sequence s_person;

CREATE SEQUENCE s_person
START WITH 1
INCREMENT BY 1
MINVALUE 1
MAXVALUE 1000000
NOCACHE
NOCYCLE;

CALL pkgBasic.insertTypeIdent('Cédula');
select * from typeofidentification;

---select studentFunctions.getNombre(20231251) as Nombre_Estudiante from dual;
call pkgEnd_user.insertUser(1,'Gerald', null, 'Calderón','Castro', TO_DATE('23/06/2004','DD/MM/YYYY'),EMPTY_BLOB(),
'GeraldC', 728234493, 9578760, 'gerald@gmail.com', '@22[^Q8xhj#', 1);

select * from 
end_user
inner join systemUser
on idUser = 3 and idUser = idSystemUser
inner join person
on idPerson = 3
;
call pkgEnd_user.deleteUser(3);

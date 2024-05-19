/***********************Insert basic information********************************/
call insertSex('Masculino');
call insertSex('Femenino');
/******************************************************************************/
call insertTypeIdent('Cédula');
call insertTypeIdent('Pasaporte');
call insertTypeIdent('Licencia de Conducir');
/******************************************************************************/
call insertPlatform('Netflix');
call insertPlatform('Amazon Prime Video');
call insertPlatform('HBO Max');
call insertPlatform('Disney+');
call insertPlatform('Hulu');
call insertPlatform('Sling TV');
call insertPlatform('Crunchyroll');
/******************************************************************************/
call insertTypeProduct('Película');
call insertTypeProduct('Serie');
call insertTypeProduct('Documental');
/******************************************************************************/
call insertTypeParticipant('Actor');
call insertTypeParticipant('Director');
call insertTypeParticipant('Productor');
call insertTypeParticipant('Guionista');
call insertTypeParticipant('Compositor');
call insertTypeParticipant('Editor');
/***************************INSERT ADMINISTRATOR*******************************/
#Falta de cambiar
/*call insertAdministrator(1,'Gerald', 'Estifén', 'Calderón','Castro', '23/06/2004',EMPTY_BLOB,
'GECC', 728234493, 95778760, 'gerald@gmail.com', '12345', 1, 69);
call (1,'José', 'David', 'Serrano','Robles', TO_DATE('08/03/2005', 'DD/MM/YYYY'),EMPTY_BLOB(),
'JDSR', 202321321, 89437643, 'jose@gmail.com', '54321', 1, 69);
*/
/***************************INSERT User****************************************/
ALTER TABLE systemuser MODIFY COLUMN email VARCHAR(50);
CALL insertUser(1,'Gerald', 'Estifén', 'Calderón','Castro', '2004-06-23',null,
'gerald', 728234493, 95778760, 'geraldcalderon@gmail.com', '12345', 1, 69);
CALL insertUser(1,'José', 'David', 'Serrano','Robles', '2005-03-08', null,
'jose', 202321321, 89437643, 'joseserrano@gmail.com', '54321', 1, 69);


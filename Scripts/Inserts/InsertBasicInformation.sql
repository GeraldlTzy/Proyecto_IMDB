/***********************Insert basic information********************************/
call pkgBasic.insertSex('Masculino');
call pkgBasic.insertSex('Femenino');
/******************************************************************************/
call pkgBasic.insertTypeIdent('Cédula');
call pkgBasic.insertTypeIdent('Pasaporte');
call pkgBasic.insertTypeIdent('Licencia de Conducir');
/******************************************************************************/
call pkgBasic.insertPlatform('Netflix');
call pkgBasic.insertPlatform('Amazon Prime Video');
call pkgBasic.insertPlatform('HBO Max');
call pkgBasic.insertPlatform('Disney+');
call pkgBasic.insertPlatform('Hulu');
call pkgBasic.insertPlatform('Sling TV');
call pkgBasic.insertPlatform('Crunchyroll');
/******************************************************************************/
call pkgBasic.insertTypeProduct('Película');
call pkgBasic.insertTypeProduct('Serie');
call pkgBasic.insertTypeProduct('Documental');
/******************************************************************************/
call pkgBasic.insertTypeParticipant('Actor');
call pkgBasic.insertTypeParticipant('Director');
call pkgBasic.insertTypeParticipant('Productor');
call pkgBasic.insertTypeParticipant('Guionista');
call pkgBasic.insertTypeParticipant('Compositor');
call pkgBasic.insertTypeParticipant('Editor');
/***************************INSERT ADMINISTRATOR*******************************/
call pkgAdmin.insertAdministrator(1,'Gerald', 'Estifén', 'Calderón','Castro', TO_DATE('23/06/2004','DD/MM/YYYY'),EMPTY_BLOB(),
'GECC', 728234493, 95778760, 'gerald@gmail.com', '12345', 1, 69);
call pkgAdmin.insertAdministrator(1,'José', 'David', 'Serrano','Robles', TO_DATE('08/03/2005', 'DD/MM/YYYY'),EMPTY_BLOB(),
'JDSR', 202321321, 89437643, 'jose@gmail.com', '54321', 1, 69);
/***************************INSERT User****************************************/
call pkgEnd_User.insertUser(1,'Gerald', 'Estifén', 'Calderón','Castro', TO_DATE('23/06/2004','DD/MM/YYYY'),EMPTY_BLOB(),
'gerald', 728234493, 95778760, 'geraldcalderon@gmail.com', '12345', 1, 69);
call pkgEnd_User.insertUser(1,'José', 'David', 'Serrano','Robles', TO_DATE('08/03/2005', 'DD/MM/YYYY'),EMPTY_BLOB(),
'jose', 202321321, 89437643, 'joseserrano@gmail.com', '54321', 1, 69);

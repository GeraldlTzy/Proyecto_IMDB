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
/******************************************************************************/
CALL insertCatalog('Acción'); 
CALL insertCatalog('Comedia');
CALL insertCatalog('Terror');
CALL insertCatalog('Romance');
CALL insertCatalog('Animado');

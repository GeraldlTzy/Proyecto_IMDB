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

--This script should be executed before inserting any data
--Sexes
INSERT INTO Sex(idsex,sexname)
VALUES (1, 'Masculino');

INSERT INTO Sex(idsex,sexname)
VALUES (2, 'Femenino');


Insert INTO TypeOfIdentification(IDTYPEIDENT,nameTypeIdent)
VALUES (1, 'Cédula');

Insert INTO TypeOfIdentification(IDTYPEIDENT,nameTypeIdent)
VALUES (2, 'Pasaporte');

Insert INTO TypeOfIdentification(IDTYPEIDENT,nameTypeIdent)
VALUES (3, 'Licencia de Conducir');


Insert INTO Platform(idPlatform,namePlatform)
VALUES (1, 'Netflix');

Insert INTO Platform(idPlatform,namePlatform)
VALUES (2, 'Amazon Prime Video');

Insert INTO Platform(idPlatform,namePlatform)
VALUES (3, 'HBO Max');

Insert INTO Platform(idPlatform,namePlatform)
VALUES (4, 'Disney+');

Insert INTO Platform(idPlatform,namePlatform)
VALUES (5, 'Hulu');

Insert INTO Platform(idPlatform,namePlatform)
VALUES (6, 'Sling TV');

Insert INTO Platform(idPlatform,namePlatform)
VALUES (7, 'Crunchyroll');



Insert INTO TypeOfProduct(idType,nickname)
VALUES (1,'Película');

Insert INTO TypeOfProduct(idType,nickname)
VALUES (2,'Serie');

Insert INTO TypeOfProduct(idType,nickname)
VALUES (3,'Documental');


Insert INTO TypeOfParticipant(idType,nametype)
VALUES (1,'Actor');

Insert INTO TypeOfParticipant(idType,nametype)
VALUES (2,'Director');

Insert INTO TypeOfParticipant(idType,nametype)
VALUES (3,'Productor');

Insert INTO TypeOfParticipant(idType,nametype)
VALUES (4,'Guionista');

Insert INTO TypeOfParticipant(idType,nametype)
VALUES (5,'Compositor');

Insert INTO TypeOfParticipant(idType,nametype)
VALUES (6,'Editor');

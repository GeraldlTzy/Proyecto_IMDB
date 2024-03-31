--This script should be executed before inserting any data
--Sexes
INSERT INTO Sex(idsex,sexname)
VALUES (1, 'Male');

INSERT INTO Sex(idsex,sexname)
VALUES (2, 'Female');


Insert INTO TypeOfIdentification(IDTYPEIDENT,nameTypeIdent)
VALUES (1, 'ID Card');

Insert INTO TypeOfIdentification(IDTYPEIDENT,nameTypeIdent)
VALUES (2, 'Passport');

Insert INTO TypeOfIdentification(IDTYPEIDENT,nameTypeIdent)
VALUES (3, 'Driving License');


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
VALUES (1,'Movie');

Insert INTO TypeOfProduct(idType,nickname)
VALUES (2,'Serie');

Insert INTO TypeOfProduct(idType,nickname)
VALUES (3,'Documentary');


Insert INTO TypeOfParticipant(idType,nametype)
VALUES (1,'Actor');

Insert INTO TypeOfParticipant(idType,nametype)
VALUES (2,'Director');

Insert INTO TypeOfParticipant(idType,nametype)
VALUES (3,'Producer');

Insert INTO TypeOfParticipant(idType,nametype)
VALUES (4,'Screenwriter');

Insert INTO TypeOfParticipant(idType,nametype)
VALUES (5,'Composer');

Insert INTO TypeOfParticipant(idType,nametype)
VALUES (6,'Editor');

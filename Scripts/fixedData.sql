--This script should be executed before inserting any data
--Sexes
INSERT INTO Sex(id_sex,sex_name)
VALUES (1, 'Male');

INSERT INTO Sex(id_sex,sex_name)
VALUES (2, 'Female');


--Types of ID
Insert INTO TypeOfIdentification(idTypeOfIdentification,nameTypeIdent)
VALUES (1, 'IdCard')

Insert INTO TypeOfIdentification(idTypeOfIdentification,nameTypeIdent)
VALUES (2, 'Passport')

Insert INTO TypeOfIdentification(idTypeOfIdentification,nameTypeIdent)
VALUES (3, 'Drivers License')


--Platforms
Insert INTO Platform(idPlatform,namePlatform)
VALUES (1, 'Netflix')

Insert INTO Platform(idPlatform,namePlatform)
VALUES (2, 'Amazon Prime Video')

Insert INTO Platform(idPlatform,namePlatform)
VALUES (3, 'HBO Max')

Insert INTO Platform(idPlatform,namePlatform)
VALUES (4, 'Dinsey+')

Insert INTO Platform(idPlatform,namePlatform)
VALUES (5, 'Hulu')

Insert INTO Platform(idPlatform,namePlatform)
VALUES (6, 'Sling TV')

Insert INTO Platform(idPlatform,namePlatform)
VALUES (7, 'Crunchyroll') 	


--Types of Product
Insert INTO TypeOfProduct(idType,nickname)
VALUES (1,"Movie")

Insert INTO TypeOfProduct(idType,nickname)
VALUES (2,"Series")

Insert INTO TypeOfProduct(idType,nickname)
VALUES (3,"Documentary")

--Types of Participant

Insert INTO TypeOfParticipant(idType,nickname)
VALUES (1,"Actor")

Insert INTO TypeOfParticipant(idType,nickname)
VALUES (2,"Director")

Insert INTO TypeOfParticipant(idType,nickname)
VALUES (3,"Producer")

Insert INTO TypeOfParticipant(idType,nickname)
VALUES (4,"Writer")

Insert INTO TypeOfParticipant(idType,nickname)
VALUES (5,"Composer")

Insert INTO TypeOfParticipant(idType,nickname)
VALUES (6,"Editor")

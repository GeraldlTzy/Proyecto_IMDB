delimiter //
CREATE OR REPLACE PROCEDURE deleteCountry(IN pId INT UNSIGNED)
BEGIN 
	DELETE FROM country
	WHERE idCountry = pId;
	COMMIT; 
END//
CREATE OR REPLACE PROCEDURE deleteCity(IN pId INT UNSIGNED)
BEGIN 
	DELETE FROM city
	WHERE idCity = pId;
	COMMIT;
END//
CREATE OR REPLACE PROCEDURE deleteTypeIdent(IN pId INT UNSIGNED)
BEGIN 
	DELETE FROM typeofidentification
	WHERE idTypeIdent = pId;
	COMMIT;
END//
CREATE OR REPLACE PROCEDURE deleteCatalog(IN pId INT UNSIGNED)
BEGIN 
	DELETE FROM `catalog`
	WHERE idCatalog = pId;
	COMMIT;
END//
CREATE OR REPLACE PROCEDURE deleteTypeProduct(IN pId INT UNSIGNED)
BEGIN 
	DELETE FROM typeofproduct
	WHERE idType = pId;
	COMMIT;
END//
CREATE OR REPLACE PROCEDURE deleteTypeParticipant(IN pId INT UNSIGNED)
BEGIN 
	DELETE FROM typeofparticipant
	WHERE idType = pId;
	COMMIT;
END//
CREATE OR REPLACE PROCEDURE deletePlatform(IN pId INT UNSIGNED)
BEGIN 
	DELETE FROM platform
	WHERE idPlatform = pId;
	COMMIT;
END//
CREATE OR REPLACE PROCEDURE deleteSex(IN pId INT UNSIGNED)
BEGIN 
	DELETE FROM sex
	WHERE idSex = pId;
	COMMIT;
END//
CREATE OR REPLACE PROCEDURE deleteKindship(IN pId INT UNSIGNED)
BEGIN 
	DELETE FROM `relative`
	WHERE idRelative = pId;
	COMMIT;
END//
CREATE OR REPLACE PROCEDURE removeParticipant(IN pIdParticipant INT UNSIGNED)
BEGIN
	START TRANSACTION;

	DELETE FROM ParticipantXRelative
    WHERE idParticipant = pIdParticipant
    OR idParticipant2 = pIdParticipant;
    
    DELETE FROM ParticipantXProduct
    WHERE idParticipant = pIdParticipant;
    
    DELETE FROM Participant
    WHERE idParticipant = pIdParticipant;
    
    DELETE FROM Person
    WHERE idPerson = pIdParticipant;

	COMMIT;
END;
//
CREATE OR REPLACE PROCEDURE deleteProduct(IN pIdProduct INT UNSIGNED)
BEGIN
	START TRANSACTION;

	DELETE FROM Product
    WHERE idProduct = pIdProduct;

	COMMIT;
END;
//
delimiter ;
delimiter ;

/*Stored procedures*/
DELIMITER //
CREATE OR REPLACE PROCEDURE insertPerson (
  IN pSex INT UNSIGNED, IN pFirstName varchar(20), IN pSecondName varchar(20), IN pFirstSurname varchar(20),
  IN pSecondSurname varchar(20), IN pBirthdate date, IN pPhoto BLOB, OUT pOutId int
)
 BEGIN
  	INSERT INTO Person(idSex, firstName, secondName, firstSurname,
        secondSurname, datebirth, photo)
	VALUES (pSex, pFirstName, pSecondName, pFirstSurname,
        pSecondSurname, pBirthdate, pPhoto);
	SET pOutId = last_insert_id(); 
 END;
//
CREATE OR REPLACE PROCEDURE insertSystemUser(
	IN pIdPerson int, IN pUsername varchar(20), IN pPhoneNumber int,
    IN pIdentification int, IN pEmail varchar(20), IN pPswd varchar(20), IN pIdTypeIdent int)
    BEGIN
	    DECLARE vIdIdent int UNSIGNED;
        
	    INSERT INTO systemUser (idSystemUser, username, phoneNumber,
        email, pswd)
        VALUES (pIdPerson, pUsername, pPhoneNumber, pEmail,
        pPswd);
    
        INSERT INTO Identification (idTypeIdent, identNumber)
        VALUES (pIdTypeIdent, pIdentification);
        SET vIdIdent = last_insert_id(); 
        INSERT INTO IdentXSystem(idIdent,idSystemUser)
        VALUES (vIdIdent, pIdPerson);
    END;
//
CREATE OR REPLACE PROCEDURE insertSex (
    IN pName varchar(10)
    )
    BEGIN
        INSERT INTO sex(sexName)
        VALUES (pName);
        COMMIT;
    END;
//
CREATE OR REPLACE PROCEDURE insertNationality(
    IN pName varchar(50)
    )
    BEGIN
        INSERT INTO nationality (name)
        VALUES (pName);
        COMMIT;
    END;
// 
CREATE OR REPLACE PROCEDURE insertNationalityPerson (IN pIdNationality int, IN pIdPerson int)
    BEGIN
        INSERT INTO NationalityPerson (idNationality, idPerson)
        VALUES (pIdNationality, pIdPerson);
        COMMIT;
    END;
//
CREATE OR REPLACE PROCEDURE insertTypeIdent (IN pName varchar(20))
    BEGIN
        INSERT INTO typeOfIdentification(nameTypeIdent)
        VALUES (pName);
        COMMIT;
    END;
//
CREATE OR REPLACE PROCEDURE insertCountry (IN pName varchar(100))
    BEGIN
        INSERT INTO country(nameCountry)
        VALUES (pName);
        COMMIT;
    END;
//
CREATE OR REPLACE PROCEDURE insertCity (IN pIdCountry int, IN pName varchar(100))
    BEGIN
        INSERT INTO city(idCountry, nameCity)
        VALUES (pIdCountry, pName);
        COMMIT;
    END;
//
CREATE OR REPLACE PROCEDURE insertTypeParticipant(IN pNameType varchar(100))
    BEGIN
        INSERT INTO typeOfParticipant (nameType)
        VALUES(pNameType);
        COMMIT;
    END;
//
CREATE OR REPLACE PROCEDURE insertCatalog(IN pGenre varchar(20))
    BEGIN
        INSERT INTO catalog (genre)
        VALUES(pGenre);
        COMMIT;
    END;
//
CREATE OR REPLACE PROCEDURE insertTypeProduct(IN pName varchar(100))
    BEGIN
        INSERT INTO typeOfProduct(nickname)
        VALUES (pName);
        COMMIT;
    END;
//
CREATE OR REPLACE PROCEDURE insertPlatform(IN pName varchar(20))
    BEGIN
        INSERT INTO Platform (namePlatform)
        VALUES (pName);
        COMMIT;
    END;
//
CREATE OR REPLACE PROCEDURE getSystemUserInfo(IN pUsername VARCHAR(20), IN pPswd VARCHAR(20))
BEGIN
    DECLARE vId INT DEFAULT NULL;
    DECLARE vUserType INT DEFAULT NULL;

    /*Search reference in table administrator*/
    /*Por alguna razón esto retorna NULL y un INNER JOIN no*/
    SELECT ad.idAdministrator, 2 INTO vId, vUserType
    FROM SystemUser sy
    LEFT JOIN Administrator ad ON ad.idAdministrator = sy.idSystemUser 
    WHERE sy.username = pUsername AND sy.pswd = pPswd;

    /*Search reference in table end_user*/
    IF vId IS NULL THEN
        SELECT us.idUser, 1 INTO vId, vUserType
        FROM End_user us
        INNER JOIN SystemUser sy ON us.idUser = sy.idSystemUser 
        WHERE sy.username = pUsername AND sy.pswd = pPswd;
    END IF;

    /*Cursor? Maybe*/
    IF vId IS NOT NULL THEN
        SELECT vUserType, pe.idPerson, pe.firstName, pe.firstSurname, pe.datebirth,
        pe.photo, su.username, su.phoneNumber, su.email, su.pswd, sex.SexName
        FROM Person pe, SystemUser su, Sex sex
        WHERE su.idSystemUser = vId
        AND pe.idPerson = vId
        AND pe.idSex = sex.idSex;
    END IF;
END
//
/*******************CONTINUAR APARTIR DE ACÁ***************/
CREATE OR REPLACE FUNCTION validateRegister(
    IN pUsername VARCHAR(20), 
    IN pEmail VARCHAR(20)
)
RETURNS BOOLEAN
BEGIN
    DECLARE usernamesCount INT;
    DECLARE emailsCount INT;
    
    SELECT COUNT(*) INTO usernamesCount 
    FROM systemuser 
    WHERE username = pUsername;
    
    SELECT COUNT(*) INTO emailsCount
    FROM systemuser
    WHERE email = pEmail;
    
    IF usernamesCount = 0 AND emailsCount = 0 THEN
        RETURN TRUE;
    ELSE
        RETURN FALSE;
    END IF;
END
//

CREATE OR REPLACE PROCEDURE getNationality(IN pIdNationality int)
    BEGIN
        SELECT idNationality, name
        FROM nationality
        WHERE idNationality = NVL(pIdNationality, idNationality);
    END;
//  
CREATE OR REPLACE PROCEDURE getTypeOfId()
    BEGIN
        SELECT idTypeIdent, nameTypeIdent
        FROM TypeOfIdentification;
    END;
//
CREATE OR REPLACE PROCEDURE insertBinnacle(IN pIdProduct int UNSIGNED, IN pOldPrice int,
	IN pNewPrice int, IN pDateBinnacle DATE) 
    BEGIN
        INSERT INTO Binnacle(IdProduct,oldPrice,newPrice,dateBinnacle)
        VALUES (pIdProduct,pOldPrice,pNewPrice, pDateBinnacle);
        /*---COMMIT;*/
    END;
//
CREATE OR REPLACE PROCEDURE getInfoInsertParticipant()
   BEGIN
        SELECT idNationality, name, 'Nationality' as fuente from nationality
        UNION
        /*SELECT idSex, sexname, 'Sex' as fuente from sex
        UNION */
        SELECT c.idCity AS city_id, co.nameCountry || ', ' || c.nameCity AS city_country, 'City' as fuente
        FROM city c
        INNER JOIN country co ON c.idCountry = co.idCountry
        ORDER BY name;    
    END;
//
CREATE OR REPLACE PROCEDURE getParticipants()
    BEGIN
        SELECT idPerson, firstName || ' ' || secondName || ' ' || firstSurname
        || ' ' || secondSurname fullname, photo
        FROM Person pe
        INNER JOIN Participant pa
        ON pe.idPerson = pa.idParticipant;
    END;
//
CREATE OR REPLACE PROCEDURE getCountries()
    BEGIN
        SELECT idCountry, nameCountry
        FROM Country
        ORDER BY nameCountry;
    END;
//
CREATE OR REPLACE PROCEDURE getCities()
	BEGIN
        SELECT ct.idCity, co.nameCountry || ', ' || ct.nameCity
        FROM City ct
        INNER JOIN country co
        ON ct.idCountry = co.idCountry
        ORDER BY nameCountry;
    END;
//
CREATE OR REPLACE PROCEDURE getTypesIdents()
    BEGIN
        SELECT idTypeIdent, nameTypeIdent
        FROM typeOfIdentification;
    END;
//
CREATE OR REPLACE PROCEDURE getCatalogs()
    BEGIN
        SELECT idCatalog, genre
        FROM Catalog;
    END;
//
CREATE OR REPLACE PROCEDURE getTypesProducts()
	BEGIN
        SELECT idType, nickname
        FROM typeOfProduct;
    END;
//

CREATE OR REPLACE PROCEDURE getTypesParticipant()
	BEGIN

        SELECT idType, nameType
        FROM typeOfParticipant;
	END;
//    
CREATE OR REPLACE PROCEDURE getPlatforms()
    BEGIN
        SELECT idPlatform, namePlatform
        FROM Platform;
    END;
//
CREATE OR REPLACE PROCEDURE getSexs()
    BEGIN
        SELECT idSex, sexName
        FROM sex;
    END;
//
/**************************Setters*****************************************/
CREATE OR REPLACE PROCEDURE setNationality (
	IN pId int UNSIGNED, IN pName varchar(50))
    BEGIN
        UPDATE Nationality
            SET name = pName
        WHERE idNationality = pId;
        COMMIT;
    END;
//
CREATE OR REPLACE PROCEDURE setCountry (
	IN pId int UNSIGNED, IN pName varchar(100))
    BEGIN
        UPDATE Country
            SET nameCountry = pName
        WHERE idCountry = pId;
        COMMIT;
    END;
//
CREATE OR REPLACE PROCEDURE setCity (
	IN pId int UNSIGNED, IN pName varchar(100))
    BEGIN
        UPDATE City
            SET nameCity = pName
        WHERE idCity = pId;
        COMMIT;
    END;
//
CREATE OR REPLACE PROCEDURE setTypeIdent (
	IN pId int UNSIGNED, IN pName varchar(20))
    BEGIN
        UPDATE TypeOfIdentification
            SET nameTypeIdent = pName
        WHERE idTypeIdent = pId;
        COMMIT;
    END;
//
CREATE OR REPLACE PROCEDURE setCatalog (
	IN pId int UNSIGNED, IN pName varchar(20))
    BEGIN
        UPDATE Catalog
            SET genre = pName
        WHERE idCatalog = pId;
        COMMIT;
    END;
//
CREATE OR REPLACE PROCEDURE setTypeProduct (
	IN pId int UNSIGNED, IN pName varchar(100))
    BEGIN
        UPDATE TypeOfProduct
            SET nickname = pName
        WHERE idType = pId;
        COMMIT;
    END;
//   
CREATE OR REPLACE PROCEDURE setTypeParticipant (
	IN pId int UNSIGNED, IN pName varchar(100))
    BEGIN
        UPDATE TypeOfParticipant
            SET nameType = pName
        WHERE idType = pId;
        COMMIT;
    END;
//   
CREATE OR REPLACE PROCEDURE setPlatform (
	IN pId int UNSIGNED, IN pName varchar(20))
    BEGIN
        UPDATE Platform
            SET namePlatform = pName
        WHERE idPlatform = pId;
        COMMIT;
    END;
//
CREATE OR REPLACE PROCEDURE setSex (
	IN pId int UNSIGNED, IN pName varchar(10))
    BEGIN
        UPDATE Sex
            SET sexName = pName
        WHERE idSex = pId;
        COMMIT;
    END;
//
DELIMITER ;

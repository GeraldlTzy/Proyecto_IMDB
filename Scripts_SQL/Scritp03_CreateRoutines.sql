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
        SELECT idPerson, CONCAT(firstName, ' ', secondName, ' ', firstSurname,
        ' ', secondSurname) fullname, photo
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
        SELECT ct.idCity, CONCAT(co.nameCountry, ', ',ct.nameCity)
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
/*****************************************************************************/
/*User routines*/
CREATE OR REPLACE PROCEDURE insertUser(IN pSex int UNSIGNED, IN pFirstName varchar(20), 
	IN pSecondName varchar(20), IN pFirstSurname varchar(20), IN pSecondSurname varchar(20),
	IN pDatebirth DATE, IN pPhoto BLOB, IN pUsername varchar(20), IN pIdentification int,
    IN pPhoneNumber int, IN pEmail varchar(20), IN pPswd varchar(20), IN pIdTypeIdent int UNSIGNED,
    pidOut int UNSIGNED)
    BEGIN
	    DECLARE pOutId int;
        CALL insertPerson(pSex, pFirstName, pSecondName, pFirstSurname, pSecondSurname,
        pDatebirth, pPhoto, pOutId);

        CALL insertSystemUser(pOutId, pUsername, pPhoneNumber, pIdentification,
        pEmail, pPswd, pIdTypeIdent);
        
        INSERT INTO end_user (idUser)
        VALUES (pOutId);
        
        SET pidOut = pOutId;
        
        COMMIT;
    END;
//
/*Administrator routines*/
CREATE OR REPLACE PROCEDURE insertAdministrator(IN pSex int UNSIGNED, IN pFirstName varchar(20), 
	IN pSecondName varchar(20), IN pFirstSurname varchar(20), IN pSecondSurname varchar(20),
	IN pDatebirth DATE, IN pPhoto BLOB, IN pUsername varchar(20), IN pIdentification int,
    IN pPhoneNumber int, IN pEmail varchar(20), IN pPswd varchar(20), IN pIdTypeIdent int UNSIGNED,
    pidOut int UNSIGNED)
    BEGIN
	    DECLARE pOutId int;
        CALL insertPerson(pSex, pFirstName, pSecondName, pFirstSurname, pSecondSurname,
        pDatebirth, pPhoto, pOutId);

        CALL insertSystemUser(pOutId, pUsername, pPhoneNumber, pIdentification,
        pEmail, pPswd, pIdTypeIdent);
        
        INSERT INTO administrator (idAdministrator)
        VALUES (pOutId);
        
        SET pidOut = pOutId;
        
        COMMIT;
    END;
//


#Product routines
CREATE OR REPLACE PROCEDURE insertProduct(IN pIdType INT, IN pReleaseYear INT, IN pTitle VARCHAR(200),
    IN pDuration INT, IN pSynopsis VARCHAR(1000), IN pTrailer VARCHAR(1000), IN pPrice INT, OUT pIdProduct INT)
    BEGIN     
        INSERT INTO Product(idType, releaseYear, title, duration, synopsis, trailer, price)
        VALUES (pIdType, pReleaseYear, pTitle, pDuration, pSynopsis, pTrailer, pPrice);
        COMMIT;
        SET pIdProduct = LAST_INSERT_ID();
    END;
//
CREATE OR REPLACE PROCEDURE updateProduct(IN pIdProduct INT, IN pIdType INT, IN pReleaseYear INT, IN pTitle VARCHAR(200),
    IN pDuration INT, IN pSynopsis VARCHAR(1000), IN pTrailer VARCHAR(1000), IN pPrice INT)
    BEGIN
        UPDATE Product
        SET idType = pIdType, 
            releaseYear = pReleaseYear, 
            title = pTitle, 
            duration = pDuration, 
            synopsis = pSynopsis, 
            trailer = pTrailer, 
            price = pPrice
        WHERE idProduct = pIdProduct;
        COMMIT;
    END;
//
CREATE OR REPLACE PROCEDURE addParticipant(IN pIdProduct INT, IN pIdParticipant INT, IN pRol INT)
    BEGIN
        INSERT INTO ParticipantXProduct(idProduct, idParticipant, rol)
        VALUES (pIdProduct, pIdParticipant, pRol);
        COMMIT;
    END;
//
CREATE OR REPLACE PROCEDURE deleteParticipant(IN pIdProduct INT, IN pIdParticipant INT)
    BEGIN
        DELETE FROM ParticipantXProduct
        WHERE idProduct = pIdProduct AND idParticipant = pIdParticipant;
        COMMIT;
    END;
//
CREATE OR REPLACE PROCEDURE addSeason(IN pIdProduct INT, IN pNumberSeason INT, OUT pIdSeason INT)
    BEGIN
        INSERT INTO Season(idProduct, numberSeason)
        VALUES (pIdProduct, pNumberSeason);
        SET pIdSeason = LAST_INSERT_ID();
        COMMIT;
    END;
//
CREATE OR REPLACE PROCEDURE removeSeason(IN pIdSeason INT)
    BEGIN
        DELETE FROM Season
        WHERE idSeason = pIdSeason;
        COMMIT;
    END;
//
CREATE OR REPLACE PROCEDURE addEpisode(IN pIdSeason INT, IN pNumberEpisode INT, IN pName VARCHAR(20),
    IN pDuration INT)
    BEGIN
        INSERT INTO Episode(idSeason, numberEpisode, name, duration)
        VALUES (pIdSeason, pNumberEpisode, pName, pDuration);
        COMMIT;
    END;
//
CREATE OR REPLACE PROCEDURE removeEpisode(IN pIdEpisode INT)
    BEGIN
        DELETE FROM Episode
        WHERE idEpisode = pIdEpisode;
        COMMIT;
    END;
//
CREATE OR REPLACE PROCEDURE addPhoto(IN pIdProduct INT, IN pImage BLOB)
    BEGIN
        INSERT INTO photo(idProduct, image)
        VALUES (pIdProduct, pImage);
        COMMIT;
    END;
//
CREATE OR REPLACE PROCEDURE removePhoto (IN pIdPhoto INT)
    BEGIN
        DELETE FROM Photo
        WHERE idPhoto = pIdPhoto;
        COMMIT;
    END;
//
CREATE OR REPLACE PROCEDURE getProducts()
    BEGIN
         SELECT pro.idProduct, pro.title, pho.image
         FROM product pro
         LEFT JOIN photo pho
         ON pro.idProduct = pho.idProduct;
    END;
//
CREATE OR REPLACE PROCEDURE getProductInfo(IN pIdProduct INT)
   BEGIN
         SELECT idProduct, idType, releaseYear, title, duration, trailer,
         synopsis, price
         FROM product pro 
         WHERE idProduct = pIdProduct;
   END;
//   
CREATE OR REPLACE PROCEDURE getProductParticipants(IN pIdProduct INT)
	BEGIN
         SELECT pro.idParticipant, per.firstName, per.firstSurname, typeP.nameType 
         FROM participantXproduct pro 
         INNER JOIN Person per
         ON pro.idParticipant = per.idPerson
         INNER JOIN typeOfParticipant typeP
         ON pro.rol = typeP.idType
         WHERE pro.idProduct = pIdProduct;
   END;
//
CREATE OR REPLACE PROCEDURE getProductSeasons(IN pIdProduct INT)
	BEGIN
         SELECT sea.idSeason, sea.numberSeason, epi.idEpisode,
         	epi.numberEpisode, epi.name, epi.duration
         FROM season sea
         INNER JOIN product pro
         ON pro.idProduct = pIdProduct AND sea.idProduct = pro.idProduct
         LEFT JOIN episode epi
         ON sea.idProduct = pIdProduct
         AND sea.idSeason = epi.idSeason
         ORDER BY sea.idSeason ASC;
	END;
//
CREATE OR REPLACE PROCEDURE getProductImages(IN pIdProduct INT)        
	BEGIN
         SELECT idPhoto, image FROM Photo
         WHERE idProduct = pIdProduct;
   END;
//
CREATE OR REPLACE PROCEDURE getProductGenres(IN pIdProduct INT)
	BEGIN
         SELECT ca.idCatalog, ca.Genre
         FROM CatalogXProduct cxp
         INNER JOIN Catalog ca
         ON cxp.idCatalog = ca.idCatalog
         AND cxp.idProduct = pIdProduct;
	END;
//
CREATE OR REPLACE PROCEDURE getProductPlatforms(IN pIdProduct INT)
	BEGIN
         SELECT pa.idPlatform, pa.namePlatform
         FROM ProductXPlatform pxp
         INNER JOIN Platform pa
         ON pxp.idPlatform = pa.idPlatform
         AND pxp.idProduct = pIdProduct;        
    END;
//
CREATE OR REPLACE PROCEDURE getFullReview(IN pIdProduct INT)
    BEGIN
         SELECT co.idUser, stu.username, co.description, co.creation_date, re.stars
         FROM PRODUCT PRO
         INNER JOIN REVIEW RE
         ON RE.IDPRODUCT = PRO.IDPRODUCT AND PRO.IDPRODUCT = pIdProduct
         INNER JOIN COMMENTARY co
         ON co.idUser = re.idUser AND co.idProduct = re.idProduct
         INNER JOIN systemUser stu
         ON co.idUser = stu.idSystemUser;
    END;
//
CREATE OR REPLACE PROCEDURE addGenre (IN pIdProduct INT, IN pIdGenre INT)
    BEGIN
        INSERT INTO CatalogXProduct(idProduct, idCatalog)
        VALUES (pIdProduct, pIdGenre);
        COMMIT;
    END;
//
CREATE OR REPLACE PROCEDURE addPlatform (IN pIdProduct INT, IN pIdPlatform INT)
    BEGIN
        INSERT INTO ProductXPlatform(idProduct, idPlatform)
        VALUES (pIdProduct, pIdPlatform);
        COMMIT;
    END;
//
CREATE OR REPLACE PROCEDURE getProductStatistics()
   BEGIN 
      	SELECT @vTotalProducts := COUNT(*) FROM Product;
      	SELECT c.genre AS genre, 100*COUNT(*)/@vTotalProducts AS percentage, count(*) AS ProductsByGenre
         FROM CatalogXProduct cxp
         INNER JOIN Catalog c
         ON c.idCatalog = cxp.idCatalog
         GROUP BY cxp.idCatalog,c.genre
         UNION SELECT 'Total',@vTotalProducts,null FROM dual;
   END;
//
CREATE OR REPLACE PROCEDURE getUsersStatisticsByAge()
	BEGIN
         SELECT su.username,p.datebirth,p.idSex,TRUNC((SYSDATE - DATEBIRTH)/365) AS age
         FROM Person p
         INNER JOIN End_user u
         ON p.idPerson = u.idUser
         INNER JOIN systemUser su
         ON u.idUser = su.idSystemUser
         ORDER BY p.idSex;
	END;
//
CREATE OR REPLACE PROCEDURE getUsersStatisticsBySex()
	BEGIN
            SELECT s.sexName AS sex, count(*) AS persons
            FROM Person p
            INNER JOIN sex s
            ON s.idSex = p.idSex
            RIGHT JOIN systemUser su
            ON p.idPerson = su.idSystemUser
            GROUP BY s.sexName;
   END;
//
CREATE OR REPLACE PROCEDURE getProductsXGenre()
	BEGIN
            SELECT p.title, c.genre, p.idProduct
            FROM Product p
            INNER JOIN CatalogXProduct cxp
            ON p.idProduct = cxp.idProduct
            INNER JOIN Catalog c
            ON c.idCatalog = cxp.idCatalog
            ORDER BY p.idProduct;
            
    END;
//    
DELIMITER ;

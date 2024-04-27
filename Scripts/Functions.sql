CREATE OR REPLACE PACKAGE pkgBasic AS
    PROCEDURE insertPerson(pSex IN NUMBER, pFirstName IN VARCHAR2, pSecondName IN VARCHAR2,
    pFirstSurname IN VARCHAR2, pSecondSurname IN VARCHAR2, pDatebirth IN DATE, pPhoto IN BLOB,
    pIdNationality IN NUMBER, pOutId OUT NUMBER);
    PROCEDURE insertSystemUser(pIdPerson IN NUMBER, pUsername IN VARCHAR2, pPhoneNumber IN NUMBER,
    pIdentification IN NUMBER, pEmail IN VARCHAR2, pPswd IN VARCHAR2, pIdTypeIdent IN NUMBER);
    
    PROCEDURE insertSex(pName IN VARCHAR2);
    PROCEDURE insertNationality (pName IN VARCHAR2);
    PROCEDURE insertNationalityPerson (pIdNationality IN NUMBER, pIdPerson IN NUMBER);
    PROCEDURE insertTypeIdent (pName IN VARCHAR2);
    PROCEDURE insertCountry (pName IN VARCHAR2);
    PROCEDURE insertCity (pIdCountry IN NUMBER, pName IN VARCHAR2);
    PROCEDURE insertTypeParticipant(pNameType IN VARCHAR2);
    PROCEDURE insertCatalog (pGenre IN VARCHAR2);
    PROCEDURE insertTypeProduct(pName IN VARCHAR2);
    PROCEDURE insertPlatform(pName IN VARCHAR2);
    FUNCTION getSystemUserInfo(pUsername IN VARCHAR2, pPswd IN VARCHAR2) RETURN SYS_REFCURSOR;
    FUNCTION validateRegister(newUsername IN VARCHAR2, newEmail IN VARCHAR2, newPhone IN NUMBER) RETURN SYS_REFCURSOR;
    FUNCTION getNationality(pIdNationality IN NUMBER) RETURN SYS_REFCURSOR;
    FUNCTION getTypeOfId RETURN SYS_REFCURSOR;
    PROCEDURE insertBinnacle(pIdProduct NUMBER, pOldPrice NUMBER, pNewPrice NUMBER,
                        pDateBinnacle DATE);
    FUNCTION getInfoInsertParticipant(pIdParticipant IN NUMBER) RETURN SYS_REFCURSOR;
    
    PROCEDURE getInfoCreationProduct (
        cursorParticipants OUT SYS_REFCURSOR,
        cursorTypeOfParticipant OUT SYS_REFCURSOR,
        cursorTypeOfProduct OUT SYS_REFCURSOR
    );
    PROCEDURE getInfoRegister (cursorSex OUT SYS_REFCURSOR, cursorTypeOfId OUT SYS_REFCURSOR, 
        cursorNationalities OUT SYS_REFCURSOR);
    /*Añadir procedimientos para borrar y editar*/
END pkgBasic;
/
CREATE OR REPLACE PACKAGE BODY pkgBasic AS
    PROCEDURE insertPerson(pSex IN NUMBER, pFirstName IN VARCHAR2, pSecondName IN VARCHAR2,
    pFirstSurname IN VARCHAR2, pSecondSurname IN VARCHAR2, pDatebirth IN DATE, pPhoto IN BLOB,
    pIdNationality IN NUMBER, pOutId OUT NUMBER)
    IS BEGIN
        INSERT INTO Person (idPerson, idSex, firstName, secondName, firstSurname,
        secondSurname, datebirth, photo)
        VALUES (s_person.nextval, pSex, pFirstName, pSecondName, pFirstSurname,
        pSecondSurname, pDatebirth, pPhoto);
        
        INSERT INTO nationalityPerson(idPerson,idNationality)
        VALUES (s_person.currval, pIdNationality);
        
        pOutId := s_person.currval;
        
        COMMIT;
    END;

    PROCEDURE insertSystemUser(pIdPerson IN NUMBER, pUsername IN VARCHAR2, pPhoneNumber IN NUMBER,
    pIdentification IN NUMBER, pEmail IN VARCHAR2, pPswd IN VARCHAR2, pIdTypeIdent IN NUMBER)
    IS BEGIN
        INSERT INTO systemUser (idSystemUser, username, phoneNumber,
        email, pswd)
        VALUES (pIdPerson, pUsername, pPhoneNumber, pEmail,
        pPswd);
    
        INSERT INTO Identification (idIdentification, idTypeIdent, identNumber)
        VALUES (s_identification.nextval, pIdTypeIdent, pIdentification);
        
        INSERT INTO IdentXSystem(idIdent,idSystemUser)
        VALUES (s_identification.currval, pIdPerson);
    END;

    PROCEDURE insertSex (
    pName IN VARCHAR2
    ) IS
    BEGIN
        INSERT INTO sex(idSex, sexName)
        VALUES (s_sex.nextval, pName);
        COMMIT;
    END;    
    PROCEDURE insertNationality(
    pName IN VARCHAR2
    ) IS
    BEGIN
        INSERT INTO nationality (idNationality, name)
        VALUES (s_nationality.nextval, pName);
        COMMIT;
    END;
    PROCEDURE insertNationalityPerson (pIdNationality IN NUMBER, pIdPerson IN NUMBER)
    IS
    BEGIN
        INSERT INTO NationalityPerson (idNationality, idPerson)
        VALUES (pIdNationality, pIdPerson);
        COMMIT;
    END;
    
    PROCEDURE insertTypeIdent (pName IN VARCHAR2)
    IS
    BEGIN
        INSERT INTO typeOfIdentification(idTypeIdent, nameTypeIdent)
        VALUES (s_identification.nextval, pName);
        COMMIT;
    END;
    PROCEDURE insertCountry (pName IN VARCHAR2)
    IS
    BEGIN
        INSERT INTO country(idCountry, nameCountry)
        VALUES (s_country.nextval, pName);
        COMMIT;
    END;
    
    PROCEDURE insertCity (pIdCountry IN NUMBER, pName IN VARCHAR2)
    IS
    BEGIN
        INSERT INTO city(idCity, idCountry, nameCity)
        VALUES (s_city.nextval, pIdCountry, pName);
        COMMIT;
    END;
    PROCEDURE insertTypeParticipant(pNameType IN VARCHAR2)
    IS
    BEGIN
        INSERT INTO typeOfParticipant (idType, nameType)
        VALUES(s_typeofparticipant.nextval, pNameType);
        COMMIT;
    END;
    PROCEDURE insertCatalog(pGenre IN VARCHAR2)
    IS
    BEGIN
        INSERT INTO catalog (idCatalog, genre)
        VALUES(s_catalog.nextval, pGenre);
        COMMIT;
    END;
    PROCEDURE insertTypeProduct(pName IN VARCHAR2)
    IS
    BEGIN
        INSERT INTO typeOfProduct(idType, nickname)
        VALUES (s_typeofproduct.nextval, pName);
        COMMIT;
    END;
    PROCEDURE insertPlatform(pName IN VARCHAR2)
    IS
    BEGIN
        INSERT INTO Platform (idPlatform, namePlatform)
        VALUES (s_platform.nextval, pName);
        COMMIT;
    END;
    /*Remove*/
    /*Update*/
    FUNCTION getSystemUserInfo(pUsername IN VARCHAR2, pPswd IN VARCHAR2)
    RETURN SYS_REFCURSOR
    IS
        vSystemUserCursor SYS_REFCURSOR;
        vId NUMBER(7) := NULL;
        vUserType NUMBER(1) := NULL;
    BEGIN
        /*Search reference in table administrator*/
        /*Por alguna razón esto retorna NULL y un INNER JOIN no*/
        SELECT ad.idAdministrator, 2
        INTO vId, vUserType
        FROM SystemUser sy
        LEFT JOIN Administrator ad
        ON ad.idAdministrator = sy.idSystemUser 
        WHERE sy.username = pUsername
        AND sy.pswd = pPswd;
        /*Search reference in table end_user*/
        IF vId IS NULL THEN
            SELECT us.idUser, 1
            INTO vId, vUserType
            FROM End_user us, SystemUser sy
            WHERE us.idUser = sy.idSystemUser 
            AND sy.username = pUsername
            AND sy.pswd = pPswd;
        END IF;
        
        OPEN vSystemUserCursor FOR
            SELECT vUserType, pe.idPerson, pe.firstName, pe.firstSurname, pe.datebirth,
            pe.photo, su.username, su.phoneNumber, su.email, su.pswd
            FROM Person pe, SystemUser su
            WHERE su.idSystemUser = vId
            AND pe.idPerson = vId;
        RETURN vSystemUserCursor;
        
    EXCEPTION
            WHEN NO_DATA_FOUND THEN
                RETURN NULL;
    END;
    
    FUNCTION validateRegister(newUsername IN VARCHAR2, newEmail IN VARCHAR2, newPhone IN NUMBER)
    RETURN SYS_REFCURSOR 
    IS 
        existentNames SYS_REFCURSOR;
        usernamesCount NUMBER(8);
        emailsCount NUMBER(8);
        phonesCount NUMBER(8);
    BEGIN
        SELECT count(username) 
        INTO usernamesCount
        FROM systemUser 
        WHERE username = newUsername;
        
        SELECT count(email) 
        INTO emailsCount
        FROM systemUser 
        WHERE email = newEmail;
        
        SELECT count(phoneNumber) 
        INTO phonesCount
        FROM systemUser 
        WHERE phoneNumber = newPhone;
        
        OPEN existentNames FOR
        SELECT usernamesCount AS usernamesCount ,emailsCount AS emailsCount, phonesCount AS phonesCount
        FROM DUAL;
        
        RETURN existentNames;
    END;
    
    FUNCTION getNationality(pIdNationality IN NUMBER)
    RETURN SYS_REFCURSOR
    IS
        nationalityCursor SYS_REFCURSOR;
    BEGIN
        OPEN nationalityCursor FOR
            SELECT idNationality, name
            FROM nationality
            WHERE idNationality = NVL(pIdNationality, idNationality);
        RETURN nationalityCursor;
    END;
    
    FUNCTION getTypeOfId 
    RETURN SYS_REFCURSOR
    IS 
        typesOfId SYS_REFCURSOR;
    BEGIN
        OPEN typesOfId FOR
        SELECT idTypeIdent,nameTypeIdent
        FROM TypeOfIdentification;
        
        RETURN typesOfId;
    END;

    PROCEDURE insertBinnacle(pIdProduct NUMBER, pOldPrice NUMBER, pNewPrice NUMBER,
                        pDateBinnacle DATE) 
    IS
    BEGIN
        INSERT INTO Binnacle(idBinnacle,IdProduct,oldPrice,newPrice,dateBinnacle)
        VALUES (s_binnacle.nextval,pIdProduct,pOldPrice,pNewPrice, pDateBinnacle);
        COMMIT;
    END;
    
    FUNCTION getInfoInsertParticipant(pIdParticipant IN NUMBER)
    RETURN SYS_REFCURSOR
    IS
        infoCursor SYS_REFCURSOR;
    BEGIN
        OPEN infoCursor FOR
            SELECT idNationality, name, 'Nationality' as fuente from nationality
            UNION
            /*SELECT idSex, sexname, 'Sex' as fuente from sex
            UNION */
            SELECT c.idCity AS city_id, co.nameCountry || ', ' || c.nameCity AS city_country, 'City' as fuente
            FROM city c
            INNER JOIN country co ON c.idCountry = co.idCountry
            ORDER BY name;
        RETURN infoCursor;    
    END;
      
    PROCEDURE getInfoCreationProduct (
        cursorParticipants OUT SYS_REFCURSOR,
        cursorTypeOfParticipant OUT SYS_REFCURSOR,
        cursorTypeOfProduct OUT SYS_REFCURSOR
    )
    IS
    BEGIN
        OPEN cursorTypeOfParticipant FOR
            SELECT * FROM TypeOfParticipant;
        
        OPEN cursorParticipants FOR
            SELECT pe.idPerson, pe.firstName, pe.secondName, pe.firstSurname, pe.secondSurname, 
            pe.datebirth, pe.photo, ci.nameCity, co.nameCountry, pa.biography, pa.height,
            pa.trivia, se.sexName
            FROM person pe
            INNER JOIN sex se
            ON pe.idSex = se.idSex
            INNER JOIN participant pa
            ON pa.idParticipant = pe.idPerson
            INNER JOIN city ci
            ON ci.idCity = pa.idCity
            INNER JOIN country co
            ON ci.idCountry = co.idCountry;
            
        OPEN cursorTypeOfProduct FOR
            SELECT * FROM typeOfProduct;
    END;
    PROCEDURE getInfoRegister (cursorSex OUT SYS_REFCURSOR, cursorTypeOfId OUT SYS_REFCURSOR, 
        cursorNationalities OUT SYS_REFCURSOR)
        IS 
        BEGIN 

        OPEN cursorSex FOR 
        SELECT idSex,sexname FROM sex;

        OPEN cursorTypeOfId FOR
        SELECT idTypeIdent, nameTypeIdent FROM typeOfIdentification;

        OPEN cursorNationalities FOR
        SELECT idNationality, name FROM Nationality;
    END;
END pkgBasic;
/
/******************************************************************************/
CREATE OR REPLACE PACKAGE pkgParticipant IS
    PROCEDURE insertParticipant (pSex IN NUMBER, pFirstName IN VARCHAR2, pSecondName IN VARCHAR2,
    pFirstSurname IN VARCHAR2, pSecondSurname IN VARCHAR2, pDateBirth IN DATE,
    pCity IN NUMBER, pIdNationality IN NUMBER, pBiography IN VARCHAR2, pHeight IN NUMBER,
    pTrivia IN VARCHAR2, pPhoto IN BLOB);
    PROCEDURE deleteParticipant(pIdParticipant NUMBER);
    PROCEDURE insertRelative(pIdParticipant IN NUMBER, pIdRelative IN NUMBER, pIdKinship IN NUMBER);
    FUNCTION getParticipant(pIdParticipant IN NUMBER) RETURN SYS_REFCURSOR;
    
END pkgParticipant;
/

CREATE OR REPLACE PACKAGE BODY pkgParticipant AS
    PROCEDURE insertParticipant (pSex IN NUMBER, pFirstName IN VARCHAR2, pSecondName IN VARCHAR2,
    pFirstSurname IN VARCHAR2, pSecondSurname IN VARCHAR2, pDateBirth IN DATE,
    pCity IN NUMBER, pIdNationality IN NUMBER, pBiography IN VARCHAR2, pHeight IN NUMBER, 
    pTrivia IN VARCHAR2, pPhoto IN BLOB)
    IS
        pOutId NUMBER(7);
    BEGIN
         pkgBasic.insertPerson(pSex, pFirstName, pSecondName, pFirstSurname, pSecondSurname,
        pDatebirth, pPhoto, pIdNationality, pOutId);
        
        INSERT INTO Participant (idParticipant, idCity, biography, height, trivia)
        values(pOutId, pCity, pBiography, pHeight, pTrivia);
        
        COMMIT;
    END;

    PROCEDURE  insertRelative(pIdParticipant IN NUMBER, pIdRelative IN NUMBER, pIdKinship IN NUMBER) 
    IS
    BEGIN
    
        INSERT INTO ParticipantXRelative(idParticipant,idParticipant2,idRelative)
        VALUES (pIdParticipant,pIdRelative,pIdKinship);
        COMMIT;
    END;
    
    PROCEDURE deleteParticipant(pIdParticipant NUMBER)
    IS
    BEGIN
        
        DELETE FROM ParticipantXRelative
        WHERE idParticipant = pIdParticipant;
        
        DELETE FROM ParticipantXProduct
        WHERE idParticipant = pIdParticipant;
        
        DELETE FROM Participant
        WHERE idParticipant = pIdParticipant;
    END;
    FUNCTION getParticipant(pIdParticipant IN NUMBER) RETURN SYS_REFCURSOR
    IS 
        vParticipantCursor SYS_REFCURSOR;
    BEGIN
        OPEN vParticipantCursor FOR
            SELECT pe.idPerson, pe.firstName, pe.secondName, pe.firstSurname, pe.secondSurname, 
            pe.datebirth, pe.photo, ci.nameCity, co.nameCountry, pa.biography, pa.height,
            pa.trivia
            FROM person pe
            INNER JOIN participant pa
            ON pe.idPerson = NVL(pIdParticipant, idParticipant) AND pa.idParticipant = pe.idPerson
            INNER JOIN city ci
            ON ci.idCity = pa.idCity
            INNER JOIN country co
            ON ci.idCountry = co.idCountry;
        RETURN vParticipantCursor;
    EXCEPTION
            WHEN NO_DATA_FOUND THEN
                RETURN NULL;
    END;
    
END pkgParticipant;
/******************************************************************************/
CREATE OR REPLACE PACKAGE pkgEnd_user IS
    /**************************************************************************/
    PROCEDURE insertUser(pSex IN NUMBER, pFirstName IN VARCHAR2, pSecondName IN VARCHAR2,
    pFirstSurname IN VARCHAR2, pSecondSurname IN VARCHAR2, pDatebirth IN DATE,
    pPhoto IN BLOB, pUsername IN VARCHAR2, pIdentification IN NUMBER,
    pPhoneNumber IN NUMBER, pEmail IN VARCHAR2, pPswd IN VARCHAR2, pIdTypeIdent IN NUMBER, 
    pIdNationality IN NUMBER);
    PROCEDURE deleteUser(pIdUser IN NUMBER);
    --PROCEDURE updateUser(pIdUser IN NUMBER);
    /***********************Actions User for Nationality***********************/
    ---PROCEDURE addNationality(pName IN VARCHAR2);
    ---PROCEDURE removeNationality(pName IN VARCHAR2);
    /**********************Actions User for Product****************************/
    PROCEDURE buyProduct(pIdUser IN NUMBER, pIdProduct IN NUMBER, pIdPayment IN NUMBER);
    PROCEDURE commentProduct(pIdUser IN NUMBER, pIdProduct IN NUMBER, pDescription IN VARCHAR);
    PROCEDURE reviewProduct(pIdUser IN NUMBER, pIdProduct IN NUMBER, pStars IN NUMBER);
    PROCEDURE insertFavorite(pIdUser IN NUMBER, pIdProduct IN NUMBER);
    /**************************************************************************/
    PROCEDURE deleteComment(pIdUser IN NUMBER, pIdProduct IN NUMBER);
    PROCEDURE deleteReview (pIdUser IN NUMBER, pIdProduct IN NUMBER);
    PROCEDURE deleteFavorite(pIdUser IN NUMBER, pIdProduct IN NUMBER);
    /**************************************************************************/
    PROCEDURE insertCard(pIdUser IN NUMBER, pCardNumber IN NUMBER, 
    pExpiration IN DATE, pCcv IN NUMBER, pOwnerName IN VARCHAR2);
    PROCEDURE removeCard(pIdUser IN NUMBER, pIdCard IN NUMBER);
    /**************************************************************************/
    
    ---PROCEDURE updatePswd();
END pkgEnd_user;

CREATE OR REPLACE PACKAGE BODY pkgEnd_user AS
    PROCEDURE insertUser(pSex IN NUMBER, pFirstName IN VARCHAR2, pSecondName IN VARCHAR2,
    pFirstSurname IN VARCHAR2, pSecondSurname IN VARCHAR2, pDatebirth IN DATE,
    pPhoto IN BLOB, pUsername IN VARCHAR2, pIdentification IN NUMBER,
    pPhoneNumber IN NUMBER, pEmail IN VARCHAR2, pPswd IN VARCHAR2, pIdTypeIdent IN NUMBER,
    pIdNationality IN NUMBER)
    IS
        pOutId NUMBER(7);
    BEGIN
        pkgBasic.insertPerson(pSex, pFirstName, pSecondName, pFirstSurname, pSecondSurname,
        pDatebirth, pPhoto, pIdNationality, pOutId);
        
        pkgBasic.insertSystemUser(pOutId, pUsername, pPhoneNumber, pIdentification,
        pEmail, pPswd, pIdTypeIdent);
        
        INSERT INTO end_user (idUser)
        VALUES (pOutId);

        INSERT INTO nationalityPerson(idPerson,idNationality)
        VALUES (s_person.currval, pIdNationality);
        
        COMMIT;
    END;
    
    /*Terminar*/ 
    PROCEDURE deleteUser(pIdUser IN NUMBER)
    IS
    BEGIN
        DELETE FROM commentary 
        WHERE idUser = pIdUser;
        
        DELETE FROM review     
        WHERE idUser = pIdUser;
        
        DELETE FROM wishlist   
        WHERE idUser = pIdUser;
        
        DELETE FROM purchase   
        WHERE idUser = pIdUser;        
        
        DELETE FROM card 
        WHERE idCard IN 
        (SELECT idPayment FROM payment WHERE idUser = pIdUser);
        
        DELETE FROM payment
        WHERE idUser = pIdUser;
        
        DELETE FROM end_user
        WHERE idUser = pIdUser;
        
        DELETE FROM IdentXSystem
        WHERE idSystemUser = pIdUser;
        
        DELETE FROM systemUser
        WHERE idSystemUser = pIdUser;
        
        DELETE FROM nationalityPerson
        WHERE idPerson = pIdUser;
        
        DELETE FROM Person
        WHERE idPerson = pIdUser;
        
        COMMIT;
    END;
    /*********************User x Product***************************************/
    /*Procedure for buy a product*/
    PROCEDURE buyProduct(pIdUser IN NUMBER, pIdProduct IN NUMBER, pIdPayment IN NUMBER)
    IS
    BEGIN
        INSERT INTO Purchase(idUser, idProduct, idPayment, history)
        VALUES (pIdUser, pIdProduct, pIdPayment, SYSDATE);
        COMMIT;
    END;
    
    PROCEDURE commentProduct(pIdUser IN NUMBER, pIdProduct IN NUMBER, pDescription IN VARCHAR)
    IS
    BEGIN
        INSERT INTO Commentary (idProduct, idUser, description)
        VALUES (pIdProduct, pIdUser, pDescription);
        COMMIT;
    END;
    
    PROCEDURE reviewProduct(pIdUser IN NUMBER, pIdProduct IN NUMBER, pStars IN NUMBER)
    IS
    BEGIN
        INSERT INTO Review(idProduct, idUser, stars)
        VALUES (pIdProduct, pIdUser, pStars);
        COMMIT;
    END;
    
    PROCEDURE insertFavorite(pIdUser IN NUMBER, pIdProduct IN NUMBER)
    IS
    BEGIN
        INSERT INTO Wishlist(idProduct, idUser)
        VALUES (pIdUser, pIdProduct);
        COMMIT;
    END;
    /**Delete procedures**/
    PROCEDURE deleteComment(pIdUser IN NUMBER, pIdProduct IN NUMBER)
    IS
    BEGIN
        DELETE FROM commentary
        WHERE idUser = pIdUser AND idProduct = pIdProduct;
        COMMIT;
    END;
    PROCEDURE deleteReview (pIdUser IN NUMBER, pIdProduct IN NUMBER)
    IS
    BEGIN
        DELETE FROM review
        WHERE idUser = pIdUser AND idProduct = pIdProduct;
        COMMIT;
    END;
    PROCEDURE deleteFavorite(pIdUser IN NUMBER, pIdProduct IN NUMBER)
    IS
    BEGIN
        DELETE FROM wishlist
        WHERE idUser = pIdUser AND idProduct = pIdProduct;
        COMMIT;
    END;
    /**************************************************************************/
    PROCEDURE insertCard(pIdUser IN NUMBER, pCardNumber IN NUMBER, 
    pExpiration IN DATE, pCcv IN NUMBER, pOwnerName IN VARCHAR2)
    IS
    BEGIN
        INSERT INTO Payment(idPayment, idUser)
        VALUES (s_payment.nextval, pIdUser);
        
        INSERT INTO Card(idCard, cardNumber, expiration, ccv, ownerName)
        VALUES (s_payment.currval, pCardNumber, pExpiration, pCcv, pOwnerName);
        
        COMMIT;
    END;
    
    PROCEDURE removeCard(pIdUser IN NUMBER, pIdCard IN NUMBER)
    IS
    BEGIN
        DELETE FROM Card
        WHERE idCard = pIdCard;
        DELETE FROM Payment
        WHERE idPayment = pIdCard;
        
        COMMIT;
    END;
    /**************************************************************************/    
    
END pkgEnd_user;
select * from systemuser;
/******************************************************************************/
CREATE OR REPLACE PACKAGE pkgAdmin IS
    PROCEDURE insertAdministrator(pSex IN NUMBER, pFirstName IN VARCHAR2, pSecondName IN VARCHAR2,
    pFirstSurname IN VARCHAR2, pSecondSurname IN VARCHAR2, pDatebirth IN DATE,
    pPhoto IN BLOB, pUsername IN VARCHAR2, pIdentification IN NUMBER,
    pPhoneNumber IN NUMBER, pEmail IN VARCHAR2, pPswd IN VARCHAR2, pIdTypeIdent IN NUMBER,
    pIdNationality IN NUMBER);
    PROCEDURE deleteAdministrator(pIdAdmin IN NUMBER);
    --PROCEDURE editCatalog(pIdAdmin IN NUMBER, pIdCatalog IN NUMBER);
END pkgAdmin;

CREATE OR REPLACE PACKAGE BODY pkgAdmin AS
    PROCEDURE insertAdministrator(pSex IN NUMBER, pFirstName IN VARCHAR2, pSecondName IN VARCHAR2,
    pFirstSurname IN VARCHAR2, pSecondSurname IN VARCHAR2, pDatebirth IN DATE,
    pPhoto IN BLOB, pUsername IN VARCHAR2, pIdentification IN NUMBER,
    pPhoneNumber IN NUMBER, pEmail IN VARCHAR2, pPswd IN VARCHAR2, pIdTypeIdent IN NUMBER,
    pIdNationality IN NUMBER)
    IS
        pOutId NUMBER(7);
    BEGIN
        pkgBasic.insertPerson(pSex, pFirstName, pSecondName, pFirstSurname, pSecondSurname,
        pDatebirth, pPhoto, pIdNationality, pOutId);
        
        pkgBasic.insertSystemUser(pOutId, pUsername, pPhoneNumber, pIdentification,
        pEmail, pPswd, pIdTypeIdent);
        
        INSERT INTO administrator (idAdministrator)
        VALUES (pOutId);
        
        COMMIT;
    END;
    
    PROCEDURE deleteAdministrator(pIdAdmin IN NUMBER)
    IS
    BEGIN
        DELETE FROM administrator
        WHERE idAdministrator = pIdAdmin;
        
        DELETE FROM IdentXSystem
        WHERE idSystemUser = pIdAdmin;
        
        DELETE FROM systemUser
        WHERE idSystemUser = pIdAdmin;
        
        DELETE FROM nationalityPerson
        WHERE idPerson = pIdAdmin;
        
        DELETE FROM Person
        WHERE idPerson = pIdAdmin;
        
        COMMIT;
    END;
    /*Terminar*/ 
END pkgAdmin;
/******************************************************************************/
CREATE OR REPLACE PACKAGE pkgProduct IS 
    PROCEDURE insertProduct(pIdType IN NUMBER, pReleaseYear IN NUMBER, pTitle IN VARCHAR2,
    pDuration IN NUMBER, pSynopsis IN VARCHAR2, pTrailer IN VARCHAR2, pPrice IN NUMBER, pIdProduct OUT NUMBER);
    PROCEDURE updateProduct(pIdProduct IN NUMBER, pIdType IN NUMBER, pReleaseYear IN NUMBER, pTitle IN VARCHAR2,
    pDuration IN NUMBER, pSynopsis IN VARCHAR2, pTrailer IN VARCHAR2, pPrice IN NUMBER);
    PROCEDURE deleteParticipant (pIdProduct IN NUMBER, pIdParticipant IN NUMBER);
    PROCEDURE addParticipant(pIdProduct IN NUMBER, pIdParticipant IN NUMBER, pRol IN NUMBER);
    PROCEDURE addSeason(pIdProduct IN NUMBER, pNumberSeason IN NUMBER, pDuration IN NUMBER, pIdSeason OUT NUMBER);
    PROCEDURE removeSeason(pIdSeason IN NUMBER);
    PROCEDURE addEpisode(pIdSeason IN NUMBER,pNumberEpisode IN NUMBER, pName IN VARCHAR2,
    pDuration IN NUMBER);
    PROCEDURE removeEpisode(pIdEpisode IN NUMBER);
    PROCEDURE addPhoto(pIdProduct IN NUMBER, pImage IN BLOB);
    FUNCTION getProducts RETURN SYS_REFCURSOR;
    PROCEDURE getProductInfo(pIdProduct IN NUMBER, vProductsCursor OUT SYS_REFCURSOR,
    vParticipantsCursor OUT SYS_REFCURSOR, vSeasonsCursor OUT SYS_REFCURSOR,
    vImagesCursor OUT SYS_REFCURSOR);
END pkgProduct;
/
CREATE OR REPLACE PACKAGE BODY pkgProduct AS 
    PROCEDURE insertProduct(pIdType IN NUMBER, pReleaseYear IN NUMBER, pTitle IN VARCHAR2,
    pDuration IN NUMBER, pSynopsis IN VARCHAR2, pTrailer IN VARCHAR2, pPrice IN NUMBER, pIdProduct OUT NUMBER)
    IS
    BEGIN     
        INSERT INTO Product(idProduct, idType, releaseYear, title, duration, synopsis, trailer, price)
        VALUES (s_product.nextval, pIdType, pReleaseYear, pTitle, pDuration, pSynopsis, pTrailer, pPrice);
        COMMIT;
        pIdProduct := s_product.currval;
    END;
    
    PROCEDURE updateProduct(pIdProduct IN NUMBER, pIdType IN NUMBER, pReleaseYear IN NUMBER, pTitle IN VARCHAR2,
    pDuration IN NUMBER, pSynopsis IN VARCHAR2, pTrailer IN VARCHAR2, pPrice IN NUMBER)
    IS
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
    
    PROCEDURE addParticipant(pIdProduct IN NUMBER, pIdParticipant IN NUMBER, pRol IN NUMBER)
    IS
    BEGIN
        INSERT INTO ParticipantXProduct(idProduct, idParticipant, rol)
        VALUES (pIdProduct, pIdParticipant, pRol);
        COMMIT;
    END;
    
    PROCEDURE deleteParticipant(pIdProduct IN NUMBER, pIdParticipant IN NUMBER)
    IS
    BEGIN
        DELETE FROM ParticipantXProduct
        WHERE idProduct = pIdProduct AND idParticipant = pIdParticipant;
        COMMIT;
    END;
    
    PROCEDURE addSeason(pIdProduct IN NUMBER, pNumberSeason IN NUMBER, pDuration IN NUMBER, pIdSeason OUT NUMBER)
    IS
    BEGIN
        INSERT INTO Season(idSeason, idProduct, numberSeason, duration)
        VALUES (s_season.nextval, pIdProduct, pNumberSeason, pDuration);
        pIdSeason := s_season.currval;
        COMMIT;
    END;
    
    PROCEDURE removeSeason(pIdSeason IN NUMBER)
    IS
    BEGIN
        DELETE FROM Season
        WHERE idSeason = pIdSeason;
        COMMIT;
    END;
    
    PROCEDURE addEpisode(pIdSeason IN NUMBER,pNumberEpisode IN NUMBER, pName IN VARCHAR2,
    pDuration IN NUMBER)
    IS
    BEGIN
        INSERT INTO Episode(idEpisode, idSeason, numberEpisode, name, duration)
        VALUES (s_episode.nextval, pIdSeason, pNumberEpisode, pName, pDuration);
        COMMIT;
    END;
    
    PROCEDURE removeEpisode(pIdEpisode IN NUMBER)
    IS
    BEGIN
        DELETE FROM Episode
        WHERE idEpisode = pIdEpisode;
        COMMIT;
    END;
    
    PROCEDURE addPhoto(pIdProduct IN NUMBER, pImage IN BLOB)
    IS
    BEGIN
        INSERT INTO Photo(idPhoto, idProduct, image)
        VALUES (s_photo.nextval, pIdProduct, pImage);
        COMMIT;
    END;
    FUNCTION getProducts RETURN SYS_REFCURSOR
    IS
        productsCursor SYS_REFCURSOR;
    BEGIN
        OPEN productsCursor FOR
            SELECT pro.idProduct, pro.title, pho.image
            FROM product pro
            FULL JOIN photo pho
            ON pro.idProduct = pho.idProduct;
        RETURN productsCursor;
    EXCEPTION
            WHEN NO_DATA_FOUND THEN
                RETURN NULL;
    END;
    PROCEDURE getProductInfo(pIdProduct IN NUMBER, vProductsCursor OUT SYS_REFCURSOR,
    vParticipantsCursor OUT SYS_REFCURSOR, vSeasonsCursor OUT SYS_REFCURSOR, 
    vImagesCursor OUT SYS_REFCURSOR)
    IS
        ---vProduct SYSREF
    BEGIN
        
        OPEN vProductsCursor FOR
            SELECT * FROM product pro WHERE idProduct = pIdProduct;
        OPEN vParticipantsCursor FOR
            SELECT pro.idParticipant, per.firstName, per.firstSurname, typeP.nameType 
                FROM participantXproduct pro 
                INNER JOIN Person per
                ON pro.idParticipant = per.idPerson
                INNER JOIN typeOfParticipant typeP
                ON pro.rol = typeP.idType
                WHERE pro.idProduct = pIdProduct;
        OPEN vSeasonsCursor FOR
            SELECT sea.idSeason, sea.numberSeason, sea.duration, epi.idEpisode,
            epi.numberEpisode, epi.name, epi.duration
            FROM season sea
            INNER JOIN product pro
            ON pro.idProduct = pIdProduct AND sea.idProduct = pro.idProduct
            LEFT JOIN episode epi
            ON sea.idProduct = pIdProduct
            AND sea.idSeason = epi.idSeason
            ORDER BY sea.idSeason ASC;
        OPEN vImagesCursor FOR
            SELECT image FROM Photo
            WHERE idProduct = pIdProduct;
    END;
END pkgProduct;

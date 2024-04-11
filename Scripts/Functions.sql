/******************************************************************************/
/*
 *Description: Insert sex
 *Input: p_name, name of the sex
 *Output: void
 */
/******************************************************************************/

CREATE OR REPLACE PACKAGE pkgBasic AS
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
    
    /*Añadir procedimientos para borrar y editar*/
END pkgBasic;

CREATE OR REPLACE PACKAGE BODY pkgBasic AS
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
END pkgBasic;
/******************************************************************************/
CREATE OR REPLACE PACKAGE participantPkg IS
    PROCEDURE insertParticipant (pSex IN NUMBER, pFirstName IN VARCHAR2, pSecondName IN VARCHAR2,
    pFirstSurname IN VARCHAR2, pSecondSurname IN VARCHAR2, pDateBirth IN DATE,
    pCountry IN NUMBER, pBiography IN VARCHAR2, pHeight IN NUMBER,
    pTrivia IN VARCHAR2, pPhoto IN BLOB);
    PROCEDURE deleteParticipant(pIdParticipant NUMBER);
    PROCEDURE insertRelative(pIdParticipant IN NUMBER, pIdRelative IN NUMBER, pIdKinship IN NUMBER);
    
END participantPkg;

CREATE OR REPLACE PACKAGE BODY participantPkg AS
    PROCEDURE insertParticipant (pSex IN NUMBER, pFirstName IN VARCHAR2, pSecondName IN VARCHAR2,
    pFirstSurname IN VARCHAR2, pSecondSurname IN VARCHAR2, pDateBirth IN DATE,
    pCountry IN NUMBER, pBiography IN VARCHAR2, pHeight IN NUMBER, 
    pTrivia IN VARCHAR2, pPhoto IN BLOB)
    IS
    BEGIN
        INSERT INTO Person (idPerson, idSex, firstName, secondName, firstSurname,
        secondSurname, datebirth, photo)
        VALUES (s_person.nextval, pSex, pFirstName, pSecondName, pFirstSurname,
        pSecondSurname, pDatebirth, pPhoto);
        
        INSERT INTO Participant (idParticipant, idCity, biography, height, trivia)
        values(s_person.currval, pCity, pBiography, pHeight, pTrivia);
        
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

END participantPkg;
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
    BEGIN
        INSERT INTO Person (idPerson, idSex, firstName, secondName, firstSurname,
        secondSurname, datebirth, photo)
        VALUES (s_person.nextval, pSex, pFirstName, pSecondName, pFirstSurname,
        pSecondSurname, pDatebirth, pPhoto);
        
        INSERT INTO systemUser (idSystemUser, username, phoneNumber,
        email, pswd)
        VALUES (s_person.currval, pUsername, pPhoneNumber, pEmail,
        pPswd);
    
        INSERT INTO Identification (idIdentification, idTypeIdent, identNumber)
        VALUES (s_identification.nextval, pIdTypeIdent, pIdentification);
        
        INSERT INTO IdentXSystem(idIdent,idSystemUser)
        VALUES (s_identification.currval,s_person.currval);
        
        INSERT INTO end_user (idUser)
        VALUES (s_person.currval);

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
/******************************************************************************/
CREATE OR REPLACE PACKAGE administrator IS
    PROCEDURE insertAdministrator(pSex IN NUMBER, pFirstName IN VARCHAR2, pSecondName IN VARCHAR2,
    pFirstSurname IN VARCHAR2, pSecondSurname IN VARCHAR2, pDatebirth IN DATE,
    pPhoto IN BLOB, pUsername IN VARCHAR2, pIdentification IN NUMBER,
    pPhoneNumber IN NUMBER, pEmail IN VARCHAR2, pPswd IN VARCHAR2, pIdTypeIdent IN NUMBER);
    PROCEDURE deleteAdministrator(pIdAdmin IN NUMBER);
    --PROCEDURE editCatalog(pIdAdmin IN NUMBER, pIdCatalog IN NUMBER);
END administrator;

CREATE OR REPLACE PACKAGE BODY administrator AS
    PROCEDURE insertAdministrator(pSex IN NUMBER, pFirstName IN VARCHAR2, pSecondName IN VARCHAR2,
    pFirstSurname IN VARCHAR2, pSecondSurname IN VARCHAR2, pDatebirth IN DATE,
    pPhoto IN BLOB, pUsername IN VARCHAR2, pIdentification IN NUMBER,
    pPhoneNumber IN NUMBER, pEmail IN VARCHAR2, pPswd IN VARCHAR2, pIdTypeIdent IN NUMBER)
    IS
    BEGIN
        INSERT INTO Person (idPerson, idSex, firstName, secondName, firstSurname,
        secondSurname, datebirth, photo)
        VALUES (s_person.nextval, pSex, pFirstName, pSecondName, pFirstSurname,
        pSecondSurname, pDatebirth, pPhoto);
        
        INSERT INTO systemUser (idSystemUser, username, phoneNumber,
        email, pswd)
        VALUES (s_person.currval, pUsername, pPhoneNumber, pEmail,
        pPswd);
    
        INSERT INTO Identification (idIdentification, idTypeIdent, identNumber)
        VALUES (s_identification.nextval, pIdTypeIdent, pIdentification);
        
        INSERT INTO IdentXSystem(idIdent,idSystemUser)
        VALUES (s_identification.currval,s_person.currval);
        
        INSERT INTO administrator (idAdministrator)
        VALUES (s_person.currval);
        
        COMMIT;
    END;
    PROCEDURE deleteAdministrator(pIdAdmin IN NUMBER)
    IS
    BEGIN
        DELETE FROM CatalogXAdministrator
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
END administrator;
/******************************************************************************/
CREATE OR REPLACE PACKAGE product IS 
    PROCEDURE insertProduct(pIdType in NUMBER, pLink in VARCHAR2, pPhoto in BLOB,
    pPrice in NUMBER, pSynopsis IN VARCHAR2, pTrailer IN VARCHAR2, pDuration IN NUMBER,
    pTitle IN VARCHAR2, pReleaseYear IN NUMBER, pLink IN VARCHAR);

END product;

CREATE OR REPLACE PACKAGE BODY product AS 
    PROCEDURE insertProduct(pIdType in NUMBER, pLink in VARCHAR2, pPhoto in BLOB,
    pPrice in NUMBER, pSynopsis IN VARCHAR2, pTrailer IN VARCHAR2, pDuration IN NUMBER,
    pTitle IN VARCHAR2, pReleaseYear IN NUMBER, pLink IN VARCHAR) 
    IS
    BEGIN     
        INSERT INTO Product(idProduct, link,releaseYear,title,duration,trailer,synopsis,idType)
        VALUES (s_product.nextval,pLink,pReleaseYear,pTitle,pDuration,pTrailer,pSynopsis,pIdType);
    
        INSERT INTO Photo(idPhoto,image,idProduct)
        VALUES (s_photo.nextval,pPhoto,s_product.currval);

        INSERT INTO Binnacle(idBinnacle, dateBinnacle, price,idProduct)
        VALUES (s_binnacle.nextval,SYSDATE,pPrice,s_product.currval);

    COMMIT;
    END;
END product;

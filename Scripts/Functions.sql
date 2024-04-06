/******************************************************************************/
/*
 *Description: Insert sex
 *Input: p_name, name of the sex
 *Output: void
 */

CREATE OR REPLACE PACKAGE sexPkg IS
    PROCEDURE insertSex(pName VARCHAR2);
END sexPkg;
/
CREATE OR REPLACE PACKAGE BODY sexPkg AS
    PROCEDURE insertSex (
    pName IN VARCHAR2
    ) IS
    BEGIN
        INSERT INTO sex(idSex, sexName)
        values(s_sex.nextval, pName);
    END;    
    /*Remove*/
    /*Update*/
END sexPkg;
/

CREATE OR REPLACE PACKAGE nationalityPkg IS
    PROCEDURE insertNationality (pName VARCHAR2);

END nationalityPkg;
/
CREATE OR REPLACE PACKAGE BODY nationalityPkg AS
    
    PROCEDURE insertNationality(
    pName IN VARCHAR2
    ) IS
    BEGIN
        INSERT INTO nationality (idNationality, name)
        VALUES (s_nationality.nextval, pName);
        COMMIT;
    END;

    /*Remove*/
    /*Update*/
END nationalityPkg;
/


CREATE OR REPLACE PACKAGE participantPkg IS
    PROCEDURE insertParticipant (pSex IN NUMBER, pFirstName IN VARCHAR2, pSecondName IN VARCHAR2,
    pFirstSurname IN VARCHAR2, pSecondSurname IN VARCHAR2, pDateBirth IN DATE,
    pCountry IN NUMBER, pBiography IN VARCHAR2, pHeight IN NUMBER,
    pTrivia IN VARCHAR2, pPhoto IN BLOB);
    PROCEDURE deleteParticipant(pIdParticipant NUMBER);
    PROCEDURE insertRelative(pIdParticipant IN NUMBER, pIdRelative IN NUMBER, pIdKinship IN NUMBER);
    
END participantPkg;
/

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
        
        INSERT INTO Participant (idParticipant, idCountry, biography, height, trivia)
        values(s_person.currval, pCountry, pBiography, pHeight, pTrivia);
        
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
/

/*CREATE PROCEDURE insertTypeOfParticipant(
    p_nickname IN VARCHAR2
) AS
BEGIN
    INSERT INTO typeOfParticipant (id_type, nickname)
    VALUES(s_type, p_nickname);
    COMMIT;
END;*/


CREATE OR REPLACE PACKAGE pkgEnd_user IS
    /**************************************************************************/
    PROCEDURE insertUser(pSex IN NUMBER, pFirstName IN VARCHAR2, pSecondName IN VARCHAR2,
    pFirstSurname IN VARCHAR2, pSecondSurname IN VARCHAR2, pDatebirth IN DATE,
    pPhoto IN BLOB, pUsername IN VARCHAR2, pIdentification IN VARCHAR2,
    pPhoneNumber IN NUMBER, pEmail IN VARCHAR2, pPswd IN VARCHAR2);
    PROCEDURE deleteUser(pIdUser IN NUMBER);
    PROCEDURE updateUser(pIdUser IN NUMBER);
    /**********************Actions User for Product****************************/
    PROCEDURE buyProduct(pIdUser IN NUMBER, pIdProduct IN NUMBER, pIdPayment IN NUMBER);
    PROCEDURE commentProduct(pIdUser IN NUMBER, pIdProduct, pDescription IN VARCHAR);
    PROCEDURE reviewProduct(pIdUser IN NUMBER, pIdProduct, pStars IN NUMBER);
    PROCEDURE insertFavorite(pIdUser IN NUMBER, pIdProduct);
    /**************************************************************************/
    PROCEDURE deleteComment(pIdComment IN NUMBER);
    PROCEDURE deleteReview (pIdReview IN NUMBER);
    PROCEDURE deleteFavorite(pIdProduct IN NUMBER);
    /**************************************************************************/
    PROCEDURE insertCard(pIdUser IN NUMBER, pCardNumber IN NUMBER, 
    pExpiration IN NUMBER, pCvv IN NUMBER, pOwnerName IN VARCHAR2);
    PROCEDURE removeCard(pIdUser IN NUMBER, pIdCard IN NUMBER);
    /**************************************************************************/
    
    
    
    ---PROCEDURE updatePswd();
    
    
END pkgEnd_user;

CREATE OR REPLACE PACKAGE BODY pkgEnd_user AS
    PROCEDURE insertUser(pSex IN NUMBER, pFirstName IN VARCHAR2, pSecondName IN VARCHAR2,
    pFirstSurname IN VARCHAR2, pSecondSurname IN VARCHAR2, pDatebirth IN DATE,
    pPhoto IN BLOB, pUsername IN VARCHAR2, pIdentification IN VARCHAR2,
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
        
        INSERT INTO end_user (idUser)
        VALUES (s_person.currval);
        
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
    END;
    
    PROCEDURE commentProduct(pIdUser IN NUMBER, pIdProduct, pComment IN VARCHAR)
    IS
    BEGIN
        INSERT INTO Commentary (idProduct, idUser, description)
        VALUES (pIdProduct, pIdUser, pDescription);
    END;
    
    PROCEDURE reviewProduct(pIdUser IN NUMBER, pIdProduct, pStars IN NUMBER)
    IS
    BEGIN
        INSERT INTO Review(idProduct, idUser, stars)
        VALUES (pIdProduct, pIdUser, pStars);
    END;
    
    PROCEDURE insertFavorite(pIdUser IN NUMBER, pIdProduct)
    IS
    BEGIN
        INSERT INTO Wishlist(idProduct, idUser)
        VALUES (pIdUser, pIdProduct);
    END;
    /**Delete procedures**/
    /**************************************************************************/
    PROCEDURE insertCard(pIdUser IN NUMBER, pCardNumber IN NUMBER, 
    pExpiration IN NUMBER, pCvv IN NUMBER, pOwnerName IN VARCHAR2)
    IS
    BEGIN
        INSERT INTO Payment(idPayment, idUser)
        VALUES (s_payment.nextval, pIdUser);
        
        INSERT INTO Card(idCard, cardNumber, expiration, cvv, ownerName)
        VALUES (s_payment.currval, pCardNumber, pExpiration, pCvv, pOwnerName);
    END;
    
    PROCEDURE removeCard(pIdUser IN NUMBER, pIdCard IN NUMBER)
    IS
    BEGIN
        DELETE FROM Card
        WHERE idCard = pIdCard;
        DELETE FROM Payment
        WHERE idPayment = pIdCard;
    END;
    /**************************************************************************/
    
    
    
    
END pkgEnd_user;




CREATE OR REPLACE PACKAGE administratorPkg IS
    PROCEDURE insertAdministrator(pSex NUMBER, pFirstName VARCHAR2, pSecondName VARCHAR2,
    pFirstSurname VARCHAR2, pSecondSurname VARCHAR2, pDatebirth DATE,
    pPhoto BLOB, pUsername VARCHAR2, pIdentification NUMBER,
    pPhoneNumber NUMBER, pEmail VARCHAR2, pPswd VARCHAR2);
    /*end_user atributes*/
    ---Only id)
END administratorPkg;
/
CREATE OR REPLACE PACKAGE BODY administratorPkg AS
   PROCEDURE insertAdministrator(pSex IN NUMBER, pFirstName IN VARCHAR2, pSecondName IN VARCHAR2,
    pFirstSurname IN VARCHAR2, pSecondSurname IN VARCHAR2, pDatebirth IN DATE,
    pPhoto IN BLOB, pUsername IN VARCHAR2, pIdentification IN NUMBER,
    pPhoneNumber IN NUMBER, pEmail IN VARCHAR2, pPswd IN VARCHAR2, typeOfID IN NUMBER)
    IS
    BEGIN
        INSERT INTO Person (idPerson, idSex, firstName, secondName, firstSurname,
        secondSurname, datebirth, photo)
        VALUES (s_person.nextval, pSex, pFirstName, pSecondName, pFirstSurname,
        pSecondSurname, pDatebirth, pPhoto);
        
        INSERT INTO systemUser (idSystemUser, username, identification, phoneNumber,
        email, pswd)
        VALUES (s_person.currval, pUsername, pIdentification, pPhoneNumber, pEmail,
        pPswd);
    
        INSERT INTO Identification (idIdentification,idTypeIdent,identNumber)
        VALUES (s_identification.nextval, typeOfId, pIdentification);
        
        INSERT INTO IdentXSystem(idIdent,idSystemUser)
        VALUES (s_identification.currval,s_person.currval);
        
        INSERT INTO administrator (idAdministrator)
        VALUES (s_person.currval);
        
        COMMIT;
    END;
    /*Terminar*/ 
END administratorPkg;
/
CREATE OR REPLACE PACKAGE productPkg IS 
    PROCEDURE insertProduct(pIdType NUMBER, pLink VARCHAR2, pPhoto BLOB,
    pPrice NUMBER, pSynopsis VARCHAR2, pTrailer VARCHAR2, pDuration NUMBER,
    pTitle VARCHAR2, pReleaseYear NUMBER, pLink VARCHAR);

END productPkg;
/


CREATE OR REPLACE PACKAGE BODY productPkg AS 
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
END productPkg;
/


/******************************************************************************/
CREATE PROCEDURE insertCard(
    pIdUser IN NUMBER,
    pCardNumber IN NUMBER,
    pExpiration IN DATE,
    pCcv IN NUMBER,
    pOwnerName IN VARCHAR2
) AS
BEGIN
    INSERT INTO payment (idPayment, idUser)
    VALUES (s_payment.nextval, pIdUser);
    
    INSERT INTO card (idCard, cardNumber, expiration, ccv, ownerName)
    VALUES (s_payment.currval, pCardNumber, pExpiration, pCcv, pOwnerName);
    
    COMMIT;
END insertCard;
/
/******************************************************************************/



/*CREATE PROCEDURE (

) AS
BEGIN
    INSERT INTO ()
    VALUES ();
    COMMIT;
END;*/

/*DROP package sexpkg;
drop package nationalitypkg;
drop package participantpkg;
drop package end_userPkg;
drop package administratorPkg;
drop package productPkg;
drop procedure insertcard;*/

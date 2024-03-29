/******************************************************************************/
/*
 *Description: Insert sex
 *Input: p_name, name of the sex
 *Output: void
 */
  
CREATE PROCEDURE insertSex (
    pName IN VARCHAR2
) AS
BEGIN
    INSERT INTO sex(idSex, sexName)
    values(s_sex.nextval, pName);
END insertSex;

CREATE PROCEDURE insertNationality(
    pName IN VARCHAR2
) AS
BEGIN
    INSERT INTO nationality (idNationality, name)
    VALUES (s_nationality.nextval, pName);
    COMMIT;
END insertNationality;

CREATE PROCEDURE insertPerson(
    pSex IN NUMBER,
    pFirstName IN VARCHAR2,
    pSecondName IN VARCHAR2,
    pFirstSurname IN VARCHAR2,
    pSecondSurname IN VARCHAR2,
    pDatebirth IN DATE
) AS
BEGIN
    INSERT INTO Person (idPerson, idSex, firstName, secondName, firstSurname,
    secondSurname, datebirth)
    VALUES (s_person.nextval, pSex, pFirstName, pSecondName, pFirstSurname,
    pSecondSurname, pDatebirth);
    COMMIT;
END insertPerson;

CREATE PROCEDURE insertParticipant(
    pSex IN NUMBER,
    pFirstName IN VARCHAR2,
    pSecondName IN VARCHAR2,
    pFirstSurname IN VARCHAR2,
    pSecondSurname IN VARCHAR2,
    pDateBirth IN DATE,
    pCountry IN NUMBER,
    pBiography IN VARCHAR2,
    pHeight IN NUMBER,
    pTrivia IN VARCHAR2,
    pPhoto IN BLOB
) AS
BEGIN
    INSERT INTO Person (idPerson, idSex, firstName, secondName, firstSurname,
    secondSurname, datebirth, photo)
    VALUES (s_person.nextval, pSex, pFirstName, pSecondName, pFirstSurname,
    pSecondSurname, pDatebirth, pPhoto);
    
    INSERT INTO Participant (idParticipant, idCountry, biography, height, trivia)
    values(s_person.currval, pCountry, pBiography, pHeight, pTrivia);
    
    COMMIT;
END insertParticipant;


/*CREATE PROCEDURE insertTypeOfParticipant(
    p_nickname IN VARCHAR2
) AS
BEGIN
    INSERT INTO typeOfParticipant (id_type, nickname)
    VALUES(s_type, p_nickname);
    COMMIT;
END;*/

CREATE PROCEDURE insertSystemUser(
    /*Person atributes*/
    pSex IN NUMBER,
    pFirstName IN VARCHAR2,
    pSecondName IN VARCHAR2,
    pFirstSurname IN VARCHAR2,
    pSecondSurname IN VARCHAR2,
    pDatebirth IN DATE,
    pPhoto IN BLOB,
    /*SystemUser atributes*/
    pUsername IN VARCHAR2,
    pIdentification IN VARCHAR2,
    pPhoneNumber IN NUMBER,
    pEmail IN VARCHAR2,
    pPswd IN VARCHAR2
) AS
BEGIN
    INSERT INTO Person (idPerson, idSex, firstName, secondName, firstSurname,
    secondSurname, datebirth, photo)
    VALUES (s_person.nextval, pSex, pFirstName, pSecondName, pFirstSurname,
    pSecondSurname, pDatebirth, pPhoto);
    
    INSERT INTO systemUser (idSystemUser, username, identification, phoneNumber,
    email, pswd)
    VALUES (s_person.currval, pUsername, pIdentification, pPhoneNumber, pEmail,
    pPswd);
    
    COMMIT;
END insertSystemUser;

CREATE PROCEDURE insertUser(
    /*Person atributes*/
    pSex IN NUMBER,
    pFirstName IN VARCHAR2,
    pSecondName IN VARCHAR2,
    pFirstSurname IN VARCHAR2,
    pSecondSurname IN VARCHAR2,
    pDatebirth IN DATE,
    pPhoto IN BLOB,
    /*SystemUser atributes*/
    pUsername IN VARCHAR2,
    pIdentification IN NUMBER,
    pPhoneNumber IN NUMBER,
    pEmail IN VARCHAR2,
    pPswd IN VARCHAR2,
    typeOfID IN NUMBER
    /*end_user atributes*/
    ---Only id
) AS
BEGIN
    INSERT INTO Person (idPerson, idSex, firstName, secondName, firstSurname,
    secondSurname, datebirth, photo)
    VALUES (s_person.nextval, pSex, pFirstName, pSecondName, pFirstSurname,
    pSecondSurname, pDatebirth, pPhoto);
    
    INSERT INTO systemUser (idSystemUser, username, phoneNumber,
    email, pswd)
    VALUES (s_person.currval, pUsername, pPhoneNumber, pEmail,
    pPswd);

    INSERT INTO Identification (idIdentification,idTypeOfIdentification,identNumber)
    VALUES (s_identification.nextval, typeOfId, pIdentification);
    
    INSERT INTO IdentXSystem(idIdent,idSystemUser)
    VALUES (s_identification.currval,s_person.currval);
    
    INSERT INTO end_user (idUser)
    VALUES (s_person.currval);
    
    COMMIT;
END insertUser;

CREATE PROCEDURE insertProduct(
    pIdType in NUMBER,
    pLink in VARCHAR2,
    pPhoto in BLOB,
    pPrice in NUMBER,
    pSynopsis IN VARCHAR2,
    pTrailer IN VARCHAR2,
    pDuration IN NUMBER,
    pTitle IN VARCHAR2,
    pReleaseYear IN NUMBER,
    pLink IN VARCHAR
  ) AS
  BEGIN 
    INSERT INTO Product(idProduct, link,releaseYear,title,duration,trailer,synopsis,idType)
    VALUES (s_product.nextval,pLink,pReleaseYear,pTitle,pDuration,pTrailer,pSynopsis,pIdType);
    
    INSERT INTO Photo(idPhoto,image,idProduct)
    VALUES (s_photo.nextval,pPhoto,s_product.currval);

    INSERT INTO Binnacle(idBinnacle, dateBinnacle, price,idProduct)
    VALUES (s_binnacle.nextval,SYSDATE,pPrice,s_product.currval);

    COMMIT;
  END insertProduct;

CREATE PROCEDURE insertAdministrator(
    /*Person atributes*/
    pSex IN NUMBER,
    pFirstName IN VARCHAR2,
    pSecondName IN VARCHAR2,
    pFirstSurname IN VARCHAR2,
    pSecondSurname IN VARCHAR2,
    pDatebirth IN DATE,
    pPhoto IN DATE,
    /*SystemUser atributes*/
    pUsername IN VARCHAR2,
    pIdentification IN NUMBER,
    pPhoneNumber IN NUMBER,
    pEmail IN VARCHAR2,
    pPswd IN VARCHAR2,
    typeOfId IN NUMBER,
    
    /*Administrator atributes*/
    ---Only id
) AS
BEGIN
    INSERT INTO Person (idPerson, idSex, firstName, secondName, firstSurname,
    secondSurname, datebirth, photo)
    VALUES (s_person.nextval, pSex, pFirstName, pSecondName, pFirstSurname,
    pSecondSurname, pDatebirth, pPhoto);
    
    INSERT INTO systemUser (idSystemUser, username, identification, phoneNumber,
    email, pswd)
    VALUES (s_person.currval, pUsername, pIdentification, pPhoneNumber, pEmail,
    pPswd);

    INSERT INTO Identification (idIdentification,idTypeOfIdentification,identNumber)
    VALUES (s_identification.nextval, typeOfId, pIdentification)
    
    INSERT INTO IdentXSystem(idIdent,idSystemUser)
    VALUES (s_identification.currval,s_person.currval)
    
    INSERT INTO administrator (idAdministrator)
    VALUES (s_person.currval);
    
    COMMIT;
END insertAdministrator;

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
/******************************************************************************/



/*CREATE PROCEDURE (

) AS
BEGIN
    INSERT INTO ()
    VALUES ();
    COMMIT;
END;*/

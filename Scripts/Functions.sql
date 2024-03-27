/******************************************************************************/
/*
 *Description: Insert sex
 *Input: p_name, name of the sex
 *Output: void
 */
  
CREATE PROCEDURE insertSex (
    p_name IN VARCHAR2
) AS
BEGIN
    INSERT INTO sex(id_sex, sex_name)
    values(s_sex.nextval, p_name);
END insertSex;

CREATE PROCEDURE insertNationality(
    p_name IN VARCHAR2
) AS
BEGIN
    INSERT INTO nationality (id_nationality, name)
    VALUES (s_nationality.nextval, p_name);
    COMMIT;
END insertNationality;

CREATE PROCEDURE insertPerson(
    p_sex IN NUMBER,
    p_first_name IN VARCHAR2,
    p_second_name IN VARCHAR2,
    p_first_surname IN VARCHAR2,
    p_second_surname IN VARCHAR2,
    p_date_birth IN DATE
) AS
BEGIN
    INSERT INTO Person (id_person, id_sex, first_name, second_name, first_surname,
    second_surname, date_birth)
    VALUES (s_person.nextval, p_sex, p_first_name, p_second_name, p_first_surname,
    p_second_surname, p_date_birth);
    COMMIT;
END insertPerson;

CREATE PROCEDURE insertParticipant(
    p_sex IN NUMBER,
    p_first_name IN VARCHAR2,
    p_second_name IN VARCHAR2,
    p_first_surname IN VARCHAR2,
    p_second_surname IN VARCHAR2,
    p_date_birth IN DATE,
    p_country IN NUMBER,
    p_biography IN VARCHAR2,
    p_height IN NUMBER,
    p_trivia IN VARCHAR2,
    p_photo IN BLOB
) AS
BEGIN
    INSERT INTO Person (id_person, id_sex, first_name, second_name, first_surname,
    second_surname, date_birth)
    VALUES (s_person.nextval, p_sex, p_first_name, p_second_name, p_first_surname,
    p_second_surname, p_date_birth);
    
    INSERT INTO Participant (id_participant, id_country, biography, height, trivia,
    photo)
    values(s_person.currval, p_country, p_biography, p_height, p_trivia,
    p_photo);
    
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
    p_sex IN NUMBER,
    p_first_name IN VARCHAR2,
    p_second_name IN VARCHAR2,
    p_first_surname IN VARCHAR2,
    p_second_surname IN VARCHAR2,
    p_date_birth IN DATE,
    /*SystemUser atributes*/
    p_username IN VARCHAR2,
    p_identification IN NUMBER,
    p_phoneNumber IN NUMBER,
    p_emai IN VARCHAR2,
    p_password IN VARCHAR2
    
) AS
BEGIN
    INSERT INTO Person (id_person, id_sex, first_name, second_name, first_surname,
    second_surname, date_birth)
    VALUES (s_person.nextval, p_sex, p_first_name, p_second_name, p_first_surname,
    p_second_surname, p_date_birth);
    
    INSERT INTO systemUser (id_systemUser, username, identification, phoneNumber,
    email, password)
    VALUES (s_person.currval, p_username, p_identification, p_phoneNumber, p_email,
    p_password);
    
    COMMIT;
END insertSystemUser;

CREATE PROCEDURE insertUser(
    /*Person atributes*/
    p_sex IN NUMBER,
    p_first_name IN VARCHAR2,
    p_second_name IN VARCHAR2,
    p_first_surname IN VARCHAR2,
    p_second_surname IN VARCHAR2,
    p_date_birth IN DATE,
    /*SystemUser atributes*/
    p_username IN VARCHAR2,
    p_identification IN NUMBER,
    p_phoneNumber IN NUMBER,
    p_emai IN VARCHAR2,
    p_password IN VARCHAR2
    /*end_user atributes*/
    ---Only id
) AS
BEGIN
    INSERT INTO Person (id_person, id_sex, first_name, second_name, first_surname,
    second_surname, date_birth)
    VALUES (s_person.nextval, p_sex, p_first_name, p_second_name, p_first_surname,
    p_second_surname, p_date_birth);
    
    INSERT INTO systemUser (id_systemUser, username, identification, phoneNumber,
    email, password)
    VALUES (s_person.currval, p_username, p_identification, p_phoneNumber, p_email,
    p_password);
    
    INSERT INTO end_user (id_user)
    VALUES (s_person.currval);
    
    COMMIT;
END insertUser;

CREATE PROCEDURE insertAdministrator(
    /*Person atributes*/
    p_sex IN NUMBER,
    p_first_name IN VARCHAR2,
    p_second_name IN VARCHAR2,
    p_first_surname IN VARCHAR2,
    p_second_surname IN VARCHAR2,
    p_date_birth IN DATE,
    /*SystemUser atributes*/
    p_username IN VARCHAR2,
    p_identification IN NUMBER,
    p_phoneNumber IN NUMBER,
    p_emai IN VARCHAR2,
    p_password IN VARCHAR2
    /*administrator atributes*/
    ---Only id
) AS
BEGIN
    INSERT INTO Person (id_person, id_sex, first_name, second_name, first_surname,
    second_surname, date_birth)
    VALUES (s_person.nextval, p_sex, p_first_name, p_second_name, p_first_surname,
    p_second_surname, p_date_birth);
    
    INSERT INTO systemUser (id_systemUser, username, identification, phoneNumber,
    email, password)
    VALUES (s_person.currval, p_username, p_identification, p_phoneNumber, p_email,
    p_password);
    
    INSERT INTO administrator (id_administrator)
    VALUES (s_person.currval);
    
    COMMIT;
END insertAdministrator;

/******************************************************************************/
CREATE PROCEDURE insertCard(
    p_id_user IN NUMBER,
    p_cardNumber IN NUMBER,
    p_expiration IN DATE,
    p_ccv IN NUMBER,
    p_ownerName IN VARCHAR2
) AS
BEGIN
    INSERT INTO payment (id_payment, id_user)
    VALUES (s_payment.nextval, p_id_user);
    
    INSERT INTO payment (id_card, cardNumber, expiration, ccv, ownerName)
    VALUES (s_payment.currval, p_cardNumber, p_expiration, p_ccv, p_ownerName);
    
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

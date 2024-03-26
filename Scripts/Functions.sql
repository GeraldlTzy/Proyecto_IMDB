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

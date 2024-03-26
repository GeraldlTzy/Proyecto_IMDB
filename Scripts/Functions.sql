/******************************************************************************/
---DROP PROCEDURE insertNationality;

CREATE PROCEDURE insertNationality(
    p_name IN VARCHAR2
) AS
BEGIN
    INSERT INTO nationality (id_nationality, name)
    VALUES (s_nationality.nextval, p_name);
    COMMIT;
END insertNationality;

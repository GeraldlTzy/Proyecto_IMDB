--Package pkgParticipant
DELIMITER //


CREATE OR REPLACE PACKAGE pkgParticipant

	PROCEDURE insertParticipant(IN pSex INT, IN pFirstName VARCHAR(20), IN pSecondName VARCHAR(20),
	    IN pFirstSurname VARCHAR(20), IN pSecondSurname VARCHAR(20), IN pDatebirth DATE,
	    IN pCity INT, IN pBiography VARCHAR(500), IN pHeight INT, 
	    IN pTrivia VARCHAR(500), IN pPhoto BLOB, OUT pIdParticipant INT);
	PROCEDURE insertRelative(IN pIdParticipant INT,
		IN pIdRelative INT, IN pIdKinship INT);
	PROCEDURE deleteParticipant(IN pIdParticipant INT);
	PROCEDURE updateParticipant(IN pIdParticipant INT
		IN pSex INT, IN pFirstName VARCHAR(20), IN pSecondName VARCHAR(20),
	    IN pFirstSurname VARCHAR(20), IN pSecondSurname VARCHAR(20), IN pDatebirth DATE,
	    IN pCity INT, IN pBiography VARCHAR(500), IN pHeight INT, 
	    IN pTrivia VARCHAR(500), IN pPhoto BLOB);
	
	FUNCTION getParticipantInfo(IN pIdParticipant INT) RETURN SYS_REFCURSOR; 
	FUNCTION getParticipantNat(IN pIdParticipant INT) RETURN SYS_REFCURSOR;
	FUNCTION getInfoParticipants() RETURN SYS_REFCURSOR;

END;
//




















END;
//

CREATE OR REPLACE PACKAGE BODY pkgParticipant

	CREATE OR REPLACE PROCEDURE insertParticipant(IN pSex INT, IN pFirstName VARCHAR(20), IN pSecondName VARCHAR(20),
	    IN pFirstSurname VARCHAR(20), IN pSecondSurname VARCHAR(20), IN pDatebirth DATE,
	    IN pCity INT, IN pBiography VARCHAR(500), IN pHeight INT, 
	    IN pTrivia VARCHAR(500), IN pPhoto BLOB, OUT pIdParticipant INT)
		BEGIN
			DECLARE pOutId INT;

			START TRANSACTION;

			CALL insertPerson(pSex, pFirstName, pSecondName, pFirstSurname,
	    	pSecondSurname, pDatebirth, pPhoto, @pOutId);

	    	SET pOutId = @pOutId;

	    	INSERT INTO Participant (idParticipant, idCity, biography, height, trivia)
        	VALUES(pOutId, pCity, pBiography, pHeight, pTrivia);

	    	SET pIdParticipant = pOutId;

	    	COMMIT;
		END;
	--//



	CREATE OR REPLACE PROCEDURE insertRelative(IN pIdParticipant INT,
		IN pIdRelative INT, IN pIdKinship INT)
		BEGIN
			INSERT INTO ParticipantXRelative(idParticipant,idParticipant2,idRelative)
	        VALUES (pIdParticipant,pIdRelative,pIdKinship);
	        COMMIT;
		END;
	--//



	CREATE OR REPLACE PROCEDURE deleteParticipant(IN pIdParticipant INT)
		BEGIN
			START TRANSACTION;

			DELETE FROM ParticipantXRelative
	        WHERE idParticipant = pIdParticipant;
	        
	        DELETE FROM ParticipantXProduct
	        WHERE idParticipant = pIdParticipant;
	        
	        DELETE FROM Participant
	        WHERE idParticipant = pIdParticipant;

	    	COMMIT;
		END;
	--//



	CREATE OR REPLACE PROCEDURE updateParticipant(IN pIdParticipant INT
		IN pSex INT, IN pFirstName VARCHAR(20), IN pSecondName VARCHAR(20),
	    IN pFirstSurname VARCHAR(20), IN pSecondSurname VARCHAR(20), IN pDatebirth DATE,
	    IN pCity INT, IN pBiography VARCHAR(500), IN pHeight INT, 
	    IN pTrivia VARCHAR(500), IN pPhoto BLOB)
		BEGIN
			START TRANSACTION;

			UPDATE Person
			SET idSex = pSex,
			    firstName = pFirstName,
	            secondName = pSecondName,
	            firstSurname = pFirstSurname,
	            secondSurname = pSecondSurname,
	            dateBirth = pDateBirth,
	            photo = pPhoto
	        WHERE idPerson = pIdParticipant;

	        UPDATE Participant    
	        SET idCity = pCity,
	            biography = pBiography,
	            height = pHeight,
	            trivia = pTrivia
	        WHERE idParticipant = pIdParticipant;

	    	COMMIT;
		END;
	--//


	--###**Cursor**###
	--old: getParticipant [PROCEDURE]
	--new: getParticipantInfo [FUNCTION] -AND- getParticipantNat [FUNCTION]
	CREATE OR REPLACE FUNCTION getParticipantInfo(IN pIdParticipant INT) RETURNS CURSOR READS SQL DATA
		BEGIN
			DECLARE vParticipantInfoCursor CURSOR FOR
	            SELECT pe.idPerson, pe.firstName, pe.secondName, pe.firstSurname, pe.secondSurname, 
	            	pe.datebirth, pe.photo, ci.idCity, pa.biography, pa.height,
	            	pa.trivia, pe.idSex
	            FROM person pe
	            INNER JOIN participant pa
	            ON pe.idPerson = pIdParticipant AND pa.idParticipant = pe.idPerson
	            INNER JOIN city ci
	            ON ci.idCity = pa.idCity
	            INNER JOIN country co
	            ON ci.idCountry = co.idCountry;

	        OPEN vParticipantInfoCursor;

		    RETURN vParticipantInfoCursor;
		END;
	--//

	CREATE OR REPLACE FUNCTION getParticipantNat(IN pIdParticipant INT) RETURNS CURSOR READS SQL DATA
		BEGIN
			DECLARE vParticipantNatCursor CURSOR FOR
				SELECT na.idNationality
	            FROM nationalityPerson na
	            INNER JOIN participant pa
	            ON idPerson = pIdParticipant;

			OPEN vParticipantNatCursor;

		    RETURN vParticipantNatCursor;
		END;
	--//








	CREATE OR REPLACE FUNCTION getInfoParticipants() RETURNS CURSOR READS SQL DATA
		BEGIN
		    DECLARE vParticipantsCursor CURSOR FOR
		        SELECT idPerson, 
		               CONCAT_WS(' ', firstName, secondName, firstSurname, secondSurname) AS fullName, 
		               photo
		        FROM Person pe
		        INNER JOIN Participant pa
		        ON pe.idPerson = pa.idParticipant;

		    DECLARE CONTINUE HANDLER FOR NOT FOUND
		        RETURN NULL;

		    OPEN vParticipantsCursor;

		    RETURN vParticipantsCursor;
		END;
	--//

END;


//

DELIMITER ;
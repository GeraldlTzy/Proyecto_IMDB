/*Package pkgEnd_user*/
DELIMITER //


	CREATE OR REPLACE PROCEDURE insertUser(IN pSex INT, IN pFirstName VARCHAR(20),
	    IN pSecondName VARCHAR(20), IN pFirstSurname VARCHAR(20), IN pSecondSurname VARCHAR(20),
	    IN pDatebirth DATE, IN pPhoto LONGBLOB, IN pUsername VARCHAR(20), IN pIdentification INT,
	    IN pPhoneNumber INT, IN pEmail VARCHAR(50), IN pPswd VARCHAR(20), IN pIdTypeIdent INT,
	    OUT pidOut INT)
	BEGIN
	    DECLARE pOutId INT;
	
	    START TRANSACTION;
	
	    CALL insertPerson(pSex, pFirstName, pSecondName, pFirstSurname,
	                      pSecondSurname, pDatebirth, pPhoto, @pOutId);
	
	    SET pOutId = @pOutId;
	
	    CALL insertSystemUser(pOutId, pUsername, pPhoneNumber,
	                          pIdentification, pEmail, pPswd, pIdTypeIdent);
	
	    INSERT INTO end_user (idUser)
	    VALUES (pOutId);
	
	    SET pidOut = pOutId;
	
	    COMMIT;
	END; //
	
	CREATE OR REPLACE PROCEDURE updateUser(IN pIdUser INT, IN pSex INT, IN pFirstName VARCHAR(20),
	    IN pSecondName VARCHAR(20), IN pFirstSurname VARCHAR(20), IN pSecondSurname VARCHAR(20),
	    IN pDatebirth DATE, IN pPhoto LONGBLOB, IN pUsername VARCHAR(20),
	    IN pPhoneNumber INT, IN pEmail VARCHAR(50), IN pPswd VARCHAR(20))
	    BEGIN
		    START TRANSACTION;
		  
		    UPDATE Person
		    SET idSex = pSex,
		    	firstName = pFirstName,
		    	secondName = pSecondName,
		    	firstSurname = pFirstSurname,
		    	secondSurname = pSecondSurname,
		    	datebirth = pDatebirth,
		    	photo = pPhoto
		    WHERE idPerson = pIdUser;
		   
		    UPDATE systemUser
		    SET username = pUsername,
		    	phoneNumber = pPhoneNumber,
		    	email = pEmail,
		    	pswd = pPswd
		    WHERE idSystemUser = pIdUser;
		   
	        COMMIT;
		END//


	CREATE OR REPLACE PROCEDURE deleteUser(IN pIdUser INT)
		BEGIN
		    START TRANSACTION;

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
		END//


	CREATE OR REPLACE PROCEDURE buyProduct(IN pIdUser INT, IN pIdProduct INT, IN pIdPayment INT)
		BEGIN
		   IF (SELECT idUser FROM Purchase WHERE idUser = pIdUser AND idProduct = pIdProduct) 
				IS NULL THEN
			 INSERT INTO Purchase(idUser, idProduct, idPayment, history)
		    VALUES (pIdUser, pIdProduct, pIdPayment, NOW());
			END IF;
		    COMMIT;
		END//


	CREATE OR REPLACE PROCEDURE commentProduct(IN pIdUser INT, IN pIdProduct INT, IN pDescription VARCHAR(500))
		BEGIN
		    INSERT INTO Commentary (idProduct, idUser, description)
		    VALUES (pIdProduct, pIdUser, pDescription);

		    COMMIT;
		END//

	CREATE OR REPLACE PROCEDURE updateComment(IN pIdUser INT, IN pIdProduct INT, IN pDescription VARCHAR(500))
		BEGIN
			DECLARE EXIT HANDLER FOR SQLEXCEPTION
			BEGIN
	        	ROLLBACK;
	        	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error in updateComment';
	    	END;

		    UPDATE Commentary
		    SET description = pDescription
		    WHERE idUser = pIdUser AND idProduct = pIdProduct;

		    COMMIT;
		END//

	CREATE OR REPLACE PROCEDURE reviewProduct(IN pIdUser INT, IN pIdProduct INT, IN pStars INT)
		BEGIN
			DECLARE EXIT HANDLER FOR SQLEXCEPTION
			BEGIN
	        	ROLLBACK;
	        	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error in reviewProduct';
	    	END;

		    INSERT INTO Review(idProduct, idUser, stars)
		    VALUES (pIdProduct, pIdUser, pStars);

		    COMMIT;
		END//

	CREATE OR REPLACE PROCEDURE updateReview(IN pIdUser INT, IN pIdProduct INT, IN pStars INT)
		BEGIN
		    DECLARE EXIT HANDLER FOR SQLEXCEPTION
			BEGIN
	        	ROLLBACK;
	        	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error in updateReview';
	    	END;

		    UPDATE Review
		    SET stars = pStars
		    WHERE idUser = pIdUser AND idProduct = pIdProduct;

		    COMMIT;
		END//

	CREATE OR REPLACE PROCEDURE insertFavorite(IN pIdUser INT, IN pIdProduct INT)
		BEGIN
		    INSERT INTO Wishlist(idProduct, idUser)
		    VALUES (pIdProduct, pIdUser);

		    COMMIT;
		END//

		
	CREATE OR REPLACE PROCEDURE getWishlist(pIdUser INT)
		BEGIN
			SELECT wl.idProduct, pd.Title, ph.image
			FROM Wishlist wl
			INNER JOIN Product pd ON wl.idProduct = pd.idProduct AND wl.idUser = pIdUser
			INNER join
			(
	            SELECT idProduct, image
	            FROM (
	                SELECT ph.idProduct, ph.image, ROW_NUMBER() OVER (PARTITION BY ph.idProduct ORDER BY ph.idProduct) AS rn
	                FROM Photo ph
	            ) AS pho
	            WHERE rn = 1
	        ) AS ph
	       ON ph.idProduct = pd.idProduct;
		END//
	

	CREATE OR REPLACE PROCEDURE deleteComment(IN pIdUser INT, IN pIdProduct INT)
		BEGIN
		    DELETE FROM commentary
		    WHERE idUser = pIdUser AND idProduct = pIdProduct;

		    COMMIT;
		END//


	CREATE OR REPLACE PROCEDURE deleteReview(IN pIdUser INT, IN pIdProduct INT)
		BEGIN
		    DELETE FROM review
		    WHERE idUser = pIdUser AND idProduct = pIdProduct;

		    COMMIT;
		END//

	CREATE OR REPLACE PROCEDURE deleteFavorite(IN pIdUser INT, IN pIdProduct INT)
		BEGIN
			DELETE FROM wishlist
			WHERE idUser = pIdUser AND idProduct = pIdProduct;
			COMMIT;
	    END//

	CREATE OR REPLACE PROCEDURE insertCard(IN pIdUser INT, IN pCardNumber INT,
	    IN pExpiration DATE, IN pCcv INT, IN pOwnerName VARCHAR(20))
		BEGIN
			START TRANSACTION;

		    INSERT INTO Payment(idUser)
		    VALUES (pIdUser);

		    SET @paymentId = LAST_INSERT_ID();

		    INSERT INTO Card(idCard, cardNumber, expiration, ccv, ownerName)
		    VALUES (@paymentId, pCardNumber, pExpiration, pCcv, pOwnerName);

		    COMMIT;
		END//


	CREATE OR REPLACE PROCEDURE removeCard(IN pIdUser INT, IN pIdCard INT)
		BEGIN
			START TRANSACTION;

		    DELETE FROM Card
		    WHERE idCard = pIdCard;

		    DELETE FROM Payment
		    WHERE idPayment = pIdUser;

		    COMMIT;
		END//

		
	CREATE OR REPLACE PROCEDURE getPaymentMethods(IN pIdUser INT)
	BEGIN
	    SELECT ca.idCard, ca.cardNumber, ca.expiration, ca.ccv, ca.ownerName
	    FROM card ca
	    INNER JOIN Payment pay
	    ON ca.idCard = pay.idPayment AND pay.idUser = pIdUser;
	END//


DELIMITER ;

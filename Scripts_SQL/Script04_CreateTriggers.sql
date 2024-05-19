DELIMITER //
CREATE OR REPLACE TRIGGER beforeUpdateProductPrice
BEFORE UPDATE
ON Product
FOR EACH ROW
BEGIN
   CALL insertBinnacle(OLD.idProduct, OLD.price, NEW.price,NOW());
END;
//

CREATE OR REPLACE TRIGGER beforeInsertAdministrator
BEFORE INSERT
ON Administrator
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END;
//
CREATE OR REPLACE TRIGGER beforeUpdateAdministrator
BEFORE UPDATE
ON Administrator
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END;
//

CREATE OR REPLACE TRIGGER beforeInsertBinnacle
BEFORE INSERT
ON Binnacle
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END;
//
CREATE OR REPLACE TRIGGER beforeUpdateBinnacle
BEFORE UPDATE
ON Binnacle
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END;
//

CREATE OR REPLACE TRIGGER beforeInsertCard
BEFORE INSERT
ON Card
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END;
//
CREATE OR REPLACE TRIGGER beforeUpdateCard
BEFORE UPDATE
ON Card
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END;
//

CREATE OR REPLACE TRIGGER beforeInsertCatalog
BEFORE INSERT
ON Catalog
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END;
//
CREATE OR REPLACE TRIGGER beforeUpdateCatalog
BEFORE UPDATE
ON Catalog
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END;
//

CREATE OR REPLACE TRIGGER beforeInsertCatalogXProduct
BEFORE INSERT
ON CatalogXProduct
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END;
//
CREATE OR REPLACE TRIGGER beforeUpdateCatalogXProduct
BEFORE UPDATE
ON CatalogXProduct
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END;
//

CREATE OR REPLACE TRIGGER beforeInsertCity
BEFORE INSERT
ON City 
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END;
//
CREATE OR REPLACE TRIGGER beforeUpdateCity
BEFORE UPDATE
ON City
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END;
//

CREATE OR REPLACE TRIGGER beforeInsertCommentary
BEFORE INSERT
ON Commentary
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END;
//
CREATE OR REPLACE TRIGGER beforeUpdateCommentary
BEFORE UPDATE
ON Commentary
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END;
//

CREATE OR REPLACE TRIGGER beforeInsertCountry
BEFORE INSERT
ON Country
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END;
//
CREATE OR REPLACE TRIGGER beforeUpdateCountry
BEFORE UPDATE
ON Country
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END;
//

CREATE OR REPLACE TRIGGER beforeInsertEnd_user
BEFORE INSERT
ON End_user
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END;
//
CREATE OR REPLACE TRIGGER beforeUpdateEnd_user
BEFORE UPDATE
ON End_user
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END;
//

CREATE OR REPLACE TRIGGER beforeInsertEpisode
BEFORE INSERT
ON Episode
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END;
//
CREATE OR REPLACE TRIGGER beforeUpdateEpisode
BEFORE UPDATE
ON Episode
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END;
//

CREATE OR REPLACE TRIGGER beforeInsertIdentification
BEFORE INSERT
ON Identification
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END;
//
CREATE OR REPLACE TRIGGER beforeUpdateIdentification
BEFORE UPDATE
ON Identification
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END;
//

CREATE OR REPLACE TRIGGER beforeInsertIdentXSystem
BEFORE INSERT
ON IdentXSystem
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END;
//
CREATE OR REPLACE TRIGGER beforeUpdateIdentXSystem
BEFORE UPDATE
ON IdentXSystem
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END;
//

CREATE OR REPLACE TRIGGER beforeInsertNationality
BEFORE INSERT
ON Nationality
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END;
//
CREATE OR REPLACE TRIGGER beforeUpdateNationality
BEFORE UPDATE
ON Nationality
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END;
//

CREATE OR REPLACE TRIGGER beforeInsertNationalityPerson
BEFORE INSERT
ON NationalityPerson
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END;
//
CREATE OR REPLACE TRIGGER beforeUpdateNationalityPerson
BEFORE UPDATE
ON NationalityPerson
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END;
//

CREATE OR REPLACE TRIGGER beforeInsertParticipant
BEFORE INSERT
ON Participant
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END;
//
CREATE OR REPLACE TRIGGER beforeUpdateParticipant
BEFORE UPDATE
ON Participant
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END;
//

CREATE OR REPLACE TRIGGER beforeInsertParticipXProd
BEFORE INSERT
ON ParticipantXProduct
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END;
//
CREATE OR REPLACE TRIGGER beforeInsertParticipXProd
BEFORE UPDATE
ON ParticipantXProduct
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END;
//
CREATE OR REPLACE TRIGGER beforeInsertParticipXRel
BEFORE INSERT
ON ParticipantXRelative
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END;
//
CREATE OR REPLACE TRIGGER beforeInsertParticipXRel
BEFORE UPDATE
ON ParticipantXRelative
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END;
//

CREATE OR REPLACE TRIGGER beforeInsertPayment
BEFORE INSERT
ON Payment
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END;
//
CREATE OR REPLACE TRIGGER beforeUpdatePayment
BEFORE UPDATE
ON Payment
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END;
//

CREATE OR REPLACE TRIGGER beforeInsertPerson
BEFORE INSERT
ON Person
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END;
//
CREATE OR REPLACE TRIGGER beforeUpdatePerson
BEFORE UPDATE
ON Person
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END;
//

CREATE OR REPLACE TRIGGER beforeInsertPhoto
BEFORE INSERT
ON Photo
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END;
//
CREATE OR REPLACE TRIGGER beforeUpdatePhoto
BEFORE UPDATE
ON Photo
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END;
//

CREATE OR REPLACE TRIGGER beforeInsertPlatform
BEFORE INSERT
ON Platform
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END;
//
CREATE OR REPLACE TRIGGER beforeUpdatePlatform
BEFORE UPDATE
ON Platform
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END;
//

CREATE OR REPLACE TRIGGER beforeInsertProduct
BEFORE INSERT
ON Product
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END;
//
CREATE OR REPLACE TRIGGER beforeUpdateProduct
BEFORE UPDATE
ON Product
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END;
//

CREATE OR REPLACE TRIGGER beforeInsertProductXPlatform
BEFORE INSERT
ON ProductXPlatform
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END;
//
CREATE OR REPLACE TRIGGER beforeUpdateProductXPlatform
BEFORE UPDATE
ON ProductXPlatform
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END;
//

CREATE OR REPLACE TRIGGER beforeInsertPurchase
BEFORE INSERT
ON Purchase
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END;
//
CREATE OR REPLACE TRIGGER beforeUpdatePurchase
BEFORE UPDATE
ON Purchase
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END;
//

CREATE OR REPLACE TRIGGER beforeInsertRelative
BEFORE INSERT
ON Relative
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END;
//
CREATE OR REPLACE TRIGGER beforeUpdateRelative
BEFORE UPDATE
ON Relative
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END;
//

CREATE OR REPLACE TRIGGER beforeInsertReview
BEFORE INSERT
ON Review
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END;
//
CREATE OR REPLACE TRIGGER beforeUpdateReview
BEFORE UPDATE
ON Review
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END;
//

CREATE OR REPLACE TRIGGER beforeInsertSeason
BEFORE INSERT
ON Season
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END;
//
CREATE OR REPLACE TRIGGER beforeUpdateSeason
BEFORE UPDATE
ON Season
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END;
//

CREATE OR REPLACE TRIGGER beforeInsertSex
BEFORE INSERT
ON Sex
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END;
//
CREATE OR REPLACE TRIGGER beforeUpdateSex
BEFORE UPDATE
ON Sex
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END;
//

CREATE OR REPLACE TRIGGER beforeInsertSystemUser
BEFORE INSERT
ON SystemUser
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END;
//
CREATE OR REPLACE TRIGGER beforeUpdateSystemUser
BEFORE UPDATE
ON SystemUser
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END;
//

CREATE OR REPLACE TRIGGER beforeUpdateTypeOfId
BEFORE INSERT
ON TypeOfIdentification
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END;
//
CREATE OR REPLACE TRIGGER beforeUpdateTypeOfId
BEFORE UPDATE
ON TypeOfIdentification
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END;
//

CREATE OR REPLACE TRIGGER beforeInsertTypeOfParticipant
BEFORE INSERT
ON TypeOfParticipant
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END;
//
CREATE OR REPLACE TRIGGER beforeUpdateTypeOfParticipant
BEFORE UPDATE
ON TypeOfParticipant
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END;
//

CREATE OR REPLACE TRIGGER beforeInsertTypeOfProduct
BEFORE INSERT
ON TypeOfProduct
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END;
//
CREATE OR REPLACE TRIGGER beforeUpdateTypeOfProduct
BEFORE UPDATE
ON TypeOfProduct
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END;
//

CREATE OR REPLACE TRIGGER beforeInsertWishlist
BEFORE INSERT
ON Wishlist
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END;
//
CREATE OR REPLACE TRIGGER beforeUpdateWishlist
BEFORE UPDATE
ON Wishlist
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END;
//
DELIMITER ;

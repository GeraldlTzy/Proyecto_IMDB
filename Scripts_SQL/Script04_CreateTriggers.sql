DELIMITER //
CREATE OR REPLACE TRIGGER beforeUpdateProductPrice
BEFORE UPDATE
ON Product
FOR EACH ROW
BEGIN
    pkgBasic.insertBinnacle(:old.idProduct,:old.price,NEW.price,NOW());
    
END beforeUpdateProductPrice;
//

CREATE OR REPLACE TRIGGER beforeInsertAdministrator
BEFORE INSERT
ON Administrator
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END beforeInsertAdministrator;
//
CREATE OR REPLACE TRIGGER beforeUpdateAdministrator
BEFORE UPDATE
ON Administrator
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END beforeUpdateAdministrator;
//

CREATE OR REPLACE TRIGGER beforeInsertBinnacle
BEFORE INSERT
ON Binnacle
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END beforeInsertBinnacle;
//
CREATE OR REPLACE TRIGGER beforeUpdateBinnacle
BEFORE UPDATE
ON Binnacle
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END beforeUpdateBinnacle;
//

CREATE OR REPLACE TRIGGER beforeInsertCard
BEFORE INSERT
ON Card
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END beforeInsertCard;
//
CREATE OR REPLACE TRIGGER beforeUpdateCard
BEFORE UPDATE
ON Card
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END beforeUpdateCard;
//

CREATE OR REPLACE TRIGGER beforeInsertCatalog
BEFORE INSERT
ON Catalog
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END beforeInsertCatalog;
//
CREATE OR REPLACE TRIGGER beforeUpdateCatalog
BEFORE UPDATE
ON Catalog
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END beforeUpdateCatalog;
//

CREATE OR REPLACE TRIGGER beforeInsertCatalogXProduct
BEFORE INSERT
ON CatalogXProduct
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END beforeInsertCatalogXProduct;
//
CREATE OR REPLACE TRIGGER beforeUpdateCatalogXProduct
BEFORE UPDATE
ON CatalogXProduct
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END beforeUpdateCatalogXProduct;
//

CREATE OR REPLACE TRIGGER beforeInsertCity
BEFORE INSERT
ON City 
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END beforeInsertAdministrator;
//
CREATE OR REPLACE TRIGGER beforeUpdateCity
BEFORE UPDATE
ON City
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END beforeUpdateAdministrator;
//

CREATE OR REPLACE TRIGGER beforeInsertCommentary
BEFORE INSERT
ON Commentary
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END beforeInsertCommentary;
//
CREATE OR REPLACE TRIGGER beforeUpdateCommentary
BEFORE UPDATE
ON Commentary
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END beforeUpdateCommentary;
//

CREATE OR REPLACE TRIGGER beforeInsertCountry
BEFORE INSERT
ON Country
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END beforeInsertCountry;
//
CREATE OR REPLACE TRIGGER beforeUpdateCountry
BEFORE UPDATE
ON Country
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END beforeUpdateCountry;
//

CREATE OR REPLACE TRIGGER beforeInsertEnd_USER()
BEFORE INSERT
ON End_USER()
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END beforeInsertEnd_USER();
//
CREATE OR REPLACE TRIGGER beforeUpdateEnd_USER()
BEFORE UPDATE
ON End_USER()
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END beforeUpdateEnd_USER();
//

CREATE OR REPLACE TRIGGER beforeInsertEpisode
BEFORE INSERT
ON Episode
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END beforeInsertEpisode;
//
CREATE OR REPLACE TRIGGER beforeUpdateEpisode
BEFORE UPDATE
ON Episode
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END beforeUpdateEpisode;
//

CREATE OR REPLACE TRIGGER beforeInsertIdentification
BEFORE INSERT
ON Identification
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END beforeInsertAdministrator;
//
CREATE OR REPLACE TRIGGER beforeUpdateIdentification
BEFORE UPDATE
ON Identification
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END beforeUpdateIdentification;
//

CREATE OR REPLACE TRIGGER beforeInsertIdentXSystem
BEFORE INSERT
ON IdentXSystem
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END beforeInsertIdentXSystem;
//
CREATE OR REPLACE TRIGGER beforeUpdateIdentXSystem
BEFORE UPDATE
ON IdentXSystem
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END beforeUpdateIdentXSystem;
//

CREATE OR REPLACE TRIGGER beforeInsertNationality
BEFORE INSERT
ON Nationality
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END beforeInsertNationality;
//
CREATE OR REPLACE TRIGGER beforeUpdateNationality
BEFORE UPDATE
ON Nationality
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END beforeUpdateNationality;
//

CREATE OR REPLACE TRIGGER beforeInsertNationalityPerson
BEFORE INSERT
ON NationalityPerson
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END beforeInsertNationalityPerson;
//
CREATE OR REPLACE TRIGGER beforeUpdateNationalityPerson
BEFORE UPDATE
ON NationalityPerson
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END beforeUpdateNationalityPerson;
//

CREATE OR REPLACE TRIGGER beforeInsertParticipant
BEFORE INSERT
ON Participant
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END beforeInsertParticipant;
//
CREATE OR REPLACE TRIGGER beforeUpdateParticipant
BEFORE UPDATE
ON Participant
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END beforeUpdateParticipant;
//

CREATE OR REPLACE TRIGGER beforeInsertParticipXProd
BEFORE INSERT
ON ParticipantXProduct
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END beforeInsertParticipXProd;
//
CREATE OR REPLACE TRIGGER beforeInsertParticipXProd
BEFORE UPDATE
ON ParticipantXProduct
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END beforeInsertParticipXProd;
//
CREATE OR REPLACE TRIGGER beforeInsertParticipXRel
BEFORE INSERT
ON ParticipantXRelative
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END beforeInsertParticipXRel;
//
CREATE OR REPLACE TRIGGER beforeInsertParticipXRel
BEFORE UPDATE
ON ParticipantXRelative
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END beforeInsertParticipXRel;
//

CREATE OR REPLACE TRIGGER beforeInsertPayment
BEFORE INSERT
ON Payment
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END beforeInsertPayment;
//
CREATE OR REPLACE TRIGGER beforeUpdatePayment
BEFORE UPDATE
ON Payment
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END beforeUpdatePayment;
//

CREATE OR REPLACE TRIGGER beforeInsertPerson
BEFORE INSERT
ON Person
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END beforeInsertPerson;
//
CREATE OR REPLACE TRIGGER beforeUpdatePerson
BEFORE UPDATE
ON Person
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END beforeUpdatePerson;
//

CREATE OR REPLACE TRIGGER beforeInsertPhoto
BEFORE INSERT
ON Photo
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END beforeInsertPhoto;
//
CREATE OR REPLACE TRIGGER beforeUpdatePhoto
BEFORE UPDATE
ON Photo
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END beforeUpdatePhoto;
//

CREATE OR REPLACE TRIGGER beforeInsertPlatform
BEFORE INSERT
ON Platform
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END beforeInsertPlatform;
//
CREATE OR REPLACE TRIGGER beforeUpdatePlatform
BEFORE UPDATE
ON Platform
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END beforeUpdatePlatform;
//

CREATE OR REPLACE TRIGGER beforeInsertProduct
BEFORE INSERT
ON Product
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END beforeInsertProduct;
//
CREATE OR REPLACE TRIGGER beforeUpdateProduct
BEFORE UPDATE
ON Product
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END beforeUpdateProduct;
//

CREATE OR REPLACE TRIGGER beforeInsertProductXPlatform
BEFORE INSERT
ON ProductXPlatform
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END beforeInsertProductXPlatform;
//
CREATE OR REPLACE TRIGGER beforeUpdateProductXPlatform
BEFORE UPDATE
ON ProductXPlatform
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END beforeUpdateProductXPlatform;
//

CREATE OR REPLACE TRIGGER beforeInsertPurchase
BEFORE INSERT
ON Purchase
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END beforeInsertPurchase;
//
CREATE OR REPLACE TRIGGER beforeUpdatePurchase
BEFORE UPDATE
ON Purchase
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END beforeUpdatePurchase;
//

CREATE OR REPLACE TRIGGER beforeInsertRelative
BEFORE INSERT
ON Relative
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END beforeInsertRelative;
//
CREATE OR REPLACE TRIGGER beforeUpdateRelative
BEFORE UPDATE
ON Relative
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END beforeUpdateRelative;
//

CREATE OR REPLACE TRIGGER beforeInsertReview
BEFORE INSERT
ON Review
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END beforeInsertReview;
//
CREATE OR REPLACE TRIGGER beforeUpdateReview
BEFORE UPDATE
ON Review
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END beforeUpdateReview;
//

CREATE OR REPLACE TRIGGER beforeInsertSeason
BEFORE INSERT
ON Season
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END beforeInsertSeason;
//
CREATE OR REPLACE TRIGGER beforeUpdateSeason
BEFORE UPDATE
ON Season
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END beforeUpdateSeason;
//

CREATE OR REPLACE TRIGGER beforeInsertSex
BEFORE INSERT
ON Sex
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END beforeInsertSex;
//
CREATE OR REPLACE TRIGGER beforeUpdateSex
BEFORE UPDATE
ON Sex
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END beforeUpdateSex;
//

CREATE OR REPLACE TRIGGER beforeInsertSystemUSER()
BEFORE INSERT
ON SystemUSER()
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END beforeInsertSystemUSER();
//
CREATE OR REPLACE TRIGGER beforeUpdateSystemUSER()
BEFORE UPDATE
ON SystemUSER()
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END beforeUpdateSystemUSER();
//

CREATE OR REPLACE TRIGGER beforeUpdateTypeOfId
BEFORE INSERT
ON TypeOfIdentification
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END beforeUpdateTypeOfId;
//
CREATE OR REPLACE TRIGGER beforeUpdateTypeOfId
BEFORE UPDATE
ON TypeOfIdentification
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END beforeUpdateTypeOfId;
//

CREATE OR REPLACE TRIGGER beforeInsertTypeOfParticipant
BEFORE INSERT
ON TypeOfParticipant
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END beforeInsertTypeOfParticipant;
//
CREATE OR REPLACE TRIGGER beforeUpdateTypeOfParticipant
BEFORE UPDATE
ON TypeOfParticipant
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END beforeUpdateTypeOfParticipant;
//

CREATE OR REPLACE TRIGGER beforeInsertTypeOfProduct
BEFORE INSERT
ON TypeOfProduct
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END beforeInsertTypeOfProduct;
//
CREATE OR REPLACE TRIGGER beforeUpdateTypeOfProduct
BEFORE UPDATE
ON TypeOfProduct
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END beforeUpdateTypeOfProduct;
//

CREATE OR REPLACE TRIGGER beforeInsertWishlist
BEFORE INSERT
ON Wishlist
FOR EACH ROW
BEGIN
    SET NEW.created_by = USER();
    SET NEW.creation_date = NOW();
END beforeInsertWishlist;
//
CREATE OR REPLACE TRIGGER beforeUpdateWishlist
BEFORE UPDATE
ON Wishlist
FOR EACH ROW
BEGIN
    SET NEW.updated_by = USER();
    SET NEW.update_date = NOW();
END beforeUpdateWishlist;
//
DELIMITER ;

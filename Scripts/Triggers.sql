CREATE OR REPLACE TRIGGER beforeUpdateProductPrice
BEFORE INSERT
ON Product
FOR EACH ROW
BEGIN
    pkgBasic.insertBinnacle(:old.idProduct,:old.price,:new.price,SYSDATE);
    
END beforeUpdateProductPrice;
/

CREATE OR REPLACE TRIGGER beforeInsertAdministrator
BEFORE INSERT
ON Administrator
FOR EACH ROW
BEGIN
    :new.created_by := USER;
    :new.creation_date := SYSDATE;
END beforeInsertAdministrator;
/
CREATE OR REPLACE TRIGGER beforeUpdateAdministrator
BEFORE UPDATE
ON Administrator
FOR EACH ROW
BEGIN
    :new.updated_by := USER;
    :new.update_date := SYSDATE;
END beforeUpdateAdministrator;
/

CREATE OR REPLACE TRIGGER beforeInsertBinnacle
BEFORE INSERT
ON Binnacle
FOR EACH ROW
BEGIN
    :new.created_by := USER;
    :new.creation_date := SYSDATE;
END beforeInsertBinnacle;
/
CREATE OR REPLACE TRIGGER beforeUpdateBinnacle
BEFORE UPDATE
ON Binnacle
FOR EACH ROW
BEGIN
    :new.updated_by := USER;
    :new.update_date := SYSDATE;
END beforeUpdateBinnacle;
/

CREATE OR REPLACE TRIGGER beforeInsertCard
BEFORE INSERT
ON Card
FOR EACH ROW
BEGIN
    :new.created_by := USER;
    :new.creation_date := SYSDATE;
END beforeInsertCard;
/
CREATE OR REPLACE TRIGGER beforeUpdateCard
BEFORE UPDATE
ON Card
FOR EACH ROW
BEGIN
    :new.updated_by := USER;
    :new.update_date := SYSDATE;
END beforeUpdateCard;
/

CREATE OR REPLACE TRIGGER beforeInsertCatalog
BEFORE INSERT
ON Catalog
FOR EACH ROW
BEGIN
    :new.created_by := USER;
    :new.creation_date := SYSDATE;
END beforeInsertCatalog;
/
CREATE OR REPLACE TRIGGER beforeUpdateCatalog
BEFORE UPDATE
ON Catalog
FOR EACH ROW
BEGIN
    :new.updated_by := USER;
    :new.update_date := SYSDATE;
END beforeUpdateCatalog;
/

CREATE OR REPLACE TRIGGER beforeInsertCatalogXProduct
BEFORE INSERT
ON CatalogXProduct
FOR EACH ROW
BEGIN
    :new.created_by := USER;
    :new.creation_date := SYSDATE;
END beforeInsertCatalogXProduct;
/
CREATE OR REPLACE TRIGGER beforeUpdateCatalogXProduct
BEFORE UPDATE
ON CatalogXProduct
FOR EACH ROW
BEGIN
    :new.updated_by := USER;
    :new.update_date := SYSDATE;
END beforeUpdateCatalogXProduct;
/

CREATE OR REPLACE TRIGGER beforeInsertCity
BEFORE INSERT
ON City 
FOR EACH ROW
BEGIN
    :new.created_by := USER;
    :new.creation_date := SYSDATE;
END beforeInsertAdministrator;
/
CREATE OR REPLACE TRIGGER beforeUpdateCity
BEFORE UPDATE
ON City
FOR EACH ROW
BEGIN
    :new.updated_by := USER;
    :new.update_date := SYSDATE;
END beforeUpdateAdministrator;
/

CREATE OR REPLACE TRIGGER beforeInsertCommentary
BEFORE INSERT
ON Commentary
FOR EACH ROW
BEGIN
    :new.created_by := USER;
    :new.creation_date := SYSDATE;
END beforeInsertCommentary;
/
CREATE OR REPLACE TRIGGER beforeUpdateCommentary
BEFORE UPDATE
ON Commentary
FOR EACH ROW
BEGIN
    :new.updated_by := USER;
    :new.update_date := SYSDATE;
END beforeUpdateCommentary;
/

CREATE OR REPLACE TRIGGER beforeInsertCountry
BEFORE INSERT
ON Country
FOR EACH ROW
BEGIN
    :new.created_by := USER;
    :new.creation_date := SYSDATE;
END beforeInsertCountry;
/
CREATE OR REPLACE TRIGGER beforeUpdateCountry
BEFORE UPDATE
ON Country
FOR EACH ROW
BEGIN
    :new.updated_by := USER;
    :new.update_date := SYSDATE;
END beforeUpdateCountry;
/

CREATE OR REPLACE TRIGGER beforeInsertEnd_user
BEFORE INSERT
ON End_user
FOR EACH ROW
BEGIN
    :new.created_by := USER;
    :new.creation_date := SYSDATE;
END beforeInsertEnd_user;
/
CREATE OR REPLACE TRIGGER beforeUpdateEnd_user
BEFORE UPDATE
ON End_user
FOR EACH ROW
BEGIN
    :new.updated_by := USER;
    :new.update_date := SYSDATE;
END beforeUpdateEnd_user;
/

CREATE OR REPLACE TRIGGER beforeInsertEpisode
BEFORE INSERT
ON Episode
FOR EACH ROW
BEGIN
    :new.created_by := USER;
    :new.creation_date := SYSDATE;
END beforeInsertEpisode;
/
CREATE OR REPLACE TRIGGER beforeUpdateEpisode
BEFORE UPDATE
ON Episode
FOR EACH ROW
BEGIN
    :new.updated_by := USER;
    :new.update_date := SYSDATE;
END beforeUpdateEpisode;
/

CREATE OR REPLACE TRIGGER beforeInsertIdentification
BEFORE INSERT
ON Identification
FOR EACH ROW
BEGIN
    :new.created_by := USER;
    :new.creation_date := SYSDATE;
END beforeInsertAdministrator;
/
CREATE OR REPLACE TRIGGER beforeUpdateIdentification
BEFORE UPDATE
ON Identification
FOR EACH ROW
BEGIN
    :new.updated_by := USER;
    :new.update_date := SYSDATE;
END beforeUpdateIdentification;
/

CREATE OR REPLACE TRIGGER beforeInsertIdentXSystem
BEFORE INSERT
ON IdentXSystem
FOR EACH ROW
BEGIN
    :new.created_by := USER;
    :new.creation_date := SYSDATE;
END beforeInsertIdentXSystem;
/
CREATE OR REPLACE TRIGGER beforeUpdateIdentXSystem
BEFORE UPDATE
ON IdentXSystem
FOR EACH ROW
BEGIN
    :new.updated_by := USER;
    :new.update_date := SYSDATE;
END beforeUpdateIdentXSystem;
/

CREATE OR REPLACE TRIGGER beforeInsertNationality
BEFORE INSERT
ON Nationality
FOR EACH ROW
BEGIN
    :new.created_by := USER;
    :new.creation_date := SYSDATE;
END beforeInsertNationality;
/
CREATE OR REPLACE TRIGGER beforeUpdateNationality
BEFORE UPDATE
ON Nationality
FOR EACH ROW
BEGIN
    :new.updated_by := USER;
    :new.update_date := SYSDATE;
END beforeUpdateNationality;
/

CREATE OR REPLACE TRIGGER beforeInsertNationalityPerson
BEFORE INSERT
ON NationalityPerson
FOR EACH ROW
BEGIN
    :new.created_by := USER;
    :new.creation_date := SYSDATE;
END beforeInsertNationalityPerson;
/
CREATE OR REPLACE TRIGGER beforeUpdateNationalityPerson
BEFORE UPDATE
ON NationalityPerson
FOR EACH ROW
BEGIN
    :new.updated_by := USER;
    :new.update_date := SYSDATE;
END beforeUpdateNationalityPerson;
/

CREATE OR REPLACE TRIGGER beforeInsertParticipant
BEFORE INSERT
ON Participant
FOR EACH ROW
BEGIN
    :new.created_by := USER;
    :new.creation_date := SYSDATE;
END beforeInsertParticipant;
/
CREATE OR REPLACE TRIGGER beforeUpdateParticipant
BEFORE UPDATE
ON Participant
FOR EACH ROW
BEGIN
    :new.updated_by := USER;
    :new.update_date := SYSDATE;
END beforeUpdateParticipant;
/

CREATE OR REPLACE TRIGGER beforeInsertParticipXProd
BEFORE INSERT
ON ParticipantXProduct
FOR EACH ROW
BEGIN
    :new.created_by := USER;
    :new.creation_date := SYSDATE;
END beforeInsertParticipXProd;
/
CREATE OR REPLACE TRIGGER beforeInsertParticipXProd
BEFORE UPDATE
ON ParticipantXProduct
FOR EACH ROW
BEGIN
    :new.updated_by := USER;
    :new.update_date := SYSDATE;
END beforeInsertParticipXProd;
/
CREATE OR REPLACE TRIGGER beforeInsertParticipXRel
BEFORE INSERT
ON ParticipantXRelative
FOR EACH ROW
BEGIN
    :new.created_by := USER;
    :new.creation_date := SYSDATE;
END beforeInsertParticipXRel;
/
CREATE OR REPLACE TRIGGER beforeInsertParticipXRel
BEFORE UPDATE
ON ParticipantXRelative
FOR EACH ROW
BEGIN
    :new.updated_by := USER;
    :new.update_date := SYSDATE;
END beforeInsertParticipXRel;
/

CREATE OR REPLACE TRIGGER beforeInsertPayment
BEFORE INSERT
ON Payment
FOR EACH ROW
BEGIN
    :new.created_by := USER;
    :new.creation_date := SYSDATE;
END beforeInsertPayment;
/
CREATE OR REPLACE TRIGGER beforeUpdatePayment
BEFORE UPDATE
ON Payment
FOR EACH ROW
BEGIN
    :new.updated_by := USER;
    :new.update_date := SYSDATE;
END beforeUpdatePayment;
/

CREATE OR REPLACE TRIGGER beforeInsertPerson
BEFORE INSERT
ON Person
FOR EACH ROW
BEGIN
    :new.created_by := USER;
    :new.creation_date := SYSDATE;
END beforeInsertPerson;
/
CREATE OR REPLACE TRIGGER beforeUpdatePerson
BEFORE UPDATE
ON Person
FOR EACH ROW
BEGIN
    :new.updated_by := USER;
    :new.update_date := SYSDATE;
END beforeUpdatePerson;
/

CREATE OR REPLACE TRIGGER beforeInsertPhoto
BEFORE INSERT
ON Photo
FOR EACH ROW
BEGIN
    :new.created_by := USER;
    :new.creation_date := SYSDATE;
END beforeInsertPhoto;
/
CREATE OR REPLACE TRIGGER beforeUpdatePhoto
BEFORE UPDATE
ON Photo
FOR EACH ROW
BEGIN
    :new.updated_by := USER;
    :new.update_date := SYSDATE;
END beforeUpdatePhoto;
/

CREATE OR REPLACE TRIGGER beforeInsertPhotoXProduct
BEFORE INSERT
ON PhotoXProduct
FOR EACH ROW
BEGIN
    :new.created_by := USER;
    :new.creation_date := SYSDATE;
END beforeInsertPhotoXProduct;
/
CREATE OR REPLACE TRIGGER beforeUpdatePhotoXProduct
BEFORE UPDATE
ON PhotoXProduct
FOR EACH ROW
BEGIN
    :new.updated_by := USER;
    :new.update_date := SYSDATE;
END beforeUpdatePhotoXProduct;
/

CREATE OR REPLACE TRIGGER beforeInsertPlatform
BEFORE INSERT
ON Platform
FOR EACH ROW
BEGIN
    :new.created_by := USER;
    :new.creation_date := SYSDATE;
END beforeInsertPlatform;
/
CREATE OR REPLACE TRIGGER beforeUpdatePlatform
BEFORE UPDATE
ON Platform
FOR EACH ROW
BEGIN
    :new.updated_by := USER;
    :new.update_date := SYSDATE;
END beforeUpdatePlatform;
/

CREATE OR REPLACE TRIGGER beforeInsertProduct
BEFORE INSERT
ON Product
FOR EACH ROW
BEGIN
    :new.created_by := USER;
    :new.creation_date := SYSDATE;
END beforeInsertProduct;
/
CREATE OR REPLACE TRIGGER beforeUpdateProduct
BEFORE UPDATE
ON Product
FOR EACH ROW
BEGIN
    :new.updated_by := USER;
    :new.update_date := SYSDATE;
END beforeUpdateProduct;
/

CREATE OR REPLACE TRIGGER beforeInsertProductXPlatform
BEFORE INSERT
ON ProductXPlatform
FOR EACH ROW
BEGIN
    :new.created_by := USER;
    :new.creation_date := SYSDATE;
END beforeInsertProductXPlatform;
/
CREATE OR REPLACE TRIGGER beforeUpdateProductXPlatform
BEFORE UPDATE
ON ProductXPlatform
FOR EACH ROW
BEGIN
    :new.updated_by := USER;
    :new.update_date := SYSDATE;
END beforeUpdateProductXPlatform;
/

CREATE OR REPLACE TRIGGER beforeInsertPurchase
BEFORE INSERT
ON Purchase
FOR EACH ROW
BEGIN
    :new.created_by := USER;
    :new.creation_date := SYSDATE;
END beforeInsertPurchase;
/
CREATE OR REPLACE TRIGGER beforeUpdatePurchase
BEFORE UPDATE
ON Purchase
FOR EACH ROW
BEGIN
    :new.updated_by := USER;
    :new.update_date := SYSDATE;
END beforeUpdatePurchase;
/

CREATE OR REPLACE TRIGGER beforeInsertRelative
BEFORE INSERT
ON Relative
FOR EACH ROW
BEGIN
    :new.created_by := USER;
    :new.creation_date := SYSDATE;
END beforeInsertRelative;
/
CREATE OR REPLACE TRIGGER beforeUpdateRelative
BEFORE UPDATE
ON Relative
FOR EACH ROW
BEGIN
    :new.updated_by := USER;
    :new.update_date := SYSDATE;
END beforeUpdateRelative;
/

CREATE OR REPLACE TRIGGER beforeInsertReview
BEFORE INSERT
ON Review
FOR EACH ROW
BEGIN
    :new.created_by := USER;
    :new.creation_date := SYSDATE;
END beforeInsertReview;
/
CREATE OR REPLACE TRIGGER beforeUpdateReview
BEFORE UPDATE
ON Review
FOR EACH ROW
BEGIN
    :new.updated_by := USER;
    :new.update_date := SYSDATE;
END beforeUpdateReview;
/

CREATE OR REPLACE TRIGGER beforeInsertSeason
BEFORE INSERT
ON Season
FOR EACH ROW
BEGIN
    :new.created_by := USER;
    :new.creation_date := SYSDATE;
END beforeInsertSeason;
/
CREATE OR REPLACE TRIGGER beforeUpdateSeason
BEFORE UPDATE
ON Season
FOR EACH ROW
BEGIN
    :new.updated_by := USER;
    :new.update_date := SYSDATE;
END beforeUpdateSeason;
/

CREATE OR REPLACE TRIGGER beforeInsertSex
BEFORE INSERT
ON Sex
FOR EACH ROW
BEGIN
    :new.created_by := USER;
    :new.creation_date := SYSDATE;
END beforeInsertSex;
/
CREATE OR REPLACE TRIGGER beforeUpdateSex
BEFORE UPDATE
ON Sex
FOR EACH ROW
BEGIN
    :new.updated_by := USER;
    :new.update_date := SYSDATE;
END beforeUpdateSex;
/

CREATE OR REPLACE TRIGGER beforeInsertSystemUser
BEFORE INSERT
ON SystemUser
FOR EACH ROW
BEGIN
    :new.created_by := USER;
    :new.creation_date := SYSDATE;
END beforeInsertSystemUser;
/
CREATE OR REPLACE TRIGGER beforeUpdateSystemUser
BEFORE UPDATE
ON SystemUser
FOR EACH ROW
BEGIN
    :new.updated_by := USER;
    :new.update_date := SYSDATE;
END beforeUpdateSystemUser;
/

CREATE OR REPLACE TRIGGER beforeUpdateTypeOfId
BEFORE INSERT
ON TypeOfIdentification
FOR EACH ROW
BEGIN
    :new.created_by := USER;
    :new.creation_date := SYSDATE;
END beforeUpdateTypeOfId;
/
CREATE OR REPLACE TRIGGER beforeUpdateTypeOfId
BEFORE UPDATE
ON TypeOfIdentification
FOR EACH ROW
BEGIN
    :new.updated_by := USER;
    :new.update_date := SYSDATE;
END beforeUpdateTypeOfId;
/

CREATE OR REPLACE TRIGGER beforeInsertTypeOfParticipant
BEFORE INSERT
ON TypeOfParticipant
FOR EACH ROW
BEGIN
    :new.created_by := USER;
    :new.creation_date := SYSDATE;
END beforeInsertTypeOfParticipant;
/
CREATE OR REPLACE TRIGGER beforeUpdateTypeOfParticipant
BEFORE UPDATE
ON TypeOfParticipant
FOR EACH ROW
BEGIN
    :new.updated_by := USER;
    :new.update_date := SYSDATE;
END beforeUpdateTypeOfParticipant;
/

CREATE OR REPLACE TRIGGER beforeInsertTypeOfProduct
BEFORE INSERT
ON TypeOfProduct
FOR EACH ROW
BEGIN
    :new.created_by := USER;
    :new.creation_date := SYSDATE;
END beforeInsertTypeOfProduct;
/
CREATE OR REPLACE TRIGGER beforeUpdateTypeOfProduct
BEFORE UPDATE
ON TypeOfProduct
FOR EACH ROW
BEGIN
    :new.updated_by := USER;
    :new.update_date := SYSDATE;
END beforeUpdateTypeOfProduct;
/

CREATE OR REPLACE TRIGGER beforeInsertWishlist
BEFORE INSERT
ON Wishlist
FOR EACH ROW
BEGIN
    :new.created_by := USER;
    :new.creation_date := SYSDATE;
END beforeInsertWishlist;
/
CREATE OR REPLACE TRIGGER beforeUpdateWishlist
BEFORE UPDATE
ON Wishlist
FOR EACH ROW
BEGIN
    :new.updated_by := USER;
    :new.update_date := SYSDATE;
END beforeUpdateWishlist;
/
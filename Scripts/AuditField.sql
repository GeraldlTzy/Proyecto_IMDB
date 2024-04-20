/*ALTER TABLE Administrator
ADD created_by VARCHAR2(15);
ALTER TABLE Administrator
ADD creation_date DATE;
ALTER TABLE Administrator
ADD updated_by VARCHAR(15);
ALTER TABLE Administrator
ADD update_date DATE;
*/
ALTER TABLE Binnacle
ADD created_by VARCHAR2(15);
ALTER TABLE Binnacle
ADD creation_date DATE;
ALTER TABLE Binnacle
ADD updated_by VARCHAR(15);
ALTER TABLE Binnacle
ADD update_date DATE;

ALTER TABLE Card
ADD created_by VARCHAR2(15);
ALTER TABLE Card
ADD creation_date DATE;
ALTER TABLE Card
ADD updated_by VARCHAR(15);
ALTER TABLE Card
ADD update_date DATE;

ALTER TABLE Catalog
ADD created_by VARCHAR2(15);
ALTER TABLE Catalog
ADD creation_date DATE;
ALTER TABLE Catalog
ADD updated_by VARCHAR(15);
ALTER TABLE Catalog
ADD update_date DATE;

ALTER TABLE CatalogXProduct
ADD created_by VARCHAR2(15);
ALTER TABLE CatalogXProduct
ADD creation_date DATE;
ALTER TABLE CatalogXProduct
ADD updated_by VARCHAR(15);
ALTER TABLE CatalogXProduct
ADD update_date DATE;

ALTER TABLE City
ADD created_by VARCHAR2(15);
ALTER TABLE City
ADD creation_date DATE;
ALTER TABLE City
ADD updated_by VARCHAR(15);
ALTER TABLE City
ADD update_date DATE;

ALTER TABLE Commentary
ADD created_by VARCHAR2(15);
ALTER TABLE Commentary
ADD creation_date DATE;
ALTER TABLE Commentary
ADD updated_by VARCHAR(15);
ALTER TABLE Commentary
ADD update_date DATE;

ALTER TABLE Country
ADD created_by VARCHAR2(15);
ALTER TABLE Country
ADD creation_date DATE;
ALTER TABLE Country
ADD updated_by VARCHAR(15);
ALTER TABLE Country
ADD update_date DATE;

ALTER TABLE End_user
ADD created_by VARCHAR2(15);
ALTER TABLE End_user
ADD creation_date DATE;
ALTER TABLE End_user
ADD updated_by VARCHAR(15);
ALTER TABLE End_user
ADD update_date DATE;

ALTER TABLE Episode
ADD created_by VARCHAR2(15);
ALTER TABLE Episode
ADD creation_date DATE;
ALTER TABLE Episode
ADD updated_by VARCHAR(15);
ALTER TABLE Episode
ADD update_date DATE;

ALTER TABLE Identification
ADD created_by VARCHAR2(15);
ALTER TABLE Identification
ADD creation_date DATE;
ALTER TABLE Identification
ADD updated_by VARCHAR(15);
ALTER TABLE Identification
ADD update_date DATE;

ALTER TABLE IdentXSystem
ADD created_by VARCHAR2(15);
ALTER TABLE IdentXSystem
ADD creation_date DATE;
ALTER TABLE IdentXSystem
ADD updated_by VARCHAR(15);
ALTER TABLE IdentXSystem
ADD update_date DATE;

ALTER TABLE Nationality
ADD created_by VARCHAR2(15);
ALTER TABLE Nationality
ADD creation_date DATE;
ALTER TABLE Nationality
ADD updated_by VARCHAR(15);
ALTER TABLE Nationality
ADD update_date DATE;

ALTER TABLE NationalityPerson
ADD created_by VARCHAR2(15);
ALTER TABLE NationalityPerson
ADD creation_date DATE;
ALTER TABLE NationalityPerson
ADD updated_by VARCHAR(15);
ALTER TABLE NationalityPerson
ADD update_date DATE;

ALTER TABLE Participant
ADD created_by VARCHAR2(15);
ALTER TABLE Participant
ADD creation_date DATE;
ALTER TABLE Participant
ADD updated_by VARCHAR(15);
ALTER TABLE Participant
ADD update_date DATE;

ALTER TABLE ParticipantXProduct
ADD created_by VARCHAR2(15);
ALTER TABLE ParticipantXProduct
ADD creation_date DATE;
ALTER TABLE ParticipantXProduct
ADD updated_by VARCHAR(15);
ALTER TABLE ParticipantXProduct
ADD update_date DATE;

ALTER TABLE ParticipantXRelative
ADD created_by VARCHAR2(15);
ALTER TABLE ParticipantXRelative
ADD creation_date DATE;
ALTER TABLE ParticipantXRelative
ADD updated_by VARCHAR(15);
ALTER TABLE ParticipantXRelative
ADD update_date DATE;

ALTER TABLE Payment
ADD created_by VARCHAR2(15);
ALTER TABLE Payment
ADD creation_date DATE;
ALTER TABLE Payment
ADD updated_by VARCHAR(15);
ALTER TABLE Payment
ADD update_date DATE;

ALTER TABLE Person
ADD created_by VARCHAR2(15);
ALTER TABLE Person
ADD creation_date DATE;
ALTER TABLE Person
ADD updated_by VARCHAR(15);
ALTER TABLE Person
ADD update_date DATE;

ALTER TABLE Photo
ADD created_by VARCHAR2(15);
ALTER TABLE Photo
ADD creation_date DATE;
ALTER TABLE Photo
ADD updated_by VARCHAR(15);
ALTER TABLE Photo
ADD update_date DATE;

ALTER TABLE PhotoXProduct
ADD created_by VARCHAR2(15);
ALTER TABLE PhotoXProduct
ADD creation_date DATE;
ALTER TABLE PhotoXProduct
ADD updated_by VARCHAR(15);
ALTER TABLE PhotoXProduct
ADD update_date DATE;

ALTER TABLE Platform
ADD created_by VARCHAR2(15);
ALTER TABLE Platform
ADD creation_date DATE;
ALTER TABLE Platform
ADD updated_by VARCHAR(15);
ALTER TABLE Platform
ADD update_date DATE;

ALTER TABLE Product
ADD created_by VARCHAR2(15);
ALTER TABLE Product
ADD creation_date DATE;
ALTER TABLE Product
ADD updated_by VARCHAR(15);
ALTER TABLE Product
ADD update_date DATE;

ALTER TABLE ProductXPlatform
ADD created_by VARCHAR2(15);
ALTER TABLE ProductXPlatform
ADD creation_date DATE;
ALTER TABLE ProductXPlatform
ADD updated_by VARCHAR(15);
ALTER TABLE ProductXPlatform
ADD update_date DATE;

ALTER TABLE Purchase
ADD created_by VARCHAR2(15);
ALTER TABLE Purchase
ADD creation_date DATE;
ALTER TABLE Purchase
ADD updated_by VARCHAR(15);
ALTER TABLE Purchase
ADD update_date DATE;

ALTER TABLE Relative
ADD created_by VARCHAR2(15);
ALTER TABLE Relative
ADD creation_date DATE;
ALTER TABLE Relative
ADD updated_by VARCHAR(15);
ALTER TABLE Relative
ADD update_date DATE;

ALTER TABLE Review
ADD created_by VARCHAR2(15);
ALTER TABLE Review
ADD creation_date DATE;
ALTER TABLE Review
ADD updated_by VARCHAR(15);
ALTER TABLE Review
ADD update_date DATE;

ALTER TABLE Season
ADD created_by VARCHAR2(15);
ALTER TABLE Season
ADD creation_date DATE;
ALTER TABLE Season
ADD updated_by VARCHAR(15);
ALTER TABLE Season
ADD update_date DATE;

ALTER TABLE Sex
ADD created_by VARCHAR2(15);
ALTER TABLE Sex
ADD creation_date DATE;
ALTER TABLE Sex
ADD updated_by VARCHAR(15);
ALTER TABLE Sex
ADD update_date DATE;

ALTER TABLE SystemUser
ADD created_by VARCHAR2(15);
ALTER TABLE SystemUser
ADD creation_date DATE;
ALTER TABLE SystemUser
ADD updated_by VARCHAR(15);
ALTER TABLE SystemUser
ADD update_date DATE;

ALTER TABLE TypeOfIdentification
ADD created_by VARCHAR2(15);
ALTER TABLE TypeOfIdentification
ADD creation_date DATE;
ALTER TABLE TypeOfIdentification
ADD updated_by VARCHAR(15);
ALTER TABLE TypeOfIdentification
ADD update_date DATE;

ALTER TABLE TypeOfParticipant
ADD created_by VARCHAR2(15);
ALTER TABLE TypeOfParticipant
ADD creation_date DATE;
ALTER TABLE TypeOfParticipant
ADD updated_by VARCHAR(15);
ALTER TABLE TypeOfParticipant
ADD update_date DATE;

ALTER TABLE TypeOfProduct
ADD created_by VARCHAR2(15);
ALTER TABLE TypeOfProduct
ADD creation_date DATE;
ALTER TABLE TypeOfProduct
ADD updated_by VARCHAR(15);
ALTER TABLE TypeOfProduct
ADD update_date DATE;

ALTER TABLE Wishlist
ADD created_by VARCHAR2(15);
ALTER TABLE Wishlist
ADD creation_date DATE;
ALTER TABLE Wishlist
ADD updated_by VARCHAR(15);
ALTER TABLE Wishlist
ADD update_date DATE;
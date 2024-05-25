/*Tables*/
CREATE OR REPLACE TABLE TypeOfIdentification (
    idTypeIdent 				INT UNSIGNED AUTO_INCREMENT,
    nameTypeIdent 				VARCHAR(20) NOT NULL,
    created_by 					VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
    PRIMARY KEY (idTypeIdent)
);
/******************Atributes for person*************/
CREATE OR REPLACE TABLE Sex (
	idSex			        	INT UNSIGNED AUTO_INCREMENT,
	sexName		            	VARCHAR(10),
    created_by 			    	VARCHAR(15),
    creation_date 		 		DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
    PRIMARY KEY (idSex)
);

CREATE OR REPLACE TABLE Nationality (
    idNationality               INT UNSIGNED AUTO_INCREMENT,
    name                        VARCHAR(50) NOT NULL,
    created_by 					VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
    PRIMARY KEY (idNationality)
);
/*****************************************************************************/
/************************Atributes for participant****************************/
CREATE OR REPLACE TABLE country (
	idCountry                   INT UNSIGNED AUTO_INCREMENT,
	nameCountry                 VARCHAR(100) NOT NULL,
    created_by 					VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
    PRIMARY KEY (idCountry)
);

CREATE OR REPLACE TABLE city (
	idCity                      INT UNSIGNED AUTO_INCREMENT,
	idCountry                   INT UNSIGNED,
    nameCity                    VARCHAR(100) NOT NULL,
    constraint fk_city_country foreign key (idCountry) 
    references Country(idCountry) ON DELETE CASCADE ON UPDATE CASCADE,
    created_by 					VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
    PRIMARY KEY (idCity)
);

CREATE OR REPLACE TABLE Relative (
    idRelative                  INT UNSIGNED AUTO_INCREMENT,
    kindship                    VARCHAR(30) NOT NULL,
    created_by 					VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
    PRIMARY KEY (idRelative)
);
/*****************************************************************************/
CREATE OR REPLACE TABLE Person (
  	idPerson                    INT UNSIGNED AUTO_INCREMENT,
   	idSex			            INT UNSIGNED,
    firstName                   VARCHAR(20) NOT NULL,
	secondName                  VARCHAR(20),
	firstSurname                VARCHAR(20) NOT NULL,
	secondSurname               VARCHAR(20),
	datebirth                   DATE NOT NULL,
    photo                       LONGBLOB,
	CONSTRAINT fk_Person_sex FOREIGN KEY (idSex) REFERENCES Sex(idSex)
	ON DELETE CASCADE ON UPDATE CASCADE,
    created_by 					VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
    PRIMARY KEY (idPerson)
);
/**********************Tables with relation to Person*************************/
CREATE OR REPLACE TABLE nationalityPerson (
	idPerson                   	INT UNSIGNED NOT NULL,
	idNationality              	INT UNSIGNED NOT NULL,
    constraint fk_natPerson_person foreign key (idPerson) 
    references Person(idPerson) ON DELETE CASCADE ON UPDATE CASCADE,
    constraint fk_natPerson_nationality foreign key (idNationality) 
    references Nationality(idNationality) ON DELETE CASCADE ON UPDATE CASCADE,
    created_by 				    VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
    PRIMARY KEY(idPerson, idNationality)
);
/*****************************************************************************/
CREATE OR REPLACE TABLE systemUser (
	idSystemUser                INT UNSIGNED,
	username                    VARCHAR(20) NOT NULL,
	phoneNumber                 INT NOT NULL,
	email                       VARCHAR(50) NOT NULL,
	pswd  		                VARCHAR(40) NOT NULL,
    constraint fk_systemUser_person foreign key (idSystemUser) 
    references Person(idPerson) ON DELETE CASCADE ON UPDATE CASCADE,
    created_by 					VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
    PRIMARY KEY(idSystemUser)
);
/****************************Tables with relation to SystemUser****************/
CREATE OR REPLACE TABLE Identification(
    idIdentification            INT UNSIGNED AUTO_INCREMENT,
    idTypeIdent                 INT UNSIGNED,
    identNumber                 INT,
    created_by 					VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
    CONSTRAINT fk_ident_type FOREIGN KEY (idTypeIdent) 
    REFERENCES TypeOfIdentification(idTypeIdent) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (idIdentification)
);

CREATE OR REPLACE TABLE IdentXSystem (
    idIdent                     INT UNSIGNED,
    idSystemUser                INT UNSIGNED,
    created_by 					VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
    CONSTRAINT fk_identxsystem_ident FOREIGN KEY (idIdent) 
    REFERENCES Identification(idIdentification) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_identxsystem_system FOREIGN KEY (idSystemUser) 
    REFERENCES SystemUser(idSystemUser) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (idIdent, idSystemUser)
);
/*****************************************************************************/
CREATE OR REPLACE TABLE end_user (
	idUser                     	INT UNSIGNED,
    created_by 				   	VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
    constraint fk_endUser_systemUser foreign key (idUser) 
    references systemUser(idSystemUser) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (idUser)
);

CREATE OR REPLACE TABLE administrator (
	idAdministrator            	INT UNSIGNED,
    created_by 					VARCHAR(15),
    creation_date	 			DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
    constraint fk_administrator_systemUser foreign key (idAdministrator) 
    references systemUser(idSystemUser) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (idAdministrator)
);
/*****************************************************************************/
CREATE OR REPLACE TABLE participant (
	idParticipant               INT UNSIGNED,
	idCity                      INT UNSIGNED,
	biography                   VARCHAR(500) NOT NULL,	
	height                      INT NOT NULL,
	trivia                      VARCHAR(500),
    created_by 					VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
	CONSTRAINT fk_part_city FOREIGN KEY (idCity) 
	REFERENCES City(idCity) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT fk_part_person FOREIGN KEY (idParticipant) 
	REFERENCES Person(idPerson) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (idParticipant)
);
/******************************************************************************/
CREATE OR REPLACE TABLE typeOfProduct (
	idType                      INT UNSIGNED AUTO_INCREMENT,	
	nickname                    VARCHAR(100) NOT NULL,
    created_by 					VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
    PRIMARY KEY (idType)
);

CREATE OR REPLACE TABLE product (
	idProduct                   INT UNSIGNED AUTO_INCREMENT,
	idType                      INT UNSIGNED,	
	releaseYear                 INT NOT NULL,
	title                       VARCHAR(200) NOT NULL,
	duration                    INT NOT NULL,
	trailer                     VARCHAR(1000),
	price			    		INT,
	synopsis                    VARCHAR(1000) NOT NULL,
    created_by 					VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
	CONSTRAINT fk_product_type FOREIGN KEY (idType) 
	REFERENCES typeOfProduct(idType) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (idProduct)
);
/*************************Atributes for product********************************/
CREATE OR REPLACE TABLE Binnacle (
    idBinnacle                  INT UNSIGNED AUTO_INCREMENT,
    idProduct                   INT UNSIGNED,
    oldPrice                    INT,
    newPrice			        INT NOT NULL,
    dateBinnacle                DATE NOT NULL,
    created_by 					VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date		 			DATE,
    CONSTRAINT fk_binnacle_product FOREIGN KEY (idProduct) 
    REFERENCES Product(idProduct) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (idBinnacle)
);

CREATE OR REPLACE TABLE Season(
    idSeason                    INT UNSIGNED AUTO_INCREMENT,
    idProduct                   INT UNSIGNED,
    numberSeason                INT,
    duration                    INT,
    created_by 					VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
    CONSTRAINT fk_season_product FOREIGN KEY (idProduct) 
    REFERENCES Product(idProduct) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (idSeason)
);

CREATE OR REPLACE TABLE Episode(
    idEpisode                   INT UNSIGNED AUTO_INCREMENT,
    idSeason                    INT UNSIGNED,
    numberEpisode               INT,
    name                        VARCHAR(20),
    duration                    INT,
    created_by 					VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
    CONSTRAINT fk_episode_season FOREIGN KEY (idSeason) 
    REFERENCES Season(idSeason) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (idEpisode)
);

CREATE OR REPLACE TABLE Photo(
    idPhoto                     INT UNSIGNED AUTO_INCREMENT,
    idProduct                   INT UNSIGNED,
    image                       BLOB,
    created_by 					VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
    CONSTRAINT fk_photo_product FOREIGN KEY (idProduct) 
    REFERENCES Product(idProduct) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (idPhoto)
);
/******************************************************************************/
CREATE OR REPLACE TABLE typeOfParticipant (
	idType                      INT UNSIGNED AUTO_INCREMENT,	
	nameType                    VARCHAR(100) NOT NULL,
    created_by 					VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
    PRIMARY KEY (idType)
);

CREATE OR REPLACE TABLE ParticipantXProduct (
	idParticipant               INT UNSIGNED,	
	idProduct                   INT UNSIGNED,
    rol                         INT UNSIGNED,
    created_by 					VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
    constraint fk_PartXPro_participant foreign key (idParticipant) 
    references participant(idParticipant) ON DELETE CASCADE ON UPDATE CASCADE,
    constraint fk_PartXPro_product FOREIGN key (idProduct) 
    references product(idProduct) ON DELETE CASCADE ON UPDATE CASCADE,
    constraint fk_PartXPro_typepart foreign key (rol) 
    references TypeOfParticipant(idType) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (idParticipant, idProduct, rol)
);

CREATE OR REPLACE TABLE ParticipantXRelative (
	idParticipant               INT UNSIGNED,	
	idParticipant2              INT UNSIGNED,
    idRelative                  INT UNSIGNED,
    created_by 					VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
    constraint fk_PartXRela_part foreign key (idParticipant) 
    references participant(idParticipant) ON DELETE CASCADE ON UPDATE CASCADE,
    constraint fk_PartXRela_part2 foreign key (idParticipant2) references 
    participant(idParticipant) ON DELETE CASCADE ON UPDATE CASCADE,
    constraint fk_PartXRela_rela foreign key (idRelative) 
    references Relative(idRelative) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (idParticipant, idParticipant2)
);
/******************************************************************************/
CREATE OR REPLACE TABLE payment (
	idPayment                  	INT UNSIGNED AUTO_INCREMENT,
	idUser                     	INT UNSIGNED,
    created_by 					VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
    constraint fk_payment_user foreign key (idUser) 
    references end_user(idUser) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (idPayment)
);

CREATE OR REPLACE TABLE card (
    idCard                      INT UNSIGNED AUTO_INCREMENT,
    cardNumber                  INT NOT NULL,
    expiration                  DATE NOT NULL,
    ccv                         INT NOT NULL,
    ownerName                   VARCHAR(20) NOT NULL,
    created_by 					VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
    constraint fk_card_payment foreign key (idCard) 
    references payment(idPayment) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (idCard)
);
/******************************************************************************/
CREATE OR REPLACE TABLE Wishlist (
	idUser                     	INT UNSIGNED,
	idProduct                  	INT UNSIGNED,
    created_by 					VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
    constraint fk_Wishlist_user foreign key (idUser) 
    references end_user(idUser) ON DELETE CASCADE ON UPDATE CASCADE,
    constraint fk_Wishlist_product foreign key (idProduct) 
    references product(idProduct) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (idProduct, idUser)
);

CREATE OR REPLACE TABLE Purchase (	
	idUser                      INT UNSIGNED,
    idProduct                   INT UNSIGNED,
    idPayment                   INT UNSIGNED,
	history                     date not null,
    created_by 					VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
    constraint fk_purchase_user foreign key (idUser) 
    references end_user(idUser) ON DELETE CASCADE ON UPDATE CASCADE,
    constraint fk_purchase_product foreign key (idProduct) 
    references Product(idProduct) ON DELETE CASCADE ON UPDATE CASCADE,
    constraint fk_purchase_payment foreign key (idPayment) 
    references Payment(idPayment) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (idUser, idProduct)
);

/******************************************************************************/
CREATE OR REPLACE TABLE catalog (
	idCatalog                   INT UNSIGNED AUTO_INCREMENT,
	genre                       VARCHAR(20) NOT NULL,
    created_by 					VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
    PRIMARY KEY (idCatalog)
);
/******************************************************************************/
CREATE OR REPLACE TABLE CatalogxProduct (
	idCatalog                  	INT UNSIGNED,	
	idProduct                  	INT UNSIGNED,
    created_by 					VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
	FOREIGN KEY (idCatalog) REFERENCES catalog(idCatalog)
	ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (idProduct) REFERENCES product(idProduct)
	ON DELETE CASCADE ON UPDATE CASCADE,
	PRIMARY KEY (idCatalog, idProduct)
);
/******************************************************************************/
CREATE OR REPLACE TABLE platform (
	idPlatform                  INT UNSIGNED AUTO_INCREMENT,
	namePlatform                VARCHAR(20) NOT NULL,
    created_by 					VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
    PRIMARY KEY (idPlatform)
);

create OR REPLACE table ProductXPlatform (
    idProduct                   INT UNSIGNED,
    idPlatform                  INT UNSIGNED,
    created_by 					VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
    constraint fk_ProductXPlatform_product foreign key (idProduct) 
    references product(idProduct) ON DELETE CASCADE ON UPDATE CASCADE,
    constraint fk_ProductXPlatform_platform foreign key (idPlatform) 
    references platform(idPlatform) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY(idProduct, idPlatform)
);

/******************************************************************************/
CREATE OR REPLACE TABLE review (	
	idProduct              		INT UNSIGNED,
    idUser                 		INT UNSIGNED,
	stars                  		INT,
    created_by 					VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
    constraint fk_review_product foreign key (idProduct) 
    references product(idProduct) ON DELETE CASCADE ON UPDATE CASCADE,
    constraint fk_review_user foreign key (idUser) 
    references end_user(idUser) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (idProduct, idUser)
);
/*******************************************/
CREATE OR REPLACE TABLE commentary (
	idProduct              		INT UNSIGNED,
    idUser                 		INT UNSIGNED,
    description             	VARCHAR(500) NOT NULL,
    created_by 					VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
    constraint fk_commentary_product foreign key (idProduct) 
    references product(idProduct) ON DELETE CASCADE ON UPDATE CASCADE,
    constraint fk_commentary_user foreign key (idUser) 
    references end_user(idUser) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (idProduct, idUser)
);
/******************************************************************************/
/******************************************************************************/
CREATE OR REPLACE TABLE UserXProduct (
	idUser						INT UNSIGNED,
	idProduct					INT UNSIGNED,
	visitDate					DATETIME NOT NULL,
	CONSTRAINT fk_userxproduct_user FOREIGN KEY (idUser)
	REFERENCES end_user(idUser) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT fk_userxproduct_product FOREIGN KEY (idProduct)
	REFERENCES product(idProduct) ON DELETE CASCADE ON UPDATE CASCADE,
	PRIMARY KEY (idUser,idProduct)
);	

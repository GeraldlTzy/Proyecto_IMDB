
/**************************Atributes for systemUser****************************/
CREATE TABLE TypeOfIdentification(
    idTypeIdent                 NUMBER(7),
    nameTypeIdent               VARCHAR2(20)
);
ALTER TABLE TypeOfIdentification
ADD
CONSTRAINT pk_typeIdent PRIMARY KEY (idTypeIdent)
USING index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);
/************************Atributes for person**********************************/
CREATE TABLE Sex (
	idSex			            NUMBER(7),
	sexName		                VARCHAR(6) 
);
ALTER TABLE sex
ADD
CONSTRAINT pk_sex PRIMARY KEY (idSex)
USING index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);

CREATE TABLE Nationality (
    idNationality               NUMBER(7),
    name                        VARCHAR2(50) CONSTRAINT name_nn NOT NULL
);
alter table Nationality
add
constraint pk_nationality primary key (idNationality)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);
/***********************Atributes for participant******************************/
---Country and City corresponde to the participant's birthplace
---City has a reference to the country
CREATE TABLE country (
	idCountry                   NUMBER(7),
	nameCountry                 VARCHAR2(50) CONSTRAINT nameCountry_nn NOT NULL
);
alter table country
add
constraint pk_country primary key (idCountry)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);

CREATE TABLE city (
	idCity                      NUMBER(7),
	idCountry                   NUMBER(7),
    nameCity                    VARCHAR2(50) CONSTRAINT nameCity_nn NOT NULL,
    constraint fk_city_country foreign key (idCountry) 
    references Country(idCountry)
);

alter table city
add
constraint pk_city primary key (idCity)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);

create table Relative (
    idRelative                  number(7),
    kindship                    varchar2(30) CONSTRAINT relative_kindship_nn NOT NULL
);
alter table Relative
add
constraint pk_relative primary key (idRelative)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);
/******************************************************************************/
CREATE TABLE Person (
  	idPerson                    NUMBER(7),
   	idSex			            NUMBER(7),
    firstName                   VARCHAR2(20) CONSTRAINT firstName_nn NOT NULL,
	secondName                  VARCHAR2(20),
	firstSurname                VARCHAR2(20) CONSTRAINT firstSurname_nn NOT NULL,
	secondSurname               VARCHAR2(20),
	datebirth                   DATE         CONSTRAINT datebirth_nn NOT NULL,
    photo                       BLOB,
	CONSTRAINT fk_Person_sex FOREIGN KEY (idSex) REFERENCES Sex(idSex)
);
alter table Person
add
constraint pk_person primary key (idPerson)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);
/***********************Tables with relation to Person*************************/
CREATE TABLE nationalityPerson (
	idPerson                   NUMBER(7)    CONSTRAINT idPerson_nn NOT NULL,
	idNationality              NUMBER(7)    CONSTRAINT idNationality_nn NOT NULL,
    constraint fk_natPerson_person foreign key (idPerson) references Person(idPerson),
    constraint fk_natPerson_nationality foreign key (idNationality) references Nationality(idNationality)
);
alter table nationalityPerson
add
constraint pk_nationalityPerson primary key (idPerson, idNationality)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);
/******************************************************************************/
CREATE TABLE systemUser (
	idSystemUser                NUMBER(7),
	username                    VARCHAR2(20) CONSTRAINT username_nn NOT NULL,
	phoneNumber                 NUMBER(7)    CONSTRAINT phoneNumber_nn NOT NULL,
	email                       VARCHAR2(20) CONSTRAINT email_nn NOT NULL,
	pswd  		                VARCHAR2(20) CONSTRAINT systemuser_password_nn NOT NULL,
    constraint fk_systemUser_person foreign key (idSystemUser) references Person(idPerson)
);
alter table systemUser
add
constraint pk_systemUser primary key (idSystemUser)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);
/****************************Tables with relation to SystemUser****************/
CREATE TABLE Identification(
    idIdentification            NUMBER(7),
    idTypeIdent                 NUMBER(7),
    identNumber                 NUMBER(10),
    CONSTRAINT fk_ident_type FOREIGN KEY (idTypeIdent) 
    REFERENCES TypeOfIdentification(idTypeIdent)
);
ALTER TABLE Identification
ADD
CONSTRAINT pk_identification PRIMARY KEY (idIdentification)
USING index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);

CREATE TABLE IdentXSystem (
    idIdent                     NUMBER(7),
    idSystemUser                NUMBER(7),
    CONSTRAINT fk_identxsystem_ident FOREIGN KEY (idIdent) 
    REFERENCES Identification(idIdentification),
    CONSTRAINT fk_identxsystem_system FOREIGN KEY (idSystemUser) 
    REFERENCES SystemUser(idSystemUser)
);
ALTER TABLE IdentXSystem
ADD
CONSTRAINT pk_identXSystem PRIMARY KEY (idIdent, idSystemUser)
USING index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);
/******************************************************************************/
CREATE TABLE end_user (
	idUser                     NUMBER(7),
    constraint fk_endUser_systemUser foreign key (idUser) 
    references systemUser(idSystemUser)
);
alter table end_user
add
constraint pk_endUser primary key (idUser)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);

CREATE TABLE administrator (
	idAdministrator            NUMBER(7),
    constraint fk_administrator_systemUser foreign key (idAdministrator) 
    references systemUser(idSystemUser)
);
alter table administrator
add
constraint pk_administrator primary key (idAdministrator)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);
/******************************************************************************/
CREATE TABLE participant (
	idParticipant               NUMBER(7),
	idCountry                   NUMBER(7),
	biography                   VARCHAR2(500) CONSTRAINT biography_nn NOT NULL,	
	height                      NUMBER(7)     CONSTRAINT height_nn NOT NULL,
	trivia                      VARCHAR2(500) CONSTRAINT trivia_nn NOT NULL,
	CONSTRAINT fk_part_country FOREIGN KEY (idCountry) REFERENCES Country(idCountry),
	CONSTRAINT fk_part_person FOREIGN KEY (idParticipant) REFERENCES Person(idPerson)
);
alter table participant
add
constraint pk_participant primary key (idParticipant)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);
/******************************************************************************/
CREATE TABLE typeOfProduct (
	idType                      NUMBER(7),	
	nickname                    VARCHAR2(100) CONSTRAINT nickname_nn NOT NULL
);

alter table typeOfProduct
add
constraint pk_typeOfProduct primary key (idType)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);

CREATE TABLE product (
	idProduct                   NUMBER(7),
	idType                      NUMBER(7),
    link                        VARCHAR2(500) CONSTRAINT link_nn NOT NULL,	
	releaseYear                 NUMBER(4)     CONSTRAINT releaseYear_nn NOT NULL,
	title                       VARCHAR2(200) CONSTRAINT title_nn NOT NULL,
	duration                    NUMBER(7)     CONSTRAINT duration_nn NOT NULL,
	trailer                     VARCHAR2(500),
	synopsis                    VARCHAR2(500) CONSTRAINT synopsis_nn NOT NULL,
	CONSTRAINT fk_product_type FOREIGN KEY (idType) REFERENCES typeOfProduct(idType)
);

alter table product
add
constraint pk_product primary key (idProduct)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);
/*************************Atributes for product********************************/
CREATE TABLE Binnacle (
    idBinnacle                  NUMBER(7),
    idProduct                   NUMBER(7),
    price                       NUMBER(7) CONSTRAINT binnacle_price_nn NOT NULL,
    dateBinnacle                DATE CONSTRAINT binnacle_date_nn NOT NULL,
    CONSTRAINT fk_binnacle_product FOREIGN KEY (idProduct) REFERENCES Product(idProduct)
);
alter table Binnacle
add
constraint pk_binnacle primary key (idBinnacle)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);

CREATE TABLE Season(
    idSeason                    NUMBER(7),
    idProduct                   NUMBER(7),
    numberSeason                NUMBER(7),
    duration                    NUMBER(7),
    CONSTRAINT fk_season_product FOREIGN KEY (idProduct) REFERENCES Product(idProduct)
);
alter table Season
add
constraint pk_season primary key (idSeason)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);

CREATE TABLE Episode(
    idEpisode                   NUMBER(7),
    idSeason                    NUMBER(7),
    numberEpisode               NUMBER(7),
    name                        VARCHAR(20),
    duration                    NUMBER(7),
    CONSTRAINT fk_episode_season FOREIGN KEY (idSeason) REFERENCES Season(idSeason)
);
alter table Episode
add
constraint pk_episode primary key (idEpisode)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);

CREATE TABLE Photo(
    idPhoto                     NUMBER(7),
    idProduct                   NUMBER(7),
    image                       BLOB,
    CONSTRAINT fk_photo_product FOREIGN KEY (idProduct) REFERENCES Product(idProduct)
);
alter table Photo
add
constraint pk_photo primary key (idPhoto)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);

CREATE TABLE PhotoXProduct (
    idProduct NUMBER(7),
    idPhoto NUMBER(7),
    CONSTRAINT fk_photoxproduct_product FOREIGN KEY (idProduct) 
    REFERENCES Product(idProduct),
    CONSTRAINT fk_photoxproduct_photo FOREIGN KEY (idPhoto) 
    REFERENCES Photo(idPhoto)
);

alter table PhotoXProduct
add
constraint pk_photoxproduct primary key (idProduct, idPhoto)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);
/******************************************************************************/
CREATE TABLE typeOfParticipant (
	idType                      NUMBER(7),	
	nameType                    VARCHAR2(100) CONSTRAINT nickname_Participant_nn NOT NULL
);

alter table typeOfParticipant
add
constraint pk_typeOfParticipant primary key (idType)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);

CREATE TABLE ParticipantXProduct (
	idParticipant               NUMBER(7),	
	idProduct                   NUMBER(7),
    rol                         NUMBER(7),
    constraint fk_PartXPro_participant foreign key (idParticipant) references participant(idParticipant),
    constraint fk_PartXPro_product foreign key (idProduct) references product(idProduct),
    constraint fk_PartXPro_typepart foreign key (rol) references TypeOfParticipant(idType)
);

alter table ParticipantXProduct
add
constraint pk_ParticipantXProduct primary key (idParticipant, idProduct, rol)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);

CREATE TABLE ParticipantXRelative (
	idParticipant               NUMBER(7),	
	idParticipant2              NUMBER(7),
    idRelative                  NUMBER(7),
    constraint fk_PartXRela_part foreign key (idParticipant) references participant(idParticipant),
    constraint fk_PartXRela_part2 foreign key (idParticipant2) references participant(idParticipant),
    constraint fk_PartXRela_rela foreign key (idRelative) references Relative(idRelative)
);

alter table ParticipantXRelative
add
constraint pk_PartXRela primary key (idParticipant, idParticipant2)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);
/******************************************************************************/
CREATE TABLE payment (
	idPayment                  NUMBER(7),
	idUser                     NUMBER(7),
    constraint fk_payment_user foreign key (idUser) references end_user(idUser)
);

alter table payment
add
constraint pk_payment primary key (idPayment)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);

CREATE TABLE card (
    idCard                      NUMBER(7),
    cardNumber                  NUMBER(20)      CONSTRAINT card_number_nn NOT NULL,
    expiration                  DATE            CONSTRAINT expiration_nn NOT NULL,
    ccv                         NUMBER(5)       CONSTRAINT ccv_nn NOT NULL,
    ownerName                   VARCHAR2(20)    CONSTRAINT owner_name_nn NOT NULL,
    constraint fk_card_payment foreign key (idCard) references payment(idPayment)
);
alter table card
add
constraint pk_card primary key (idCard)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);
/******************************************************************************/
CREATE TABLE Wishlist (
	idUser                     NUMBER(7),
	idProduct                  NUMBER(7),
    constraint fk_Wishlist_user foreign key (idUser) references end_user(idUser),
    constraint fk_Wishlist_product foreign key (idProduct) references product(idProduct)
);

alter table Wishlist
add
constraint pk_Wishlist primary key (idProduct, idUser)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);

CREATE TABLE Purchase (	
	idUser                      NUMBER(7),
    idProduct                   NUMBER(7),
    idPayment                   NUMBER(7),
	history                     date constraint catXuser_history_nn not null,
    --isStreamed                  BOOLEAN,
    constraint fk_purchase_user foreign key (idUser) references end_user(idUser),
    constraint fk_purchase_product foreign key (idProduct) references Product(idProduct),
    constraint fk_purchase_payment foreign key (idPayment) references Payment(idPayment)
);

alter table Purchase
add
constraint pk_purchase primary key (idUser, idProduct)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);
/******************************************************************************/
CREATE TABLE catalog (
	idCatalog                   NUMBER(7),
	genre                       VARCHAR2(20) CONSTRAINT genre_nn NOT NULL
);

alter table catalog
add
constraint pk_catalog primary key (idCatalog)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);
/******************************************************************************/
CREATE TABLE CatalogxProduct (
	idCatalog                  NUMBER(7),	
	idProduct                  NUMBER(7),
	FOREIGN KEY (idCatalog) REFERENCES catalog(idCatalog),
	FOREIGN KEY (idProduct) REFERENCES product(idProduct)
);

alter table CatalogxProduct
add
constraint pk_CatalogxProduct primary key (idCatalog, idProduct)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);

CREATE TABLE CatalogXAdministrator (
	idCatalog                  NUMBER(7),	
	idAdministrator            NUMBER(7),
	FOREIGN KEY (idCatalog) REFERENCES catalog(idCatalog),
	FOREIGN KEY (idAdministrator) REFERENCES administrator(idAdministrator)
);

alter table CatalogXAdministrator
add
constraint pk_CatalogXAdministrator primary key (idCatalog, idAdministrator)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);
/******************************************************************************/
CREATE TABLE platform (
	idPlatform                  NUMBER(7),
	namePlatform                VARCHAR2(20) CONSTRAINT platform_namePlatform_nn NOT NULL
);
alter table platform
add
constraint pk_platform primary key (idPlatform)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);

create table ProductXPlatform (
    idProduct                   number(7),
    idPlatform                  number(7),
    constraint fk_ProductXPlatform_product foreign key (idProduct) references product(idProduct),
    constraint fk_ProductXPlatform_platform foreign key (idPlatform) references platform(idPlatform)
);
alter table ProductXPlatform
add
constraint pk_ProductXPlatform primary key (idProduct, idPlatform)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);
/******************************************************************************/
CREATE TABLE review (	
	idProduct              NUMBER(7),
    idUser                 number(7),
    stars                   number(2, 1),
    constraint fk_review_product foreign key (idProduct) references product(idProduct),
    constraint fk_review_user foreign key (idUser) references end_user(idUser)
);
alter table review
add
constraint pk_review primary key (idProduct, idUser)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);
/*******************************************/
CREATE TABLE commentary (
	idProduct              NUMBER(7),
    idUser                 number(7),
    description             VARCHAR2(500) CONSTRAINT description_nn NOT NULL,
    constraint fk_commentary_product foreign key (idProduct) references product(idProduct),
    constraint fk_commentary_user foreign key (idUser) references end_user(idUser)
);

alter table commentary
add
constraint pk_commentary primary key (idProduct, idUser)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);
/******************************************************************************/

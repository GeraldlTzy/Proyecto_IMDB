CREATE TABLE Sex (
	id_sex			NUMBER(7),
	sex_name		VARCHAR(6) 
);
ALTER TABLE sex
ADD
CONSTRAINT pk_sex PRIMARY KEY (id_sex)
USING index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);


CREATE TABLE Nationality (
    id_nationality              NUMBER(7),
    name                        VARCHAR2(50) CONSTRAINT name_nn NOT NULL
);
alter table Nationality
add
constraint pk_nationality primary key (id_nationality)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);

CREATE TABLE country (
	id_country                  NUMBER(7),
	nameCountry                 VARCHAR2(50) CONSTRAINT nameCountry_nn NOT NULL
);
alter table country
add
constraint pk_country primary key (id_country)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);

CREATE TABLE city (
	id_city                     NUMBER(7),
	id_country                  NUMBER(7),
    nameCity                   VARCHAR2(50) CONSTRAINT nameCity_nn NOT NULL,
    constraint fk_city_country foreign key (id_country) references Country(id_country)
);

alter table city
add
constraint pk_city primary key (id_city)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);
/******************************************************************************/
CREATE TABLE Person (
  	id_person                   NUMBER(7),
   	id_sex			            NUMBER(7),
    first_name                  VARCHAR2(20) CONSTRAINT first_name_nn NOT NULL,
	second_name                 VARCHAR2(20),
	first_surname               VARCHAR2(20) CONSTRAINT first_surname_nn NOT NULL,
	second_surname              VARCHAR2(20),
	date_birth                  DATE         CONSTRAINT date_birth_nn NOT NULL,
	CONSTRAINT fk_Person_sex FOREIGN KEY (id_sex) REFERENCES Sex(id_sex)
);
alter table Person
add
constraint pk_person primary key (id_person)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);
/******************************************************************************/
CREATE TABLE nationalityPerson (
	id_person                   NUMBER(7)    CONSTRAINT id_person_nn NOT NULL,
	id_nationality              NUMBER(7)    CONSTRAINT id_nationality_nn NOT NULL,
    constraint fk_natPerson_person foreign key (id_person) references Person(id_person),
    constraint fk_natPerson_nationality foreign key (id_nationality) references Nationality(id_nationality)
);
alter table nationalityPerson
add
constraint pk_nationalityPerson primary key (id_person, id_nationality)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);
/******************************************************************************/
CREATE TABLE systemUser (
	id_systemUser               NUMBER(7),
	username                    VARCHAR2(20) CONSTRAINT username_nn NOT NULL,
	identification              VARCHAR2(20) CONSTRAINT identification_nn NOT NULL,
	phoneNumber                 NUMBER(7)    CONSTRAINT phoneNumber_nn NOT NULL,
	email                       VARCHAR2(20) CONSTRAINT email_nn NOT NULL,
---	pswrd?
    constraint fk_systemUser_person foreign key (id_systemUser) references Person(id_person)
);

alter table systemUser
add
constraint pk_systemUser primary key (id_systemUser)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);

CREATE TABLE end_user (
	id_user                     NUMBER(7),
    constraint fk_endUser_systemUser foreign key (id_user) references systemUser(id_systemUser)
);
alter table end_user
add
constraint pk_endUser primary key (id_user)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);


CREATE TABLE administrator (
	id_administrator            NUMBER(7),
    constraint fk_administrator_systemUser foreign key (id_administrator) references systemUser(id_systemUser)
);
alter table administrator
add
constraint pk_administrator primary key (id_administrator)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);

CREATE TABLE participant (
	id_participant              NUMBER(7),
	id_country                  NUMBER(7),
	biography                   VARCHAR2(500) CONSTRAINT biography_nn NOT NULL,	
	height                      NUMBER(7)     CONSTRAINT height_nn NOT NULL,
	trivia                      VARCHAR2(500) CONSTRAINT trivia_nn NOT NULL,
	photo BLOB,  
	CONSTRAINT fk_part_country FOREIGN KEY (id_country) REFERENCES Country(id_country),
	CONSTRAINT fk_part_person FOREIGN KEY (id_participant) REFERENCES Person(id_person)
);
alter table participant
add
constraint pk_participant primary key (id_participant)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);

CREATE TABLE typeOfParticipant (
	id_type                     NUMBER(7),	
	nickname                    VARCHAR2(100) CONSTRAINT nickname_Participant_nn NOT NULL,
	CONSTRAINT fk_typePart_part FOREIGN KEY (id_type) REFERENCES participant(id_participant)
);

alter table typeOfParticipant
add
constraint pk_typeOfParticipant primary key (id_type)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);
/******************************************************************************/
create table Relative (
    id_participant              number(7),
    id_relative                 number(7),
    kindship                    varchar2(30) CONSTRAINT relative_kindship_nn NOT NULL,
    constraint fk_relative_participant foreign key (id_participant) references participant(id_participant),
    constraint fk_relative_participant2 foreign key (id_relative) references participant(id_participant)
);
alter table Relative
add
constraint pk_relative primary key (id_participant, id_relative)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);
/******************************************************************************/
CREATE TABLE payment (
	id_payment                  NUMBER(7),
	id_user                     NUMBER(7),
    constraint fk_payment_user foreign key (id_user) references end_user(id_user)
);

alter table payment
add
constraint pk_payment primary key (id_payment)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);

CREATE TABLE card (
    id_card                     NUMBER(7),
    cardNumber                  NUMBER(20)      CONSTRAINT card_number_nn NOT NULL,
    expiration                  DATE            CONSTRAINT expiration_nn NOT NULL,
    ccv                         NUMBER(5)       CONSTRAINT ccv_nn NOT NULL,
    ownerName                   VARCHAR2(20)    CONSTRAINT owner_name_nn NOT NULL,
    constraint fk_card_payment foreign key (id_card) references payment(id_payment)
);
alter table card
add
constraint pk_card primary key (id_card)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);
/******************************************************************************/
CREATE TABLE product (
	id_product                  NUMBER(7),
	id_type                     NUMBER(7),
    link                        VARCHAR2(500) CONSTRAINT link_nn NOT NULL,	
	price                       NUMBER(7)     CONSTRAINT price_nn NOT NULL,
	releaseYear                 DATE          CONSTRAINT releaseYear_nn NOT NULL,
	title                       VARCHAR2(200) CONSTRAINT title_nn NOT NULL,
	duration                    NUMBER(7)     CONSTRAINT duration_nn NOT NULL,
	trailer                     VARCHAR2(500),
	synopsis                    VARCHAR2(500) CONSTRAINT synopsis_nn NOT NULL,
	season                      NUMBER(7),
	episode                     NUMBER(7),
	photo                       BLOB,
    CONSTRAINT fk_product_type FOREIGN KEY (id_type) REFERENCES typeOfProduct(id_type)
);

alter table product
add
constraint pk_product primary key (id_product)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);

CREATE TABLE typeOfProduct (
	id_type                 NUMBER(7),	
	nickname                VARCHAR2(100) CONSTRAINT nickname_nn NOT NULL
);

alter table typeOfProduct
add
constraint pk_typeOfProduct primary key (id_type)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);
/******************************************************************************/
CREATE TABLE ParticipantXProduct (
    id_partXprodu               number(7),
	id_participant              NUMBER(7),	
	id_product                  NUMBER(7),
    rol                         varchar2(25),
    constraint fk_PartXPro_participant foreign key (id_participant) references participant(id_participant),
    constraint fk_PartXPro_product foreign key (id_product) references product(id_product)
);

alter table ParticipantXProduct
add
constraint pk_ParticipantXProduct primary key (id_partXprodu)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);

CREATE TABLE Wishlist (
	id_user                     NUMBER(7),	
	id_product                  NUMBER(7),
    constraint fk_Wishlist_user foreign key (id_user) references end_user(id_user),
    constraint fk_Wishlist_product foreign key (id_product) references product(id_product)
);

alter table Wishlist
add
constraint pk_Wishlist primary key (id_product, id_user)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);
/******************************************************************************/
CREATE TABLE catalog (
	id_catalog                  NUMBER(7),
	genre                       VARCHAR2(20) CONSTRAINT genre_nn NOT NULL
);

alter table catalog
add
constraint pk_catalog primary key (id_catalog)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);
/******************************************************************************/
CREATE TABLE CatalogxProduct (
	id_catalog                  NUMBER(7),	
	id_product                  NUMBER(7),
	FOREIGN KEY (id_catalog) REFERENCES catalog(id_catalog),
	FOREIGN KEY (id_product) REFERENCES product(id_product)
);

alter table CatalogxProduct
add
constraint pk_CatalogxProduct primary key (id_catalog, id_product)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);

CREATE TABLE CatalogXAdministrator (
	id_catalog                  NUMBER(7),	
	id_administrator            NUMBER(7),
	FOREIGN KEY (id_catalog) REFERENCES catalog(id_catalog),
	FOREIGN KEY (id_administrator) REFERENCES administrator(id_administrator)
);

alter table CatalogXAdministrator
add
constraint pk_CatalogXAdministrator primary key (id_catalog, id_administrator)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);

CREATE TABLE CatalogXUser (
	id_catalog                  NUMBER(7),	
	id_user                     NUMBER(7),
	history                     date constraint catXuser_history_nn not null,
	id_product		            NUMBER(7),
    --isStreamed                  BOOLEAN,
    constraint fk_CatalogXUser_catalog foreign key (id_catalog) references catalog(id_catalog),
    constraint fk_CatalogXUser_user foreign key (id_user) references end_user(id_user),
    constraint fk_CatalogXUser_product foreign key (id_product) references Product(id_product)
);

alter table CatalogXUser
add
constraint pk_CatalogXUser primary key (id_catalog, id_user)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);
/******************************************************************************/
CREATE TABLE platform (
	id_platform                 NUMBER(7),
	namePlatform                VARCHAR2(20) CONSTRAINT platform_namePlatform_nn NOT NULL
);
alter table platform
add
constraint pk_platform primary key (id_platform)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);

create table ProductXPlatform (
    id_product                  number(7),
    id_platform                 number(7),
    constraint fk_ProductXPlatform_product foreign key (id_product) references product(id_product),
    constraint fk_ProductXPlatform_platform foreign key (id_platform) references platform(id_platform)
);
alter table ProductXPlatform
add
constraint pk_ProductXPlatform primary key (id_product, id_platform)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);
/******************************************************************************/
CREATE TABLE review (	
	id_product              NUMBER(7),
    id_user                 number(7),
    stars                   number(2, 1),
    constraint fk_review_product foreign key (id_product) references product(id_product),
    constraint fk_review_user foreign key (id_user) references end_user(id_user)
);
alter table review
add
constraint pk_review primary key (id_product, id_user)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);
/*******************************************/
CREATE TABLE commentary (
	id_product              NUMBER(7),
    id_user                 number(7),
    description             VARCHAR2(500) CONSTRAINT description_nn NOT NULL,
    constraint fk_commentary_product foreign key (id_product) references product(id_product),
    constraint fk_commentary_user foreign key (id_user) references end_user(id_user)
);

alter table commentary
add
constraint pk_commentary primary key (id_product, id_user)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);
/******************************************************************************/

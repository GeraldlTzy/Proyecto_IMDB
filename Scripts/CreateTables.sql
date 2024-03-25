CREATE TABLE Nationality (
    id_nationality          NUMBER(7),
    name                    VARCHAR2(20) CONSTRAINT name_nn NOT NULL
);
alter table Nationality
add
constraint pk_nationality primary key (id_nationality)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);

CREATE TABLE card (
    id_card                 NUMBER(7),
    card_number             NUMBER(10) CONSTRAINT card_number_nn NOT NULL,
    expiration              DATE CONSTRAINT expiration_nn NOT NULL,
    ccv                     NUMBER(5) CONSTRAINT ccv_nn NOT NULL,
    owner_name              VARCHAR2(20) CONSTRAINT owner_name_nn NOT NULL
);
alter table card
add
constraint pk_card primary key (id_card)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);

CREATE TABLE Person (
  	id_person               NUMBER(7),
   	first_name              VARCHAR2(20) CONSTRAINT first_name_nn NOT NULL,
	last_name               VARCHAR2(20) CONSTRAINT last_name_nn NOT NULL,
	date_birth              DATE CONSTRAINT date_birth_nn NOT NULL
);
alter table Person
add
constraint pk_person primary key (id_person)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);

/*CREATE TABLE systemUser (
	id_systemUser           NUMBER(7),
	username                VARCHAR2(20) CONSTRAINT username_nn NOT NULL,
	identification          VARCHAR2(20) CONSTRAINT identification_nn NOT NULL,
	phoneNumber             NUMBER(7) CONSTRAINT phoneNumber_nn NOT NULL,
	email                   VARCHAR2(20) CONSTRAINT email_nn NOT NULL,
	pswrd?
);

alter table systemUser
add
constraint pk_systemUser primary key (id_systemUser)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);

alter table systemUser
add
constraint fk_systemUser_person foreign key (id_systemUser) references Person(id_person);
*/


/*******************************************************************************/

CREATE TABLE nationalityPerson (
	id_person NUMBER(7)     CONSTRAINT id_person_nn NOT NULL,
	id_nationality NUMBER(7) CONSTRAINT id_nationality_nn NOT NULL,
	FOREIGN KEY (id_person) REFERENCES Person(id_person),
    	FOREIGN KEY (id_nationality) REFERENCES Nationality(id_nationality)
);

alter table nationalityPerson
add
constraint fk_nationalityPerson_person foreign key (id_person) references Person(id_person);

alter table nationalityPerson
add
constraint fk_nationalityPerson_nationality foreign key (id_nationality) references Nationality(id_nationality);

alter table nationalityPerson
add
constraint pk_nationalityPerson primary key (id_person, id_nationality)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);

/*******************************************************************************/

CREATE TABLE platform (
	id_platform             NUMBER(7),
	name_platform           VARCHAR2(20) CONSTRAINT name_platform_nn NOT NULL
);
alter table platform
add
constraint pk_platform primary key (id_platform)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);



CREATE TABLE end_user (
	id_user                 NUMBER(7)
);
alter table end_user
add
constraint pk_end_user primary key (id_user)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);

alter table end_user
add
constraint fk_end_user foreign key (id_user) references systemUser(id_systemUser);


CREATE TABLE administrator (
	id_administrator        NUMBER(7)
);
alter table administrator
add
constraint pk_administrator primary key (id_administrator)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);

alter table administrator
add
constraint fk_administrator_systemUser foreign key (id_administrator) references systemUser(id_systemUser);


CREATE TABLE catalog (
	id_catalog              NUMBER(7),
	genre                   VARCHAR2(20) CONSTRAINT genre_nn NOT NULL
);

alter table catalog
add
constraint pk_catalog primary key (id_catalog)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);


CREATE TABLE country (
	id_country              NUMBER(7),
	nameCountry             VARCHAR2(20) CONSTRAINT nameCountry_nn NOT NULL
);
alter table country
add
constraint pk_country primary key (id_country)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);

CREATE TABLE city (
	id_city                 NUMBER(7),
	name_city               VARCHAR2(50) CONSTRAINT city_nn NOT NULL,
	id_country              NUMBER(7),
	FOREIGN KEY (id_country) REFERENCES country(id_country)	
);

alter table city
add
constraint fk_city_country foreign key (id_country) references Country(id_country);

alter table city
add
constraint pk_city primary key (id_city)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);


CREATE TABLE payment (
	id_payment              NUMBER(7),
	id_user                 NUMBER(7),
);

alter table payment
add
constraint pk_payment primary key (id_payment)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);

alter table payment
add
constraint fk_payment_user foreign key (id_user) references end_user(id_user);

/*******************************************/

CREATE TABLE participant (
	id_participant          NUMBER(7),
	id_country              NUMBER(7),
	biography               VARCHAR2(100) CONSTRAINT biography_nn NOT NULL,	
	height                  NUMBER(7) CONSTRAINT height_nn NOT NULL,
	trivia                  VARCHAR2(100) CONSTRAINT trivia_nn NOT NULL,
	photo BLOB,  
	FOREIGN KEY (id_country) REFERENCES Country(id_country),
	FOREIGN KEY (id_participant) REFERENCES Person(id_person)
);
---me falta a mi el blob por idiota me toca hacer para mi el alter
alter table participant
add
constraint pk_participant primary key (id_participant)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);

CREATE TABLE typeOfParticipant (
	id_type                 NUMBER(7) PRIMARY KEY,	
	nickname                VARCHAR2(100) CONSTRAINT nickname_Participant_nn NOT NULL,
	FOREIGN KEY (id_type) REFERENCES participant(id_participant)
);

alter table typeOfParticipant
add
constraint pk_typeOfParticipant primary key (id_typeOfParticipant)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);

CREATE TABLE product (
	id_product              NUMBER(7),
	link                    VARCHAR2(100) CONSTRAINT link_nn NOT NULL,	
	price                   NUMBER(7) CONSTRAINT price_nn NOT NULL,
	releaseYear             DATE CONSTRAINT releaseYear_nn NOT NULL,
	title                   VARCHAR2(100) CONSTRAINT title_nn NOT NULL,
	duration                NUMBER(7) CONSTRAINT duration_nn NOT NULL,
	trailer                 VARCHAR2(100),
	synopsis                VARCHAR2(100) CONSTRAINT synopsis_nn NOT NULL,
	season                  NUMBER(7),
	episode                 NUMBER(7),
	photo BLOB
);

alter table product
add
constraint pk_product primary key (id_product)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);

CREATE TABLE typeOfProduct (
	id_type                 NUMBER(7),	
	nickname                VARCHAR2(100) CONSTRAINT nickname_nn NOT NULL,
	FOREIGN KEY (id_type) REFERENCES product(id_product)
);

alter table typeOfProduct
add
constraint pk_typeOfProduct primary key (id_type)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);

CREATE TABLE CatalogxProduct (
	id_catalog              NUMBER(7),	
	id_product              NUMBER(7),
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
	id_catalog              NUMBER(7),	
	id_administrator        NUMBER(7),
	FOREIGN KEY (id_catalog) REFERENCES catalog(id_catalog),
	FOREIGN KEY (id_administrator) REFERENCES administrator(id_administrator)
);

alter table CatalogXAdministrator
add
constraint pk_CatalogXAdministrator primary key (id_catalog, id_administrator)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);

---stars?
CREATE TABLE review (
	id_review               NUMBER(7),	
	id_product              NUMBER(7),	
	FOREIGN KEY (id_product) REFERENCES product(id_product)
);

alter table review
add
constraint pk_review primary key (id_review)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);

CREATE TABLE commentary (
	id_commentary           NUMBER(7),	
	description             VARCHAR2(100) CONSTRAINT description_nn NOT NULL,
	id_product              NUMBER(7),
	FOREIGN KEY (id_product) REFERENCES product(id_product)
);

alter table commentary
add
constraint pk_commentary primary key (id_commentary)
using index
tablespace su_ind pctfree 20
storage (initial 10k next 10k pctincrease 0);

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
  	id_person               NUMBER(7) PRIMARY KEY,
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

*******************************************************************************

CREATE TABLE nationalityPerson
(
	ID_nationality_person NUMBER(7) PRIMARY KEY,
	id_person NUMBER(7) CONSTRAINT id_person_nn NOT NULL,
	id_nationality NUMBER(7) CONSTRAINT id_nationality_nn NOT NULL,
	FOREIGN KEY (id_person) REFERENCES Person(id_person),
    	FOREIGN KEY (id_nationality) REFERENCES Nationality(id_nationality)
);

********************

CREATE TABLE platform
(
	id_platform NUMBER(7) PRIMARY KEY,
	name_platform VARCHAR2(20) CONSTRAINT name_platform_nn NOT NULL

);




CREATE TABLE end_user
(
	id_user NUMBER(7) PRIMARY KEY

);

//falta alter de FK


CREATE TABLE administrator
(
	id_administrator NUMBER(7) PRIMARY KEY

);
//falta alter de FK




CREATE TABLE catalog
(
	id_catalog NUMBER(7) PRIMARY KEY,
	genre VARCHAR2(20) CONSTRAINT genre_nn NOT NULL

);


CREATE TABLE country
(
	id_country NUMBER(7) PRIMARY KEY,
	name_country VARCHAR2(20) CONSTRAINT name_country_nn NOT NULL

);




CREATE TABLE city
(
	id_city NUMBER(7) PRIMARY KEY,
	name_city VARCHAR2(50) CONSTRAINT city_nn NOT NULL,
	id_country NUMBER(7),
	FOREIGN KEY (id_country) REFERENCES country(id_country)	
);



CREATE TABLE payment
(
	id_payment NUMBER(7) PRIMARY KEY,
	id_user NUMBER(7),
	FOREIGN KEY (id_user) REFERENCES end_user(id_user)	
);


************************************

CREATE TABLE participant
(
	ID_participant NUMBER(7) PRIMARY KEY,
	id_country NUMBER(7),
	biography VARCHAR2(100) CONSTRAINT biography_nn NOT NULL,	
	height NUMBER(7) CONSTRAINT height_nn NOT NULL,
	trivia VARCHAR2(100) CONSTRAINT trivia_nn NOT NULL,
	photo BLOB,  
	FOREIGN KEY (id_country) REFERENCES Country(id_country),
	FOREIGN KEY (ID_participant) REFERENCES Person(ID_person)
		
);

//me falta a mi el blob por idiota me toca hacer para mi el alter

CREATE TABLE product
(
	ID_product NUMBER(7) PRIMARY KEY,
	link VARCHAR2(100) CONSTRAINT link_nn NOT NULL,	
	price NUMBER(7) CONSTRAINT price_nn NOT NULL,
	releaseYear DATE CONSTRAINT releaseYear_nn NOT NULL,
	title VARCHAR2(100) CONSTRAINT title_nn NOT NULL,
	duration NUMBER(7) CONSTRAINT duration_nn NOT NULL,
	trailer VARCHAR2(100),
	synopsis VARCHAR2(100) CONSTRAINT synopsis_nn NOT NULL,
	season NUMBER(7),
	episode NUMBER(7),
	photo BLOB
		
);

CREATE TABLE CatalogXAdministrator
(
	id_catalogXAdmin NUMBER(7) PRIMARY KEY,	
	id_catalog NUMBER(7),	
	id_administrator NUMBER(7),
	FOREIGN KEY (id_catalog) REFERENCES catalog(id_catalog),
	FOREIGN KEY (id_administrator) REFERENCES administrator(id_administrator)
);

//stars?
CREATE TABLE review
(
	id_review NUMBER(7) PRIMARY KEY,	
	id_product NUMBER(7),	
	FOREIGN KEY (id_product) REFERENCES product(id_product)
);


CREATE TABLE commentary
(
	id_commentary NUMBER(7) PRIMARY KEY,	
	description VARCHAR2(100) CONSTRAINT description_nn NOT NULL,
	id_product NUMBER(7),
	FOREIGN KEY (id_product) REFERENCES product(id_product)
);

CREATE TABLE typeOfProduct
(
	id_type NUMBER(7) PRIMARY KEY,	
	nickname VARCHAR2(100) CONSTRAINT nickname_nn NOT NULL,
	FOREIGN KEY (id_type) REFERENCES product(id_product)
);

CREATE TABLE CatalogxProduct
(
	id_CatalogxProduct NUMBER(7) PRIMARY KEY,	
	id_catalog NUMBER(7),	
	id_product NUMBER(7),
	FOREIGN KEY (id_catalog) REFERENCES catalog(id_catalog),
	FOREIGN KEY (id_product) REFERENCES product(id_product)
);

CREATE TABLE typeOfParticipant
(
	id_type NUMBER(7) PRIMARY KEY,	
	nicknameParticipant VARCHAR2(100) CONSTRAINT nickname_Participant_nn NOT NULL,
	FOREIGN KEY (id_type) REFERENCES participant(ID_participant)
);


*************************************
//no la he creado de mi lado

CREATE TABLE systemUser
(
	id_systemUser NUMBER(7) PRIMARY KEY,
	username VARCHAR2(20) CONSTRAINT username_nn NOT NULL,
	identification VARCHAR2(20) CONSTRAINT identification_nn NOT NULL,
	phoneNumber NUMBER(7) CONSTRAINT phoneNumber_nn NOT NULL,
	email VARCHAR2(20) CONSTRAINT email_nn NOT NULL,
	pswrd?
	FOREIGN KEY (id_user) REFERENCES Person(ID_person)	



);

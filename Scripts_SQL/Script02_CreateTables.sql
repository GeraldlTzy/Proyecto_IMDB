/*Tables*/
/*DROP TABLE TypeOfIdentification;
DROP TABLE
DROP TABLE*/
CREATE TABLE TypeOfIdentification (
    idTypeIdent 				INT UNSIGNED AUTO_INCREMENT,
    nameTypeIdent 				VARCHAR(20) NOT NULL,
    created_by 					VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
    PRIMARY KEY (idTypeIdent)
) ENGINE=InnoDB
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;
/******************Atributes for person*************/
CREATE TABLE Sex (
	idSex			        	INT UNSIGNED AUTO_INCREMENT,
	sexName		            	VARCHAR(10),
    created_by 			    	VARCHAR(15),
    creation_date 		 		DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
    PRIMARY KEY (idSex)
);

CREATE TABLE Nationality (
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
CREATE TABLE country (
	idCountry                   INT UNSIGNED AUTO_INCREMENT,
	nameCountry                 VARCHAR(100) NOT NULL,
    created_by 					VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
    PRIMARY KEY (idCountry)
);

CREATE TABLE city (
	idCity                      INT UNSIGNED AUTO_INCREMENT,
	idCountry                   INT UNSIGNED AUTO_INCREMENT,
    nameCity                    VARCHAR(100) NOT NULL,
    constraint fk_city_country foreign key (idCountry) 
    references Country(idCountry),
    created_by 					VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
    PRIMARY KEY (idCity)
);

create table Relative (
    idRelative                  INT UNSIGNED AUTO_INCREMENT,
    kindship                    VARCHAR(30) NOT NULL,
    created_by 					VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
    PRIMARY KEY (idRelative)
);
/*****************************************************************************/
CREATE TABLE Person (
  	idPerson                    INT UNSIGNED AUTO_INCREMENT,
   	idSex			            INT UNSIGNED AUTO_INCREMENT,
    firstName                   VARCHAR(20) NOT NULL,
	secondName                  VARCHAR(20),
	firstSurname                VARCHAR(20) NOT NULL,
	secondSurname               VARCHAR(20),
	datebirth                   DATE NOT NULL,
    photo                       BLOB,
	CONSTRAINT fk_Person_sex FOREIGN KEY (idSex) REFERENCES Sex(idSex),
    created_by 					VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
    PRIMARY KEY (idPerson)
);
/**********************Tables with relation to Person*************************/
CREATE TABLE nationalityPerson (
	idPerson                   INT UNSIGNED AUTO_INCREMENT NOT NULL,
	idNationality              INT UNSIGNED AUTO_INCREMENT NOT NULL,
    constraint fk_natPerson_person foreign key (idPerson) references Person(idPerson),
    constraint fk_natPerson_nationality foreign key (idNationality) references Nationality(idNationality),
    created_by 				    VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
    PRIMARY KEY(idPerson, idNationality)
);
/*****************************************************************************/
CREATE TABLE systemUser (
	idSystemUser                INT UNSIGNED AUTO_INCREMENT,
	username                    VARCHAR(20) NOT NULL,
	phoneNumber                 INT NOT NULL,
	email                       VARCHAR(20) NOT NULL,
	pswd  		                VARCHAR(20) NOT NULL,
    constraint fk_systemUser_person foreign key (idSystemUser) references Person(idPerson),
    created_by 					VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
    PRIMARY KEY(idSystemUser)
);
/****************************Tables with relation to SystemUser****************/
CREATE TABLE Identification(
    idIdentification            INT UNSIGNED AUTO_INCREMENT,
    idTypeIdent                 INT UNSIGNED AUTO_INCREMENT,
    identNumber                 INT UNSIGNED AUTO_INCREMENT,
    created_by 					VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
    CONSTRAINT fk_ident_type FOREIGN KEY (idTypeIdent) 
    REFERENCES TypeOfIdentification(idTypeIdent),
    PRIMARY KEY (idIdentification)
);

CREATE TABLE IdentXSystem (
    idIdent                     INT UNSIGNED AUTO_INCREMENT,
    idSystemUser                INT UNSIGNED AUTO_INCREMENT,
    created_by 					VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
    CONSTRAINT fk_identxsystem_ident FOREIGN KEY (idIdent) 
    REFERENCES Identification(idIdentification),
    CONSTRAINT fk_identxsystem_system FOREIGN KEY (idSystemUser) 
    REFERENCES SystemUser(idSystemUser),
    PRIMARY KEY (idIdent, idSystemUser)
);
/*****************************************************************************/
CREATE TABLE end_user (
	idUser                     	INT UNSIGNED AUTO_INCREMENT,
    created_by 				   	VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
    constraint fk_endUser_systemUser foreign key (idUser) 
    references systemUser(idSystemUser),
    PRIMARY KEY (idUser)
);

CREATE TABLE administrator (
	idAdministrator            	INT UNSIGNED AUTO_INCREMENT,
    created_by 					VARCHAR(15),
    creation_date	 			DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
    constraint fk_administrator_systemUser foreign key (idAdministrator) 
    references systemUser(idSystemUser),
    PRIMARY KEY (idAdministrator)
);
/*****************************************************************************/
CREATE TABLE participant (
	idParticipant               INT UNSIGNED AUTO_INCREMENT,
	idCity                      INT UNSIGNED AUTO_INCREMENT,
	biography                   VARCHAR(500) NOT NULL,	
	height                      INT NOT NULL,
	trivia                      VARCHAR(500) NOT NULL,
    created_by 					VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
	CONSTRAINT fk_part_city FOREIGN KEY (idCity) REFERENCES City(idCity),
	CONSTRAINT fk_part_person FOREIGN KEY (idParticipant) REFERENCES Person(idPerson),
    PRIMARY KEY (idParticipant)
);
/******************************************************************************/
CREATE TABLE typeOfProduct (
	idType                      INT UNSIGNED AUTO_INCREMENT,	
	nickname                    VARCHAR(100) NOT NULL,
    created_by 					VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
    PRIMARY KEY (idType)
);

CREATE TABLE product (
	idProduct                   INT UNSIGNED AUTO_INCREMENT,
	idType                      INT UNSIGNED AUTO_INCREMENT,	
	releaseYear                 INT NOT NULL,
	title                       VARCHAR(200) NOT NULL,
	duration                    INT NOT NULL,
	trailer                     VARCHAR(500),
	price			    		INT,
	synopsis                    VARCHAR(500) NOT NULL,
    created_by 					VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
	CONSTRAINT fk_product_type FOREIGN KEY (idType) REFERENCES typeOfProduct(idType),
    PRIMARY KEY (idProduct)
);
/*************************Atributes for product********************************/
CREATE TABLE Binnacle (
    idBinnacle                  INT UNSIGNED AUTO_INCREMENT,
    idProduct                   INT UNSIGNED AUTO_INCREMENT,
    oldPrice                    INT,
    newPrice			        INT NOT NULL,
    dateBinnacle                DATE NOT NULL,
    created_by 					VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date		 			DATE,
    CONSTRAINT fk_binnacle_product FOREIGN KEY (idProduct) REFERENCES Product(idProduct),
    PRIMARY KEY (idBinnacle)
);

CREATE TABLE Season(
    idSeason                    INT UNSIGNED AUTO_INCREMENT,
    idProduct                   INT UNSIGNED AUTO_INCREMENT,
    numberSeason                INT,
    duration                    INT,
    created_by 					VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
    CONSTRAINT fk_season_product FOREIGN KEY (idProduct) REFERENCES Product(idProduct),
    PRIMARY KEY (idSeason)
);

CREATE TABLE Episode(
    idEpisode                   INT UNSIGNED AUTO_INCREMENT,
    idSeason                    INT UNSIGNED AUTO_INCREMENT,
    numberEpisode               INT,
    name                        VARCHAR(20),
    duration                    INT,
    created_by 					VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
    CONSTRAINT fk_episode_season FOREIGN KEY (idSeason) REFERENCES Season(idSeason),
    PRIMARY KEY (idEpisode)
);

CREATE TABLE Photo(
    idPhoto                     INT UNSIGNED AUTO_INCREMENT,
    idProduct                   INT UNSIGNED AUTO_INCREMENT,
    image                       BLOB,
    created_by 					VARCHAR(15),
    creation_date 				DATE,
    updated_by 					VARCHAR(15),
    update_date 				DATE,
    CONSTRAINT fk_photo_product FOREIGN KEY (idProduct) REFERENCES Product(idProduct),
    PRIMARY KEY (idPhoto)
);

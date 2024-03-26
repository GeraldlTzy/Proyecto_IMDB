INSERT INTO Sex(id_sex,sex_name)
VALUES (1, "Male");

INSERT INTO Sex(id_sex,sex_name)
VALUES (2, "Female");

--------------------------Creation of users-------------------------------------

CREATE SEQUENCE s_Person
START WITH 0
INCREMENT BY 1
MINVALUE 0
MAXVALUE 100000
NOCACHE
NOCYCLE;

INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.currval(),"Jose","David","Serrano",null,TO_DATE('08/03/2005','DD/MM/YYYY'),1);

INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Gerald",NULL,"Calderon","Castro",TO_DATE('23/06/2004','DD/MM/YYYY'),1);

INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Clara",NULL,"Cabello","Díaz",TO_DATE('11/11/1986','DD/MM/YYYY'),2);

INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"María","Fernanda","Catalan","Arcos",TO_DATE('11/03/2002','DD/MM/YYYY'),2);

INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Fernando","Lucas","Rodríguez",NULL,TO_DATE('10/03/2011','DD/MM/YYYY'),1);

INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Joseph","David","Campillo",NULL,TO_DATE('13/07/2004','DD/MM/YYYY'),1);

INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Sonia",NULL,"Souto","Cornejo",TO_DATE('17/05/1993','DD/MM/YYYY'),2);

INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Lorenzo",NULL,"Vilchez",NULL,TO_DATE('17/12/2011','DD/MM/YYYY'),1);

INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Mario",NULL,"Coll",NULL,TO_DATE('30/12/1969','DD/MM/YYYY'),1);

INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Teresa",NULL,"Barrio",NULL,TO_DATE('09/01/1978','DD/MM/YYYY'),2);

INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Christian",NULL,"Álamo",NULL,TO_DATE('12/10/1991','DD/MM/YYYY'),NULL);

INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Antonio",NULL,"Castañeda",NULL,TO_DATE('30/04/1956','DD/MM/YYYY'),1);

INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Rosalía","Talavera","Robledo",TO_DATE('09/06/1989','DD/MM/YYYY'),2);

INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Tomás",NULL,"Hurtado",NULL,TO_DATE('01/07/2008','DD/MM/YYYY'),1);

INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Inés",NULL,"Sarmiento","Solano",TO_DATE('28/07/1956','DD/MM/YYYY'),2);

INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Álvaro","Julián","Nadal",NULL,TO_DATE('08/09/1993','DD/MM/YYYY'),1);

INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Tamara","Lucía","Arana",TO_DATE('01/01/1990','DD/MM/YYYY'),NULL);

INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Juan","Fernando","Fernandez","López",TO_DATE('08/02/1977','DD/MM/YYYY'),1);

INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"José","Manuel","Orozco","Fraga",TO_DATE('01/04/1958','DD/MM/YYYY'),1);

INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Eva","María","Cuenca",TO_DATE('14/07/2000','DD/MM/YYYY'),2);

INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Emilia","Ana","Dieguez","Fuentes",TO_DATE('22/09/1967','DD/MM/YYYY'));

INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Gerardo",NULL,"Bermejo",NULL,TO_DATE('23/09/2002','DD/MM/YYYY'),NULL);

INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Candela","Mónica","Morcillo",NULL,TO_DATE('24/08/1991','DD/MM/YYYY'),2);

INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Coral",NULL,"Hermoso",NULL,TO_DATE('26/09/1994','DD/MM/YYYY'),2);

INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Antonio","Jesús","Barros",NULL,TO_DATE('03/08/1985','DD/MM/YYYY'),1);

-------------------------------Creation-of-Administrator------------------------

INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Esperanza","Fernanda","Segura","Montero",TO_DATE('18/08/1991','DD/MM/YYYY'),2);

INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Eduardo",NULL,"Serrano","Barcelo",TO_DATE('08/01/2006','DD/MM/YYYY'),1);

INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Ana","Isabel","Garriga","Núñez",TO_DATE('17/06/1977','DD/MM/YYYY'),2);

INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Vidal",NULL,"Merino",NULL,TO_DATE('29/07/1964','DD/MM/YYYY'),1);

INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Florentina","Susana","Pulido","Ballesteros",TO_DATE('05/01/1994','DD/MM/YYYY'),2);

INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Antonio","Felipe","Novoa",NULL,TO_DATE('19/10/2004','DD/MM/YYYY'),1);

INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Alejandra","María","Villareal","Infante",TO_DATE('15/12/1959','DD/MM/YYYY'),2);

INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Francisco",NULL,"Elvira",NULL,TO_DATE('14/12/1962','DD/MM/YYYY'),1);

INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Cristina","Sofía","Parada",NULL,TO_DATE('08/02/1982','DD/MM/YYYY'),2);

INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Alberto",NULL,"Alarcon","Estrada",TO_DATE('12/07/1986','DD/MM/YYYY'),1);


--------------------------Creation-of-Participant-------------------------------
--Actress
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Scarlett","Ingrid","Johansson",NULL,TO_DATE('22/11/1984','DD/MM/YYYY'),2);
--Director
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Luc","Paul","Maurice","Besson",TO_DATE('08/03/2005','DD/MM/YYYY'),1);
--Composer
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Éric","George","Serra",NULL,TO_DATE('09/09/1959','DD/MM/YYYY'),1);
--Actor
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Morgan",NULL,"Freeman",NULL,TO_DATE('01/06/1937','DD/MM/YYYY'),1);
--Actor
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Min-Sik",NULL,"Choi",NULL,TO_DATE('27/04/1962','DD/MM/YYYY'),1);
--Director
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Christopher","Edward","Nolan",NULL,TO_DATE('30/06/1970','DD/MM/YYYY'),1);
--Editor
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Jennifer",NULL,"Lame",NULL,Serrano,TO_DATE('01/01/1982','DD/MM/YYYY'),2);
--Actor
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Cillian",NULL,"Murphy",NULL,TO_DATE('25/05/1976','DD/MM/YYYY'),1);
--Actress
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Emily","Olivia","Blunt",NULL,TO_DATE('23/02/1983','DD/MM/YYYY'),2);
--Actor, Writer and Productor
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Matthew",NULL,"Paige","Damon",TO_DATE('08/10/1970','DD/MM/YYYY'),1);
--Actress
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Florence","Rose","Pugh",NULL,,TO_DATE('03/01/1996','DD/MM/YYYY'),2);
--Actor
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Rami",NULL,"Malek",NULL,TO_DATE('12/05/1981','DD/MM/YYYY'),1);
--Director
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Ilya","Viktorovich","Naishuller",NULL,TO_DATE('19/11/1983','DD/MM/YYYY'),1);
--Actor, productor, writer, director
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Bob","John","Odenkirk",NULL,Serrano,TO_DATE('22/10/1962','DD/MM/YYYY'),1);
--Writer and productor
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Derek",NULL,"Koltsad",NULL,TO_DATE('04/04/1974','DD/MM/YYYY'),1);
--Director and writer
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Colin",NULL,"Trevorrow",NULL,Serrano,TO_DATE('13/09/1976','DD/MM/YYYY'),1);
--Composer
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Michael",NULL,"Giacchino",NULL,TO_DATE('10/10/1967','DD/MM/YYYY'),1);
--Actor,Productor and Voice actor
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Christopher","Michael","Pratt",NULL,TO_DATE('21/06/1979','DD/MM/YYYY'),1);
--Actor, writer and director
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Bryce","Dallas","Howard",NULL,Serrano,TO_DATE('02/03/1981','DD/MM/YYYY'),2);
--Actress, producer and director
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Vera","Ann","Farmiga",NULL,TO_DATE('06/08/1973','DD/MM/YYYY'),2);
--Actress
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Millie","Bobby","Brown",NULL,TO_DATE('19/02/2004','DD/MM/YYYY'),2);
--Director, producer and writer
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Damien",NULL,"Chazelle",NULL,TO_DATE('19/01/1985','DD/MM/YYYY'),1);
--Director, writer and producer
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Steven","Allan","Spielberg",NULL,TO_DATE('18/12/1946','DD/MM/YYYY'),1);
--Composer and writer
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Justin","Gabriel","Hurwitz",NULL,TO_DATE('22/01/1985','DD/MM/YYYY'),1);
--Actor
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Jonathan",NULL,"Kimble","Simmons",TO_DATE('09/01/1955','DD/MM/YYYY'),1);
--Director, producer and writer
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"David",NULL,"Ayer",NULL,TO_DATE('18/01/1968','DD/MM/YYYY'),1);
--Actor and producer
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Willard",NULL,"Carroll","Smith",TO_DATE('25/09/1968','DD/MM/YYYY'),1);
--Actor, director and producer
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Jared","Joseph","Leto",TO_DATE('26/12/1971','DD/MM/YYYY'),1);
--Actress and producer
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Margot","Elise","Robbie",NULL,TO_DATE('02/07/1990','DD/MM/YYYY'),2);
--Actress and producer
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Viola","Sophie","Davis",NULL,TO_DATE('11/08/2003','DD/MM/YYYY'),2);
--Composer
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"John",NULL,"Williams",NULL,TO_DATE('08/02/1932','DD/MM/YYYY'),1);
--Director, writer and producer
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Gavin",NULL,"Hood",NULL,TO_DATE('12/05/1963','DD/MM/YYYY'),1);
--Actor and producer
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Hugh","Michael","Jackman",NULL,TO_DATE('12/10/1968','DD/MM/YYYY'),1);
--Director and producer
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Juan","Antonio","García","Bayona",TO_DATE('09/05/1975','DD/MM/YYYY'),1);
--Director and writer
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Ari",NULL,"Aster",NULL,Serrano,TO_DATE('15/07/1986','DD/MM/YYYY'),1);
--Actress and producer
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Jennifer",NULL,"Lawrence",NULL,TO_DATE('15/08/1990','DD/MM/YYYY'),2);
--Writer and director
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Denis",NULL,"Villeneuve",NULL,TO_DATE('03/10/1967','DD/MM/YYYY'),1);
--Actor
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Timothée","Hal","Chalamet",NULL,TO_DATE('27/12/1995','DD/MM/YYYY'),1);
--Actress
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Zenda","Maree","Stoermer","Coleman",TO_DATE('01/09/1996','DD/MM/YYYY'),2);
--Director, producer and writer
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Frank",NULL,"Darabont",NULL,TO_DATE('28/01/1959','DD/MM/YYYY'),1);
--Actor and director
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Thomas","Jeffre","Hanks",NULL,TO_DATE('09/07/1956','DD/MM/YYYY'),1);
--Actress
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Emilia","Isobel","Rose","Clarke",TO_DATE('23/10/1986','DD/MM/YYYY'),2);
--Actor
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Sam","George","Claflin",NULL,TO_DATE('27/06/1986','DD/MM/YYYY'),1);
--Actor
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"José","Pedro","Balmaceda","Pascal",TO_DATE('02/04/1975','DD/MM/YYYY'),1);
--Actress
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Isabella",NULL,"Ramsey",NULL,TO_DATE('25/09/2003','DD/MM/YYYY'),2);
--Composer
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Julian",NULL,"McCreary",NULL,TO_DATE('17/02/1979','DD/MM/YYYY'),1);
--Actor
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Andrew","James","Clutterbuck",NULL,TO_DATE('14/09/1973','DD/MM/YYYY'),1);
--Actress
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Lauren",NULL,"Cohan",NULL,TO_DATE('07/01/1982','DD/MM/YYYY'),2);
--Actress
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Danai",NULL,"Gurira",NULL,TO_DATE('14/02/1978','DD/MM/YYYY'),2);
--Actor
INSERT INTO Person(id_person,first_name,second_name,first_surname,second_surname,date_birth,id_sex)
VALUES (s_Person.nextval(),"Norman","Mark","Reedus",NULL,TO_DATE('06/01/1969','DD/MM/YYYY'),1);
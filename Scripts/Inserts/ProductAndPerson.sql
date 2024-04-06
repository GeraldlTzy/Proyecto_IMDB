/*
CREATE OR REPACE PROCEDURE insertProducts
(id_product IN VARCHAR2, link IN VARCHAR2, price IN NUMBER, releaseYear IN NUMBER, title IN VARCHAR2, duration IN NUMBER, trailer IN VARCHAR2, synopsis IN VARCHAR2, season IN VARCHAR2, episode IN VARCHAR2, photo)
AS
BEGIN

  
  INSERT INTO Product(id_product, link, price, releaseYear, title, duration, trailer, synopsis, season, episode, photo) VALUES();
  COMMIT;

END insertProducts;
*/

  INSERT INTO Product(id_product, link, price, releaseYear, title, duration, trailer, synopsis, season, episode, photo) VALUES(s_product.nextval, NULL, 19.99, 2023, 'Matrix', '2h 30min', 'https://www.youtube.com/watch?v=m8e-FF8MsqU', 'Un hacker informático descubre a través de misteriosos rebeldes la verdadera naturaleza de su realidad y su papel en la guerra contra sus controladores.', NULL, NULL, NULL);
  INSERT INTO Product(id_product, link, price, releaseYear, title, duration, trailer, synopsis, season, episode, photo) VALUES(s_product.nextval, NULL, 14.99, 2021, 'Origen', '2h 28min', 'https://www.youtube.com/watch?v=YoHD9XEInc0', 'Un ladrón que roba secretos corporativos a través del uso de tecnología de intercambio de sueños recibe la tarea inversa de plantar una idea en la mente de un C.E.O.', NULL, NULL, NULL);
  INSERT INTO Product(id_product, link, price, releaseYear, title, duration, trailer, synopsis, season, episode, photo) VALUES(s_product.nextval, NULL, 9.99, 2020, 'Interstellar', '2h 49min', 'https://www.youtube.com/watch?v=zSWdZVtXT7E', 'Un equipo de exploradores viaja a través de un agujero de gusano en el espacio en un intento por garantizar la supervivencia de la humanidad.', NULL, NULL, NULL);
  INSERT INTO Product(id_product, link, price, releaseYear, title, duration, trailer, synopsis, season, episode, photo) VALUES(s_product.nextval, NULL, 12.99, 2019, 'Joker', '2h 2min', 'https://www.youtube.com/watch?v=zAGVQLHvwOY', 'En Ciudad Gótica, un comediante mentalmente trastornado es despreciado y maltratado por la sociedad. Luego se embarca en una espiral descendente de revolución y crimen sangriento.', NULL, NULL, NULL);
  INSERT INTO Product(id_product, link, price, releaseYear, title, duration, trailer, synopsis, season, episode, photo) VALUES(s_product.nextval, NULL, 15.99, 2018, 'Vengadores: Infinity War', '2h 29min', 'https://www.youtube.com/watch?v=6ZfuNTqbHE8', 'Los Vengadores y sus aliados deben estar dispuestos a sacrificar todo en un intento por derrotar al poderoso Thanos antes de que su ráfaga de devastación y ruina ponga fin al universo.', NULL, NULL, NULL);
  INSERT INTO Product(id_product, link, price, releaseYear, title, duration, trailer, synopsis, season, episode, photo) VALUES(s_product.nextval, NULL, 11.99, 2017, 'Blade Runner 2049', '2h 44min', 'https://www.youtube.com/watch?v=gCcx85zbxz4', 'El descubrimiento de un joven cazador de cuchillas de un secreto enterrado durante mucho tiempo lo lleva a rastrear al antiguo cazador de cuchillas Rick Deckard, que ha estado desaparecido durante treinta años.', NULL, NULL, NULL);
  INSERT INTO Product(id_product, link, price, releaseYear, title, duration, trailer, synopsis, season, episode, photo) VALUES(s_product.nextval, NULL, 18.99, 2016, 'La La Land', '2h 8min', 'https://www.youtube.com/watch?v=0pdqf4P9MB8', 'Mientras navegan por sus carreras en Los Ángeles, un pianista y una actriz se enamoran mientras intentan reconciliar sus aspiraciones para el futuro.', NULL, NULL, NULL);
  INSERT INTO Product(id_product, link, price, releaseYear, title, duration, trailer, synopsis, season, episode, photo) VALUES(s_product.nextval, NULL, 10.99, 2015, 'El Renacido', '2h 36min', 'https://www.youtube.com/watch?v=LoebZZ8K5N0', 'Un pionero en una expedición de comercio de pieles en la década de 1820 lucha por sobrevivir después de ser atacado por un oso y dejado por muerto por miembros de su propio equipo de caza.', NULL, NULL, NULL);
  INSERT INTO Product(id_product, link, price, releaseYear, title, duration, trailer, synopsis, season, episode, photo) VALUES(s_product.nextval, NULL, 16.99, 2014, 'Whiplash', '1h 47min', 'https://www.youtube.com/watch?v=7d_jQycdQGo', 'Un joven baterista prometedor se matricula en un conservatorio de música implacable donde sus sueños de grandeza son guiados por un instructor que no se detendrá ante nada para realizar el potencial de un estudiante.', NULL, NULL, NULL);
  INSERT INTO Product(id_product, link, price, releaseYear, title, duration, trailer, synopsis, season, episode, photo) VALUES(s_product.nextval, NULL, 13.99, 2013, 'Gravity', '1h 31min', 'https://www.youtube.com/watch?v=OiTiKOy59o4', 'Dos astronautas trabajan juntos para sobrevivir después de que un accidente los deja varados en el', NULL, NULL, NULL);
  INSERT INTO Product(id_product, link, price, releaseYear, title, duration, trailer, synopsis, season, episode, photo) VALUES(s_product.nextval, NULL, 20.99, 2012, 'Django sin cadenas', '2h 45min', 'https://www.youtube.com/watch?v=eUdM9vrCbow', 'Con la ayuda de un cazarrecompensas alemán, un esclavo liberado se dispone a rescatar a su esposa de un brutal propietario de una plantación de Mississippi.', NULL, NULL, NULL);
  INSERT INTO Product(id_product, link, price, releaseYear, title, duration, trailer, synopsis, season, episode, photo) VALUES(s_product.nextval, NULL, 8.99, 2011, 'El artista', '1h 40min', 'https://www.youtube.com/watch?v=OK7pfLlsUQM', 'Una estrella de cine egomaníaca desarrolla una relación con una joven bailarina en el telón de fondo de la era del cine mudo de Hollywood.', NULL, NULL, NULL),
  INSERT INTO Product(id_product, link, price, releaseYear, title, duration, trailer, synopsis, season, episode, photo) VALUES(s_product.nextval, NULL, 17.99, 2010, 'Origen', '2h 28min', 'https://www.youtube.com/watch?v=YoHD9XEInc0', 'Un ladrón que roba secretos corporativos a través del uso de tecnología de intercambio de sueños recibe la tarea inversa de plantar una idea en la mente de un C.E.O.', NULL, NULL, NULL);
  INSERT INTO Product(id_product, link, price, releaseYear, title, duration, trailer, synopsis, season, episode, photo) VALUES(s_product.nextval, NULL, 7.99, 2009, 'Avatar', '2h 42min', 'https://www.youtube.com/watch?v=5PSNL1qE6VY', 'Un Marine parapléjico enviado a la luna Pandora en una misión única se debate entre seguir sus órdenes y proteger el mundo que siente como su hogar.', NULL, NULL, NULL);
  INSERT INTO Product(id_product, link, price, releaseYear, title, duration, trailer, synopsis, season, episode, photo) VALUES(s_product.nextval, NULL, 21.99, 2008, 'El caballero de la noche', '2h 32min', 'https://www.youtube.com/watch?v=EXeTwQWrcwY', 'Cuando la amenaza conocida como El Joker causa estragos y caos en la gente de Gotham, Batman debe aceptar uno de los mayores desafíos psicológicos y físicos de su capacidad para luchar contra la injusticia.', NULL, NULL, NULL);
  INSERT INTO Product(id_product, link, price, releaseYear, title, duration, trailer, synopsis, season, episode, photo) VALUES(s_product.nextval, NULL, 6.99, 2007, 'No Country for Old Men', '2h 2min', 'https://www.youtube.com/watch?v=YBqmKSAHc6w', 'La violencia y el caos se desatan después de que un cazador se encuentra con una operación de tráfico de drogas que salió mal y más de dos millones de dólares en efectivo cerca del Río Grande.', NULL, NULL, NULL);
  INSERT INTO Product(id_product, link, price, releaseYear, title, duration, trailer, synopsis, season, episode, photo) VALUES(s_product.nextval, NULL, 22.99, 2006, 'Los infiltrados', '2h 31min', 'https://www.youtube.com/watch?v=iojhqm0JTW4', 'Un policía encubierto y un infiltrado en la policía intentan identificarse mutuamente mientras se infiltran en una banda irlandesa en el sur de Boston.', NULL, NULL, NULL);
  INSERT INTO Product(id_product, link, price, releaseYear, title, duration, trailer, synopsis, season, episode, photo) VALUES(s_product.nextval, NULL, 5.99, 2005, 'Million Dollar Baby', '2h 12min', 'https://www.youtube.com/watch?v=IHvzPpeWpyg', 'Una mujer decidida trabaja con un entrenador de boxeo endurecido para convertirse en profesional.', NULL, NULL, NULL);
  INSERT INTO Product(id_product, link, price, releaseYear, title, duration, trailer, synopsis, season, episode, photo) VALUES(s_product.nextval, NULL, 23.99, 2004, 'El señor de los anillos: El retorno del rey', '3h 21min', 'https://www.youtube.com/watch?v=r5X-hFf6Bwo', 'Gandalf y Aragorn lideran el Mundo de los Hombres contra el ejército de Sauron para desviar su mirada de Frodo y Sam mientras se acercan al Monte del Destino con el Anillo Único.', NULL, NULL, NULL);
  INSERT INTO Product(id_product, link, price, releaseYear, title, duration, trailer, synopsis, season, episode, photo) VALUES(s_product.nextval, NULL, 4.99, 2003, 'El pianista', '2h 30min', 'https://www.youtube.com/watch?v=u_jE7-6Uv7E', 'Un músico judío polaco lucha por sobrevivir a la destrucción del gueto de Varsovia de la Segunda Guerra Mundial.', NULL, NULL, NULL);



-- Matrix Actor: Keanu Reeves
INSERT INTO Person (idPerson, firstName, secondName, firstSurname, secondSurname, date_birth, idSex) 
VALUES (s_person.nextval, 'Keanu', NULL, 'Reeves', NULL, TO_DATE('1964-09-02', 'YYYY-MM-DD'), 1);

-- Inception Director: Christopher Nolan
INSERT INTO Person (idPerson, firstName, secondName, firstSurname, secondSurname, date_birth, idSex) 
VALUES (s_person.nextval, 'Christopher', NULL, 'Nolan', NULL, TO_DATE('1970-07-30', 'YYYY-MM-DD'), 1);

-- Interstellar Actress: Anne Hathaway
INSERT INTO Person (idPerson, firstName, secondName, firstSurname, secondSurname, date_birth, idSex) 
VALUES (s_person.nextval, 'Anne', NULL, 'Hathaway', NULL, TO_DATE('1982-11-12', 'YYYY-MM-DD'), 2);

-- Joker Actor:Joaquin Phoenix
INSERT INTO Person (idPerson, firstName, secondName, firstSurname, secondSurname, date_birth, idSex) 
VALUES (s_person.nextval, 'Joaquin', NULL, 'Phoenix', NULL, TO_DATE('1974-10-28', 'YYYY-MM-DD'), 1);

-- Avengers: Infinity War -Director: Anthony Russo
INSERT INTO Person (idPerson, firstName, secondName, firstSurname, secondSurname, date_birth, idSex) 
VALUES (s_person.nextval, 'Anthony', NULL, 'Russo', NULL, TO_DATE('1970-02-03', 'YYYY-MM-DD'), 1);

-- Blade Runner 2049 Actor: Ryan Gosling
INSERT INTO Person (idPerson, firstName, secondName, firstSurname, secondSurname, date_birth, idSex) 
VALUES (s_person.nextval, 'Ryan', NULL, 'Gosling', NULL, TO_DATE('1980-11-12', 'YYYY-MM-DD'), 1);

-- La La Land Composer: Justin Hurwitz
INSERT INTO Person (idPerson, firstName, secondName, firstSurname, secondSurname, date_birth, idSex) 
VALUES (s_person.nextval, 'Justin', NULL, 'Hurwitz', NULL, TO_DATE('1985-01-22', 'YYYY-MM-DD'), 1);

-- The Revenant  Director: Alejandro González Iñárritu
INSERT INTO Person (idPerson, firstName, secondName, firstSurname, secondSurname, date_birth, idSex) 
VALUES (s_person.nextval, 'Alejandro', NULL, 'González Iñárritu', NULL, TO_DATE('1963-08-15', 'YYYY-MM-DD'), 1);

--  Whiplash Actor: J.K. Simmons
INSERT INTO Person (idPerson, firstName, secondName, firstSurname, secondSurname, date_birth, idSex) 
VALUES (s_person.nextval, 'J.K.', NULL, 'Simmons', NULL, TO_DATE('1955-01-09', 'YYYY-MM-DD'), 1);

-- Gravity Director: Alfonso Cuarón
INSERT INTO Person (idPerson, firstName, secondName, firstSurname, secondSurname, date_birth, idSex) 
VALUES (s_person.nextval, 'Alfonso', NULL, 'Cuarón', NULL, TO_DATE('1961-11-28', 'YYYY-MM-DD'), 1);

-- Django sin cadenas Actor: Jamie Foxx
INSERT INTO Person (idPerson, firstName, secondName, firstSurname, secondSurname, date_birth, idSex) 
VALUES (s_person.nextval, 'Jamie', NULL, 'Foxx', NULL, TO_DATE('1967-12-13', 'YYYY-MM-DD'), 1);

-- El artista Director: Michel Hazanavicius
INSERT INTO Person (idPerson, firstName, secondName, firstSurname, secondSurname, date_birth, idSex) 
VALUES (s_person.nextval, 'Michel', NULL, 'Hazanavicius', NULL, TO_DATE('1967-03-29', 'YYYY-MM-DD'), 1);

-- Inception (again) Director: Christopher Nolan
INSERT INTO Person (idPerson, firstName, secondName, firstSurname, secondSurname, date_birth, idSex) 
VALUES (s_person.nextval, 'Christopher', NULL, 'Nolan', NULL, TO_DATE('1970-07-30', 'YYYY-MM-DD'), 1);

-- Avatar Director: James Cameron
INSERT INTO Person (idPerson, firstName, secondName, firstSurname, secondSurname, date_birth, idSex) 
VALUES (s_person.nextval, 'James', NULL, 'Cameron', NULL, TO_DATE('1954-08-16', 'YYYY-MM-DD'), 1);

-- El caballero de la noche Actor: Christian Bale
INSERT INTO Person (idPerson, firstName, secondName, firstSurname, secondSurname, date_birth, idSex) 
VALUES (s_person.nextval, 'Christian', NULL, 'Bale', NULL, TO_DATE('1974-01-30', 'YYYY-MM-DD'), 1);

--  No Country for Old Men Director: Joel Coen
INSERT INTO Person (idPerson, firstName, secondName, firstSurname, secondSurname, date_birth, idSex) 
VALUES (s_person.nextval, 'Joel', NULL, 'Coen', NULL, TO_DATE('1954-11-29', 'YYYY-MM-DD'), 1);

-- Los infiltrados Actor: Leonardo DiCaprio
INSERT INTO Person (idPerson, firstName, secondName, firstSurname, secondSurname, date_birth, idSex) 
VALUES (s_person.nextval, 'Leonardo', NULL, 'DiCaprio', NULL, TO_DATE('1974-11-11', 'YYYY-MM-DD'), 1);

-- Million Dollar Baby Director: Clint Eastwood
INSERT INTO Person (idPerson, firstName, secondName, firstSurname, secondSurname, date_birth, idSex) 
VALUES (s_person.nextval, 'Clint', NULL, 'Eastwood', NULL, TO_DATE('1930-05-31', 'YYYY-MM-DD'), 1);

-- El señor de los anillos: El retorno del rey Director: Peter Jackson
INSERT INTO Person (idPerson, firstName, secondName, firstSurname, secondSurname, date_birth, idSex) 
VALUES (s_person.nextval, 'Peter', NULL, 'Jackson', NULL, TO_DATE('1961-10-31', 'YYYY-MM-DD'), 1);

--El pianista Director: Roman Polanski
INSERT INTO Person (idPerson, firstName, secondName, firstSurname, secondSurname, date_birth, idSex) 
VALUES (s_person.nextval, 'Roman', NULL, 'Polanski', NULL, TO_DATE('1933-08-18', 'YYYY-MM-DD'), 1);



/*latter testing
INSERT ALL 
INTO product()


SELECT * FROM dual;
*/
create sequence s_country
start with 0
increment by 1
minvalue 0
maxvalue 1000000
nocache
nocycle;

create sequence s_city
start with 0
increment by 1
minvalue 0
maxvalue 1000000
nocache
nocycle;

insert into Country(name)
values ("Costa Rica");
insert into Country(name)
values ("Argentina");
insert into Country(name)
values ("Bolivia");
insert into Country(name)
values ("Canadá");
insert into Country(name)
values ("Colombia");
insert into Country(name)
values ("Cuba");
insert into Country(name)
values ("Ecuador");
insert into Country(name)
values ("Guatemala");
insert into Country(name)
values ("Haití");
insert into Country(name)
values ("Jamaica");
insert into Country(name)
values ("Nicaragua");
insert into Country(name)
values ("Paraguay");
insert into Country(name)
values ("Surinam");
insert into Country(name)
values ("Uruguay");
insert into Country(name)
values ("Belice");
insert into Country(name)
values ("Brasil");
insert into Country(name)
values ("Chile");
insert into Country(name)
values ("República Dominicana");
insert into Country(name)
values ("El Salvador");
insert into Country(name)
values ("Guyana");
insert into Country(name)
values ("Honduras");
insert into Country(name)
values ("México");
insert into Country(name)
values ("Panamá");
insert into Country(name)
values ("Perú");
insert into Country(name)
values ("Estados Unidos");
insert into Country(name)
values ("Venezuela");

/*Europe*/
insert into Country(name) values ("Albania");
insert into Country(name) values ("Austria");
insert into Country(name) values ("Bosnia y Herzogovina");
insert into Country(name) values ("Croacia");
insert into Country(name) values ("Dinamarca");
insert into Country(name) values ("Francia");
insert into Country(name) values ("Grecia");
insert into Country(name) values ("Hungría");
insert into Country(name) values ("Irlanda");
insert into Country(name) values ("Letonia");
insert into Country(name) values ("Litunia");
insert into Country(name) values ("Macedonia del Norte");
insert into Country(name) values ("Mónaco");
insert into Country(name) values ("Noruega");
insert into Country(name) values ("Portugal");
insert into Country(name) values ("Rusia");
insert into Country(name) values ("Eslovaquia");
insert into Country(name) values ("España");
insert into Country(name) values ("Suiza");
insert into Country(name) values ("Estonia");
insert into Country(name) values ("Montenegro");
insert into Country(name) values ("Andorra");
insert into Country(name) values ("Bélgica");
insert into Country(name) values ("Bulgaria");
insert into Country(name) values ("Chequia");
insert into Country(name) values ("Finlandia");
insert into Country(name) values ("Alemania");
insert into Country(name) values ("Ciudad del Vaticano");
insert into Country(name) values ("Islandia");
insert into Country(name) values ("Italia");
insert into Country(name) values ("Liechtenstein");
insert into Country(name) values ("Luxemburgo");
insert into Country(name) values ("Malta");
insert into Country(name) values ("Países Bajos");
insert into Country(name) values ("Polonia");
insert into Country(name) values ("Rumania");
insert into Country(name) values ("San Marino");
insert into Country(name) values ("Eslovenia");
insert into Country(name) values ("Suecia");
insert into Country(name) values ("Inglaterra");
insert into Country(name) values ("Gales");
insert into Country(name) values ("Escocia");
insert into Country(name) values ("Serbia");
---Costa Rica
insert into City(id_country, nameCity) values (0, "San José");
insert into City(id_country, nameCity) values (0, "Limón");
insert into City(id_country, nameCity) values (0, "Cartago");
insert into City(id_country, nameCity) values (0, "Puntarenas");
insert into City(id_country, nameCity) values (0, "Heredia");
insert into City(id_country, nameCity) values (0, "Alajuela");
insert into City(id_country, nameCity) values (0, "Guanacaste");
/**************************************/
---Argentina
insert into City(id_country, nameCity) values (1, "Buenos Aires");
insert into City(id_country, nameCity) values (1, "Chubut");
insert into City(id_country, nameCity) values (1, "Corrientes");
insert into City(id_country, nameCity) values (1, "Jujuy");
insert into City(id_country, nameCity) values (1, "Mendoza");
insert into City(id_country, nameCity) values (1, "Río Negro");
insert into City(id_country, nameCity) values (1, "San Luis");
insert into City(id_country, nameCity) values (1, "Santiago del Estero");
insert into City(id_country, nameCity) values (1, "Catamarca");
insert into City(id_country, nameCity) values (1, "Entre Ríos");
insert into City(id_country, nameCity) values (1, "La Pampa");
insert into City(id_country, nameCity) values (1, "Misiones");
insert into City(id_country, nameCity) values (1, "Salta");
insert into City(id_country, nameCity) values (1, "Santa Cruz");
insert into City(id_country, nameCity) values (1, "Chaco");
insert into City(id_country, nameCity) values (1, "Córdoba");
insert into City(id_country, nameCity) values (1, "Formosa");
insert into City(id_country, nameCity) values (1, "La Rioja");
insert into City(id_country, nameCity) values (1, "Neuquén");
insert into City(id_country, nameCity) values (1, "San Juan");
insert into City(id_country, nameCity) values (1, "Santa Fe");
insert into City(id_country, nameCity) values (1, "Tucumán");
insert into City(id_country, nameCity) values (1, "Tierra del Fuego, Antártida e Islas del Atlántico Sur");
---Bolivia
insert into City(id_country, nameCity) values (2, "Beni");
insert into City(id_country, nameCity) values (2, "La Paz");
insert into City(id_country, nameCity) values (2, "Potosí");
insert into City(id_country, nameCity) values (2, "Chuquisaca");
insert into City(id_country, nameCity) values (2, "Oruro");
insert into City(id_country, nameCity) values (2, "Santa Cruz");
insert into City(id_country, nameCity) values (2, "Cochobamba");
insert into City(id_country, nameCity) values (2, "Pando");
insert into City(id_country, nameCity) values (2, "Tarija");
---Canadá
insert into City(id_country, nameCity) values (3, "Alberta");
insert into City(id_country, nameCity) values (3, "Manitoba");
insert into City(id_country, nameCity) values (3, "Nunavut");
insert into City(id_country, nameCity) values (3, "Saskatchewan");
insert into City(id_country, nameCity) values (3, "Yukón");
insert into City(id_country, nameCity) values (3, "Columbia Británica");
insert into City(id_country, nameCity) values (3, "Nuevo Brunswick");
insert into City(id_country, nameCity) values (3, "Ontario");
insert into City(id_country, nameCity) values (3, "Terranova y Labrador");
insert into City(id_country, nameCity) values (3, "Isla del Príncipe Eduardo");
insert into City(id_country, nameCity) values (3, "Nueva Escocia");
insert into City(id_country, nameCity) values (3, "Quebec");
insert into City(id_country, nameCity) values (3, "Territorios del Noroeste");
---Colombia
insert into City(id_country, nameCity) values (4, "Amazonas");
insert into City(id_country, nameCity) values (4, "Atlántico");
insert into City(id_country, nameCity) values (4, "Caldas");
insert into City(id_country, nameCity) values (4, "Cauca");
insert into City(id_country, nameCity) values (4, "Córdoba");
insert into City(id_country, nameCity) values (4, "Guaviare");
insert into City(id_country, nameCity) values (4, "Magdalena");
insert into City(id_country, nameCity) values (4, "Norte de Santander");
insert into City(id_country, nameCity) values (4, "Risaralda");
insert into City(id_country, nameCity) values (4, "Sucre");
insert into City(id_country, nameCity) values (4, "Vaupés");
insert into City(id_country, nameCity) values (4, "Antioquia");
insert into City(id_country, nameCity) values (4, "Bolívar");
insert into City(id_country, nameCity) values (4, "Caquetá");
insert into City(id_country, nameCity) values (4, "Cesar");
insert into City(id_country, nameCity) values (4, "Cundinamarca");
insert into City(id_country, nameCity) values (4, "Huila");
insert into City(id_country, nameCity) values (4, "Meta");
insert into City(id_country, nameCity) values (4, "Putumayo");
insert into City(id_country, nameCity) values (4, "Archipiélago de San Andrés");
insert into City(id_country, nameCity) values (4, "Tolima");
insert into City(id_country, nameCity) values (4, "Vichada");
insert into City(id_country, nameCity) values (4, "Arauca");
insert into City(id_country, nameCity) values (4, "Boyacá");
insert into City(id_country, nameCity) values (4, "Casanare");
insert into City(id_country, nameCity) values (4, "Chocó");
insert into City(id_country, nameCity) values (4, "Guainía");
insert into City(id_country, nameCity) values (4, "La Guajira");
insert into City(id_country, nameCity) values (4, "Nariño");
insert into City(id_country, nameCity) values (4, "Quindío");
insert into City(id_country, nameCity) values (4, "Santander");
insert into City(id_country, nameCity) values (4, "Valle Del Cauca");
---Cuba
insert into City(id_country, nameCity) values (5, "Artemisa");
insert into City(id_country, nameCity) values (5, "Cienfuegos");
insert into City(id_country, nameCity) values (5, "Holguín");
insert into City(id_country, nameCity) values (5, "Las Tunas");
insert into City(id_country, nameCity) values (5, "Pinar del Río");
insert into City(id_country, nameCity) values (5, "Villa Clara");
insert into City(id_country, nameCity) values (5, "Camagüey");
insert into City(id_country, nameCity) values (5, "Granma");
insert into City(id_country, nameCity) values (5, "Isla de la Juventud");
insert into City(id_country, nameCity) values (5, "Matanzas");
insert into City(id_country, nameCity) values (5, "Sancti Spíritus");
insert into City(id_country, nameCity) values (5, "Ciego de Ávila");
insert into City(id_country, nameCity) values (5, "Guantánamo");
insert into City(id_country, nameCity) values (5, "La Habana");
insert into City(id_country, nameCity) values (5, "Mayabeque");
insert into City(id_country, nameCity) values (5, "Santiago de Cuba");
---Ecuador
insert into City(id_country, nameCity) values (6, "Azuay");
insert into City(id_country, nameCity) values (6, "Bolívar");
insert into City(id_country, nameCity) values (6, "Cañar");
insert into City(id_country, nameCity) values (6, "Carchi");
insert into City(id_country, nameCity) values (6, "Chimborazo");
insert into City(id_country, nameCity) values (6, "Cotopaxi");
insert into City(id_country, nameCity) values (6, "El Oro");
insert into City(id_country, nameCity) values (6, "Esmeraldas");
insert into City(id_country, nameCity) values (6, "Galápagos");
insert into City(id_country, nameCity) values (6, "Guayas");
insert into City(id_country, nameCity) values (6, "Imbabura");
insert into City(id_country, nameCity) values (6, "Loja");
insert into City(id_country, nameCity) values (6, "Los Ríos");
insert into City(id_country, nameCity) values (6, "Manabí");
insert into City(id_country, nameCity) values (6, "Morona Santiago");
insert into City(id_country, nameCity) values (6, "Napo");
insert into City(id_country, nameCity) values (6, "Orellana");
insert into City(id_country, nameCity) values (6, "Pastaza");
insert into City(id_country, nameCity) values (6, "Pichincha");
insert into City(id_country, nameCity) values (6, "Santa Elena");
insert into City(id_country, nameCity) values (6, "Santo Domingo de los Tsáchilas");
insert into City(id_country, nameCity) values (6, "Sucumbíos");
insert into City(id_country, nameCity) values (6, "Tungurahua");
insert into City(id_country, nameCity) values (6, "Zamora Chinchipe");
---Guatemala
insert into City(id_country, nameCity) values (7, "Guatemala");
insert into City(id_country, nameCity) values (7, "Baja Verapaz");
insert into City(id_country, nameCity) values (7, "Alta Verapaz");
insert into City(id_country, nameCity) values (7, "El Progreso");
insert into City(id_country, nameCity) values (7, "Izabal");
insert into City(id_country, nameCity) values (7, "Zacapa");
insert into City(id_country, nameCity) values (7, "Chiquimula");
insert into City(id_country, nameCity) values (7, "Jalapa");
insert into City(id_country, nameCity) values (7, "Jutiapa");
insert into City(id_country, nameCity) values (7, "Santa Rosa");
insert into City(id_country, nameCity) values (7, "Sololá");
insert into City(id_country, nameCity) values (7, "Totonicapán");
insert into City(id_country, nameCity) values (7, "Quetzaltenango");
insert into City(id_country, nameCity) values (7, "Suchitepéquez");
insert into City(id_country, nameCity) values (7, "Retalhuleu");
insert into City(id_country, nameCity) values (7, "San Marcos");
insert into City(id_country, nameCity) values (7, "Huehuetenango");
insert into City(id_country, nameCity) values (7, "Quiché");
insert into City(id_country, nameCity) values (7, "Escuintla");
insert into City(id_country, nameCity) values (7, "Sacatepéquez");
insert into City(id_country, nameCity) values (7, "Chimaltenango");
insert into City(id_country, nameCity) values (7, "Petén");
---Haití
insert into City(id_country, nameCity) values (8, "Artibonite");
insert into City(id_country, nameCity) values (8, "Centro");
insert into City(id_country, nameCity) values (8, "Grand'Anse");
insert into City(id_country, nameCity) values (8, "Nippes");
insert into City(id_country, nameCity) values (8, "Norte");
insert into City(id_country, nameCity) values (8, "Nordeste");
insert into City(id_country, nameCity) values (8, "Noroeste");
insert into City(id_country, nameCity) values (8, "Oeste");
insert into City(id_country, nameCity) values (8, "Sur");
insert into City(id_country, nameCity) values (8, "Sudeste");
---Jamaica
insert into City(id_country, nameCity) values (9, "Clarendon");
insert into City(id_country, nameCity) values (9, "Hanover");
insert into City(id_country, nameCity) values (9, "Kingston");
insert into City(id_country, nameCity) values (9, "Manchester");
insert into City(id_country, nameCity) values (9, "Portland");
insert into City(id_country, nameCity) values (9, "Saint Andrew");
insert into City(id_country, nameCity) values (9, "Saint Ann");
insert into City(id_country, nameCity) values (9, "Saint Catherine");
insert into City(id_country, nameCity) values (9, "Saint Elizabeth");
insert into City(id_country, nameCity) values (9, "Saint James");
insert into City(id_country, nameCity) values (9, "Saint Mary");
insert into City(id_country, nameCity) values (9, "Saint Thomas");
insert into City(id_country, nameCity) values (9, "Trelawny");
insert into City(id_country, nameCity) values (9, "Westmoreland");
---Nicaragua
insert into City(id_country, nameCity) values (10, "Atlántico Norte");
insert into City(id_country, nameCity) values (10, "Atlántico Sur");
insert into City(id_country, nameCity) values (10, "Boaco");
insert into City(id_country, nameCity) values (10, "Carazo");
insert into City(id_country, nameCity) values (10, "Chinandega");
insert into City(id_country, nameCity) values (10, "Chontales");
insert into City(id_country, nameCity) values (10, "Estelí");
insert into City(id_country, nameCity) values (10, "Granada");
insert into City(id_country, nameCity) values (10, "Jinotega");
insert into City(id_country, nameCity) values (10, "León");
insert into City(id_country, nameCity) values (10, "Madriz");
insert into City(id_country, nameCity) values (10, "Managua");
insert into City(id_country, nameCity) values (10, "Masaya");
insert into City(id_country, nameCity) values (10, "Matagalpa");
insert into City(id_country, nameCity) values (10, "Nueva Segovia");
insert into City(id_country, nameCity) values (10, "Río San Juan");
insert into City(id_country, nameCity) values (10, "Rivas");
---Paraguay
insert into City(id_country, nameCity) values (11, "Alto Paraguay");
insert into City(id_country, nameCity) values (11, "Alto Paraná");
insert into City(id_country, nameCity) values (11, "Amambay");
insert into City(id_country, nameCity) values (11, "Asunción");
insert into City(id_country, nameCity) values (11, "Boquerón");
insert into City(id_country, nameCity) values (11, "Caaguazú");
insert into City(id_country, nameCity) values (11, "Caazapá");
insert into City(id_country, nameCity) values (11, "Canindeyú");
insert into City(id_country, nameCity) values (11, "Central");
insert into City(id_country, nameCity) values (11, "Concepción");
insert into City(id_country, nameCity) values (11, "Cordillera");
insert into City(id_country, nameCity) values (11, "Guairá");
insert into City(id_country, nameCity) values (11, "Itapúa");
insert into City(id_country, nameCity) values (11, "Misiones");
insert into City(id_country, nameCity) values (11, "Ñeembucú");
insert into City(id_country, nameCity) values (11, "Paraguarí");
insert into City(id_country, nameCity) values (11, "Presidente Hayes");
insert into City(id_country, nameCity) values (11, "San Pedro");
---Surinam
insert into City(id_country, nameCity) values (12, "Brokopondo");
insert into City(id_country, nameCity) values (12, "Commewijne");
insert into City(id_country, nameCity) values (12, "Coronie");
insert into City(id_country, nameCity) values (12, "Marowijne");
insert into City(id_country, nameCity) values (12, "Nickerie");
insert into City(id_country, nameCity) values (12, "Para");
insert into City(id_country, nameCity) values (12, "Paramaribo");
insert into City(id_country, nameCity) values (12, "Saramacca");
insert into City(id_country, nameCity) values (12, "Sipaliwini");
insert into City(id_country, nameCity) values (12, "Wanica");
---Uruguay
insert into City(id_country, nameCity) values (13, "Artigas");
insert into City(id_country, nameCity) values (13, "Canelones");
insert into City(id_country, nameCity) values (13, "Cerro Largo");
insert into City(id_country, nameCity) values (13, "Colonia");
insert into City(id_country, nameCity) values (13, "Durazno");
insert into City(id_country, nameCity) values (13, "Flores");
insert into City(id_country, nameCity) values (13, "Florida");
insert into City(id_country, nameCity) values (13, "Lavalleja");
insert into City(id_country, nameCity) values (13, "Maldonado");
insert into City(id_country, nameCity) values (13, "Montevideo");
insert into City(id_country, nameCity) values (13, "Paysandú");
insert into City(id_country, nameCity) values (13, "Río Negro");
insert into City(id_country, nameCity) values (13, "Rivera");
insert into City(id_country, nameCity) values (13, "Rocha");
insert into City(id_country, nameCity) values (13, "Salto");
insert into City(id_country, nameCity) values (13, "San José");
insert into City(id_country, nameCity) values (13, "Soriano");
insert into City(id_country, nameCity) values (13, "Tacuarembó");
insert into City(id_country, nameCity) values (13, "Treinta y Tres");
---Belice
insert into City(id_country, nameCity) values (14, "Belice");
insert into City(id_country, nameCity) values (14, "Cayo");
insert into City(id_country, nameCity) values (14, "Corozal");
insert into City(id_country, nameCity) values (14, "Orange Walk");
insert into City(id_country, nameCity) values (14, "Stann Creek");
insert into City(id_country, nameCity) values (14, "Toledo");
---Brasil
insert into City(id_country, nameCity) values (15, "Acre");
insert into City(id_country, nameCity) values (15, "Alagoas");
insert into City(id_country, nameCity) values (15, "Amapá");
insert into City(id_country, nameCity) values (15, "Amazonas");
insert into City(id_country, nameCity) values (15, "Bahia");
insert into City(id_country, nameCity) values (15, "Ceará");
insert into City(id_country, nameCity) values (15, "Distrito Federal");
insert into City(id_country, nameCity) values (15, "Espírito Santo");
insert into City(id_country, nameCity) values (15, "Goiás");
insert into City(id_country, nameCity) values (15, "Maranhão");
insert into City(id_country, nameCity) values (15, "Mato Grosso");
insert into City(id_country, nameCity) values (15, "Mato Grosso do Sul");
insert into City(id_country, nameCity) values (15, "Minas Gerais");
insert into City(id_country, nameCity) values (15, "Pará");
insert into City(id_country, nameCity) values (15, "Paraíba");
insert into City(id_country, nameCity) values (15, "Paraná");
insert into City(id_country, nameCity) values (15, "Pernambuco");
insert into City(id_country, nameCity) values (15, "Piauí");
insert into City(id_country, nameCity) values (15, "Rio de Janeiro");
insert into City(id_country, nameCity) values (15, "Rio Grande do Norte");
insert into City(id_country, nameCity) values (15, "Rio Grande do Sul");
insert into City(id_country, nameCity) values (15, "Rondônia");
insert into City(id_country, nameCity) values (15, "Roraima");
insert into City(id_country, nameCity) values (15, "Santa Catarina");
insert into City(id_country, nameCity) values (15, "São Paulo");
insert into City(id_country, nameCity) values (15, "Sergipe");
insert into City(id_country, nameCity) values (15, "Tocantins");
---Chile
insert into City(id_country, nameCity) values (16, "Aysén del General Carlos Ibáñez del Campo");
insert into City(id_country, nameCity) values (16, "Antofagasta");
insert into City(id_country, nameCity) values (16, "La Araucanía");
insert into City(id_country, nameCity) values (16, "Arica y Parinacota");
insert into City(id_country, nameCity) values (16, "Atacama");
insert into City(id_country, nameCity) values (16, "Bio Bio");
insert into City(id_country, nameCity) values (16, "Coquimbo");
insert into City(id_country, nameCity) values (16, "Los Ríos");
insert into City(id_country, nameCity) values (16, "General Libertador Bernardo O'Higgins");
insert into City(id_country, nameCity) values (16, "Los Lagos");
insert into City(id_country, nameCity) values (16, "Magallanes y de la Antártica Chilena");
insert into City(id_country, nameCity) values (16, "Maule");
insert into City(id_country, nameCity) values (16, "Ñuble");
insert into City(id_country, nameCity) values (16, "Santiago");
insert into City(id_country, nameCity) values (16, "Tarapacá");
insert into City(id_country, nameCity) values (16, "Valparaíso");
---Republica dominicana
insert into City(id_country, nameCity) values (17, "Azua");
insert into City(id_country, nameCity) values (17, "Baoruco");
insert into City(id_country, nameCity) values (17, "Barahona");
insert into City(id_country, nameCity) values (17, "Dajabón");
insert into City(id_country, nameCity) values (17, "Duarte");
insert into City(id_country, nameCity) values (17, "El Seibo");
insert into City(id_country, nameCity) values (17, "Elías Piña");
insert into City(id_country, nameCity) values (17, "Espaillat");
insert into City(id_country, nameCity) values (17, "Hato Mayor");
insert into City(id_country, nameCity) values (17, "Hermanas Mirabal");
insert into City(id_country, nameCity) values (17, "Independencia");
insert into City(id_country, nameCity) values (17, "La Altagracia");
insert into City(id_country, nameCity) values (17, "La Romana");
insert into City(id_country, nameCity) values (17, "La Vega");
insert into City(id_country, nameCity) values (17, "María Trinidad Sánchez");
insert into City(id_country, nameCity) values (17, "Monseñor Nouel");
insert into City(id_country, nameCity) values (17, "Monte Cristi");
insert into City(id_country, nameCity) values (17, "Monte Plata");
insert into City(id_country, nameCity) values (17, "Pedernales");
insert into City(id_country, nameCity) values (17, "Peravia");
insert into City(id_country, nameCity) values (17, "Puerto Plata");
insert into City(id_country, nameCity) values (17, "Samaná");
insert into City(id_country, nameCity) values (17, "San Cristóbal");
insert into City(id_country, nameCity) values (17, "San José de Ocoa");
insert into City(id_country, nameCity) values (17, "San Juan");
insert into City(id_country, nameCity) values (17, "San Pedro de Macorís");
insert into City(id_country, nameCity) values (17, "Sánchez Ramírez");
insert into City(id_country, nameCity) values (17, "Santiago");
insert into City(id_country, nameCity) values (17, "Santiago Rodríguez");
insert into City(id_country, nameCity) values (17, "Santo Domingo");
insert into City(id_country, nameCity) values (17, "Valverde");
---El salvador
insert into City(id_country, nameCity) values (18, "Ahuachapán");
insert into City(id_country, nameCity) values (18, "Cabañas");
insert into City(id_country, nameCity) values (18, "Chalatenango");
insert into City(id_country, nameCity) values (18, "Cuscatlán");
insert into City(id_country, nameCity) values (18, "La Libertad");
insert into City(id_country, nameCity) values (18, "La Paz");
insert into City(id_country, nameCity) values (18, "La Unión");
insert into City(id_country, nameCity) values (18, "Morazán");
insert into City(id_country, nameCity) values (18, "San Miguel");
insert into City(id_country, nameCity) values (18, "San Salvador");
insert into City(id_country, nameCity) values (18, "San Vicente");
insert into City(id_country, nameCity) values (18, "Santa Ana");
insert into City(id_country, nameCity) values (18, "Sonsonate");
insert into City(id_country, nameCity) values (18, "Usulután");
---Guyana
insert into City(id_country, nameCity) values (19, "Barima-Waini");
insert into City(id_country, nameCity) values (19, "Berbice Oriental-Corentyne");
insert into City(id_country, nameCity) values (19, "Cuyuni-Mazaruni");
insert into City(id_country, nameCity) values (19, "Demerara-Mahaica");
insert into City(id_country, nameCity) values (19, "Alto Demerara-Berbice");
insert into City(id_country, nameCity) values (19, "Alto Takutu-Alto Esequibo");
insert into City(id_country, nameCity) values (19, "Islas del Esequibo-Demerara Occidental");
insert into City(id_country, nameCity) values (19, "Mahaica-Berbice");
insert into City(id_country, nameCity) values (19, "Pomeroon-Supenaam");
insert into City(id_country, nameCity) values (19, "Potaro-Siparuni");
---Honduras
insert into City(id_country, nameCity) values (20, "Atlántida");
insert into City(id_country, nameCity) values (20, "Choluteca");
insert into City(id_country, nameCity) values (20, "Colón");
insert into City(id_country, nameCity) values (20, "Comayagua");
insert into City(id_country, nameCity) values (20, "Copán");
insert into City(id_country, nameCity) values (20, "Cortés");
insert into City(id_country, nameCity) values (20, "El Paraíso");
insert into City(id_country, nameCity) values (20, "Francisco Morazán");
insert into City(id_country, nameCity) values (20, "Gracias a Dios");
insert into City(id_country, nameCity) values (20, "Intibucá");
insert into City(id_country, nameCity) values (20, "Islas de la Bahía");
insert into City(id_country, nameCity) values (20, "La Paz");
insert into City(id_country, nameCity) values (20, "Lempira");
insert into City(id_country, nameCity) values (20, "Ocotepeque");
insert into City(id_country, nameCity) values (20, "Olancho");
insert into City(id_country, nameCity) values (20, "Santa Bárbara");
insert into City(id_country, nameCity) values (20, "Valle");
insert into City(id_country, nameCity) values (20, "Yoro");
---México
insert into City(id_country, nameCity) values (21, "Aguascalientes");
insert into City(id_country, nameCity) values (21, "Baja California");
insert into City(id_country, nameCity) values (21, "Baja California Sur");
insert into City(id_country, nameCity) values (21, "Campeche");
insert into City(id_country, nameCity) values (21, "Chiapas");
insert into City(id_country, nameCity) values (21, "Chihuahua");
insert into City(id_country, nameCity) values (21, "Distrito Federal");
insert into City(id_country, nameCity) values (21, "Coahuila");
insert into City(id_country, nameCity) values (21, "Colima");
insert into City(id_country, nameCity) values (21, "Durango");
insert into City(id_country, nameCity) values (21, "Guanajuato");
insert into City(id_country, nameCity) values (21, "Guerrero");
insert into City(id_country, nameCity) values (21, "Hidalgo");
insert into City(id_country, nameCity) values (21, "Jalisco");
insert into City(id_country, nameCity) values (21, "México");
insert into City(id_country, nameCity) values (21, "Michoacán");
insert into City(id_country, nameCity) values (21, "Morelos");
insert into City(id_country, nameCity) values (21, "Nayarit");
insert into City(id_country, nameCity) values (21, "Nuevo León");
insert into City(id_country, nameCity) values (21, "Oaxaca");
insert into City(id_country, nameCity) values (21, "Puebla");
insert into City(id_country, nameCity) values (21, "Querétaro");
insert into City(id_country, nameCity) values (21, "Quintana Roo");
insert into City(id_country, nameCity) values (21, "San Luis Potosí");
insert into City(id_country, nameCity) values (21, "Sinaloa");
insert into City(id_country, nameCity) values (21, "Sonora");
insert into City(id_country, nameCity) values (21, "Tabasco");
insert into City(id_country, nameCity) values (21, "Tamaulipas");
insert into City(id_country, nameCity) values (21, "Tlaxcala");
insert into City(id_country, nameCity) values (21, "Veracruz de Ignacio de la Llave");
insert into City(id_country, nameCity) values (21, "Yucatán");
insert into City(id_country, nameCity) values (21, "Zacatecas");
---Panamá
insert into City(id_country, nameCity) values (22, "Bocas del Toro");
insert into City(id_country, nameCity) values (22, "Chiriquí");
insert into City(id_country, nameCity) values (22, "Coclé");
insert into City(id_country, nameCity) values (22, "Colón");
insert into City(id_country, nameCity) values (22, "Darién");
insert into City(id_country, nameCity) values (22, "Emberá-Wounaan");
insert into City(id_country, nameCity) values (22, "Guna Yala");
insert into City(id_country, nameCity) values (22, "Herrera");
insert into City(id_country, nameCity) values (22, "Los Santos");
insert into City(id_country, nameCity) values (22, "Ngäbe-Buglé");
insert into City(id_country, nameCity) values (22, "Panamá");
insert into City(id_country, nameCity) values (22, "Panamá Oeste");
insert into City(id_country, nameCity) values (22, "Veraguas");
---Perú
insert into City(id_country, nameCity) values (23, "Amazonas");
insert into City(id_country, nameCity) values (23, "Áncash");
insert into City(id_country, nameCity) values (23, "Apurímac");
insert into City(id_country, nameCity) values (23, "Arequipa");
insert into City(id_country, nameCity) values (23, "Ayacucho");
insert into City(id_country, nameCity) values (23, "Cajamarca");
insert into City(id_country, nameCity) values (23, "Callao");
insert into City(id_country, nameCity) values (23, "Cusco");
insert into City(id_country, nameCity) values (23, "Huancavelica");
insert into City(id_country, nameCity) values (23, "Huánuco");
insert into City(id_country, nameCity) values (23, "Ica");
insert into City(id_country, nameCity) values (23, "Junín");
insert into City(id_country, nameCity) values (23, "La Libertad");
insert into City(id_country, nameCity) values (23, "Lambayeque");
insert into City(id_country, nameCity) values (23, "Lima");
insert into City(id_country, nameCity) values (23, "Loreto");
insert into City(id_country, nameCity) values (23, "Madre de Dios");
insert into City(id_country, nameCity) values (23, "Moquegua");
insert into City(id_country, nameCity) values (23, "Pasco");
insert into City(id_country, nameCity) values (23, "Piura");
insert into City(id_country, nameCity) values (23, "Puno");
insert into City(id_country, nameCity) values (23, "San Martín");
insert into City(id_country, nameCity) values (23, "Tacna");
insert into City(id_country, nameCity) values (23, "Tumbes");
insert into City(id_country, nameCity) values (23, "Ucayali");
---Estados Unidos
insert into City(id_country, nameCity) values (24, "Alabama");
insert into City(id_country, nameCity) values (24, "Alaska");
insert into City(id_country, nameCity) values (24, "Arizona");
insert into City(id_country, nameCity) values (24, "Arkansas");
insert into City(id_country, nameCity) values (24, "California");
insert into City(id_country, nameCity) values (24, "California del Norte");
insert into City(id_country, nameCity) values (24, "California del Sur");
insert into City(id_country, nameCity) values (24, "Colorado");
insert into City(id_country, nameCity) values (24, "Columbia");
insert into City(id_country, nameCity) values (24, "Connecticut");
insert into City(id_country, nameCity) values (24, "Dakota del Norte");
insert into City(id_country, nameCity) values (24, "Dakota del Sur");
insert into City(id_country, nameCity) values (24, "Delaware");
insert into City(id_country, nameCity) values (24, "Florida");
insert into City(id_country, nameCity) values (24, "Georgia");
insert into City(id_country, nameCity) values (24, "Hawái");
insert into City(id_country, nameCity) values (24, "Idaho");
insert into City(id_country, nameCity) values (24, "Illinois");
insert into City(id_country, nameCity) values (24, "Indiana");
insert into City(id_country, nameCity) values (24, "Iowa");
insert into City(id_country, nameCity) values (24, "Kansas");
insert into City(id_country, nameCity) values (24, "Kentucky");
insert into City(id_country, nameCity) values (24, "Louisiana");
insert into City(id_country, nameCity) values (24, "Maine");
insert into City(id_country, nameCity) values (24, "Maryland");
insert into City(id_country, nameCity) values (24, "Massachusetts");
insert into City(id_country, nameCity) values (24, "Michigan");
insert into City(id_country, nameCity) values (24, "Minnesota");
insert into City(id_country, nameCity) values (24, "Mississippi");
insert into City(id_country, nameCity) values (24, "Missouri");
insert into City(id_country, nameCity) values (24, "Montana");
insert into City(id_country, nameCity) values (24, "Nebraska");
insert into City(id_country, nameCity) values (24, "Nevada");
insert into City(id_country, nameCity) values (24, "Nuevo Hampshire");
insert into City(id_country, nameCity) values (24, "Nueva Jersey");
insert into City(id_country, nameCity) values (24, "Nuevo Mexico");
insert into City(id_country, nameCity) values (24, "Nueva York");
insert into City(id_country, nameCity) values (24, "Ohio");
insert into City(id_country, nameCity) values (24, "Oklahoma");
insert into City(id_country, nameCity) values (24, "Oregon");
insert into City(id_country, nameCity) values (24, "Pensilvania");
insert into City(id_country, nameCity) values (24, "Rhode Island");
insert into City(id_country, nameCity) values (24, "Tennessee");
insert into City(id_country, nameCity) values (24, "Texas");
insert into City(id_country, nameCity) values (24, "Utah");
insert into City(id_country, nameCity) values (24, "Vermont");
insert into City(id_country, nameCity) values (24, "Virginia");
insert into City(id_country, nameCity) values (24, "Virginia Occidental");
insert into City(id_country, nameCity) values (24, "Washington");
insert into City(id_country, nameCity) values (24, "Wisconsin");
insert into City(id_country, nameCity) values (24, "Wyoming");
---Venezuela
insert into City(id_country, nameCity) values (25, "Amazonas");
insert into City(id_country, nameCity) values (25, "Anzoátegui");
insert into City(id_country, nameCity) values (25, "Apure");
insert into City(id_country, nameCity) values (25, "Aragua");
insert into City(id_country, nameCity) values (25, "Barinas");
insert into City(id_country, nameCity) values (25, "Bolívar");
insert into City(id_country, nameCity) values (25, "Carabobo");
insert into City(id_country, nameCity) values (25, "Cojedes");
insert into City(id_country, nameCity) values (25, "Delta Amacuro");
insert into City(id_country, nameCity) values (25, "Dependencias Federales");
insert into City(id_country, nameCity) values (25, "Distrito Metropolitano de Caracas");
insert into City(id_country, nameCity) values (25, "Falcón");
insert into City(id_country, nameCity) values (25, "Guárico");
insert into City(id_country, nameCity) values (25, "Lara");
insert into City(id_country, nameCity) values (25, "Mérida");
insert into City(id_country, nameCity) values (25, "Miranda");
insert into City(id_country, nameCity) values (25, "Monagas");
insert into City(id_country, nameCity) values (25, "Nueva Esparta");
insert into City(id_country, nameCity) values (25, "Portuguesa");
insert into City(id_country, nameCity) values (25, "Sucre");
insert into City(id_country, nameCity) values (25, "Táchira");
insert into City(id_country, nameCity) values (25, "Trujillo");
insert into City(id_country, nameCity) values (25, "Vargas");
insert into City(id_country, nameCity) values (25, "Yaracuy");
insert into City(id_country, nameCity) values (25, "Zulia");



/***********EUROPA********************/
---Albania
insert into City(id_country, nameCity) values (26, "Berat");
insert into City(id_country, nameCity) values (26, "Dibër");
insert into City(id_country, nameCity) values (26, "Durrës");
insert into City(id_country, nameCity) values (26, "Elbasan");
insert into City(id_country, nameCity) values (26, "Fier");
insert into City(id_country, nameCity) values (26, "Gjirokastër");
insert into City(id_country, nameCity) values (26, "Korçë");
insert into City(id_country, nameCity) values (26, "Kukës");
insert into City(id_country, nameCity) values (26, "Lezhë");
insert into City(id_country, nameCity) values (26, "Shkodër");
insert into City(id_country, nameCity) values (26, "Tiranë");
insert into City(id_country, nameCity) values (26, "Vlorë");
---Austria
insert into City(id_country, nameCity) values (27, "Burgenland");
insert into City(id_country, nameCity) values (27, "Carintia");
insert into City(id_country, nameCity) values (27, "Baja Austria");
insert into City(id_country, nameCity) values (27, "Alta Austria");
insert into City(id_country, nameCity) values (27, "Salzburgo");
insert into City(id_country, nameCity) values (27, "Estiria");
insert into City(id_country, nameCity) values (27, "Tirol");
insert into City(id_country, nameCity) values (27, "Vorarlberg");
insert into City(id_country, nameCity) values (27, "Viena");
---Bosnia y Herzegovina
insert into City(id_country, nameCity) values (28, "Distrito de Brcko");
insert into City(id_country, nameCity) values (28, "Federación de Bosnia y Herzegovina");
insert into City(id_country, nameCity) values (28, "República Srpska");
---Croacia
insert into City(id_country, nameCity) values (29, "Bjelovar-Bilogora");
insert into City(id_country, nameCity) values (29, "Brod-Posavina");
insert into City(id_country, nameCity) values (29, "Dubrovnik-Neretva");
insert into City(id_country, nameCity) values (29, "Istria");
insert into City(id_country, nameCity) values (29, "Karlovac");
insert into City(id_country, nameCity) values (29, "Koprivnica-Križevci");
insert into City(id_country, nameCity) values (29, "Krapina-Zagorje");
insert into City(id_country, nameCity) values (29, "Lika-Senj");
insert into City(id_country, nameCity) values (29, "Međimurje");
insert into City(id_country, nameCity) values (29, "Osijek-Baranja");
insert into City(id_country, nameCity) values (29, "Požega-Eslavonia");
insert into City(id_country, nameCity) values (29, "Primorje-Gorski Kotar");
insert into City(id_country, nameCity) values (29, "Šibenik-Knin");
insert into City(id_country, nameCity) values (29, "Sisak-Moslavina");
insert into City(id_country, nameCity) values (29, "Split-Dalmacia");
insert into City(id_country, nameCity) values (29, "Varaždin");
insert into City(id_country, nameCity) values (29, "Virovitica-Podravina");
insert into City(id_country, nameCity) values (29, "Vukovar-Sirmia");
insert into City(id_country, nameCity) values (29, "Zadar");
insert into City(id_country, nameCity) values (29, "Zagreb");
---Dinamarca
insert into City(id_country, nameCity) values (30, "Syddanmark");
insert into City(id_country, nameCity) values (30, "Hovedstaden");
insert into City(id_country, nameCity) values (30, "Midtjylland");
insert into City(id_country, nameCity) values (30, "Nordjylland");
insert into City(id_country, nameCity) values (30, "Region Sjælland");
---Francia
insert into City(id_country, nameCity) values (31, "Auvernia-Ródano-Alpes");
insert into City(id_country, nameCity) values (31, "Borgoña-Franco Condado");
insert into City(id_country, nameCity) values (31, "Bretaña");
insert into City(id_country, nameCity) values (31, "Centro-Valle de Loira");
insert into City(id_country, nameCity) values (31, "Colectividad de ultramar");
insert into City(id_country, nameCity) values (31, "Corcega");
insert into City(id_country, nameCity) values (31, "Gran Este");
insert into City(id_country, nameCity) values (31, "Hauts-de-France");
insert into City(id_country, nameCity) values (31, "Isla de Francia");
insert into City(id_country, nameCity) values (31, "Normandía");
insert into City(id_country, nameCity) values (31, "Nueva Aquitania");
insert into City(id_country, nameCity) values (31, "Occitania");
insert into City(id_country, nameCity) values (31, "Países del Loira");
insert into City(id_country, nameCity) values (31, "Provenza-Alpes-Costa Azul");
---Grecia
insert into City(id_country, nameCity) values (32, "Ática");
insert into City(id_country, nameCity) values (32, "Creta");
insert into City(id_country, nameCity) values (32, "Egeo Meridional");
insert into City(id_country, nameCity) values (32, "Egeo Septentrional");
insert into City(id_country, nameCity) values (32, "Epiro");
insert into City(id_country, nameCity) values (32, "Grecia Central");
insert into City(id_country, nameCity) values (32, "Grecia Occidental");
insert into City(id_country, nameCity) values (32, "Islas Jónicas");
insert into City(id_country, nameCity) values (32, "Macedonia Central");
insert into City(id_country, nameCity) values (32, "Macedonia Occidental");
insert into City(id_country, nameCity) values (32, "Macedonia Oriental y Tracia");
insert into City(id_country, nameCity) values (32, "Monte Athos");
insert into City(id_country, nameCity) values (32, "Peloponeso");
insert into City(id_country, nameCity) values (32, "Tesalia");
---Hungría
insert into City(id_country, nameCity) values (33, "Bács-Kiskun");
insert into City(id_country, nameCity) values (33, "Baranya");
insert into City(id_country, nameCity) values (33, "Békés");
insert into City(id_country, nameCity) values (33, "Borsod-Abaúj-Zemplén");
insert into City(id_country, nameCity) values (33, "Budapest");
insert into City(id_country, nameCity) values (33, "Csongrád");
insert into City(id_country, nameCity) values (33, "Fejér");
insert into City(id_country, nameCity) values (33, "Győr-Moson-Sopron");
insert into City(id_country, nameCity) values (33, "Hajdú-Bihar");
insert into City(id_country, nameCity) values (33, "Heves");
insert into City(id_country, nameCity) values (33, "Jász-Nagykun-Szolnok");
insert into City(id_country, nameCity) values (33, "Komárom-Esztergom");
insert into City(id_country, nameCity) values (33, "Nógrád");
insert into City(id_country, nameCity) values (33, "Pest");
insert into City(id_country, nameCity) values (33, "Somogy");
insert into City(id_country, nameCity) values (33, "Szabolcs-Szatmár-Bereg");
insert into City(id_country, nameCity) values (33, "Tolna");
insert into City(id_country, nameCity) values (33, "Vas");
insert into City(id_country, nameCity) values (33, "Veszprém");
insert into City(id_country, nameCity) values (33, "Zala");
---Irlanda
insert into City(id_country, nameCity) values (34, "Carlow");
insert into City(id_country, nameCity) values (34, "Cavan");
insert into City(id_country, nameCity) values (34, "Clare");
insert into City(id_country, nameCity) values (34, "Cork");
insert into City(id_country, nameCity) values (34, "Donegal");
insert into City(id_country, nameCity) values (34, "Dublín");
insert into City(id_country, nameCity) values (34, "Dublín Sur");
insert into City(id_country, nameCity) values (34, "Dún Laoghaire-Rathdown");
insert into City(id_country, nameCity) values (34, "Fingal");
insert into City(id_country, nameCity) values (34, "Galway");
insert into City(id_country, nameCity) values (34, "Kerry");
insert into City(id_country, nameCity) values (34, "Kildare");
insert into City(id_country, nameCity) values (34, "Kilkenny");
insert into City(id_country, nameCity) values (34, "Laois");
insert into City(id_country, nameCity) values (34, "Leitrim");
insert into City(id_country, nameCity) values (34, "Limerick");
insert into City(id_country, nameCity) values (34, "Longford");
insert into City(id_country, nameCity) values (34, "Louth");
insert into City(id_country, nameCity) values (34, "Mayo");
insert into City(id_country, nameCity) values (34, "Meath");
insert into City(id_country, nameCity) values (34, "Monaghan");
insert into City(id_country, nameCity) values (34, "Offaly");
insert into City(id_country, nameCity) values (34, "Roscommon");
insert into City(id_country, nameCity) values (34, "Sligo");
insert into City(id_country, nameCity) values (34, "Tipperary");
insert into City(id_country, nameCity) values (34, "Waterford");
insert into City(id_country, nameCity) values (34, "Westmeath");
insert into City(id_country, nameCity) values (34, "Wexford");
insert into City(id_country, nameCity) values (34, "Wicklow");
---Letonia
insert into City(id_country, nameCity) values (35, "Vidzeme");
insert into City(id_country, nameCity) values (35, "Latgale");
insert into City(id_country, nameCity) values (35, "Kurzeme");
insert into City(id_country, nameCity) values (35, "Zemgale");
insert into City(id_country, nameCity) values (35, "Riga");
---Lituania
insert into City(id_country, nameCity) values (36, "Alytus");
insert into City(id_country, nameCity) values (36, "Kaunas");
insert into City(id_country, nameCity) values (36, "Klaipeda");
insert into City(id_country, nameCity) values (36, "Marijampole");
insert into City(id_country, nameCity) values (36, "Panevezys");
insert into City(id_country, nameCity) values (36, "Siauliai");
insert into City(id_country, nameCity) values (36, "Taurage");
insert into City(id_country, nameCity) values (36, "Telsiai");
insert into City(id_country, nameCity) values (36, "Utena");
insert into City(id_country, nameCity) values (36, "Vilna");
---Macedonia del Norte
insert into City(id_country, nameCity) values (37, "Este");
insert into City(id_country, nameCity) values (37, "Noreste");
insert into City(id_country, nameCity) values (37, "Pelagonia");
insert into City(id_country, nameCity) values (37, "Polog");
insert into City(id_country, nameCity) values (37, "Skopje");
insert into City(id_country, nameCity) values (37, "Sudeste");
insert into City(id_country, nameCity) values (37, "Sudoeste");
insert into City(id_country, nameCity) values (37, "Vardar");
---Mónaco
insert into City(id_country, nameCity) values (38, "Mónaco");
---Noruega
insert into City(id_country, nameCity) values (39, "Agder");
insert into City(id_country, nameCity) values (39, "Innalandet");
insert into City(id_country, nameCity) values (39, "Møre og Romsdal");
insert into City(id_country, nameCity) values (39, "Nordland");
insert into City(id_country, nameCity) values (39, "Oslo");
insert into City(id_country, nameCity) values (39, "Rogaland");
insert into City(id_country, nameCity) values (39, "Troms og Finnmark");
insert into City(id_country, nameCity) values (39, "Trøndelag");
insert into City(id_country, nameCity) values (39, "Vestfold og Telemark");
insert into City(id_country, nameCity) values (39, "Vestland");
insert into City(id_country, nameCity) values (39, "Viken");
---Portugal
insert into City(id_country, nameCity) values (40, "Açores");
insert into City(id_country, nameCity) values (40, "Aveiro");
insert into City(id_country, nameCity) values (40, "Beja");
insert into City(id_country, nameCity) values (40, "Braga");
insert into City(id_country, nameCity) values (40, "Braganza");
insert into City(id_country, nameCity) values (40, "Castelo Branco");
insert into City(id_country, nameCity) values (40, "Coimbra");
insert into City(id_country, nameCity) values (40, "Évora");
insert into City(id_country, nameCity) values (40, "Faro");
insert into City(id_country, nameCity) values (40, "Guarda");
insert into City(id_country, nameCity) values (40, "Leiria");
insert into City(id_country, nameCity) values (40, "Lisboa");
insert into City(id_country, nameCity) values (40, "Madeira");
insert into City(id_country, nameCity) values (40, "Portalegre");
insert into City(id_country, nameCity) values (40, "Porto");
insert into City(id_country, nameCity) values (40, "Santarém");
insert into City(id_country, nameCity) values (40, "Setúbal");
insert into City(id_country, nameCity) values (40, "Viana do Castelo");
insert into City(id_country, nameCity) values (40, "Vila Real");
insert into City(id_country, nameCity) values (40, "Viseu");
---Rusia
insert into City(id_country, nameCity) values (41, "Adigueya");
insert into City(id_country, nameCity) values (41, "Krai de Altái");
insert into City(id_country, nameCity) values (41, "República de Atái");
insert into City(id_country, nameCity) values (41, "Amur");
insert into City(id_country, nameCity) values (41, "Arjángelsk");
insert into City(id_country, nameCity) values (41, "Astracán");
insert into City(id_country, nameCity) values (41, "Bashkortostán");
insert into City(id_country, nameCity) values (41, "Bélgorod");
insert into City(id_country, nameCity) values (41, "Buriatia");
insert into City(id_country, nameCity) values (41, "Briansk");
insert into City(id_country, nameCity) values (41, "Carelia");
insert into City(id_country, nameCity) values (41, "Daguestán");
insert into City(id_country, nameCity) values (41, "Yamalia-Nenetsia");
insert into City(id_country, nameCity) values (41, "Yoroslavl");
insert into City(id_country, nameCity) values (41, "Ingusetia");
insert into City(id_country, nameCity) values (41, "Irkutsk");
insert into City(id_country, nameCity) values (41, "Ivánovo");
insert into City(id_country, nameCity) values (41, "Kabardia-Balkaria");
insert into City(id_country, nameCity) values (41, "Kaliningrado");
insert into City(id_country, nameCity) values (41, "Kalmukia");
insert into City(id_country, nameCity) values (41, "Kaluga");
insert into City(id_country, nameCity) values (41, "Kamchatka");
insert into City(id_country, nameCity) values (41, "Karachay-Circasia");
insert into City(id_country, nameCity) values (41, "Kémerovo");
insert into City(id_country, nameCity) values (41, "Jabárovsk");
insert into City(id_country, nameCity) values (41, "Khakasiya");
insert into City(id_country, nameCity) values (41, "Janti-Mansi");
insert into City(id_country, nameCity) values (41, "Kírov");
insert into City(id_country, nameCity) values (41, "Komi");
insert into City(id_country, nameCity) values (41, "Kostromá");
insert into City(id_country, nameCity) values (41, "Kurgán");
insert into City(id_country, nameCity) values (41, "Kursk");
insert into City(id_country, nameCity) values (41, "Leningrado");
insert into City(id_country, nameCity) values (41, "Lipetsk");
insert into City(id_country, nameCity) values (41, "Magadan");
insert into City(id_country, nameCity) values (41, "Mari-El");
insert into City(id_country, nameCity) values (41, "Mordovia");
insert into City(id_country, nameCity) values (41, "Moscú");
insert into City(id_country, nameCity) values (41, "Óblast de Moscú");
insert into City(id_country, nameCity) values (41, "Múrmansk");
insert into City(id_country, nameCity) values (41, "Nenetsia");
insert into City(id_country, nameCity) values (41, "Nizhni Nóvgorod");
insert into City(id_country, nameCity) values (41, "Nóvgorod");
insert into City(id_country, nameCity) values (41, "Novosibirsk");
insert into City(id_country, nameCity) values (41, "Óblast Autonómo Hebreo");
insert into City(id_country, nameCity) values (41, "Omsk");
insert into City(id_country, nameCity) values (41, "Oriol");
insert into City(id_country, nameCity) values (41, "Oremburgo");
insert into City(id_country, nameCity) values (41, "Osetia del Norte - Alania");
insert into City(id_country, nameCity) values (41, "Udmurtia");
insert into City(id_country, nameCity) values (41, "Uliánovsk");
insert into City(id_country, nameCity) values (41, "Penza");
insert into City(id_country, nameCity) values (41, "Perm");
insert into City(id_country, nameCity) values (41, "Primorie");
insert into City(id_country, nameCity) values (41, "Pskov");
insert into City(id_country, nameCity) values (41, "Riazán");
insert into City(id_country, nameCity) values (41, "Rostov");
insert into City(id_country, nameCity) values (41, "San Petersburgo");
insert into City(id_country, nameCity) values (41, "Sajá");
insert into City(id_country, nameCity) values (41, "Sajalín");
insert into City(id_country, nameCity) values (41, "Samara");
insert into City(id_country, nameCity) values (41, "Sarátov");
insert into City(id_country, nameCity) values (41, "Smolensk");
insert into City(id_country, nameCity) values (41, "Stávropol");
insert into City(id_country, nameCity) values (41, "Sverdlovsk");
insert into City(id_country, nameCity) values (41, "Tambov");
insert into City(id_country, nameCity) values (41, "Tartaristán");
insert into City(id_country, nameCity) values (41, "Cheliábinsk");
insert into City(id_country, nameCity) values (41, "Chechenia");
insert into City(id_country, nameCity) values (41, "Chukotka");
insert into City(id_country, nameCity) values (41, "Chuvasia");
insert into City(id_country, nameCity) values (41, "Tiumén");
insert into City(id_country, nameCity) values (41, "Tomsk");
insert into City(id_country, nameCity) values (41, "Tula");
insert into City(id_country, nameCity) values (41, "Tuvá");
insert into City(id_country, nameCity) values (41, "Zabaikalie");
insert into City(id_country, nameCity) values (41, "Tver");
insert into City(id_country, nameCity) values (41, "Vladimir");
insert into City(id_country, nameCity) values (41, "Volgogrado");
insert into City(id_country, nameCity) values (41, "Vólogda");
insert into City(id_country, nameCity) values (41, "Vorónezh");
---Eslovaquia
insert into City(id_country, nameCity) values (42, "Banská Bystrica");
insert into City(id_country, nameCity) values (42, "Bratislava");
insert into City(id_country, nameCity) values (42, "Košice");
insert into City(id_country, nameCity) values (42, "Nitra");
insert into City(id_country, nameCity) values (42, "Prešov");
insert into City(id_country, nameCity) values (42, "Trenčín");
insert into City(id_country, nameCity) values (42, "Trnava");
insert into City(id_country, nameCity) values (42, "Žilina");
---España
insert into City(id_country, nameCity) values (43, "Andalucía");
insert into City(id_country, nameCity) values (43, "Aragón");
insert into City(id_country, nameCity) values (43, "Principado de Asturias");
insert into City(id_country, nameCity) values (43, "Cantabria");
insert into City(id_country, nameCity) values (43, "Castilla y León");
insert into City(id_country, nameCity) values (43, "Castilla-La Mancha");
insert into City(id_country, nameCity) values (43, "Cataluña");
insert into City(id_country, nameCity) values (43, "Ceuta");
insert into City(id_country, nameCity) values (43, "Extremadura");
insert into City(id_country, nameCity) values (43, "Galicia");
insert into City(id_country, nameCity) values (43, "Baleares");
insert into City(id_country, nameCity) values (43, "Canarias");
insert into City(id_country, nameCity) values (43, "La Rioja");
insert into City(id_country, nameCity) values (43, "Madrid");
insert into City(id_country, nameCity) values (43, "Melilla");
insert into City(id_country, nameCity) values (43, "Murcia");
insert into City(id_country, nameCity) values (43, "Navarra");
insert into City(id_country, nameCity) values (43, "País Vasco");
insert into City(id_country, nameCity) values (43, "Valenciana");
---Suiza
insert into City(id_country, nameCity) values (44, "Appenzell Rodas Exteriores");
insert into City(id_country, nameCity) values (44, "Appenzell Rodas Interiores");
insert into City(id_country, nameCity) values (44, "Argovia");
insert into City(id_country, nameCity) values (44, "Basilea-Campiña");
insert into City(id_country, nameCity) values (44, "Basilea-Ciudad");
insert into City(id_country, nameCity) values (44, "Berna");
insert into City(id_country, nameCity) values (44, "Friburgo");
insert into City(id_country, nameCity) values (44, "Ginebra");
insert into City(id_country, nameCity) values (44, "Glaris");
insert into City(id_country, nameCity) values (44, "Grisones");
insert into City(id_country, nameCity) values (44, "Jura");
insert into City(id_country, nameCity) values (44, "Lucerna");
insert into City(id_country, nameCity) values (44, "Neuchâtel");
insert into City(id_country, nameCity) values (44, "Nidwalden");
insert into City(id_country, nameCity) values (44, "Obwalden");
insert into City(id_country, nameCity) values (44, "San Galo");
insert into City(id_country, nameCity) values (44, "Schaffhausen");
insert into City(id_country, nameCity) values (44, "Schwyz");
insert into City(id_country, nameCity) values (44, "Soleura");
insert into City(id_country, nameCity) values (44, "Tesino");
insert into City(id_country, nameCity) values (44, "Turgovia");
insert into City(id_country, nameCity) values (44, "Uri");
insert into City(id_country, nameCity) values (44, "Valais");
insert into City(id_country, nameCity) values (44, "Vaud");
insert into City(id_country, nameCity) values (44, "Zug");
insert into City(id_country, nameCity) values (44, "Zürich");
---Estonia
insert into City(id_country, nameCity) values (45, "Harju");
insert into City(id_country, nameCity) values (45, "Hiiumaa Parish");
insert into City(id_country, nameCity) values (45, "Järva");
insert into City(id_country, nameCity) values (45, "Jõgeva");
insert into City(id_country, nameCity) values (45, "Lääne");
insert into City(id_country, nameCity) values (45, "Lääne-Viru");
insert into City(id_country, nameCity) values (45, "Pärnu");
insert into City(id_country, nameCity) values (45, "Põlva");
insert into City(id_country, nameCity) values (45, "Rapla");
insert into City(id_country, nameCity) values (45, "Saare");
insert into City(id_country, nameCity) values (45, "Tartu");
insert into City(id_country, nameCity) values (45, "Valga");
insert into City(id_country, nameCity) values (45, "Viljandi");
insert into City(id_country, nameCity) values (45, "Võru");
insert into City(id_country, nameCity) values (45, "Ida-Viru");
---Montenegro
insert into City(id_country, nameCity) values (46, "Andrijevica");
insert into City(id_country, nameCity) values (46, "Bar");
insert into City(id_country, nameCity) values (46, "Berane");
insert into City(id_country, nameCity) values (46, "Bijelo Polje");
insert into City(id_country, nameCity) values (46, "Budva");
insert into City(id_country, nameCity) values (46, "Cetinje");
insert into City(id_country, nameCity) values (46, "Danilovgrad");
insert into City(id_country, nameCity) values (46, "Herceg Novi");
insert into City(id_country, nameCity) values (46, "Kolašin");
insert into City(id_country, nameCity) values (46, "Kotor");
insert into City(id_country, nameCity) values (46, "Mojkovac");
insert into City(id_country, nameCity) values (46, "Nikšić");
insert into City(id_country, nameCity) values (46, "Plav");
insert into City(id_country, nameCity) values (46, "Pljevlja");
insert into City(id_country, nameCity) values (46, "Plužine");
insert into City(id_country, nameCity) values (46, "Podgorica");
insert into City(id_country, nameCity) values (46, "Rožaje");
insert into City(id_country, nameCity) values (46, "Šavnik");
insert into City(id_country, nameCity) values (46, "Tivat");
insert into City(id_country, nameCity) values (46, "Ulcinj");
insert into City(id_country, nameCity) values (46, "Žabljak");
---Andorra
insert into City(id_country, nameCity) values (47, "Andorra la Vieja");
insert into City(id_country, nameCity) values (47, "Canillo");
insert into City(id_country, nameCity) values (47, "Encamp");
insert into City(id_country, nameCity) values (47, "Escaldes-Engordany");
insert into City(id_country, nameCity) values (47, "La Massana");
insert into City(id_country, nameCity) values (47, "Ordino");
insert into City(id_country, nameCity) values (47, "Sant Julià de Lòria");
---Bélgica
insert into City(id_country, nameCity) values (48, "Amberes");
insert into City(id_country, nameCity) values (48, "Flandes Oriental");
insert into City(id_country, nameCity) values (48, "Brabante Flamenco");
insert into City(id_country, nameCity) values (48, "Limburgo");
insert into City(id_country, nameCity) values (48, "Flandes Occidental");
insert into City(id_country, nameCity) values (48, "Henao");
insert into City(id_country, nameCity) values (48, "Lieja");
insert into City(id_country, nameCity) values (48, "Luxemburgo");
insert into City(id_country, nameCity) values (48, "Namur");
insert into City(id_country, nameCity) values (48, "Brabante Valón");
---Bulgaria
insert into City(id_country, nameCity) values (49, "Blagoevgrad");
insert into City(id_country, nameCity) values (49, "Burgas");
insert into City(id_country, nameCity) values (49, "Shumen");
insert into City(id_country, nameCity) values (49, "Dobrich");
insert into City(id_country, nameCity) values (49, "Gabrovo");
insert into City(id_country, nameCity) values (49, "Krudzhali");
insert into City(id_country, nameCity) values (49, "Haskovo");
insert into City(id_country, nameCity) values (49, "Kyustendil");
insert into City(id_country, nameCity) values (49, "Lovech");
insert into City(id_country, nameCity) values (49, "Montana");
insert into City(id_country, nameCity) values (49, "Pazardzhik");
insert into City(id_country, nameCity) values (49, "Pernik");
insert into City(id_country, nameCity) values (49, "Pleven");
insert into City(id_country, nameCity) values (49, "Plovdiv");
insert into City(id_country, nameCity) values (49, "Razgrad");
insert into City(id_country, nameCity) values (49, "Ruse");
insert into City(id_country, nameCity) values (49, "Silistra");
insert into City(id_country, nameCity) values (49, "Sliven");
insert into City(id_country, nameCity) values (49, "Smolyan");
insert into City(id_country, nameCity) values (49, "Sofia");
insert into City(id_country, nameCity) values (49, "Sofia-Ciudad");
insert into City(id_country, nameCity) values (49, "Stara Zagora");
insert into City(id_country, nameCity) values (49, "Targovishte");
insert into City(id_country, nameCity) values (49, "Varna");
insert into City(id_country, nameCity) values (49, "Veliko Tarnovo");
insert into City(id_country, nameCity) values (49, "Vidin");
insert into City(id_country, nameCity) values (49, "Vratsa");
insert into City(id_country, nameCity) values (49, "Yambol");
---Chequia
insert into City(id_country, nameCity) values (50, "Bohemia Central");
insert into City(id_country, nameCity) values (50, "Bohemia Meridional");
insert into City(id_country, nameCity) values (50, "Hradec Kralove");
insert into City(id_country, nameCity) values (50, "Karlovy Vary");
insert into City(id_country, nameCity) values (50, "Liberec");
insert into City(id_country, nameCity) values (50, "Moravia Meridional");
insert into City(id_country, nameCity) values (50, "Moravskoslezský");
insert into City(id_country, nameCity) values (50, "Olomouc");
insert into City(id_country, nameCity) values (50, "Pardubice");
insert into City(id_country, nameCity) values (50, "Pilse");
insert into City(id_country, nameCity) values (50, "Praga");
insert into City(id_country, nameCity) values (50, "Ústí nad Labem");
insert into City(id_country, nameCity) values (50, "Vysočina");
insert into City(id_country, nameCity) values (50, "Zlínský");
---Finlandia
insert into City(id_country, nameCity) values (51, "Finlandia Meridional");
insert into City(id_country, nameCity) values (51, "Finlandia Occidental");
insert into City(id_country, nameCity) values (51, "Finlandia Oriental");
insert into City(id_country, nameCity) values (51, "Laponia");
insert into City(id_country, nameCity) values (51, "Oulu");
---Alemania
insert into City(id_country, nameCity) values (52, "Baden-Württemberg");
insert into City(id_country, nameCity) values (52, "Bajo Sajonia");
insert into City(id_country, nameCity) values (52, "Baviera");
insert into City(id_country, nameCity) values (52, "Berlín");
insert into City(id_country, nameCity) values (52, "Brandenburgo");
insert into City(id_country, nameCity) values (52, "Brema");
insert into City(id_country, nameCity) values (52, "Hamburgo");
insert into City(id_country, nameCity) values (52, "Hesse");
insert into City(id_country, nameCity) values (52, "Mecklenburgo-Pomerania Occidental");
insert into City(id_country, nameCity) values (52, "Renania-Westfalia");
insert into City(id_country, nameCity) values (52, "Renania-Palatinado");
insert into City(id_country, nameCity) values (52, "El Sarre");
insert into City(id_country, nameCity) values (52, "Sajonia");
insert into City(id_country, nameCity) values (52, "Sajonia-Anhalt");
insert into City(id_country, nameCity) values (52, "Schleswig-Holstein");
insert into City(id_country, nameCity) values (52, "Turingia");
---Ciudad del Vaticano
insert into City(id_country, nameCity) values (53, "Ciudad del Vaticano");
---Islandia
insert into City(id_country, nameCity) values (54, "Austurland");
insert into City(id_country, nameCity) values (54, "Höfuðborgarsvæði");
insert into City(id_country, nameCity) values (54, "Norðurland eystra");
insert into City(id_country, nameCity) values (54, "Norðurland vestra");
insert into City(id_country, nameCity) values (54, "Suðurland");
insert into City(id_country, nameCity) values (54, "Suðurnes");
insert into City(id_country, nameCity) values (54, "Vestfirðir");
insert into City(id_country, nameCity) values (54, "Vesturland");
---Italia
insert into City(id_country, nameCity) values (55, "Abruzzo");
insert into City(id_country, nameCity) values (55, "Basilicata");
insert into City(id_country, nameCity) values (55, "Calabria");
insert into City(id_country, nameCity) values (55, "Campania");
insert into City(id_country, nameCity) values (55, "Emilia-Romagna");
insert into City(id_country, nameCity) values (55, "Friuli-Venezia Giulia");
insert into City(id_country, nameCity) values (55, "Lazio");
insert into City(id_country, nameCity) values (55, "Liguria");
insert into City(id_country, nameCity) values (55, "Lombardy");
insert into City(id_country, nameCity) values (55, "Marche");
insert into City(id_country, nameCity) values (55, "Molise");
insert into City(id_country, nameCity) values (55, "Umbria");
insert into City(id_country, nameCity) values (55, "Piedmont");
insert into City(id_country, nameCity) values (55, "Apulia");
insert into City(id_country, nameCity) values (55, "Cerdeña");
insert into City(id_country, nameCity) values (55, "Sicily");
insert into City(id_country, nameCity) values (55, "Tuscany");
insert into City(id_country, nameCity) values (55, "Trentino-South Tyrol");
insert into City(id_country, nameCity) values (55, "Aosta Valley");
insert into City(id_country, nameCity) values (55, "Veneto");
---Liechtenstein
insert into City(id_country, nameCity) values (56, "Oberland");
insert into City(id_country, nameCity) values (56, "Unterland");
---Luxemburgo
insert into City(id_country, nameCity) values (57, "Diekirch");
insert into City(id_country, nameCity) values (57, "Grevenmacher");
insert into City(id_country, nameCity) values (57, "Luxembourg");
---Malta
insert into City(id_country, nameCity) values (58, "Gozo");
insert into City(id_country, nameCity) values (58, "Malta");
---Países Bajo
insert into City(id_country, nameCity) values (59, "Brabante Septentrional");
insert into City(id_country, nameCity) values (59, "Drente");
insert into City(id_country, nameCity) values (59, "Flevolanda");
insert into City(id_country, nameCity) values (59, "Frisia");
insert into City(id_country, nameCity) values (59, "Güeldres");
insert into City(id_country, nameCity) values (59, "Groninga");
insert into City(id_country, nameCity) values (59 "Holanda Meridional");
insert into City(id_country, nameCity) values (59, "Holanda Septentrional");
insert into City(id_country, nameCity) values (59, "Limburgo");
insert into City(id_country, nameCity) values (59, "Overijssel");
insert into City(id_country, nameCity) values (59, "Utrecht");
insert into City(id_country, nameCity) values (59, "Zelándia");
---Polonia
insert into City(id_country, nameCity) values (60, "Baja Silesia");
insert into City(id_country, nameCity) values (60, "Subcarpática");
insert into City(id_country, nameCity) values (60, "Cuyavia y Pomerania");
insert into City(id_country, nameCity) values (60, "Gran Polonia");
insert into City(id_country, nameCity) values (60, "Lublin");
insert into City(id_country, nameCity) values (60, "Lubusz");
insert into City(id_country, nameCity) values (60, "Łódź");
insert into City(id_country, nameCity) values (60, "Mazovia");
insert into City(id_country, nameCity) values (60, "Opole");
insert into City(id_country, nameCity) values (60, "Pequeña Polonia");
insert into City(id_country, nameCity) values (60, "Podlaquia");
insert into City(id_country, nameCity) values (60, "Pomerania");
insert into City(id_country, nameCity) values (60, "Pomerania Occidental");
insert into City(id_country, nameCity) values (60, "Santa Cruz");
insert into City(id_country, nameCity) values (60, "Silesia");
insert into City(id_country, nameCity) values (60, "Warmia y Mazuria");
---Rumania
insert into City(id_country, nameCity) values (61, "Arad");
insert into City(id_country, nameCity) values (61, "Alba");
insert into City(id_country, nameCity) values (61, "Argeș");
insert into City(id_country, nameCity) values (61, "Bacău");
insert into City(id_country, nameCity) values (61, "Bihor");
insert into City(id_country, nameCity) values (61, "Bistrița-Năsăud");
insert into City(id_country, nameCity) values (61, "Botoșani");
insert into City(id_country, nameCity) values (61, "Brăila");
insert into City(id_country, nameCity) values (61, "Brașov");
insert into City(id_country, nameCity) values (61, "București");
insert into City(id_country, nameCity) values (61, "Buzău");
insert into City(id_country, nameCity) values (61, "Călărași");
insert into City(id_country, nameCity) values (61, "Caraș-Severin");
insert into City(id_country, nameCity) values (61, "Cluj");
insert into City(id_country, nameCity) values (61, "Constanța");
insert into City(id_country, nameCity) values (61, "Covasna");
insert into City(id_country, nameCity) values (61, "Dâmbovița");
insert into City(id_country, nameCity) values (61, "Dolj");
insert into City(id_country, nameCity) values (61, "Galați");
insert into City(id_country, nameCity) values (61, "Giurgiu");
insert into City(id_country, nameCity) values (61, "Gorj");
insert into City(id_country, nameCity) values (61, "Harghita");
insert into City(id_country, nameCity) values (61, "Hunedoara");
insert into City(id_country, nameCity) values (61, "Ialomița");
insert into City(id_country, nameCity) values (61, "Iași");
insert into City(id_country, nameCity) values (61, "Ilfov");
insert into City(id_country, nameCity) values (61, "Maramureș");
insert into City(id_country, nameCity) values (61, "Mehedinți");
insert into City(id_country, nameCity) values (61, "Mureș");
insert into City(id_country, nameCity) values (61, "Neamț");
insert into City(id_country, nameCity) values (61, "Olt");
insert into City(id_country, nameCity) values (61, "Prahova");
insert into City(id_country, nameCity) values (61, "Satu Mare");
insert into City(id_country, nameCity) values (61, "Sălaj");
insert into City(id_country, nameCity) values (61, "Sibiu");
insert into City(id_country, nameCity) values (61, "Suceava");
insert into City(id_country, nameCity) values (61, "Teleorman");
insert into City(id_country, nameCity) values (61, "Timiș");
insert into City(id_country, nameCity) values (61, "Tulcea");
insert into City(id_country, nameCity) values (61, "Vâlcea");
insert into City(id_country, nameCity) values (61, "Vaslui");
insert into City(id_country, nameCity) values (61, "Vrancea");
---San Marino
insert into City(id_country, nameCity) values (62, "San Marino");
---Eslovenia
insert into City(id_country, nameCity) values (63, "Eslovenia");
---Suecia
insert into City(id_country, nameCity) values (64, "Blekinge");
insert into City(id_country, nameCity) values (64, "Dalarna");
insert into City(id_country, nameCity) values (64, "Gotland");
insert into City(id_country, nameCity) values (64, "Gävleborg");
insert into City(id_country, nameCity) values (64, "Halland");
insert into City(id_country, nameCity) values (64, "Jämtland");
insert into City(id_country, nameCity) values (64, "Jönköping");
insert into City(id_country, nameCity) values (64, "Kalmar");
insert into City(id_country, nameCity) values (64, "Kronoberg");
insert into City(id_country, nameCity) values (64, "Norrbotten");
insert into City(id_country, nameCity) values (64, "Örebro");
insert into City(id_country, nameCity) values (64, "Östergötland");
insert into City(id_country, nameCity) values (64, "Skåne");
insert into City(id_country, nameCity) values (64, "Södermanland");
insert into City(id_country, nameCity) values (64, "Estocolmo");
insert into City(id_country, nameCity) values (64, "Upsala");
insert into City(id_country, nameCity) values (64, "Värmland");
insert into City(id_country, nameCity) values (64, "Västerbotten");
insert into City(id_country, nameCity) values (64, "Västernorrland");
insert into City(id_country, nameCity) values (64, "Västmanland");
insert into City(id_country, nameCity) values (64, "Västra Götaland");
---Inglaterra
insert into City(id_country, nameCity) values (65, "East Midlands");
insert into City(id_country, nameCity) values (65, "East of England");
insert into City(id_country, nameCity) values (65, "London");
insert into City(id_country, nameCity) values (65, "North East England");
insert into City(id_country, nameCity) values (65, "North West England");
insert into City(id_country, nameCity) values (65, "South East England");
insert into City(id_country, nameCity) values (65, "South West England");
insert into City(id_country, nameCity) values (65, "West Midlands");
insert into City(id_country, nameCity) values (65, "Yorkshire and the Humber");
---Gales
insert into City(id_country, nameCity) values (66, "Blaenau Gwent");
insert into City(id_country, nameCity) values (66, "Bridgend");
insert into City(id_country, nameCity) values (66, "Caerphilly");
insert into City(id_country, nameCity) values (66, "Cardiff");
insert into City(id_country, nameCity) values (66, "Carmarthenshire");
insert into City(id_country, nameCity) values (66, "Ceredigion");
insert into City(id_country, nameCity) values (66, "Conwy");
insert into City(id_country, nameCity) values (66, "Denbighshire");
insert into City(id_country, nameCity) values (66, "Flintshire");
insert into City(id_country, nameCity) values (66, "Gwynedd");
insert into City(id_country, nameCity) values (66, "Isle of Anglesey");
insert into City(id_country, nameCity) values (66, "Merthyr Tydfil");
insert into City(id_country, nameCity) values (66, "Monmouthshire");
insert into City(id_country, nameCity) values (66, "Neath Port Talbot");
insert into City(id_country, nameCity) values (66, "Newport");
insert into City(id_country, nameCity) values (66, "Pembrokeshire");
insert into City(id_country, nameCity) values (66, "Powys");
insert into City(id_country, nameCity) values (66, "Rhondda Cynon Taf");
insert into City(id_country, nameCity) values (66, "Swansea");
insert into City(id_country, nameCity) values (66, "Torfaen");
insert into City(id_country, nameCity) values (66, "Vale of Glamorgan");
insert into City(id_country, nameCity) values (66, "Wrexham");
---Escocia
insert into City(id_country, nameCity) values (67, "Aberdeen City");
insert into City(id_country, nameCity) values (67, "Aberdeenshire");
insert into City(id_country, nameCity) values (67, "Angus");
insert into City(id_country, nameCity) values (67, "Argyll and Bute");
insert into City(id_country, nameCity) values (67, "City of Edinburgh");
insert into City(id_country, nameCity) values (67, "Clackmannanshire");
insert into City(id_country, nameCity) values (67, "Dumfries and Galloway");
insert into City(id_country, nameCity) values (67, "Dundee City");
insert into City(id_country, nameCity) values (67, "East Ayrshire");
insert into City(id_country, nameCity) values (67, "East Dunbartonshire");
insert into City(id_country, nameCity) values (67, "East Lothian");
insert into City(id_country, nameCity) values (67, "East Renfrewshire");
insert into City(id_country, nameCity) values (67, "Falkirk");
insert into City(id_country, nameCity) values (67, "Fife");
insert into City(id_country, nameCity) values (67, "Glasgow City");
insert into City(id_country, nameCity) values (67, "Highland");
insert into City(id_country, nameCity) values (67, "Inverclyde");
insert into City(id_country, nameCity) values (67, "Midlothian");
insert into City(id_country, nameCity) values (67, "Moray");
insert into City(id_country, nameCity) values (67, "Na h-Eileanan Siar");
insert into City(id_country, nameCity) values (67, "North Ayrshire");
insert into City(id_country, nameCity) values (67, "North Lanarkshire");
insert into City(id_country, nameCity) values (67, "Orkney Islands");
insert into City(id_country, nameCity) values (67, "Perth and Kinross");
insert into City(id_country, nameCity) values (67, "Renfrewshire");
insert into City(id_country, nameCity) values (67, "Scottish Borders");
insert into City(id_country, nameCity) values (67, "Shetland Islands");
insert into City(id_country, nameCity) values (67, "South Ayrshire");
insert into City(id_country, nameCity) values (67, "South Lanarkshire");
insert into City(id_country, nameCity) values (67, "Stirling");
insert into City(id_country, nameCity) values (67, "West Dunbartonshire");
insert into City(id_country, nameCity) values (67, "West Lothian");
---Serbia
insert into City(id_country, nameCity) values (68, "Belgrade");
insert into City(id_country, nameCity) values (68, "Vojvodina");
insert into City(id_country, nameCity) values (68, "Šumadija and Western Serbia");
insert into City(id_country, nameCity) values (68, "South and Eastern Serbia");
insert into City(id_country, nameCity) values (68, "Kosovo and Metohija");


























































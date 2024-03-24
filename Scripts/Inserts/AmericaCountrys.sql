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

select p.title, count(c.id_product) as total_compras
from CatalogXUser c
inner join Product p
on c.id_product = p.id_product
group by p.title
order by count(c.id_product) desc;
--fetch first 10 rows only;

/*select p.nameProduct, count(c.id_product) as total_compras
from CatalogXUser c
inner join Product p
on c.id_product = p.id_product
group by nameProduct
order by count(c.id_product) desc
fetch first 10 rows only;*/


--Purchases for 3 months
SELECT 'Three months', p.title
FROM User u
INNER JOIN CatalogXUser cxu
ON u.id_user = cxu.id_user
INNER JOIN Product p
ON cxp.id_product = p.id_product
WHERE TRUNC((SYSDATE - history)/30) BETWEEN 0 AND 3
ORDERED BY cxu.history

--Purchases for 6
SELECT 'Three months', p.title
FROM User u
INNER JOIN CatalogXUser cxu
ON u.id_user = cxu.id_user
INNER JOIN Product p
ON cxp.id_product = p.id_product
WHERE TRUNC((SYSDATE - history)/30) BETWEEN 0 AND 6
ORDERED BY cxu.history

--Purchases for 12 months
SELECT 'Three months', p.title
FROM User u
INNER JOIN CatalogXUser cxu
ON u.id_user = cxu.id_user
INNER JOIN Product p
ON cxp.id_product = p.id_product
WHERE TRUNC((SYSDATE - history)/30) BETWEEN 0 AND 12
ORDERED BY cxu.history

--All purchases
SELECT 'Three months', p.title
FROM User u
INNER JOIN CatalogXUser cxu
ON u.id_user = cxu.id_user
INNER JOIN Product p
ON cxp.id_product = p.id_product
--Rank by vistas, necesita interfaz para llevar cuenta de vistas, y de paso quiero validar si esta cuenta se maneja a nivel de BD o interfaz, porque si es BD hay que editar tabla
--Rank by rating D
SELECT idProduct, title, link, duration, trailer, releaseYear, avg_rating
FROM (
    SELECT p.idProduct, p.title, AVG(r.stars) as avg_rating,
           RANK() OVER (ORDER BY AVG(r.stars) DESC) AS ranking
    FROM Product p
    INNER JOIN Review r ON p.idProduct = r.idProduct
    GROUP BY p.idProduct, p.title
)
WHERE ranking <= :N;



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

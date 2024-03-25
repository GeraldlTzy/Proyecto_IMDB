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

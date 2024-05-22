DELIMITER //
# Query for admin
CREATE OR REPLACE PROCEDURE getTopNPurchases(IN N int)
BEGIN
    SELECT top.idProduct, top.title, ph.image, top.total 
    FROM
    Photo ph
    RIGHT JOIN
        (
        SELECT top.idProduct, top.title, top.total
            FROM (
                SELECT p.idProduct, p.title, COUNT(c.idProduct) AS total
                FROM Purchase c
                INNER JOIN Product p ON c.idProduct = p.idProduct
                GROUP BY p.idProduct, p.title
                ORDER BY COUNT(c.idProduct) DESC
            ) top
        LIMIT 2
        ) top
    ON ph.idProduct = top.idProduct
    ORDER BY top.total DESC;    
END;
//
# Queries for users
CREATE OR REPLACE PROCEDURE getPurchasesInLastNMonths(IN pIdUser int unsigned, IN itv int)
BEGIN
	IF itv IS NULL OR itv = 0 THEN
		SELECT pr.idProduct
		FROM purchase pu
		JOIN product pr
		ON pu.idProduct = pr.idProduct
		AND pu.idUser = pIdUser;
	ELSE 
		SELECT pr.idProduct
		FROM purchase pu
		JOIN product pr
		ON pu.idProduct = pr.idProduct
		AND pu.idUser = pIdUser
		WHERE pu.history >= DATE_SUB(NOW(), INTERVAL itv MONTH);
	END IF;
END //

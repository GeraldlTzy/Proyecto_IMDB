# Queries for users
DELIMITER //
CREATE OR REPLACE PROCEDURE getPurchasesInLastNMonths(IN itv int)
BEGIN
	IF itv IS NULL OR itv = 0 THEN
		SELECT pr.idProduct
		FROM purchase pu
		JOIN product pr
		ON pu.idProduct = pr.idProduct;
	ELSE 
		SELECT pr.idProduct
		FROM purchase pu
		JOIN product pr
		ON pu.idProduct = pr.idProduct
		WHERE pu.history >= DATE_SUB(NOW(), INTERVAL itv MONTH);
	END IF;
END //
DELIMITER ;

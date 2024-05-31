/*Create the Job*/
CREATE OR REPLACE TABLE top_products (
    reportDate 			DATE,
    idProduct 			INT,
    rating 				DECIMAL(3, 2),
    PRIMARY KEY (reportDate, idProduct)
);

CREATE OR REPLACE TABLE Params (
	id					int UNSIGNED AUTO_INCREMENT,
	param_name			varchar(50),
	param				int,
	PRIMARY KEY (id)
);

INSERT INTO Params(param_name, param) VALUES ('top_products', 10);
COMMIT;
SELECT * FROM params;

delimiter //
CREATE OR REPLACE EVENT top_products_event
ON SCHEDULE EVERY 1 DAY
STARTS '2024-05-31 05:54:00.000'
ON COMPLETION NOT PRESERVE
ENABLE
DO BEGIN 
		DECLARE top_n int;
		DECLARE query TEXT;
		DELETE FROM top_products;
		SELECT param INTO top_n FROM Params WHERE param_name = 'top_products';
		SET query = CONCAT(
			'INSERT INTO top_products (reportDate, idProduct, rating) ',
			'SELECT CURDATE(), p.idProduct, AVG(r.stars) AS avgStars ',
			'FROM product p ',
			'JOIN review r ',
			'ON p.idProduct = r.idProduct ',
			'GROUP BY p.idProduct ',
			'ORDER BY avgStars DESC ',
			'LIMIT ', 10, ';'
		);
		PREPARE stmt FROM query;
		EXECUTE stmt;
		DEALLOCATE PREPARE stmt;
		END//
delimiter ;
/*SHOW EVENTS;
DROP EVENT IF EXISTS top_products_event;*/
/*Reference: https://stackoverflow.com/questions/49282244/create-event-into-mariadb*/

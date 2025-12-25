-- procedures
-- Part 4 . third advanced features

-- Inout FilID of the film I am looking for to find the number of films received the Awards.

DELIMITER //

CREATE PROCEDURE countNumP(
	IN pFilmID CHAR(8),
	OUT ecount INT
)
        COMMENT 'Count the number of acotrs in a given film festivsl.'
BEGIN
	SELECT COUNT(PersonID) 
	INTO ecount
       	FROM Received 

	WHERE FilmID = pFilmID;
END //

DELIMITER ;

CALL countNumP('FFF1946',@result);




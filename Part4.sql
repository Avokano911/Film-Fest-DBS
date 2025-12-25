-- Design and implement database programming concepts such as stored procedured, triggers, view, and indexes to improve the capabilities of your database.


-- check the startdate must be before the end date as I mentined in business rules in report.
DELIMITER //

CREATE TRIGGER before_start_date
BEFORE INSERT
ON Festival FOR EACH ROW
BEGIN
    DECLARE errorMessage VARCHAR(100);
    SET errorMessage = CONCAT('The start date', NEW.StartDate,'cannot be after the end date', NEW.ENDDate);

    IF NEW.StartDate > NEW.ENDDate THEN
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = errorMessage;
    END IF;
END//

DELIMITER ;




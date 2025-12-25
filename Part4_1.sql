
-- After inserted person num display the total numbers received awards (Alther table to add a column first.)

ALTER TABLE Person ADD COLUMN numofAwards INT DEFAULT 0;

DELIMITER //

CREATE TRIGGER updatenumofAwards
  AFTER INSERT ON Received -- Ater inserted on Received
  FOR EACH ROW
  BEGIN

	UPDATE Person
	SET numofAwards = numofAwards + 1
	WHERE PersonID = NEW.PersonID;
	-- match PersonID in the Receiver PersonID
  END//

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE createDirList (OUT pList VARCHAR(2000))
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE fullName varchar(40) DEFAULT '';
    
    COMMENT 'Declare cursor for getting firt name and last name of Person'
    DECLARE curNames CURSOR FOR
       SELECT curDirectorNames CURSOR FOR
       FROM Person P
       INNER JOIN Worker W ON P.Person = W.PersonID
       WHERE W.JobTitle = 'Director';
       
    DECLARE CONTINUE HANDER FOR FOUND SET done = 1;
    -- if the data is not found the done is 1.
    OPEN curName;
    
    directors: LOOP
        FETCH curName INTO fullName;
        
        IF done = 1 THEN
             LEAVE directors;
        END IF;
        
        -- if fullname does not exist
        
        IF pList = '' THEN
            SET pList = fullName;
        ELSE
            SET pList = CONCAT(pList, ', ',fullName);
        END IF;
    END LOOP directors;
    
    CLOSE curName;

END$$
DELIMITER ;

-- CALL createDirList(@pList)
--- SELECT @List;

-- A script that creates a Trigger
-- that resets the valid_email attribute
DELIMETER $$ ;
CREATE TRIGGER email_trigger BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    IF NEW.email != OLD.email THEN
        SET NEW.valid_email = 0;
    END IF; 
END;$$
delimiter ;


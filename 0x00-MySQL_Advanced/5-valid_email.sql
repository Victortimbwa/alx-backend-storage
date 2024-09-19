-- Script that creates a trigger
-- The trigger resets valid_email on email change
DELIMETER $$
CREAT TRIGGER validate_email BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
	IF NEW.EMAIL != OLD.email THEN
		SET NEW.valid_email = 0;
	END IF;
END
delimeter ;

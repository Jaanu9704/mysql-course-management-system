-- Trigger: Automatically set payment date if not provided

DELIMITER //

CREATE TRIGGER set_payment_date
BEFORE INSERT ON payments
FOR EACH ROW
BEGIN
IF NEW.payment_date IS NULL THEN
SET NEW.payment_date = CURDATE();
END IF;
END //

DELIMITER ;

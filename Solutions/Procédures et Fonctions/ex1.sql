DELIMITER $$
CREATE FUNCTION censure(titre VARCHAR(255)) RETURNS varchar(255)
BEGIN
    IF INSTR(titre, "Guerre") THEN
        RETURN REPLACE(titre, "Guerre", "Amour");
END IF;
    IF INSTR(titre, "guerre") THEN
        RETURN REPLACE(titre, "guerre", "Amour");
END IF;
    IF INSTR(titre, "Combat") THEN
        RETURN REPLACE(titre, "Combat", "Amour");
END IF;
    IF INSTR(titre, "combat") THEN
        RETURN REPLACE(titre, "combat", "Amour");
END IF;
END$$
DELIMITER ;
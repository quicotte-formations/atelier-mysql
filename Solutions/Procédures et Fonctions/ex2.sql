DELIMITER $$
CREATE FUNCTION aleat(min int, max int) RETURNS int
begin
	declare MyNb int ;
    set MyNb = round(min + rand() * (max - min)) ;
return MyNb ;
end$$
DELIMITER ;

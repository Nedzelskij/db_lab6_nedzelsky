-- Функція повертає таблицю з id та назвою всіх овочів 
-- вартість яких за кілограм не первищує вказану ціну 

DROP FUNCTION IF EXISTS get_vegetables_lower_price(integer);  
 
CREATE OR REPLACE FUNCTION get_vegetables_lower_price(received_price integer)  
    RETURNS TABLE (veget_id integer, veget_name varchar) 
LANGUAGE plpgsql 
AS $$ 
BEGIN 
    RETURN QUERY 
   		SELECT prod_id::integer, prod_name::varchar FROM vegetables  
   		WHERE prod_price_kg <= received_price; 
END; 
$$
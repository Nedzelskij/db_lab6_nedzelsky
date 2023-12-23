-- Процедура видаляє з таблиці всі овочі яких немає на жодному складі

DROP PROCEDURE IF EXISTS delete_unused_vegetables(); 
 
CREATE OR REPLACE PROCEDURE delete_unused_vegetables()
LANGUAGE plpgsql 
AS $$ 
BEGIN  
    DELETE FROM vegetables WHERE prod_id IN
		(SELECT prod_id 
		 FROM vegetables LEFT JOIN storage_vegetables USING(prod_id)
		 WHERE stor_id IS NULL);  
END; 
$$; 


	
	
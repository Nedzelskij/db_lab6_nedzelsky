-- Тригер відслідковує модифікацію таблиці storages (яка саме була здійснена операція 
-- (INSERT, UPDATE чи DELETE), яким користувачем, та час коли відбулася дана операція) 
-- та заносить інформацію про них в окрему таблицю storages_audit


DROP TABLE IF EXISTS storages_audit;
CREATE TABLE storages_audit(
	id SERIAL PRIMARY KEY,
	change_stor_date TIMESTAMP NOT NULL,
	change_stor_type char(10)NOT NULL,
	user_name varchar(50) NOT NULL
);

CREATE OR REPLACE FUNCTION update_storages_audit() RETURNS trigger 
LANGUAGE 'plpgsql'
AS $$
BEGIN
	INSERT INTO storages_audit(change_stor_date, change_stor_type, user_name)
	VALUES(NOW(), 'UPDATE', USER);
	RETURN NULL;
END;
$$;

CREATE OR REPLACE TRIGGER storages_update 
AFTER UPDATE ON storages
FOR EACH ROW EXECUTE FUNCTION update_storages_audit();


CREATE OR REPLACE FUNCTION insert_storages_audit() RETURNS trigger 
LANGUAGE 'plpgsql'
AS $$
BEGIN
	INSERT INTO storages_audit(change_stor_date, change_stor_type, user_name)
	VALUES(NOW(), 'INSERT', USER);
	RETURN NULL;
END;
$$;

CREATE OR REPLACE TRIGGER storages_insert 
AFTER INSERT ON storages
FOR EACH ROW EXECUTE FUNCTION insert_storages_audit();


CREATE OR REPLACE FUNCTION delete_storages_audit() RETURNS trigger 
LANGUAGE 'plpgsql'
AS $$
BEGIN
	INSERT INTO storages_audit(change_stor_date, change_stor_type, user_name)
	VALUES(NOW(), 'DELETE', USER);
	RETURN NULL;
END;
$$;

CREATE OR REPLACE TRIGGER storages_delete 
AFTER DELETE ON storages
FOR EACH ROW EXECUTE FUNCTION delete_storages_audit();
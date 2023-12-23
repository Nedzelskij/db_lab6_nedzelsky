-- Функція
SELECT * FROM get_vegetables_lower_price(30); 


-- Процедура
select * from vegetables;
INSERT INTO
    vegetables (prod_id, prod_name, prod_price_kg, season, month)
VALUES
    (10003, 'peas', 70, 'spring', 'april'),
    (10008, 'garlic', 150, 'spring', 'april');
select * from vegetables;

CALL delete_unused_vegetables();
select * from vegetables;


-- Тригер
INSERT INTO
   	storages (stor_id, stor_address)
VALUES
    (11, '13 MMM Street'),
    (22, '50 PPP Street');
UPDATE storages SET stor_address = '77 QQQ Street' WHERE stor_id = 11;
DELETE FROM storages WHERE stor_id in (11, 22);

SELECT * FROM storages_audit;




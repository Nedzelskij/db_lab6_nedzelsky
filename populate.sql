INSERT INTO
    storages (stor_id, stor_address)
VALUES
    (1, '123 Main Street'),
    (2, '500 Park Street'),
    (3, '555 High Street'),
    (4, '1000 5th Avenue'),
    (5, '42 Galaxy Road'),
	(6, '123 Main Street');

INSERT INTO
    vegetables (prod_id, prod_name, prod_price_kg, season, month)
VALUES
    (10001, 'potato', 20, 'summer', 'june'),
    (10002, 'tomato', 50, 'winter', 'desember'),
    (10004, 'pumkin', 25, 'winter', 'january'),
    (10005, 'cucumber', 130, 'summer', 'june'),
	(10006, 'pointed grourd', 10, 'winter', 'jenuary'),
    (10007, 'raddish', 35, 'summer', 'july'),
    (10009, 'onion', 35, 'winter', 'desember'),
    (10010, 'cabbage', 45, 'summer', 'august');
	
INSERT INTO
    supermarkets (sup_id, sup_address, sup_name)
VALUES
    ('sup_11', '90 Main Street', 'M Plus'),
    ('sup_12', '54 Park Street', 'QL'),
    ('sup_13', '125 High Street', 'cheapest'),
    ('sup_14', '10 3th Avenue', 'Super'),
    ('sup_15', '34 Galaxy Road', 'Perfect');
	
INSERT INTO
    storage_vegetables (stor_id, prod_id, stor_prod_quantity_kg)
VALUES
    (1, 10001, 140),
    (1, 10004, 34.5),
	(1, 10005, 12.2),
	(2, 10007, 212.2),
	(2, 10006, 122.2),
	(2, 10010, 102),
	(4, 10009, 34),
    (4, 10001, 355),
	(5, 10010, 40),
    (5, 10006, 230),
	(6, 10001, 77),
	(6, 10002, 77);
	
INSERT INTO
    deliveries (del_date, stor_id, prod_id, sup_id, del_quantity_kg)
VALUES
    ('2023-05-01', 1, 10001, 'sup_11', 20),
    ('2023-07-02', 1, 10005, 'sup_13', 10),
    ('2023-01-07', 2, 10007, 'sup_15', 27),
    ('2023-10-10', 2, 10006, 'sup_11', 15),
	('2023-07-03', 4, 10001, 'sup_12', 111),
	('2023-11-01', 4, 10009, 'sup_13', 19),
	('2023-03-17', 5, 10010, 'sup_12', 20),
	('2023-01-14', 6, 10002, 'sup_15', 5),
	('2023-03-20', 6, 10001, 'sup_13', 30);
	
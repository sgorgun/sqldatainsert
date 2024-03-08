INSERT INTO city (name) VALUES
    ('Vilnius'),
    ('Kaunas'),
    ('Klaipeda');

INSERT INTO street (name, city_id) VALUES
    ('Zalgirio', 1),
    ('Piles', 1),
    ('Uspes', 2),
    ('Gedraycu', 2),
    ('Urai', 3);

INSERT INTO supermarket (name, street_id, house_number) VALUES
    ('Supermarket1', 1, 4),
    ('Supermarket2', 2, 6),
    ('Supermarket3', 3, 7),
    ('Supermarket4', 4, 8),
    ('Supermarket5', 5, 9),
    ('Supermarket6', 1, 1),
    ('Supermarket7', 2, 3);

INSERT INTO person (name, surname, birth_date) VALUES
    ('Name1', 'Surname1', '1990-01-01'),
    ('Name2', 'Surname2', '1990-01-02'),
	('Name3', 'Surname3', '1990-01-03'),
	('Name4', 'Surname4', '1990-01-04'),
	('Name5', 'Surname5', '1990-01-05'),
	('Name6', 'Surname6', '1990-01-06'),
	('Name7', 'Surname7', '1990-01-07'),
	('Name8', 'Surname8', '1990-01-08'),
	('Name9', 'Surname9', '1990-01-09'),
	('Name10', 'Surname10', '1990-01-10'),
	('Name11', 'Surname11', '1990-01-11'),
	('Name12', 'Surname12', '1990-01-12'),
	('Name13', 'Surname13', '1990-01-13'),
	('Name14', 'Surname14', '1990-01-14'),
	('Name15', 'Surname15', '1990-01-15'),
	('Name16', 'Surname16', '1990-01-16'),
	('Name17', 'Surname17', '1990-01-17'),
	('Name18', 'Surname18', '1990-01-18'),
	('Name19', 'Surname19', '1990-01-19'),
	('Name20', 'Surname20', '1990-01-20');

INSERT INTO customer (card_number, discount) VALUES
    ('4312412134', 0.3),
    ('4312412135', 0.1),
    ('4312412136', 0.2),
    ('4312412137', 0),
    ('4312412138', 0.1),
    ('4312412139', 0.15),
    ('4312412140', 0.05),
    ('4312412141', 0.1),
    ('4312412142', 0.1),
    ('4312412143', 0.1);

INSERT INTO contact_type (name) VALUES
    ('Email'),
    ('Phone');

INSERT INTO person_contact (person_id, contact_type_id, contact_value) VALUES
    (1, 1, 'person1@email.com'),
    (1, 2, '1234567890'),
    (2, 1, 'person2@email.com'),
    (3, 2, '9876543210'),
    (4, 1, 'person4@email.com'),
    (5, 2, '5555555555'),
    (6, 1, 'person6@email.com'),
    (7, 2, '1111111111'),
    (8, 1, 'person8@email.com'),
    (9, 2, '9999999999'),
    (10, 1, 'person10@email.com'),
    (10, 2, '8888888888');

INSERT INTO product_category (name) VALUES
    ('fruits'),
    ('drinks'),
    ('vegetables'),
    ('fish'),
    ('meet'),
    ('grocery');

INSERT INTO product_title (title, product_category_id) VALUES
    ('Red Apple', 1),
    ('Banana', 1),
    ('Orange', 1),
    ('Water', 2),
    ('Juice', 2),
    ('Cola', 2),
    ('Carrot', 3),
    ('Potato', 3),
    ('Cabbage', 3),
    ('Tomato', 3),
    ('Lemon', 1),
    ('Beer', 2),
    ('Cod', 4),
    ('Pike', 4),
    ('carp', 4),
    ('Vodka', 2),
    ('strawberry', 1),
    ('blueberry', 1),
    ('onion', 3),
    ('Shark', 4);

INSERT INTO manufacturer (name) VALUES
    ('Nestle'),
    ('PepsiCo'),
    ('Danone'),
    ('Biovela');

INSERT INTO product (product_title_id, manufacturer_id,	price, comment) VALUES
    (1,	1, 10.11, 'Sweet apple'),
    (1,	2, 5.05, 'Small apple'),
    (2,	3, 15.0, 'African Banana'),
    (2,	4, 20.0, 'Brazilian Banana'),
    (3,	1, 16.2, 'Ukrainian Orange'),
    (3,	2, 12.0, 'Italian Orange'),
    (4,	3, 13.0, 'Clear water'),
    (4,	4, 50.0, 'Sweet water'),
    (5,	1, 100.0, 'Orange Juice'),
    (5,	2, 120.0, 'Banana Juice'),
    (6,	3, 60.0, 'Coca Cola'),
    (6,	4, 5.5,	'Pepsi Cola'),
    (7,	1, 12.23, 'Big carrot'),
    (7,	2, 10.02, 'Small carrot'),
    (8,	3, 89.0, 'big potato'),
    (8,	1, 88.99, 'ukrainian potato'),
    (9,	4, 32.0, 'Green Cabbage'),
    (9,	1, 33.33, 'Typical cabbage'),
    (10, 2,	44.44, 'Yellow tomato'),
    (10, 3,	55.55, 'Pink tomato');

INSERT INTO customer_order (operation_time, supermarket_id, customer_id) VALUES
    ('2024-03-01', 1, 7),
    ('2024-03-02', 5, 8),
    ('2024-03-03', 1, 7),
    ('2024-03-04', 2, 3),
    ('2024-03-05', 1, 7),
    ('2024-03-06', 1, 2),
    ('2024-03-07', 1, 7),
    ('2024-03-08', 3, 7),
    ('2024-03-09', 1, 8),
    ('2024-03-10', 6, 7),
    ('2024-03-11', 1, 7),
    ('2024-03-12', 4, 7),
    ('2024-03-13', 1, 7),
    ('2024-03-14', 6, 7),
    ('2024-03-15', 1, 7),
    ('2024-03-16', 1, 5),
    ('2024-03-17', 3, 1),
    ('2024-03-18', 1, 7),
    ('2024-03-19', 4, 3),
    ('2024-03-20', 1, 7);

INSERT INTO order_details (customer_order_id, product_id, price, price_with_discount, product_amount) VALUES
    (1, 1, 20, 18, 4),
    (2, 2, 80, 78.4, 5),
    (3, 3, 90, 81, 6),
    (4, 4, 30, 29.4, 2),
    (5, 5, 40, 36, 1),
    (6, 6, 50, 49, 3),
    (7, 7, 60, 57, 11),
    (8, 8, 70, 66.5, 13),
    (9, 9, 80, 80, 14),
    (10, 10, 90, 90, 2),
    (11, 11, 120, 120, 1),
    (12, 12, 130, 130, 5),
    (13, 13, 40, 36, 6),
    (14, 14, 50, 45, 7),
    (15, 15, 33, 31.35, 8),
    (16, 16, 44, 39.6, 10),
    (16, 16, 55, 49.5, 4),
    (17, 17, 66, 64.68, 5),
    (17, 20, 77, 75.46, 3),
    (18, 19, 88, 79.2, 4),
    (18, 20, 99, 89.1, 4);

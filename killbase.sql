psql < killbase.sql



CREATE TABLE contracts (id serial primary key, target_name text foreign key, target_location text client_name text foreign key, budget integer, if_complete boolean by_who text foreign key);
INSERT INTO contracts (target_name, target_location, target_photo, 
VALUES
('Butch Coolidge', 'Los Angeles', 'https://goo.gl/LCquZj', 3, 'Marcellus_Wallace', 40),
('The Jaguar', 'Russian Embassy', 'https://goo.gl/6JWsiv', 9, 'Concerto', 70),
('Norman Stansfield', 'Manhattan', 'https://i.imgur.com/mdIk33E.jpg', 7, 'Mathilda', 35),
('Santino D''Antonio', 'Continental Hotel', 'https://goo.gl/fUPkYy', 10, 'Winston', 25),
('Sonny_Valerio', 'Queens', 'https://goo.gl/8DHYUS', 4, 'Ray_Vargo', 10);


CREATE TABLE assassins (full_name text, code_names text, weapon text, age integer, price integer, rating integer, kills integer, id serial primary key)
INSERT INTO assassins (full_name, code_names, weapon, age, price, rating, kills, id);
VALUES
('Alexander Duggan’, The Jackal', 'Sniper rifle', 31, 45, 7.5, 28),
('Anton Chigurh', 'Old Man', 'Pneumatic bolt gun', 52, 40, 9, 72),
('Ghost Dog', 'Pistol', 28, 20, 6.5, 35),
('Jason Bourne', 'Parkour', 27, 25, 7, 48),
('John Wick', 'Baba Yaga', 'Lots of guns', 35, 50, 9.5, 433),
('Jules Winnfield', 'Pistol', 26, 15, 6.5, 13),
('Leon', 'The Professional', 'Everything', 41, 30, 81.5, 87),
('Nikita Mears', 'Nikita', 'La Femme Nikita', 'Silenced pistols', 28, 30, 7, 32),
('Pickle Rick', 'Solenya', 'Lasers and office supplies', 60, 0, 8, 24);


CREATE TABLE clients (id serial primary key, client_name text);
INSERT INTO clients (client_name);
VALUES 
('Marcellus Wallace'),
('Concerto'),
('Mathilda'),
('Winston'),
('Ray Vargo');


CREATE TABLE targets (id serial primary key, name text, location text, photo text, security_level numeric(3, 1));
INSERT INTO targets (name, location, photo, security_level);
 VALUES 
 ('Butch Coolidge', 'Los Angeles', 'https://goo.gl/LCquZj',3),
('The Jaguar', 'Russian Embassy', 'https://goo.gl/6JWsiv',9);
('Norman Stansfield', 'Manhattan', 'https://i.imgur.com/mdIk33E.jpg',7),
('Santino D''Antonio', 'Continental Hotel', 'https://goo.gl/fUPkYy',10),
('Sonny Valerio', 'Queens', 'https://goo.gl/8DHYUS',4);



CREATE TABLE assassins_contracts (assassins_id integer references assassins (id), contract_id integer references contracts (id));
 INSERT INTO assassins_contracts (assassins_id, contract_id);
 VALUES 
(6, 1),
(1, 2),
(5, 2),
(7, 3),
(9, 5),
(6, 4),
(8, 3),
(3, 1);

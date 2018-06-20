psql < killbase.sql


Contracts
CREATE TABLE Contracts (Target_Name text, Target_Location text, Target_Photo text, Target_Security integer, Client_Name text, Budget integer);
INSERT INTO Contracts (Target_Name, Target_Location, Target_Photo, Target_Security, Client_Name, Budget) VALUES ('Butch Coolidge', 'Los Angeles', 'https://goo.gl/LCquZj' 3, 'Marcellus Wallace', 40); etc for each person..


'Butch_Coolidge', 'Los_Angeles', 'https://goo.gl/LCquZj', 3, 'Marcellus_Wallace', 40;
'The_Jaguar', 'Russian_Embassy', 'https://goo.gl/6JWsiv', 9, 'Concerto', 70;
'Norman_Stansfield', 'Manhattan', 'https://i.imgur.com/mdIk33E.jpg', 7, 'Mathilda', 35;
'Santino_D''Antonio', 'Continental_Hotel', 'https://goo.gl/fUPkYy', 10, 'Winston', 25;
'Sonny_Valerio', 'Queens', 'https://goo.gl/8DHYUS', 4, 'Ray_Vargo', 10;


Assassins
INSERT INTO Assassins (full_name, code_names, weapon, age, price, rating, kills, id)
'Alexander Duggan’, 'The Jackal', 'Sniper rifle', 31, 45, 7.5, 28
'Anton Chigurh', 'Old Man',	'Pneumatic bolt gun', 52, 40, 9, 72
'Ghost Dog', 'Pistol', 28, 20, 6.5, 35;
'Jason Bourne', 'Parkour', 27, 25, 7, 48;
'John Wick', 'Baba Yaga', 'Lots of guns', 35, 50, 9.5, 433;
'Jules Winnfield', 'Pistol', 26, 15, 6.5, 13;
'Leon',	'The Professional',	'Everything', 41, 30, 8I.5, 87;
'Nikita Mears', 'Nikita', 'La Femme Nikita', 'Silenced pistols', 28, 30, 7, 32;
'Pickle Rick', 'Solenya', 'Lasers and office supplies', 60,	0, 8, 24; 


Clients
INSERT INTO clients (name) VALUES ('Marcellus Wallace');
INSERT INTO clients (name) VALUES ('Concerto');
INSERT INTO clients (name) VALUES ('Mathilda');
INSERT INTO clients (name) VALUES ('Winston');
INSERT INTO clients (name) VALUES ('Ray Vargo');

Targets 
INSERT INTO Targets (name, location, photo, security_level) VALUES ('Butch Coolidge', 'Los Angeles', 'https://goo.gl/LCquZj',3);
INSERT INTO Targets (name, location, photo, security_level) VALUES ('The Jaguar', 'Russian Embassy', 'https://goo.gl/6JWsiv',9);
INSERT INTO Targets (name, location, photo, security_level) VALUES ('Norman Stansfield', 'Manhattan', 'https://i.imgur.com/mdIk33E.jpg',7);
INSERT INTO Targets (name, location, photo, security_level) VALUES ('Santino D''Antonio', 'Continental Hotel', 'https://goo.gl/fUPkYy',10);****
INSERT INTO Targselets (name, location, photo, security_level) VALUES ('Sonny Valerio', 'Queens', 'https://goo.gl/8DHYUS',4);


1)Select all the assassins, sorted by number of kills.
SELECT * FROM Assassins ORDER BY kills DESC

2)Select all of the assassins older than 30 years old.
SELECT * FROM Assassins WHERE age>30;

3)Select all of the contracts that can afford to pay Nikita Mears. (Budget >= her price)
SELECT * FROM Contracts WHERE budget>=30;

4)Count the number of assassins that are capable of taking out Norman Stansfield. (Their rating >= his security level)
SELECT * FROM Assassins WHERE rating>=7;

5) Get the total amount it would require to hire every available assassin.
SELECT SUM(price) FROM Assassins;

6) Assign the following jobs to these assassins:
   Jules Winnfield -> Butch Coolidge
   The Jackal -> The Jaguar
   John Wick -> The Jaguar
   Leon -> Norman Stansfield
   Pickle Rick -> Sonny Valerio
   Jules Winnfield -> Santino D'Antonio
   Nikita Mears -> Norman Stansfield
   Ghost Dog -> Butch Coolidalge

CREATE TABLE assassins_contracts (Assassins_id integer references Assassins (id), Contracts_id integer references contracts (id));
INSERT INTO assassins_contracts (assassins_id, contracts_id) VALUES (6, 1); etc…
SELECT * FROM assassins_contracts;

assassins_id | contracts_id 
--------------+--------------
       		  6  |  1
      		  1  |  2
    		  5  |  2
     		  7  |  3
     		  9  |  5
    		  6  |  4
    		  8  |  3
	     	  3  |  1

SELECT * FROM assassins INNER JOIN assassins_contracts ON assassins.id=assassins_contracts.assassins_id inner join contracts on assassins_contracts.contracts_id=contracts.id;


SELECT(assassins.full_name, contracts.client_name, contracts.target_name) FROM assassins INNER JOIN assassins_contracts ON assassins.id=assassins_contracts.assassins.id;

7) Count the number of currently contracted assassins.
SELECT COUNT(*) from assassins_contracts;

ALTER TABLE contracts ADD by_who text;

BEGIN;

create database if not exists World_War_Covid;
use World_War_Covid;

#Création des tables
drop table if exists Nation_choice;
drop table if exists Nation;
drop table if exists Game;
drop table if exists Player;




create table Player (id int primary key auto_increment, 
name varchar(50), 
surname varchar(50), 
username varchar(50) unique, 
email varchar(50), 
password varchar(50));

create table Game (id int primary key auto_increment, 
player_id1 int, 
player_id2 int, 
player_id3 int, 
game_ended datetime, 
CONSTRAINT foreign key FK_ID_1 (player_id1) references Player(id), 
CONSTRAINT foreign key FK_ID_2 (player_id2) references Player(id), 
CONSTRAINT foreign key FK_ID_3 (player_id3) references Player(id));

create table Nation (id int primary key auto_increment, 
type tinyint,population int unsigned, 
money int default 0,nuke_power int, 
health_power int, 
buyed_weapons int default 0, 
vaccin_implement int default 0, 
number_nuke_attacks int default 0, 
number_health_attacks int default 0, 
number_nuke_took int default 0, 
number_health_took int default 0, 
player_id int, game_id int, 
lastattack time, 
is_dead boolean, 
CONSTRAINT foreign key FK_PLAYERID_1 (player_id) references Player(id), 
CONSTRAINT foreign key FK_PLAYERID_2 (game_id) references Game(id));
 
create table Nation_choice (id int primary key, 
name varchar(6), 
nuke int, 
health int, 
population int);



#Insertion de valeurs exemple

INSERT INTO Player (name, surname, username, email, password)
VALUES
('John', 'Doe', 'johndoe', 'johndoe@example.com', 'password1'),
('Jane', 'Doe', 'janedoe', 'janedoe@example.com', 'password2'),
('Alice', 'Smith', 'alicesmith', 'alicesmith@example.com', 'password3'),
('Bob', 'Johnson', 'bobjohnson', 'bobjohnson@example.com', 'password4'),
('Sarah', 'Brown', 'sarahbrown', 'sarahbrown@example.com', 'password5'),
('David', 'Lee', 'davidlee', 'davidlee@example.com', 'password6'),
('Emily', 'Wang', 'emilywang', 'emilywang@example.com', 'password7'),
('Michael', 'Nguyen', 'michaelnguyen', 'michaelnguyen@example.com', 'password8'),
('Sophie', 'Chan', 'sophiechan', 'sophiechan@example.com', 'password9'),
('Robert', 'Garcia', 'robertgarcia', 'robertgarcia@example.com', 'password10'),
('Maria', 'Hernandez', 'mariahernandez', 'mariahernandez@example.com', 'password11'),
('Daniel', 'Lopez', 'daniellopez', 'daniellopez@example.com', 'password12'),
('Isabella', 'Gonzalez', 'isabellagonzalez', 'isabellagonzalez@example.com', 'password13'),
('Juan', 'Rivera', 'juanrivera', 'juanrivera@example.com', 'password14'),
('Olivia', 'Mendoza', 'oliviamendoza', 'oliviamendoza@example.com', 'password15'),
('William', 'Perez', 'williamperez', 'williamperez@example.com', 'password16'),
('Natalie', 'Kim', 'nataliekim', 'nataliekim@example.com', 'password17'),
('Jacob', 'Johnson', 'jacobjohnson', 'jacobjohnson@example.com', 'password18'),
('Ava', 'Davis', 'avadavis', 'avadavis@example.com', 'password19'),
('Ethan', 'Martinez', 'ethanmartinez', 'ethanmartinez@example.com', 'password20'),
('Mia', 'Garcia', 'miagarcia', 'miagarcia@example.com', 'password21'),
('Noah', 'Rodriguez', 'noahrodriguez', 'noahrodriguez@example.com', 'password22'),
('Sofia', 'Hernandez', 'sofiahernandez', 'sofiahernandez@example.com', 'password23'),
('James', 'Gomez', 'jamesgomez', 'jamesgomez@example.com', 'password24'),
('Chloe', 'Flores', 'chloeflores', 'chloeflores@example.com', 'password25'),
('Alexander', 'Gonzales', 'alexandergonzales', 'alexandergonzales@example.com', 'password26'),
('Madison', 'Kim', 'madisonkim', 'madisonkim@example.com', 'password27'),
('Benjamin', 'Lee', 'benjaminlee', 'benjaminlee@example.com', 'password28');

INSERT INTO Game (player_id1, player_id2, player_id3, game_ended)
VALUES
(1, 2, 3, '2022-02-28 12:00:00'),
(4, 5, 6, '2022-02-28 13:00:00'),
(7, 8, 9, '2022-02-28 14:00:00'),
(10, 11, 12, '2022-02-28 15:00:00'),
(13, 14, 15, '2022-02-28 16:00:00'),
(16, 17, 18, '2022-02-28 17:00:00'),
(19, 20, 21, '2022-02-28 18:00:00'),
(22, 23, 24, '2022-02-28 19:00:00');

INSERT INTO Nation_choice (id,name, nuke, health,population) VALUES
(1,'USA',3,1,1000000),
(2,'Italie',2,2,50000000),
(3,'France',1,3,70000000);

INSERT INTO Nation (type, population, money,nuke_power,health_power, player_id, game_id, lastattack, is_dead) VALUES
(1,120000,10000,(select nuke from Nation_choice where id=1),(select health from Nation_choice where id=1),2,1,now(),true),
(2,53566,20000,(select nuke from Nation_choice where id=2),(select health from Nation_choice where id=2),1,1,now(),true),
(3,6346,20000,(select nuke from Nation_choice where id=3),(select health from Nation_choice where id=3),3,1,now(),false),
(1,7457,40000,(select nuke from Nation_choice where id=1),(select health from Nation_choice where id=1),1,2,now(),false),
(2,2345,60000,(select nuke from Nation_choice where id=2),(select health from Nation_choice where id=2),2,2,now(),true),
(3,5675,80000,(select nuke from Nation_choice where id=3),(select health from Nation_choice where id=3),3,2,now(),false),
(1,1342,100000,(select nuke from Nation_choice where id=1),(select health from Nation_choice where id=1),1,3,now(),false),
(2,9789,120000,(select nuke from Nation_choice where id=2),(select health from Nation_choice where id=2),2,3,now(),false),
(3,8676,130000,(select nuke from Nation_choice where id=3),(select health from Nation_choice where id=3),3,3,now(),true),
(1,5774,160000,(select nuke from Nation_choice where id=1),(select health from Nation_choice where id=1),1,4,now(),true),
(2,3467,170000,(select nuke from Nation_choice where id=2),(select health from Nation_choice where id=2),2,4,now(),false),
(3,9678,190000,(select nuke from Nation_choice where id=3),(select health from Nation_choice where id=3),3,4,now(),false),
(1,6457,210000,(select nuke from Nation_choice where id=1),(select health from Nation_choice where id=1),1,5,now(),false),
(2,8643,240000,(select nuke from Nation_choice where id=2),(select health from Nation_choice where id=2),2,5,now(),true),
(3,2356,280000,(select nuke from Nation_choice where id=3),(select health from Nation_choice where id=3),3,5,now(),false);



COMMIT;
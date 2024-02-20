DROP DATABASE homework3;
create database homework3;
use homework3;
create table Coach (
Coach_id int primary key auto_increment,
coach_name varchar(20));

create table Sport (
Sport_id int primary key auto_increment,
sport_name varchar(20));

create table Player (
Player_id int primary key auto_increment,
player_name varchar(20)
);

insert into Coach(coach_name) values("Colin");
insert into Coach(coach_name) values("Heynckes");
insert into Coach(coach_name) values("Kerr");
insert into Coach(coach_name) values("Popovich");
insert into Coach(coach_name) values("Mourinho");
insert into Coach(coach_name) values("GuoLiang");

insert into Sport(sport_name) values("Rugby");
insert into Sport(sport_name) values("Soccer");
insert into Sport(sport_name) values("Basketball");
insert into Sport(sport_name) values("PingPong");


create table Linked_co_sp(
co_id int,
sp_id int,
primary key (co_id, sp_id),
constraint cofk foreign key (co_id) references Coach(Coach_id),
constraint spfk foreign key (sp_id) references Sport(Sport_id));

ALTER TABLE Player 
Add coach_player_Fk int;

ALTER TABLE Player ADD foreign key (coach_player_Fk) references Coach(Coach_id);

Insert into Linked_co_sp (co_id, sp_id) value (1,1);
Insert into Linked_co_sp (co_id, sp_id) value (2,2);
Insert into Linked_co_sp (co_id, sp_id) value (3,3);
Insert into Linked_co_sp (co_id, sp_id) value (4,3);
Insert into Linked_co_sp (co_id, sp_id) value (5,2);
Insert into Linked_co_sp (co_id, sp_id) value (6,4);

Insert into Player (player_name, coach_player_Fk) value("Austin",1);
Insert into Player (player_name, coach_player_Fk) value("Reese",1);
Insert into Player (player_name, coach_player_Fk) value("Lhamo",2);
Insert into Player (player_name, coach_player_Fk) value("Robben",2);
Insert into Player (player_name, coach_player_Fk) value("Curry",3);
Insert into Player (player_name, coach_player_Fk) value("Kevin",3);
Insert into Player (player_name, coach_player_Fk) value("Ducan",4);
Insert into Player (player_name, coach_player_Fk) value("Robben",4);
Insert into Player (player_name, coach_player_Fk) value("C.R.",5);
Insert into Player (player_name, coach_player_Fk) value("MaLong",6);
Insert into Player (player_name, coach_player_Fk) value("Xuxin",6);
Insert into Player (player_name, coach_player_Fk) value("JiKe",6);

desc Coach;
desc Sport;
desc Player;
desc Linked_co_sp;

SELECT * FROM Coach;
SELECT * FROM Sport;
SELECT * FROM Player;
SELECT * FROM Linked_co_sp;

SELECT player_name, coach_name From Player, Coach Where coach_player_FK = Coach_id; 

SELECT coach_name, sport_name From Coach, Sport, Linked_co_sp Where sp_id = Sport_id and co_id = Coach_id; 


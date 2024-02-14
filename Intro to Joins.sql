CREATE DATABASE cricket;
USE cricket;

CREATE TABLE ipl_players (
    player_id int,
    first_name varchar(255),
    last_name varchar(255),
    franchise varchar(255)
);

insert into ipl_players values(1, "Virat", "Kohli", "RCB");
insert into ipl_players values(2, "MS", "Dhoni", "CSK");
insert into ipl_players values(3, "Rohit", "Sharma", "MI");
insert into ipl_players values(4, "Ravindra", "Jadeja", "CSK");
insert into ipl_players values(5, "Shubhman", "Gill", "GT");

select * from ipl_players;

CREATE TABLE national_players (
    player_id int,
    first_name varchar(255),
    last_name varchar(255),
    country varchar(255)
);

insert into national_players values(1, "Virat", "Kohli", "India");
insert into national_players values(3, "Rohit", "Sharma", "India");
insert into national_players values(4, "Ravindra", "Jadeja", "India");
insert into national_players values(5, "Shubhman", "Gill", "India");
insert into national_players values(6, "Cheteshwar", "Pujara", "India");

select * from national_players;

select * from ipl_players 
join national_players  on ipl_players.player_id = national_players.player_id;

select * from national_players 
join ipl_players on ipl_players.player_id = national_players.player_id;

select n.first_name, n.last_name from ipl_players i
 join national_players n on i.player_id = n.player_id;

select * from ipl_players i
right join national_players n on i.player_id = n.player_id;






select * from cricket.ipl_players i
left join cricket.national_players as n on i.player_id = n.player_id
union
select * from cricket.ipl_players i
right join cricket.national_players as n on i.player_id = n.player_id;



select * from ipl_players i
left join national_players as n on i.player_id = n.player_id
union
select * from ipl_players i
right join national_players as n on i.player_id = n.player_id



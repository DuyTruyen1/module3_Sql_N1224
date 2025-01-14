create database quan_ly_doi_bong;

use quan_ly_doi_bong;

create table coach(
  id_coach int auto_increment primary key,
  name varchar(50) not null,
  birth date
);

create table team(
  id_team int auto_increment primary key,
  name varchar(255) not null,
  id_coach int ,
  foreign key(id_coach) references coach(id_coach),
  unique (id_coach)
);

create table player(
  id_player int auto_increment primary key,
  name varchar(50) not null,
  birth date,
  id_team int ,
  foreign key(id_team) references team(id_team)
);

create table position_player(
  id_position int auto_increment primary key,
  position varchar(50) not null
);

create table footbal_match(
  id_match int auto_increment primary key,
  team_a int,
  team_b int,
  match_datetime timestamp,
  foreign key(team_a) references team(id_team),
  foreign key(team_b) references team(id_team),
  check (team_a != team_b)
);

create table player_position(
  id_player int,
  id_position int,
  primary key (id_player , id_position),
  foreign key(id_player) references player(id_player),
  foreign key(id_position) references position_player(id_position)
);

create table match_player(
  id_match int,
  id_player int,
  primary key (id_match , id_player),
  foreign key(id_match) references footbal_match(id_match),
  foreign key(id_player) references player(id_player)
);



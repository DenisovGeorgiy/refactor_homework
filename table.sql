create table if not exists genre (
	id serial primary key,
	genre_name varchar(50) not null unique
);

create table if not exists executor (
	id serial primary key,
	executor_name varchar(50) not null unique
);

create table if not exists executor_genre(
	genre_id integer REFERENCES genre(id),
	executor_id integer REFERENCES executor(id),
	constraint executor_genre_pk primary key (genre_id, executor_id)
);

create table if not exists album (
	id serial primary key,
	album_name varchar(50) not null unique,
	year_of_release integer not null
);

create table if not exists executor_album (
	executor_id integer REFERENCES executor(id),
	album_id integer REFERENCES album(id),
	constraint executor_album_pk primary key (executor_id, album_id)
);

create table if not exists track (
	id serial primary key,
	track_name varchar(50) not null unique,
	duration integer not null,
	album_id integer REFERENCES album(id)
);

create table if not exists collection (
	id serial primary key,
	collection_name varchar(50) not null unique,
	collection_release integer not null
);

create table if not exists collection_track (
	track_id integer REFERENCES track(id),
	collection_id integer REFERENCES collection(id),
	constraint collection_track_pk primary key (track_id, collection_id)
);
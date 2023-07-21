create table if not exists genre (
	genre_id serial primary key,
	genre_name varchar(50) not null unique
);

create table if not exists executor (
	executor_id serial PRIMARY KEY,
	executor_name varchar(50) not null unique
);

create table if not exists executor_genre(
	genre_id integer REFERENCES genre(genre_id),
	executor_id integer REFERENCES executor(executor_id),
	constraint executor_genre_pk primary key (genre_id, executor_id)
);

create table if not exists album (
	album_id serial PRIMARY KEY,
	album_name varchar(50) not null unique,
	year_of_release integer not null
);

create table if not exists executor_album (
	executor_id integer REFERENCES executor(executor_id),
	album_id integer REFERENCES album(album_id),
	constraint executor_album_pk primary key (executor_id, album_id)
);

create table if not exists track (
	track_id serial PRIMARY KEY,
	track_name varchar(50) not null unique,
	duration integer not null,
	album_id integer REFERENCES album(id)
);

create table if not exists collection (
	collection_id serial PRIMARY KEY,
	collection_name varchar(50) not null unique,
	collection_release integer not null
);

create table if not exists collection_track (
	track_id integer REFERENCES track(track_id),
	collection_id integer REFERENCES collection(collection_id),
	constraint collection_track_pk primary key (track_id, collection_id)
);
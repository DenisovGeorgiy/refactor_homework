INSERT INTO genre
(genre_name)
VALUES
('Rap'),
('Pop'),
('Rock');

INSERT INTO executor
(executor_name)
VALUES
('Eminem'),
('Linkin Park'),
('Oxxxymiron'),
('Big Baby Tape'),
('Zivert');

INSERT INTO executor_genre
(genre_id, executor_id)
VALUES
(1, 1),
(1, 2),
(1, 4),
(2, 5),
(3, 2);

INSERT INTO album
(album_name, year_of_release)
VALUES
('Красота и Уродство', 2021),
('Dragonborn', 2018),
('The Eminem Show', 2002),
('Vinyl#2', 2021),
('Meteora', 2003);

INSERT INTO track
(track_name, duration, album_id)
VALUES
('Грязь', 213, 1),
('Hokage', 173, 2),
('Till I Collapse', 297, 3),
('Gimme The Loot', 140, 2),
('Пантеллерия', 173, 1),
('Numb', 187, 5);

INSERT INTO executor_album
(executor_id, album_id)
VALUES
(1, 3),
(2, 5),
(3, 1),
(4, 2),
(5, 4);

INSERT INTO collection
(collection_name, collection_release)
VALUES
('Вечные хиты русского рэпа', 2023),
('Популярная поп-музыка', 2022),
('Все что нужно', 2015),
('Valentine', 2001);

INSERT INTO collection_track
(collection_id, track_id)
VALUES
(1, 1),
(2, 2),
(3, 4),
(4, 5);
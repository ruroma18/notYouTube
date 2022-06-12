INSERT INTO users (first_name, last_name, email)
VALUES ('Anton', 'Antonov', 'anton@gmail.com'),
('Andrey', 'Andreev', 'andrey@gmail.com'),
('Vladimir', 'Vladimirov', 'vladimir@gmail.com'),
('Roman', 'Romanov', 'roman@gmail.com'),
('Ivan', 'Ivanov', 'ivan@gmail.com');

INSERT INTO videos (user_id, video_name, video_link)
VALUES (1, 'Cats', 'src/animals/cats.mp4'),
(1, 'Dogs', 'src/animals/dogs.mp4'),
(2, 'BWM review', 'src/cars/BMW.mp4'),
(3, 'News 12.06.22', 'src/news/news.mp4');

INSERT INTO video_rate (user_id, video_id, is_like)
VALUES (4, 1, true),
(4, 2, false),
(5, 3, true),
(5, 4, false);

INSERT INTO comments(user_id, videos_id, comment)
VALUES (4, 2, 'bad video'),
(5, 3, 'good video');

INSERT INTO comments(user_id, reply_comment, comment)
VALUES (1, 1, 'Why?'),
(2, 2, 'Thnx');

INSERT INTO comments(user_id, reply_comment, comment)
VALUES (4, 3, 'Becaues')

INSERT INTO playlist(user_id, playlist_name)
VALUES (4, 'Funny Animals'),
(5, 'Cars');

INSERT INTO video_to_playlist (palylist_id, video_id)
VALUES (1, 1),
(1, 2),
(2, 3);

INSERT INTO subsribe_playlist (palylist_id, user_id)
VALUES (1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5);
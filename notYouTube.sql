CREATE DATABASE notyoutube;

CREATE TABLE users(
  id serial PRIMARY KEY,
  first_name VARCHAR(64) NOT NULL CHECK(first_name != ''),
  last_name VARCHAR(64) NOT NULL CHECK(last_name != ''),
  email VARCHAR(64) NOT NULL UNIQUE,
  creation_date TIMESTAMP DEFAULT current_timestamp
);

CREATE TABLE videos (
  id serial PRIMARY KEY,
  user_id int REFERENCES users,
  video_name VARCHAR(256) NOT NULL CHECK(video_name != ''),
  video_link VARCHAR(256) NOT NULL CHECK(video_link != ''),
  upload_date TIMESTAMP DEFAULT current_timestamp
);

CREATE TABLE video_rate (
  id serial PRIMARY KEY,
  user_id int REFERENCES users,
  video_id int REFERENCES videos,
  is_like bool NOT NULL,
);

CREATE TABLE comments (
  id serial PRIMARY KEY,
  user_id int REFERENCES users,
  reply_comment int REFERENCES comments,
  videos_id int REFERENCES videos,
  comment TEXT NOT NULL CHECK(comment != ''),
  comment_date TIMESTAMP DEFAULT current_timestamp
);


CREATE TABLE playlist (
  id serial PRIMARY KEY,
  user_id int REFERENCES users,
  playlist_name VARCHAR(256) NOT NULL CHECK(playlist_name != ''),
  creation_date TIMESTAMP DEFAULT current_timestamp
);

CREATE TABLE video_to_playlist (
  palylist_id int REFERENCES playlist,
  video_id int REFERENCES videos,
  PRIMARY KEY(palylist_id, video_id)
);

CREATE TABLE subsribe_playlist (
  palylist_id int REFERENCES playlist,
  user_id int REFERENCES users,
);

ALTER TABLE subsribe_playlist
ADD PRIMARY KEY (palylist_id, user_id);

ALTER TABLE video_rate
DROP COLUMN id,
ADD PRIMARY KEY (user_id, video_id);
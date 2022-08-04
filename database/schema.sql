CREATE DATABASE catalog_of_things;

CREATE TABLE items (
  id SERIAL PRIMARY KEY,
  music_album_id INT,
  genre_id INT,
  author_id INT,
  source_id INT,
  label_id INT,
  publish_date DATE,
  archived BOOLEAN,
  CONSTRAINT fk_music_album FOREIGN KEY(album_id) REFERENCES music_album(id),
  CONSTRAINT fk_genre FOREIGN KEY(genre_id) REFERENCES genre(id),
);

CREATE TABLE music_album (
  id SERIAL PRIMARY KEY,
  name TEXT,
  publish_date DATE,
  on_spotify BOOLEAN,
  archived BOOLEAN,
  genre_id INT,
  CONSTRAINT fk_genre FOREIGN KEY(genre_id) REFERENCES genre(id),
);

CREATE TABLE genre (
  id SERIAL PRIMARY KEY,
  name TEXT,
  items TEXT [],
);
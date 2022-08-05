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
  CONSTRAINT fk_author FOREIGN KEY(author_id) REFERENCES author(id),
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

CREATE TABLE author (
  id SERIAL PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  items INT [],
);

-- Book TABLE

CREATE TABLE books (
  book_id SERIAL PRIMARY KEY,
  publish_date DATE,
  cover_state VARCHAR(10)
  CONSTRAINT FOREIGN KEY(book_id) REFERENCES items(id)
)

-- LABEL TABLE 

CREATE TABLE label(
  label_id SERIAL PRIMARY KEY,
  title VARCHAR(100),
  color VARCHAR(50),
  items CHAR(50) [],
  CONSTRAINT fk_label FOREIGN KEY(label_id) REFERENCES items(id)
)

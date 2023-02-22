

create table Film(
  filmId varchar(100) PRIMARY KEY,
  film_name varchar(100) NOT NULL,
  release_year varchar(100) NOT NULL CHECK(CAST(release_year AS INTEGER) > 1890 and
                                           CAST(release_year AS INTEGER) <= 2022),
  duration varchar(100) NOT NULL CHECK(CAST(duration AS INTEGER) > 0),
  imdb_rating varchar(100) NOT NULL CHECK(CAST(imdb_rating AS FLOAT) >= 0.0 and
                                          CAST(imdb_rating AS FLOAT) <= 10.0),
  imdb_votes varchar(100) NOT NULL CHECK(CAST(imdb_votes AS INTEGER) >= 0),
  studio varchar(100) NOT NULL

);

create table DirectorsOf(
  filmId varchar(100) NOT NULL,
  FOREIGN KEY (filmId) REFERENCES Film(filmId),
  directorName varchar(100),
  UNIQUE (filmId, directorName)
);

create table AuthorsOf(
  filmId varchar(100) NOT NULL,
  FOREIGN KEY (filmId) REFERENCES Film(filmId),
  authorName varchar(100),
  UNIQUE (filmId, authorName)
);

create table ActorsOf(
  filmId varchar(100) NOT NULL,
  FOREIGN KEY (filmId) REFERENCES Film(filmId),
  actorName varchar(100),
  UNIQUE (filmId, actorName)
);

create table GenreOf(
  filmId varchar(100) NOT NULL,
  FOREIGN KEY (filmId) REFERENCES Film(filmId),
  genreName varchar(100),
  UNIQUE (filmId, genreName)
);

create table Award(
  filmId varchar(100) NOT NULL,
  FOREIGN KEY (filmId) REFERENCES Film(filmId),
  oscar_year varchar(100) NOT NULL,
  award varchar(100) NOT NULL,
  UNIQUE (filmId, oscar_year)
);

create table HasRating(
  filmId varchar(100) NOT NULL,
  FOREIGN KEY (filmId) REFERENCES Film(filmId),
  content_rating varchar(100),
  UNIQUE (filmId, content_rating)
);

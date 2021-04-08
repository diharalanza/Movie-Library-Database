BEGIN TRANSACTION;

DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS directors;
DROP TABLE IF EXISTS stars;
DROP TABLE IF EXISTS genres;
DROP TABLE IF EXISTS dir_by;
DROP TABLE IF EXISTS perf_by;
DROP TABLE IF EXISTS genre_is;

CREATE TABLE movies(
    movie_id integer NOT NULL primary key, --unique id of movie
    year integer NOT NULL, --year movie was released
    viewed_date text, --viewed date
    title text NOT NULL, --title of movie
    run_time integer NOT NULL, --length of movie in mins
    rating integer,--user rating (1-10)
    ost_rating integer -- users ost rating (1-3)
    );
INSERT INTO movies VALUES(1,2012,"2014-05-03","Django Unchained",165,8,2);
INSERT INTO movies VALUES(2,1994,"2004-01-15","Pulp Fiction",154,7,2);
INSERT INTO movies VALUES(3,2003,"2007-09-23","Kill Bill: Vol. 1",111,9,2);
INSERT INTO movies VALUES(4,1999,"2010-03-08","Fight Club",139,8,1);
INSERT INTO movies VALUES(5,1997,"2003-01-15","Titanic",194,7,3);
INSERT INTO movies VALUES(6,2017,"2020-05-03","The Greatest Showman",105,8,3);
INSERT INTO movies VALUES(7,2017,"2018-02-27","Logan",137,9,2);
INSERT INTO movies VALUES(8,2011,NULL,"Real Steel",127,NULL,NULL);
INSERT INTO movies VALUES(9,2010,"2015-04-10","Insidious",103,7,3);
INSERT INTO movies VALUES(10,2013,NULL,"The Conjouring",112,NULL,NULL);
INSERT INTO movies VALUES(11,1973,"2005-09-01","The Exorcist",122,10,3);
INSERT INTO movies VALUES(12,2000,NULL,"Unbreakable",106,NULL,NULL);

CREATE TABLE directors(
    dir_id integer NOT NULL primary key, --unique id of director
    dir_name text NOT NULL --name of director
    );
INSERT INTO directors VALUES(1,"Quentin Tarantino");
INSERT INTO directors VALUES(2,"David Fincher");
INSERT INTO directors VALUES(3,"James Cameron");
INSERT INTO directors VALUES(4,"Michael Gracey");
INSERT INTO directors VALUES(5,"James Mangold");
INSERT INTO directors VALUES(6,"Shawn Levy");
INSERT INTO directors VALUES(7,"James Mangold");
INSERT INTO directors VALUES(8,"James Wan");
INSERT INTO directors VALUES(9,"William Friedkin");
INSERT INTO directors VALUES(10,"M. Night Shyamalan");

CREATE TABLE stars(
    star_id integer NOT NULL primary key, --unique id of star
    star_name text NOT NULL --name of star
    );
INSERT INTO stars VALUES(1,"Jamie Foxx");
INSERT INTO stars VALUES(2,"Leonardo DiCaprio");
INSERT INTO stars VALUES(3,"Samuel L. Jackson");
INSERT INTO stars VALUES(4,"Uma Thurman");
INSERT INTO stars VALUES(5,"Brad Pitt");
INSERT INTO stars VALUES(6,"Kate Winslet");
INSERT INTO stars VALUES(7,"Hugh Jackman");
INSERT INTO stars VALUES(8,"Patrick Wilson");
INSERT INTO stars VALUES(9,"Ellen Burstyn");
INSERT INTO stars VALUES(10,"Bruce Willis");

CREATE TABLE genres(
    genre_id integer NOT NULL primary key, --unique id of genre
    genre_name text NOT NULL --name of genre
    );
INSERT INTO genres VALUES(1,"Horror");
INSERT INTO genres VALUES(2,"Action");
INSERT INTO genres VALUES(3,"Drama");

CREATE TABLE dir_by( --connects a movie and director/s
    movie_id integer NOT NULL references movies(movie_id),
    dir_id integer NOT NULL references directors(dir_id),
    primary key(movie_id,dir_id)
    );
INSERT INTO dir_by VALUES(1,1);
INSERT INTO dir_by VALUES(2,1);
INSERT INTO dir_by VALUES(3,1);
INSERT INTO dir_by VALUES(4,2);
INSERT INTO dir_by VALUES(5,3);
INSERT INTO dir_by VALUES(6,4);
INSERT INTO dir_by VALUES(7,5);
INSERT INTO dir_by VALUES(8,6);
INSERT INTO dir_by VALUES(9,8);
INSERT INTO dir_by VALUES(10,8);
INSERT INTO dir_by VALUES(11,9);
INSERT INTO dir_by VALUES(12,10);

CREATE TABLE perf_by( --connects a movie and star/s
    movie_id integer NOT NULL references movies(movie_id),
    star_id integer NOT NULL references stars(star_id),
    primary key(movie_id,star_id)
    );
INSERT INTO perf_by VALUES(1,1);
INSERT INTO perf_by VALUES(1,2);
INSERT INTO perf_by VALUES(1,3);
INSERT INTO perf_by VALUES(2,3);
INSERT INTO perf_by VALUES(2,4);
INSERT INTO perf_by VALUES(2,10);
INSERT INTO perf_by VALUES(3,4);
INSERT INTO perf_by VALUES(4,5);
INSERT INTO perf_by VALUES(5,2);
INSERT INTO perf_by VALUES(5,6);
INSERT INTO perf_by VALUES(6,7);
INSERT INTO perf_by VALUES(7,7);
INSERT INTO perf_by VALUES(8,7);
INSERT INTO perf_by VALUES(9,8);
INSERT INTO perf_by VALUES(10,8);
INSERT INTO perf_by VALUES(11,9);
INSERT INTO perf_by VALUES(12,3);
INSERT INTO perf_by VALUES(12,10);

CREATE TABLE genre_is( --connects a movie and genre/s
    movie_id integer NOT NULL references movies(movie_id),
    genre_id integer NOT NULL references genres(genre_id),
    primary key(movie_id,genre_id)
    );
INSERT INTO genre_is VALUES(1,3);
INSERT INTO genre_is VALUES(2,3);
INSERT INTO genre_is VALUES(3,2);
INSERT INTO genre_is VALUES(3,3);
INSERT INTO genre_is VALUES(4,3);
INSERT INTO genre_is VALUES(5,3);
INSERT INTO genre_is VALUES(6,3);
INSERT INTO genre_is VALUES(7,2);
INSERT INTO genre_is VALUES(7,3);
INSERT INTO genre_is VALUES(8,2);
INSERT INTO genre_is VALUES(8,3);
INSERT INTO genre_is VALUES(9,1);
INSERT INTO genre_is VALUES(10,1);
INSERT INTO genre_is VALUES(11,1);
INSERT INTO genre_is VALUES(12,3);

COMMIT;
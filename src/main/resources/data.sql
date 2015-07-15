
INSERT INTO film(title, length, summary, cover_image, genre, director, rating, trailer_url)
VALUES('Iron Man', 126, 'After being held captive in an Afghan cave, an industrialist creates a unique weaponized suit of armor to fight evil.',
       LOAD_FILE('/Users/jeansmits/Dropbox/IdeaProjects/Film-Project/src/main/resources/covers/IronMan_dvdcover-744015.jpg'),
       'ACTION', 'Jon Favreau', 5, 'https://www.youtube.com/embed/8hYlB38asDY');

INSERT INTO film(title, length, summary, genre, director, rating, trailer_url)
VALUES('Iron Man 2', 124, 'With the world now aware of his identity as Iron Man, Tony Stark must contend with both his declining health and a vengeful mad man with ties to his father''s legacy.',
       'ACTION', 'Jon Favreau', 5, 'https://www.youtube.com/embed/FNQowwwwYa0');

INSERT INTO film(title, length, summary, genre, director, rating, trailer_url)
VALUES('Iron Man 3', 130, 'When Tony Stark''s world is torn apart by a formidable terrorist called the Mandarin, he starts an odyssey of rebuilding and retribution.',
       'ACTION', 'Shane Black', 5, 'https://www.youtube.com/embed/oYSD2VQagc4');


INSERT INTO actor(first_name, last_name, gender, dob, bio)
VALUES('Robert', 'Downey Jr', 'MALE', '1965-04-04',
       'Robert Downey Jr. has evolved into one of the most respected actors in Hollywood. With an amazing list of credits to his name, he has managed to stay new and fresh even after over four decades in the business. Downey was born April 4, 1965 in Manhattan, New York, the son of writer, director and filmographer Robert Downey Sr. and actress Elsie Downey.');

INSERT INTO actor(first_name, last_name, gender, dob, bio)
VALUES('Don', 'Cheadle', 'MALE', '1964-11-29',
       'Don Cheadle was born in Kansas City, Missouri on November 29, 1964. His childhood found him moving from city to city with his family: mother Bettye (North), a teacher, father Donald Frank Cheadle, Sr., a clinical psychologist, sister Dawn, and brother Colin. After graduating high school in Denver, Colorado, Cheadle attended and graduated from the California Institute of the Arts with a Bachelor¹s Degree in Fine Arts. Encouraged by his college friends, he attended a variety of auditions and landed a recurring role on the hit series Fame (1982), which led to feature film roles in Dennis Hopper''s Colors (1988) and John Irvin''s Hamburger Hill (1987).');

INSERT INTO actor(first_name, last_name, gender, dob, bio)
VALUES('Terrence', 'Howard', 'MALE', '1969-03-11',
       'Terrence Howard was born in Chicago, Illinois, to Anita Jeanine Williams (née Hawkins) and Tyrone Howard. He was raised in Cleveland, Ohio. His love for acting came naturally, through summers spent with his great-grandmother, New York stage actress Minnie Gentry. He later began his acting career after being discovered on a New York City street by a casting director.');



-- INSERT INTO filmcharacter(char_name) VAlUES('Tony Stark A.K.A Iron Man');
--
-- INSERT INTO filmcharacter(char_name) VAlUES('James Rhodes A.K.A War Machine');
--
--
--
-- INSERT INTO `Film-Project`.`film_film_characters`(films_id, film_characters_id)
-- VALUES (1 , 1);
--
-- INSERT INTO `Film-Project`.`film_film_characters`(films_id, film_characters_id)
-- VALUES (2 , 1);
--
-- INSERT INTO `Film-Project`.`film_film_characters`(films_id, film_characters_id)
-- VALUES (3 , 1);
--
-- INSERT INTO `Film-Project`.`film_film_characters`(films_id, film_characters_id)
-- VALUES (1 , 2);
--
-- INSERT INTO `Film-Project`.`film_film_characters`(films_id, film_characters_id)
-- VALUES (2 , 2);
--
-- INSERT INTO `Film-Project`.`film_film_characters`(films_id, film_characters_id)
-- VALUES (3 , 2);
--
--
--
-- INSERT INTO `Film-Project`.`actor_film_characters`(actors_id,film_characters_id)
-- VALUES( 1, 1);
--
-- INSERT INTO `Film-Project`.`actor_film_characters`(actors_id,film_characters_id)
-- VALUES( 2, 2);
--
-- INSERT INTO `Film-Project`.`actor_film_characters`(actors_id,film_characters_id)
-- VALUES( 3, 2);
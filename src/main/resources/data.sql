

INSERT INTO film(title, length, summary, cover_image, genre, director, rating)
VALUES('Iron Man', 126, 'After being held captive in an Afghan cave, an industrialist creates a unique weaponized suit of armor to fight evil.',
       LOAD_FILE('/Users/jeansmits/Dropbox/IdeaProjects/Film-Project/src/main/resources/covers/IronMan_dvdcover-744015.jpg'), 'ACTION', 'Jon Favreau', 5);

INSERT INTO film(title, length, summary, genre, director, rating)
VALUES('Iron Man 2', 124, 'With the world now aware of his identity as Iron Man, Tony Stark must contend with both his declining health and a vengeful mad man with ties to his father''s legacy.',
       'ACTION', 'Jon Favreau', 5);

INSERT INTO film(title, length, summary, genre, director, rating)
VALUES('Iron Man 3', 130, 'When Tony Stark''s world is torn apart by a formidable terrorist called the Mandarin, he starts an odyssey of rebuilding and retribution.',
       'ACTION', 'Shane Black', 5);


INSERT INTO actor(first_name, last_name, gender, bio)
VALUES('Robert', 'Downey Jr', 'MALE',
       'Robert Downey Jr. has evolved into one of the most respected actors in Hollywood. With an amazing list of credits to his name, he has managed to stay new and
        fresh even after over four decades in the business. Downey was born April 4, 1965 in Manhattan, New York, the son of writer, director and filmographer Robert
        Downey Sr. and actress Elsie Downey.');


INSERT INTO filmcharacter(char_name) VAlUES('Tony Stark A.K.A Iron Man')
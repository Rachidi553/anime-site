-- database/database.sql
CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    username TEXT NOT NULL,
    password VARCHAR(99) NOT NULL
);

CREATE TABLE Anime (
    AnimeID INT PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    Genre VARCHAR(100),
    Episodes INT,
    AirDate DATE,
    Studio VARCHAR(100),
    Popularity VARCHAR(50),
    Synopsis TEXT,
    Favorites BOOLEAN
);

INSERT INTO Anime (Title, Genre, Episodes, AirDate, Studio, Popularity, Synopsis, Favorites,Image)
VALUES 
('Dragon Ball', 'Action, Adventure, Comedy', 153, '1986-02-26', 'Toei Animation', 'Extremely High', 'The adventures of Goku and his friends seeking for the seven Dragon Balls.', FALSE),
('Bleach', 'Action, Supernatural', 366, '2004-10-05', 'Studio Pierrot', 'Very High', 'Ichigo Kurosaki becomes a Soul Reaper to protect the living and the dead.', FALSE),
('Naruto', 'Action, Adventure', 220, '2002-10-03', 'Studio Pierrot', 'Very High', 'A young ninja seeks recognition and dreams of becoming the Hokage.', FALSE),
('One Piece', 'Action, Adventure, Fantasy', 1071, '1999-10-20', 'Toei Animation', 'Extremely High', 'Monkey D. Luffy and his pirate crew search for the One Piece treasure and become the King of the pirates.', FALSE),
('Hunter x Hunter', 'Action, Adventure, Fantasy', 148, '2011-10-02', 'Madhouse', 'Very High', 'Gon and his best friend Killua aspire to become Hunters (Also escape from hisokas (-w-) gaze', FALSE),
('Rurouni Kenshin', 'Action, Historical, Romance', 94, '1996-01-10', 'Studio Gallop', 'High', 'Former assassin Kenshin Himura tries to live a peaceful life.', FALSE),
('Trigun', 'Action, Sci-Fi', 26, '1998-04-01', 'Madhouse', 'High', 'Vash the Stampede is a gunman with a mysterious past.', TRUE),
('Demon Slayer: Kimetsu no Yaiba', 'Action, Supernatural', 26, '2019-04-06', 'ufotable', 'Extremely High', 'Tanjiro Kamado battles demons and seeks a cure for his sister.', FALSE),
('My Hero Academia', 'Action, Superhero', 88, '2016-04-03', 'Bones', 'Very High', 'Izuku Midoriya inherits the power of All Might to become the greatest hero.', FALSE),
('Violet Evergarden', 'Drama, Fantasy', 13, '2018-01-11', 'Kyoto Animation', 'High', 'Violet, a former soldier, learns to understand emotions through letter-writing (Btw, SUPER RECOMMENDED, ∞/10).', TRUE),
('Your Lie in April (Shigatsu wa Kimi no Uso)', 'Drama, Music, Romance', 22, '2014-10-10', 'A-1 Pictures', 'High', 'A piano prodigy rediscovers his love for music through a very amazing violinist (Not sad at all, wacht it).', FALSE),
('Golden Boy', 'Comedy, Adventure', 6, '1995-10-27', 'A.P.P.P.', 'Medium', 'Kintaro travels Japan looking for a job, learning life lessons and studying.', FALSE),
('BOFURI: Itai no wa iya nanode bōgyoryoku ni kyokufuri shitai to omoimasu.', 'Action, Adventure, Fantasy', 12, '2020-01-08', 'Silver Link', 'High', 'Kaede Honjo maxes out her defense in a VRMMO game for a fun adventure (She is like Saitama... but in a VRMMO game).', TRUE);

SELECT * FROM Anime;

ALTER TABLE Anime ADD Image VARCHAR(255);

UPDATE Anime 
SET Image = '../images/bleach.jpg' 
WHERE Title = 'Bleach';

UPDATE Anime 
SET Image = '../images/bofuri.jpg' 
WHERE Title = 'BOFURI: Itai no wa iya nanode bōgyoryoku ni kyokufuri shitai to omoimasu.';

UPDATE Anime 
SET Image = '../images/dragonball.jpg' 
WHERE Title = 'Dragon Ball';

UPDATE Anime 
SET Image = '../images/bokunohero.jpg' 
WHERE Title = 'My Hero Academia';

UPDATE Anime 
SET Image = '../images/goldenboy.jpg' 
WHERE Title = 'Golden Boy';

UPDATE Anime 
SET Image = '../images/hxh.jpg' 
WHERE Title = 'Hunter x Hunter';

UPDATE Anime 
SET Image = '../images/kimetsu.jpg' 
WHERE Title = 'Demon Slayer';

UPDATE Anime 
SET Image = '../images/naruto.jpg' 
WHERE Title = 'Naruto';

UPDATE Anime 
SET Image = '../images/violet.jpg' 
WHERE Title = 'Violet Evergarden';

UPDATE Anime 
SET Image = '../images/shugatsuwakiminouso.jpg' 
WHERE Title = 'Your Lie in April (Shigatsu wa Kimi no Uso)';

UPDATE Anime 
SET Image = '../images/kenshin.jpg' 
WHERE Title = 'Ruroni Kenshin';

UPDATE Anime 
SET Image = '../images/onepiece.jpg' 
WHERE Title = 'One piece';

UPDATE Anime 
SET Image = '../images/Trigun.jpg' 
WHERE Title = 'Trigun';


INSERT INTO users (username, password)
VALUES ('Hjorvar', 1234);

INSERT INTO users (username, password)
VALUES ('Rachidi', 'a chain is only as strong as its weakest link');
UPDATE users 
SET password = 'a chain is only as strong as its weakest link' 
WHERE username = 'Rachidi';
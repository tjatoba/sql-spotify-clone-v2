-- Criação das tabelas - Spotify
CREATE SCHEMA Spotify;

use spotify;

CREATE TABLE IF NOT EXISTS user (
	user_ID INT NOT NULL AUTO_INCREMENT,
    user_name VARCHAR(30),
    user_email VARCHAR(50),
    user_type VARCHAR(30),
    date_birth DATE,
    PRIMARY KEY(user_ID) 
    );
    
CREATE TABLE IF NOT EXISTS genre (
    genre_ID INT NOT NULL AUTO_INCREMENT,
    genre_name VARCHAR(50),
    PRIMARY KEY(genre_ID)
    );
    
	CREATE TABLE IF NOT EXISTS songs (
	song_ID INT NOT NULL AUTO_INCREMENT,
    song_name VARCHAR(100),
    duration TIME,
    genre_id INT,
    artist_id INT,
    record_label VARCHAR(50),
    PRIMARY KEY(song_ID),
	FOREIGN KEY (genre_ID) REFERENCES genre(genre_ID)
    );
    
    CREATE TABLE IF NOT EXISTS artists (
	artist_ID INT NOT NULL AUTO_INCREMENT,
    genre_ID INT,
    artist_name VARCHAR(100),
    song_ID INT,
    country VARCHAR(30),
    PRIMARY KEY(artist_ID),
    FOREIGN KEY (song_ID) REFERENCES songs(song_ID),
    FOREIGN KEY (genre_ID) REFERENCES genre(genre_ID)
    );
    
ALTER TABLE songs
ADD CONSTRAINT artist_idsongsgenre
FOREIGN KEY (artist_id) REFERENCES artists(artist_id);
    
CREATE TABLE IF NOT EXISTS playlist (
	playlist_ID INT NOT NULL AUTO_INCREMENT,
    user_ID INT,
    artist_ID INT,
	song_ID INT,
    genre_ID INT,
    playlist_name VARCHAR(40),
     PRIMARY KEY(playlist_ID),
    FOREIGN KEY (user_ID) REFERENCES user(user_ID),
    FOREIGN KEY (artist_ID) REFERENCES artists(artist_ID),
    FOREIGN KEY (song_ID) REFERENCES songs(song_ID),
    FOREIGN KEY (genre_ID) REFERENCES genre(genre_ID)
    );    
    
    CREATE TABLE IF NOT EXISTS plays (
    plays_ID INT NOT NULL AUTO_INCREMENT,
    user_ID INT,
    genre_ID INT,
    song_ID INT,
    artist_ID INT,
    playlist_ID INT,
    time_play TIME,
    Date_play DATE,
    PRIMARY KEY(plays_ID),
    FOREIGN KEY (genre_ID) REFERENCES genre(genre_ID),
    FOREIGN KEY (song_ID) REFERENCES songs(song_ID),
    FOREIGN KEY (artist_ID) REFERENCES artists(artist_ID),
    FOREIGN KEY (playlist_ID) REFERENCES playlist(playlist_ID),
    FOREIGN KEY (user_ID) REFERENCES user(user_ID)
);


-- Insercao de Dados - Spotify
SET SQL_SAFE_UPDATES=0;

INSERT INTO genre (genre_id,genre_name)
VALUES 
(1,'Pop'),
(2,'Rock'),
(3,'Hip Hop'),
(4,'Electronic'),
(5,'Classical'),
(6,'Country'),
(7,'Jazz'),
(8,'Blues'),
(9,'Latin'),
(10,'R&B'),
(11,'Metal'),
(12,'Soundtracks'),
(13,'World Music'),
(14,'Folk'),
(15,'KPop'),
(16,'Dance'),
(17,'Reggae'),
(18,'Funk'),
(19,'Christian'),
(20,'Children'),
(21,'Samba'),
(22,'Forro'),
(23,'Bossa Nova'),
(24,'Pagode'),
(25,'Axe'),
(26,'Sertanejo'),
(27,'MPB'),
(28,'Funk Carioca'),
(29,'Tropicalia'),
(30,'Frevo');


INSERT INTO user (user_ID, user_name, user_email, user_type, date_birth)
VALUES 
(12345, 'João Silva', 'joao.silva@gmail.com', 'premium', '1990-03-15'),
(23456, 'Maria Souza', 'maria.souza@hotmail.com', 'free', '1985-07-22'),
(34567, 'Pedro Oliveira', 'pedro.oliveira@yahoo.com', 'free', '1995-11-10'),
(45678, 'Ana Santos', 'ana.santos@gmail.com', 'premium', '1988-04-30'),
(56789, 'Luiza Costa', 'luiza.costa@yahoo.com', 'free', '1992-09-05'),
(67890, 'Lucas Pereira', 'lucas.pereira@hotmail.com', 'premium', '1983-12-18'),
(78901, 'Camila Lima', 'camila.lima@gmail.com', 'premium', '1998-02-25'),
(89012, 'Diego Santos', 'diego.santos@yahoo.com', 'free', '1993-06-12'),
(90123, 'Mariana Oliveira', 'mariana.oliveira@gmail.com', 'free', '1987-08-28'),
(01234, 'Fernando Almeida', 'fernando.almeida@hotmail.com', 'premium', '1991-01-20'),
(12340, 'Carolina Vieira', 'carolina.vieira@yahoo.com', 'free', '1986-05-17'),
(23401, 'Rafael Lima', 'rafael.lima@gmail.com', 'premium', '1994-10-08'),
(34012, 'Juliana Rodrigues', 'juliana.rodrigues@hotmail.com', 'free', '1989-03-03'),
(40123, 'Gustavo Pereira', 'gustavo.pereira@yahoo.com', 'free', '1997-07-11'),
(10123, 'Aline Martins', 'aline.martins@gmail.com', 'premium', '1996-09-14'),
(21034, 'Bruno Alves', 'bruno.alves@hotmail.com', 'premium', '1984-11-26'),
(32104, 'Isabela Costa', 'isabela.costa@yahoo.com', 'free', '1999-04-19'),
(43214, 'Vinícius Oliveira', 'vinicius.oliveira@gmail.com', 'free', '1982-02-07'),
(54322, 'Tatiane Souza', 'tatiane.souza@hotmail.com', 'premium', '1990-06-30'),
(65436, 'Thiago Santos', 'thiago.santos@yahoo.com', 'free', '1981-08-23'),
(76541, 'Mariana Silva', 'mariana.silva@gmail.com', 'premium', '1993-12-10'),
(87658, 'Cristiane Costa', 'cristiane.costa@hotmail.com', 'free', '1980-01-25'),
(98760, 'Lucas Oliveira', 'lucas.oliveira@yahoo.com', 'premium', '1995-05-04'),
(09870, 'Fernanda Almeida', 'fernanda.almeida@gmail.com', 'free', '1978-10-15'),
(10980, 'Ricardo Santos', 'ricardo.santos@hotmail.com', 'premium', '1998-03-28'),
(21099, 'Patrícia Lima', 'patricia.lima@yahoo.com', 'premium', '1986-07-17'),
(32106, 'Gabriel Souza', 'gabriel.souza@gmail.com', 'free', '1991-09-22'),
(43210, 'Luana Pereira', 'luana.pereira@hotmail.com', 'premium', '1994-12-05'),
(54325, 'Daniel Costa', 'daniel.costa@yahoo.com', 'free', '1983-02-18'),
(65433, 'Carla Oliveira', 'carla.oliveira@gmail.com', 'free', '1997-06-09'),
(76547, 'Marcos Alves', 'marcos.alves@yahoo.com', 'premium', '1989-08-03'),
(87653, 'Juliana Oliveira', 'juliana.oliveira@gmail.com', 'free', '1992-01-26'),
(98769, 'Leonardo Lima', 'leonardo.lima@hotmail.com', 'free', '1987-03-10'),
(09872, 'Renata Costa', 'renata.costa@yahoo.com', 'premium', '1996-05-15'),
(10981, 'Roberto Santos', 'roberto.santos@gmail.com', 'free', '1984-07-28'),
(21092, 'Amanda Silva', 'amanda.silva@yahoo.com', 'premium', '1999-09-20'),
(32103, 'Paulo Oliveira', 'paulo.oliveira@hotmail.com', 'free', '1981-11-12'),
(43211, 'Vanessa Lima', 'vanessa.lima@gmail.com', 'free', '1995-02-03'),
(54321, 'Henrique Almeida', 'henrique.almeida@yahoo.com', 'premium', '1988-04-16'),
(65432, 'Beatriz Souza', 'beatriz.souza@hotmail.com', 'free', '1993-06-29'),
(76542, 'José Costa', 'jose.costa@yahoo.com', 'premium', '1982-09-23'),
(87651, 'Natália Oliveira', 'natalia.oliveira@gmail.com', 'free', '1997-12-14'),
(98763, 'Gabriela Silva', 'gabriela.silva@hotmail.com', 'free', '1985-02-07'),
(09873, 'Felipe Lima', 'felipe.lima@yahoo.com', 'premium', '1990-04-30'),
(10984, 'Sandra Alves', 'sandra.alves@gmail.com', 'premium', '1983-07-11'),
(21091, 'Joana Nunes', 'joana.nunes@hotmail.com', 'free', '1994-08-26'),
(32109, 'Eduardo Costa', 'eduardo.costa@yahoo.com', 'premium', '1986-03-19'),
(43217, 'Carolina Oliveira', 'carolina.oliveira@gmail.com', 'free', '1992-11-05');

       
INSERT INTO artists (artist_ID,genre_ID, artist_name, country)
VALUES 
(867530578, 1, 'Olivia Rodrigo', 'United States'),
(948273623, 3, 'Drake', 'Canada'),
(760984312, 2, 'Foo Fighters', 'United States'),
(237846509, 4, 'The Chainsmokers', 'United States'),
(321987654, 9, 'Bad Bunny', 'Puerto Rico'),
(543209876, 10, 'The Weeknd', 'Canada'),
(876543209, 7, 'Norah Jones', 'United States'),
(987654321, 17, 'Damian Marley', 'Jamaica'),
(567890123, 18, 'Cardi B', 'United States'),
(234567890, 6, 'Luke Combs', 'United States'),
(432109876, 5, 'Yo-Yo Ma', 'United States'),
(345675671, 8, 'Joe Bonamassa', 'United States'),
(341118901, 19, 'Elevation Worship', 'United States'),
(345678905, 20, 'The Wiggles', 'Australia'),
(345678901, 21, 'Alcione', 'Brazil'),
(345678331, 22, 'Wesley Safadão', 'Brazil'),
(345678955, 23, 'João Gilberto', 'Brazil'),
(345678357, 24, 'Fundo de Quintal', 'Brazil'),
(345678924, 25, 'Chiclete com Banana', 'Brazil'),
(345678789, 26, 'Jorge & Mateus', 'Brazil'),
(345678902, 27, 'Chico Buarque', 'Brazil'),
(345678954, 28, 'MC Kevinho', 'Brazil'),
(345676778, 29, 'Os Mutantes', 'Brazil'),
(345678922, 30, 'Antônio Nóbrega', 'Brazil'),
(345678933, 1, 'Lady Gaga', 'United States'),
(345677776, 2, 'Twenty One Pilots', 'United States'),
(345678788, 3, 'Kendrick Lamar', 'United States'),
(345678908, 4, 'Marshmello', 'United States'),
(345679099, 9, 'Ricky Martin', 'Puerto Rico'),
(345678900, 10, 'Bryson Tiller', 'United States');


INSERT INTO songs (song_id, song_name, duration, genre_id, artist_id, record_label)
VALUES 
(12345678, 'Drivers License', '04:02', 1, 867530578, 'Interscope Records'),
(23456789, 'God’s Plan', '03:18', 3, 948273623, 'OVO Sound'),
(34567890, 'Everlong', '04:10', 2, 760984312, 'Roswell Records'),
(45678901, 'Closer', '04:04', 4, 237846509, 'Disruptor Records'),
(56789012, 'Dákiti', '03:25', 9, 321987654, 'Rimas Entertainment'),
(67890123, 'Blinding Lights', '03:20', 10, 543209876, 'XO'),
(78901234, 'Don’t Know Why', '03:05', 7, 876543209, 'Blue Note Records'),
(89012345, 'Welcome to Jamrock', '03:33', 17, 987654321, 'Tuff Gong'),
(90123456, 'WAP', '03:07', 18, 567890123, 'Atlantic Records'),
(01234569, 'When It Rains It Pours', '04:02', 6, 234567890, 'Columbia Nashville'),
(12345670, 'Cello Suite No. 1 in G Major', '06:10', 5, 432109876, 'Sony Classical'),
(23456701, 'Mountain Climbing', '05:43', 8, 345675671, 'J&R Adventures'),
(34567012, 'RATTLE!', '04:13', 19, 341118901, 'Elevation Worship Records'),
(45670123, 'Hot Potato', '01:21', 20, 345678905, 'ABC Music'),
(56701234, 'Não Deixe o Samba Morrer', '04:50', 21, 345678901, 'Som Livre'),
(67012345, 'Ar Condicionado no 15', '03:21', 22, 345678331, 'Som Livre'),
(70123456, 'Desafinado', '02:43', 23, 345678955, 'Warner Bros.'),
(01234566, 'Divirta-se (O Guarani)', '03:45', 24, 345678357, 'EMI Music Brasil'),
(12345012, 'Voa Voa', '03:51', 25, 345678924, 'Deckdisc'),
(23450123, 'Paredão Metralhadora', '02:32', 26, 345678789, 'Som Livre'),
(34501234, 'Sosseguei', '03:15', 27, 345678902, 'Som Livre'),
(45012345, 'Cálice', '03:40', 28, 345678954, 'EMI'),
(50123456, 'Ando Meio Desligado', '04:05', 29, 345676778, 'Polydor'),
(01234567, 'Carnaval Toda Hora', '03:30', 30, 345678922, 'Biscoito Fino'),
(12366666, 'Rain On Me', '03:02', 1, 345678933, 'Interscope Records'),
(23499999, 'Stressed Out', '03:22', 2, 345677776, 'Fueled by Ramen'),
(34511140, 'HUMBLE.', '02:57', 3, 345678788, 'Top Dawg Entertainment'),
(45000001, 'Alone', '04:33', 4, 345678908, 'Joytime Collective'),
(56768882, 'Livin’ la Vida Loca', '04:04', 9, 345679099, 'Columbia'),
(63333333, 'Don’t', '03:20', 10, 345678900, 'RCA Records');


INSERT INTO playlist (user_ID, Artist_ID, Song_ID, Genre_ID, Playlist_ID, playlist_name) VALUES
(90123, 345678900, 1234566, 16, 121, 'Chill Mix'),
(78901, 876543209, 23499999, 7, 107, 'Relaxing Jazz'),
(34567, 321987654, 1234567, 2, 103, 'Hip Hop Favorites'),
(45678, 237846509, 12366666, 4, 104, 'EDM Vibes'),
(87658, 345678788, 23456789, 30, 118, 'Sertanejo Raiz'),
(98760, 432109876, 45000001, 5, 119, 'Classical Collection'),
(54322, 948273623, 90123456, 21, 125, 'KPop Hits'),
(98760, 345678908, 45670123, 12, 120, 'Electronic Dance'),
(32104, 345678902, 56768882, 24, 113, 'Samba Party'),
(10123, 345675671, 45670123, 8, 111, 'Blues Rock'),
(01234, 234567890, 34567012, 6, 131, 'Chill Mix'),
(98769, 345678902, 34501234, 27, 132, 'Chill Mix'),
(56789, 321987654, 56701234, 9, 133, 'Chill Mix'),
(67890, 876543209, 78901234, 10, 134, 'Relaxing Jazz'),
(21034, 345678789, 12345012, 22, 135, 'Relaxing Jazz'),
(54321, 876543209, 89012345, 7, 136, 'Relaxing Jazz'),
(76541, 321987654, 90123456, 9, 137, 'Hip Hop Favorites'),
(23456, 948273623, 23499999, 3, 138, 'Hip Hop Favorites'),
(10981, 321987654, 34567890, 24, 139, 'Hip Hop Favorites'),
(98760, 345678908, 45012345, 4, 140, 'EDM Vibes'),
(87651, 345678908, 45000001, 4, 141, 'EDM Vibes'),
(32103, 345678908, 45000001, 4, 142, 'EDM Vibes'),
(87658, 345678789, 12345670, 30, 143, 'Sertanejo Raiz'),
(87658, 345678789, 56701234, 30, 144, 'Sertanejo Raiz'),
(98760, 345678789, 34567012, 30, 145, 'Sertanejo Raiz'),
(87653, 432109876, 12345670, 5, 146, 'Classical Collection'),
(56789, 432109876, 12345670, 5, 147, 'Classical Collection'),
(98769, 432109876, 12345670, 5, 148, 'Classical Collection'),
(34567, 948273623, 56789012, 21, 149, 'KPop Hits'),
(45678, 948273623, 56789012, 21, 150, 'KPop Hits'),
(98760, 948273623, 56789012, 21, 151, 'KPop Hits'),
(76547, 345678908, 45012345, 12, 152, 'Electronic Dance'),
(54322, 345678908, 45012345, 12, 153, 'Electronic Dance'),
(21091, 345678908, 45012345, 12, 154, 'Electronic Dance'),
(87653, 345678902, 23456701, 24, 155, 'Samba Party'),
(98760, 345678902, 23456701, 24, 156, 'Samba Party'),
(54322, 345678902, 23456701, 24, 157, 'Samba Party'),
(23456, 345675671, 23456701, 8, 158, 'Blues Rock'),
(87653, 345675671, 23456701, 8, 159, 'Blues Rock'),
(98769, 345675671, 23456701, 8, 160, 'Blues Rock');


INSERT INTO plays (plays_ID, user_ID, genre_ID, song_ID, artist_id, time_play, Date_play)
VALUES 
(101, 12345, 1, 1234566, 867530578, '15:23:45', '2024-04-01'),
(102, 23456, 3, 1234566, 948273623, '16:34:56', '2024-04-01'),
(103, 34567, 2, 1234567, 760984312, '10:45:12', '2024-04-02'),
(104, 45678, 4, 12366666, 237846509, '11:56:23', '2024-04-02'),
(105, 56789, 9, 23450123, 321987654, '09:07:34', '2024-04-03'),
(106, 67890, 10, 23456789, 543209876, '10:18:45', '2024-04-03'),
(107, 78901, 7, 23499999, 876543209, '12:29:56', '2024-04-04'),
(108, 89012, 17, 34501234, 987654321, '13:40:12', '2024-04-04'),
(109, 90123, 18, 34501234, 567890123, '14:51:23', '2024-04-05'),
(110, 01234, 6, 34501234, 234567890, '15:02:34', '2024-04-05'),
(111, 10123, 8, 45670123, 345675671, '16:12:30', '2024-04-06'),
(112, 21034, 11, 50123456, 345678905, '14:24:45', '2024-04-06'),
(113, 32104, 15, 56768882, 345678902, '17:36:00', '2024-04-07'),
(114, 43214, 19, 67012345, 345678954, '12:47:15', '2024-04-07'),
(115, 54322, 21, 70123456, 345678933, '11:58:30', '2024-04-08'),
(116, 65436, 23, 78901234, 345678331, '10:09:45', '2024-04-08'),
(117, 76541, 26, 89012345, 345678922, '19:21:00', '2024-04-09'),
(118, 87658, 30, 23456789, 345678788, '18:32:15', '2024-04-09'),
(119, 98760, 5, 45000001, 432109876, '15:43:30', '2024-04-10'),
(120, 98760, 12, 45670123, 345678908, '16:54:45', '2024-04-10'),
(121, 10123, 16, 1234566, 345678900, '14:06:00', '2024-04-11'),
(122, 21034, 22, 1234569, 345678789, '11:17:15', '2024-04-11'),
(123, 32104, 24, 89012345, 345678902, '20:28:30', '2024-04-12'),
(124, 43214, 28, 78901234, 345678905, '09:39:45', '2024-04-12'),
(125, 54322, 2, 90123456, 948273623, '13:51:00', '2024-04-13'),
(126, 65436, 4, 23499999, 237846509, '14:02:15', '2024-04-13'),
(127, 76541, 9, 12345670, 321987654, '12:13:30', '2024-04-14'),
(128, 87658, 11, 1234566, 345677776, '11:24:45', '2024-04-14'),
(129, 98760, 14, 90123456, 345678788, '19:36:00', '2024-04-15'),
(130, 10123, 17, 12345670, 345679099, '18:47:15', '2024-04-15');

UPDATE artists AS a
JOIN songs AS s ON a.artist_ID = s.artist_id
SET a.song_ID = s.song_ID;

UPDATE plays
JOIN playlist ON plays.song_ID = playlist.song_ID
SET plays.playlist_ID = playlist.playlist_ID;

CREATE DEFINER=`root`@`localhost` FUNCTION `get_genre`(genreid INT) RETURNS varchar(50) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE nome_genre VARCHAR(50);
    SELECT genre_name into nome_genre 
    FROM genre 
    WHERE genre_id = genreid;
    RETURN @nome_genre;
END;

CREATE DEFINER=`root`@`localhost` FUNCTION `get_played_song_names`(user_id INT) RETURNS varchar(1000) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE played_songs VARCHAR(1000)
    
    SELECT GROUP_CONCAT(s.song_name SEPARATOR '\n')
    INTO played_songs
    FROM plays p
    INNER JOIN songs s ON p.song_ID = s.song_ID
    WHERE p.user_ID = user_id;

    RETURN played_songs;
END

-- Visualizacao de musicas, ID e artistas
CREATE OR REPLACE VIEW musicas AS
SELECT s.song_ID, s.song_name AS song_Name, a.artist_name
FROM songs s
JOIN artists a ON s.artist_id = a.artist_ID;

-- Visualizacao de gravadoras por artistas
CREATE OR REPLACE VIEW gravadoras AS
SELECT a.artist_name, s.record_label
FROM songs s
JOIN artists a ON s.artist_id = a.artist_ID;

-- Visualizacao de generos das musicas
CREATE OR REPLACE VIEW generos AS
SELECT s.song_ID, s.song_name AS song_Name, g.genre_name
FROM songs s
JOIN genre g ON s.genre_id = g.genre_ID;

-- Visualizacao de cadastro dos usuários
CREATE OR REPLACE VIEW cadastro_users AS
SELECT user_name, user_email, user_type
FROM user;

-- Visualizacao de playlists por usuários
CREATE OR REPLACE VIEW playlist_users AS
SELECT DISTINCT u.user_name, p.playlist_name
FROM user u
JOIN playlist p ON u.user_ID = p.user_ID;

-- SP para ordenar uma tabela:
DELIMITER //
CREATE PROCEDURE sp_order_table(
IN table_Name VARCHAR(50), 
IN order_Field VARCHAR(50), 
IN sort_Order VARCHAR(10))
BEGIN
    SET @query = CONCAT('SELECT * FROM ', table_Name, ' ORDER BY ', order_Field, ' ', sort_Order, ';');
    PREPARE stmt FROM @query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END //
DELIMITER ;


-- Basta inserir o nome da tabela, a coluna a ser ordenada e como ordená-la
-- EX ordenando a tabela artists, pelo nome do artista de forma crescente
call sp_order_table('artists','artist_name','ASC');


-- SP para inserir novos usuários:
DELIMITER //
CREATE PROCEDURE sp_new_user(
    IN userID INT,
    IN userName VARCHAR(30),
    IN userEmail VARCHAR(50),
    IN userType VARCHAR(30),
    IN userBirth DATE
)
BEGIN
    IF userID IS NULL THEN
        -- Insere sem userID para permitir auto-incremento
        INSERT INTO user (user_name, user_email, user_type, date_birth)
        VALUES (userName, userEmail, userType, userBirth);
    ELSE
        -- Insere com o userID fornecido
        INSERT INTO user (user_ID, user_name, user_email, user_type, date_birth)
        VALUES (userID, userName, userEmail, userType, userBirth);
    END IF;
END //

DELIMITER ;

-- Basta inserir o novo ID, nome do usuario, tipo de conta e data de nascimento
-- EX Inserindo um novo usuario Joao
CALL sp_new_user(null,'João', 'joao@example.com', 'Regular', '1990-05-16');
CALL sp_new_user(98771,'João', 'joao@example.com', 'Regular', '1990-05-16');

select * from user;

-- 1º Trigger 
-- Triggers para registrar adição de usuario na tabela user

use spotify;

--  Criação tabela para registro das informações, tabela será usada para registrar insert e update.
Create table new_update_user(
user_id int,
user_name varchar(30),
user_email varchar(50),
user_type varchar(30),
date_birth date,
reference_date date,
reference_time time,
user varchar(50),
Action Varchar(30)
);

-- Criação da Trigger
CREATE TRIGGER add_new_user
AFTER INSERT ON spotify.user
FOR EACH ROW
INSERT INTO spotify.new_update_user
VALUES (new.user_id ,new.user_name,new.user_email,new.user_type,new.date_birth,current_date(),current_time(),user(),'NEW USER');

-- Insert de novo usuario na tabela user
INSERT INTO spotify.user
Values (null,' Rodrigo Cavallini' , 'cavallini@gmail.com', 'Premium', '1981-10-21');

-- Select na tabela para verificar se registro foi inserido com sucesso
SELECT * from new_update_user;

-- Criação trigger para registrar update de usuario da tabela user
CREATE TRIGGER update_user
BEFORE UPDATE ON spotify.user
FOR EACH ROW
INSERT INTO spotify.new_update_user
VALUES (OLD.user_id ,OLD.user_name,OLD.user_email,OLD.user_type,OLD.date_birth,current_date(),current_time(),user(),'UPDATE');

-- Update do registro
UPDATE spotify.user
SET user_email = 'rodrigocavallini@gmail.com'
WHERE user_id = 98772;

-- Verificação na tabela de registro 
SELECT * from new_update_user;

-- 2º trigger
-- Criação tabela para registro das informações, tabela será usada para registrar insert e update. 

Create table new_playlist(
playlist_id int,
user_id int,
artist_id int,
song_id int,
genre_id int,
playlist_name Varchar(40),
reference_date date,
reference_time time,
user varchar(50)
);

-- Criação da Trigger
CREATE TRIGGER add_new_playlist
AFTER INSERT ON spotify.playlist	
FOR EACH ROW
INSERT INTO spotify.new_playlist
VALUES (new.playlist_id ,new.user_id,new.artist_id,new.song_id,new.genre_id,new.playlist_name,current_date(),current_time(),user());

-- Insert de novo usuario na tabela playlist
INSERT INTO spotify.playlist
Values (null, null , null , 1234567, 2 , 'HIP HOP');

-- Select na tabela para verificar se registro foi inserido com sucesso
SELECT * from new_playlist;

-- Criação tabela para registro do update
Create table update_playlist(
playlist_id int,
user_id int,
artist_id int,
song_id int,
genre_id int,
old_playlist_name Varchar(40),
new_playlist_name Varchar(40),
reference_date date,
reference_time time,
user varchar(50)
);

-- Criação trigger para registrar update da playlist 
CREATE TRIGGER update_playlist
BEFORE UPDATE ON spotify.playlist
FOR EACH ROW
INSERT INTO spotify.update_playlist
VALUES (old.playlist_id ,old.user_id,old.artist_id,old.song_id,old.genre_id,old.playlist_name,new.playlist_name,current_date(),current_time(),user());

-- Update do registro
UPDATE spotify.playlist
SET playlist_name = 'HIP HOP 2025'
WHERE playlist_id = 103;

-- Select na tabela para verificar se registro foi inserido com sucesso
SELECT * from update_playlist;
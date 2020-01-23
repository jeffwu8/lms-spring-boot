-- DROP ALL TABLES. ORDER IS (MOSTLY) IMPORTANT DUE TO FK CONSTRAINTS --
DROP TABLE IF EXISTS `tbl_book_genres`;
DROP TABLE IF EXISTS `tbl_book_copies`;
DROP TABLE IF EXISTS `tbl_book_authors`;
DROP TABLE IF EXISTS `tbl_library_branch`;
DROP TABLE IF EXISTS `tbl_author`;
DROP TABLE IF EXISTS `tbl_book`;
DROP TABLE IF EXISTS `tbl_publisher`;
DROP TABLE IF EXISTS `tbl_borrower`;
DROP TABLE IF EXISTS `tbl_genre`;

-- AUTHOR --
CREATE TABLE `tbl_author` (
  `id` BIGINT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `name` VARCHAR(45) NOT NULL
);
INSERT INTO `tbl_author`
VALUES
(1,'Mia Vieyra'),
(2,'Flo Blakemore'),
(3,'Duke Guyver'),
(4,'Megen Rodrigues'),
(5,'Georas Petlyura'),
(6,'Adan Gregon'),
(7,'Madlen Episcopio'),
(8,'Alasteir LBIGINTill'),
(9,'Garrik Fitzsymon'),
(10,'Ian Iskowicz'),
(11,'Raf Lambirth'),
(12,'Pier Leaney'),
(13,'Minna Luppitt'),
(14,'Friedrick Dupree'),
(15,'Malissia Mandal'),
(16,'Kristo Jonathon'),
(17,'Nettle Kelbie'),
(18,'Raina Bauman'),
(19,'Michaella Campelli'),
(20,'Shina Glendenning');


-- BORROWER --
CREATE TABLE `tbl_borrower` (
  `card_no` BIGINT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `name` VARCHAR(45) DEFAULT NULL,
  `address` VARCHAR(45) DEFAULT NULL,
  `phone` VARCHAR(45) DEFAULT NULL
);



--- GENRE TABLE --
CREATE TABLE `tbl_genre` (
  `id` BIGINT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `name` VARCHAR(45) DEFAULT NULL
);
INSERT INTO `tbl_genre`
VALUES
(1,'Comedy|Drama|Fantasy|Romance'),
(2,'Drama'),
(3,'Drama|Film-Noir|Thriller'),
(4,'Sci-Fi'),
(5,'Drama'),
(6,'Comedy|Horror'),
(7,'Action|Crime'),
(8,'Adventure|Children|Comedy|Fantasy'),
(9,'Drama'),(10,'Comedy|Crime|Thriller'),
(11,'Comedy|Drama|Romance'),
(12,'Comedy|Romance'),
(13,'Documentary'),
(14,'Comedy'),
(15,'Drama|Horror|Mystery|Thriller'),
(16,'Drama|Thriller'),
(17,'Drama|Thriller'),
(18,'Drama'),
(19,'Action|Comedy|Crime|Thriller'),
(20,'Comedy');


-- LIBRARY BRANCHES --
CREATE TABLE `tbl_library_branch` (
  `id` BIGINT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `name` VARCHAR(45) DEFAULT NULL,
  `address` VARCHAR(45) DEFAULT NULL
);
INSERT INTO `tbl_library_branch`
VALUES
(1,'Frostburg State University','2417 Summit PoBIGINT'),
(2,'Rhode Island School of Design','2286 Boyd Way'),
(3,'University of Nebraska - Lincoln','7192 Morningstar Circle'),
(4,'Syrian Virtual University','75 Pond Alley'),
(5,'Dokkyo University School of Medicine','3 Summit PoBIGINT'),
(6,'Free University of Bozen','7100 Spohn Park'),
(7,'Hartford College for Women','7 Prairie Rose PoBIGINT'),
(8,'Narsee Monjee Institute of Management Studies','7 David Junction'),
(9,'Mendeleev University of Chemical Technology','30842 Buell Terrace'),
(10,'Doho University','547 Forest Lane'),
(11,'Central University College','9 High Crossing Crossing'),
(12,'Kandahar University','86 Jay Street'),
(13,'Gwangju Catholic College','292 Talisman Pass'),
(14,'Politécnico Columbiano Jaime Isaza Cadavid','73267 Melrose Lane'),
(15,'Trinity Christian College','968 Dottie Trail'),
(16,'China youth college for political science','9 Texas Street'),
(17,'University of Occupational Health, Japan','573 Clarendon Hill'),
(18,'Sevastopol National Technical University','6716 Claremont Way'),
(19,'Politeknik Negeri Malang','89 Schlimgen Hill'),
(20,'Harris-Stowe State University','0 Loftsgordon Pass');


-- PUBLISHER TABLE --
CREATE TABLE `tbl_publisher` (
  `id` BIGINT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `name` VARCHAR(45) NOT NULL,
  `address` VARCHAR(45) DEFAULT NULL,
  `phone` VARCHAR(45) DEFAULT NULL
);
INSERT INTO `tbl_publisher`
VALUES
(1,'Carter, Homenick and Lebsack','76582 Montana Lane','194-165-8624'),
(2,'Ritchie and Sons','1 Gina Place','998-860-8908'),
(3,'Hermann, Marks and Herman','2 Lotheville Court','709-443-0329'),
(4,'Mueller, Collins and Barton','2059 Little Fleur Crossing','578-857-1803'),
(5,'Dooley LLC','74313 Huxley Center','311-283-3420'),
(6,'Wuckert LLC','2 Quincy Drive','174-215-4204'),
(7,'West-Wolff','730 Service Street','760-967-9166'),
(8,'Wunsch, Mann and Feest','3 Stuart Place','168-230-8011'),
(9,'Graham-Schmeler','9358 Waxwing Place','717-394-9940'),
(10,'Mueller and Sons','408 5th Road','169-387-0015'),
(11,'DuBuque Group','31651 Ilene Drive','501-302-1068'),
(12,'Gorczany-Schultz','054 Menomonie Alley','199-196-4259'),
(13,'Yundt-Mueller','40 Fairview Circle','192-363-1757'),
(14,'Hammes-Lubowitz','3 Ryan Junction','245-431-7390'),
(15,'Rogahn and Sons','39 Superior Terrace','390-797-0804'),
(16,'Hammes and Sons','82 Spohn Alley','777-203-1536'),
(17,'Botsford-Ebert','7 Chive Drive','885-366-9280'),
(18,'Baumbach, McClure and Rodriguez','73 Dayton Terrace','327-679-6419'),
(19,'Wolf-Bayer','26201 Farwell Plaza','890-685-8385'),
(20,'Mante LLC','8134 Service Place','798-111-6214');


-- BOOK TABLE --
CREATE TABLE `tbl_book` (
  `id` BIGINT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `title` VARCHAR(45) NOT NULL,
  `publisher_id` BIGINT(11) DEFAULT NULL,
  FOREIGN KEY (`publisher_id`)
    REFERENCES `tbl_publisher` (`id`)
    ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO `tbl_book`
VALUES
(1,'The Adventurers',1),
(2,'To Mars by A-Bomb',2),
(3,'Starman',3),
(4,'Town That Dreaded Sundown, The',4),
(5,'That Man from Rio',5),
(6,'Brooklyn Bridge',6),
(7,'Wake Island',7),
(8,'Tentacles (Tentacoli)',8),
(9,'The Night Evelyn Came Out of the Grave',9),
(10,'Christmas in Conway',10),
(11,'Coquette',11),
(12,'Soap and Water',12),
(13,'Lola (Twinky) (London Affair)',13),
(14,'Vertigo',14),
(15,'The... Beautiful Country',15),
(16,'The Beaver Trilogy',16),
(17,'Anthropophagus: The Grim Reaper',17),
(18,'Azur & Asmar (Azur et Asmar)',18),
(19,'Indiana Jones: Kingdom of the Crystal Skull',19),
(20,'Dream of Light (a.k.a. Quince Tree Sun, The)',20);


-- BOOK AUTHORS TABLE --
CREATE TABLE `tbl_book_authors` (
  `book_id` BIGINT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `author_id` BIGINT(11) NOT NULL,
  FOREIGN KEY (`author_id`)
    REFERENCES `tbl_author` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  FOREIGN KEY (`book_id`)
    REFERENCES `tbl_book` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
INSERT INTO `tbl_book_authors`
VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10),
(11,11),
(12,12),
(13,13),
(14,14),
(15,15),
(16,16),
(17,17),
(18,18),
(19,19),
(20,20);


-- BOOK COPIES TABLE --
CREATE TABLE `tbl_book_copies` (
  `book_id` BIGINT(11) NOT NULL PRIMARY KEY,
  `branch_id` BIGINT(11) NOT NULL,
  `no_of_copies` BIGINT(11) DEFAULT NULL,
  FOREIGN KEY (`book_id`)
    REFERENCES `tbl_book` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  FOREIGN KEY (`branch_id`)
    REFERENCES `tbl_library_branch` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
INSERT INTO `tbl_book_copies`
VALUES
(1,1,1),
(2,2,2),
(3,3,3),
(4,4,1),
(5,5,2),
(6,6,3),
(7,7,1),
(8,8,2),
(9,9,3),
(10,10,1),
(11,11,2),
(12,12,3),
(13,13,1),
(14,14,2),
(15,15,3),
(16,16,1),
(17,17,2),
(18,18,3),
(19,19,1),
(20,20,2);



-- BOOK GENRES TABLE --
CREATE TABLE `tbl_book_genres` (
  `genre_id` BIGINT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `book_id` BIGINT(11) NOT NULL,
  FOREIGN KEY (`book_id`)
    REFERENCES `tbl_book` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  FOREIGN KEY (`genre_id`)
    REFERENCES `tbl_genre` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

INSERT INTO `tbl_book_genres`
VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10),
(11,11),
(12,12),
(13,13),
(14,14),
(15,15),
(16,16),
(17,17),
(18,18),
(19,19),
(20,20);

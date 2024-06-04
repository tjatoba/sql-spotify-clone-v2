-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (x86_64)
--
-- Host: localhost    Database: spotify

-- -------------------------------------------------------------------
-- BACKUP do banco de dados SPOTIFY, incluindo as seguintes tabelas --
-- artists
-- genre
-- new_playlist
-- new_update_user
-- playlist
-- plays
-- songs
-- update_playlist
-- user
-- -------------------------------------------------------------------

-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `artists`
--

LOCK TABLES `artists` WRITE;
/*!40000 ALTER TABLE `artists` DISABLE KEYS */;
INSERT INTO `artists` VALUES (234567890,6,'Luke Combs',1234569,'United States'),(237846509,4,'The Chainsmokers',45678901,'United States'),(321987654,9,'Bad Bunny',56789012,'Puerto Rico'),(341118901,19,'Elevation Worship',34567012,'United States'),(345675671,8,'Joe Bonamassa',23456701,'United States'),(345676778,29,'Os Mutantes',50123456,'Brazil'),(345677776,2,'Twenty One Pilots',23499999,'United States'),(345678331,22,'Wesley Safadão',67012345,'Brazil'),(345678357,24,'Fundo de Quintal',1234566,'Brazil'),(345678788,3,'Kendrick Lamar',34511140,'United States'),(345678789,26,'Jorge & Mateus',23450123,'Brazil'),(345678900,10,'Bryson Tiller',63333333,'United States'),(345678901,21,'Alcione',56701234,'Brazil'),(345678902,27,'Chico Buarque',34501234,'Brazil'),(345678905,20,'The Wiggles',45670123,'Australia'),(345678908,4,'Marshmello',45000001,'United States'),(345678922,30,'Antônio Nóbrega',1234567,'Brazil'),(345678924,25,'Chiclete com Banana',12345012,'Brazil'),(345678933,1,'Lady Gaga',12366666,'United States'),(345678954,28,'MC Kevinho',45012345,'Brazil'),(345678955,23,'João Gilberto',70123456,'Brazil'),(345679099,9,'Ricky Martin',56768882,'Puerto Rico'),(432109876,5,'Yo-Yo Ma',12345670,'United States'),(543209876,10,'The Weeknd',67890123,'Canada'),(567890123,18,'Cardi B',90123456,'United States'),(760984312,2,'Foo Fighters',34567890,'United States'),(867530578,1,'Olivia Rodrigo',12345678,'United States'),(876543209,7,'Norah Jones',78901234,'United States'),(948273623,3,'Drake',23456789,'Canada'),(987654321,17,'Damian Marley',89012345,'Jamaica');
/*!40000 ALTER TABLE `artists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'Pop'),(2,'Rock'),(3,'Hip Hop'),(4,'Electronic'),(5,'Classical'),(6,'Country'),(7,'Jazz'),(8,'Blues'),(9,'Latin'),(10,'R&B'),(11,'Metal'),(12,'Soundtracks'),(13,'World Music'),(14,'Folk'),(15,'KPop'),(16,'Dance'),(17,'Reggae'),(18,'Funk'),(19,'Christian'),(20,'Children'),(21,'Samba'),(22,'Forro'),(23,'Bossa Nova'),(24,'Pagode'),(25,'Axe'),(26,'Sertanejo'),(27,'MPB'),(28,'Funk Carioca'),(29,'Tropicalia'),(30,'Frevo');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `new_playlist`
--

LOCK TABLES `new_playlist` WRITE;
/*!40000 ALTER TABLE `new_playlist` DISABLE KEYS */;
INSERT INTO `new_playlist` VALUES (161,NULL,NULL,1234567,2,'HIP HOP','2024-06-03','19:25:19','root@localhost');
/*!40000 ALTER TABLE `new_playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `new_update_user`
--

LOCK TABLES `new_update_user` WRITE;
/*!40000 ALTER TABLE `new_update_user` DISABLE KEYS */;
INSERT INTO `new_update_user` VALUES (98772,' Rodrigo Cavallini','cavallini@gmail.com','Premium','1981-10-21','2024-06-03','19:25:19','root@localhost','NEW USER'),(98772,' Rodrigo Cavallini','cavallini@gmail.com','Premium','1981-10-21','2024-06-03','19:25:19','root@localhost','UPDATE');
/*!40000 ALTER TABLE `new_update_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `playlist`
--

LOCK TABLES `playlist` WRITE;
/*!40000 ALTER TABLE `playlist` DISABLE KEYS */;
INSERT INTO `playlist` VALUES (103,34567,321987654,1234567,2,'HIP HOP 2025'),(104,45678,237846509,12366666,4,'EDM Vibes'),(107,78901,876543209,23499999,7,'Relaxing Jazz'),(111,10123,345675671,45670123,8,'Blues Rock'),(113,32104,345678902,56768882,24,'Samba Party'),(118,87658,345678788,23456789,30,'Sertanejo Raiz'),(119,98760,432109876,45000001,5,'Classical Collection'),(120,98760,345678908,45670123,12,'Electronic Dance'),(121,90123,345678900,1234566,16,'Chill Mix'),(125,54322,948273623,90123456,21,'KPop Hits'),(131,1234,234567890,34567012,6,'Chill Mix'),(132,98769,345678902,34501234,27,'Chill Mix'),(133,56789,321987654,56701234,9,'Chill Mix'),(134,67890,876543209,78901234,10,'Relaxing Jazz'),(135,21034,345678789,12345012,22,'Relaxing Jazz'),(136,54321,876543209,89012345,7,'Relaxing Jazz'),(137,76541,321987654,90123456,9,'Hip Hop Favorites'),(138,23456,948273623,23499999,3,'Hip Hop Favorites'),(139,10981,321987654,34567890,24,'Hip Hop Favorites'),(140,98760,345678908,45012345,4,'EDM Vibes'),(141,87651,345678908,45000001,4,'EDM Vibes'),(142,32103,345678908,45000001,4,'EDM Vibes'),(143,87658,345678789,12345670,30,'Sertanejo Raiz'),(144,87658,345678789,56701234,30,'Sertanejo Raiz'),(145,98760,345678789,34567012,30,'Sertanejo Raiz'),(146,87653,432109876,12345670,5,'Classical Collection'),(147,56789,432109876,12345670,5,'Classical Collection'),(148,98769,432109876,12345670,5,'Classical Collection'),(149,34567,948273623,56789012,21,'KPop Hits'),(150,45678,948273623,56789012,21,'KPop Hits'),(151,98760,948273623,56789012,21,'KPop Hits'),(152,76547,345678908,45012345,12,'Electronic Dance'),(153,54322,345678908,45012345,12,'Electronic Dance'),(154,21091,345678908,45012345,12,'Electronic Dance'),(155,87653,345678902,23456701,24,'Samba Party'),(156,98760,345678902,23456701,24,'Samba Party'),(157,54322,345678902,23456701,24,'Samba Party'),(158,23456,345675671,23456701,8,'Blues Rock'),(159,87653,345675671,23456701,8,'Blues Rock'),(160,98769,345675671,23456701,8,'Blues Rock'),(161,NULL,NULL,1234567,2,'HIP HOP');
/*!40000 ALTER TABLE `playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `plays`
--

LOCK TABLES `plays` WRITE;
/*!40000 ALTER TABLE `plays` DISABLE KEYS */;
INSERT INTO `plays` VALUES (101,12345,1,1234566,867530578,121,'15:23:45','2024-04-01'),(102,23456,3,1234566,948273623,121,'16:34:56','2024-04-01'),(103,34567,2,1234567,760984312,103,'10:45:12','2024-04-02'),(104,45678,4,12366666,237846509,104,'11:56:23','2024-04-02'),(105,56789,9,23450123,321987654,NULL,'09:07:34','2024-04-03'),(106,67890,10,23456789,543209876,118,'10:18:45','2024-04-03'),(107,78901,7,23499999,876543209,107,'12:29:56','2024-04-04'),(108,89012,17,34501234,987654321,132,'13:40:12','2024-04-04'),(109,90123,18,34501234,567890123,132,'14:51:23','2024-04-05'),(110,1234,6,34501234,234567890,132,'15:02:34','2024-04-05'),(111,10123,8,45670123,345675671,111,'16:12:30','2024-04-06'),(112,21034,11,50123456,345678905,NULL,'14:24:45','2024-04-06'),(113,32104,15,56768882,345678902,113,'17:36:00','2024-04-07'),(114,43214,19,67012345,345678954,NULL,'12:47:15','2024-04-07'),(115,54322,21,70123456,345678933,NULL,'11:58:30','2024-04-08'),(116,65436,23,78901234,345678331,134,'10:09:45','2024-04-08'),(117,76541,26,89012345,345678922,136,'19:21:00','2024-04-09'),(118,87658,30,23456789,345678788,118,'18:32:15','2024-04-09'),(119,98760,5,45000001,432109876,119,'15:43:30','2024-04-10'),(120,98760,12,45670123,345678908,111,'16:54:45','2024-04-10'),(121,10123,16,1234566,345678900,121,'14:06:00','2024-04-11'),(122,21034,22,1234569,345678789,NULL,'11:17:15','2024-04-11'),(123,32104,24,89012345,345678902,136,'20:28:30','2024-04-12'),(124,43214,28,78901234,345678905,134,'09:39:45','2024-04-12'),(125,54322,2,90123456,948273623,125,'13:51:00','2024-04-13'),(126,65436,4,23499999,237846509,107,'14:02:15','2024-04-13'),(127,76541,9,12345670,321987654,143,'12:13:30','2024-04-14'),(128,87658,11,1234566,345677776,121,'11:24:45','2024-04-14'),(129,98760,14,90123456,345678788,125,'19:36:00','2024-04-15'),(130,10123,17,12345670,345679099,143,'18:47:15','2024-04-15');
/*!40000 ALTER TABLE `plays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `songs`
--

LOCK TABLES `songs` WRITE;
/*!40000 ALTER TABLE `songs` DISABLE KEYS */;
INSERT INTO `songs` VALUES (1234566,'Divirta-se (O Guarani)','03:45:00',24,345678357,'EMI Music Brasil'),(1234567,'Carnaval Toda Hora','03:30:00',30,345678922,'Biscoito Fino'),(1234569,'When It Rains It Pours','04:02:00',6,234567890,'Columbia Nashville'),(12345012,'Voa Voa','03:51:00',25,345678924,'Deckdisc'),(12345670,'Cello Suite No. 1 in G Major','06:10:00',5,432109876,'Sony Classical'),(12345678,'Drivers License','04:02:00',1,867530578,'Interscope Records'),(12366666,'Rain On Me','03:02:00',1,345678933,'Interscope Records'),(23450123,'Paredão Metralhadora','02:32:00',26,345678789,'Som Livre'),(23456701,'Mountain Climbing','05:43:00',8,345675671,'J&R Adventures'),(23456789,'God’s Plan','03:18:00',3,948273623,'OVO Sound'),(23499999,'Stressed Out','03:22:00',2,345677776,'Fueled by Ramen'),(34501234,'Sosseguei','03:15:00',27,345678902,'Som Livre'),(34511140,'HUMBLE.','02:57:00',3,345678788,'Top Dawg Entertainment'),(34567012,'RATTLE!','04:13:00',19,341118901,'Elevation Worship Records'),(34567890,'Everlong','04:10:00',2,760984312,'Roswell Records'),(45000001,'Alone','04:33:00',4,345678908,'Joytime Collective'),(45012345,'Cálice','03:40:00',28,345678954,'EMI'),(45670123,'Hot Potato','01:21:00',20,345678905,'ABC Music'),(45678901,'Closer','04:04:00',4,237846509,'Disruptor Records'),(50123456,'Ando Meio Desligado','04:05:00',29,345676778,'Polydor'),(56701234,'Não Deixe o Samba Morrer','04:50:00',21,345678901,'Som Livre'),(56768882,'Livin’ la Vida Loca','04:04:00',9,345679099,'Columbia'),(56789012,'Dákiti','03:25:00',9,321987654,'Rimas Entertainment'),(63333333,'Don’t','03:20:00',10,345678900,'RCA Records'),(67012345,'Ar Condicionado no 15','03:21:00',22,345678331,'Som Livre'),(67890123,'Blinding Lights','03:20:00',10,543209876,'XO'),(70123456,'Desafinado','02:43:00',23,345678955,'Warner Bros.'),(78901234,'Don’t Know Why','03:05:00',7,876543209,'Blue Note Records'),(89012345,'Welcome to Jamrock','03:33:00',17,987654321,'Tuff Gong'),(90123456,'WAP','03:07:00',18,567890123,'Atlantic Records');
/*!40000 ALTER TABLE `songs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `update_playlist`
--

LOCK TABLES `update_playlist` WRITE;
/*!40000 ALTER TABLE `update_playlist` DISABLE KEYS */;
INSERT INTO `update_playlist` VALUES (103,34567,321987654,1234567,2,'Hip Hop Favorites','HIP HOP 2025','2024-06-03','19:25:19','root@localhost');
/*!40000 ALTER TABLE `update_playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1234,'Fernando Almeida','fernando.almeida@hotmail.com','premium','1991-01-20'),(9870,'Fernanda Almeida','fernanda.almeida@gmail.com','free','1978-10-15'),(9872,'Renata Costa','renata.costa@yahoo.com','premium','1996-05-15'),(9873,'Felipe Lima','felipe.lima@yahoo.com','premium','1990-04-30'),(10123,'Aline Martins','aline.martins@gmail.com','premium','1996-09-14'),(10980,'Ricardo Santos','ricardo.santos@hotmail.com','premium','1998-03-28'),(10981,'Roberto Santos','roberto.santos@gmail.com','free','1984-07-28'),(10984,'Sandra Alves','sandra.alves@gmail.com','premium','1983-07-11'),(12340,'Carolina Vieira','carolina.vieira@yahoo.com','free','1986-05-17'),(12345,'João Silva','joao.silva@gmail.com','premium','1990-03-15'),(21034,'Bruno Alves','bruno.alves@hotmail.com','premium','1984-11-26'),(21091,'Joana Nunes','joana.nunes@hotmail.com','free','1994-08-26'),(21092,'Amanda Silva','amanda.silva@yahoo.com','premium','1999-09-20'),(21099,'Patrícia Lima','patricia.lima@yahoo.com','premium','1986-07-17'),(23401,'Rafael Lima','rafael.lima@gmail.com','premium','1994-10-08'),(23456,'Maria Souza','maria.souza@hotmail.com','free','1985-07-22'),(32103,'Paulo Oliveira','paulo.oliveira@hotmail.com','free','1981-11-12'),(32104,'Isabela Costa','isabela.costa@yahoo.com','free','1999-04-19'),(32106,'Gabriel Souza','gabriel.souza@gmail.com','free','1991-09-22'),(32109,'Eduardo Costa','eduardo.costa@yahoo.com','premium','1986-03-19'),(34012,'Juliana Rodrigues','juliana.rodrigues@hotmail.com','free','1989-03-03'),(34567,'Pedro Oliveira','pedro.oliveira@yahoo.com','free','1995-11-10'),(40123,'Gustavo Pereira','gustavo.pereira@yahoo.com','free','1997-07-11'),(43210,'Luana Pereira','luana.pereira@hotmail.com','premium','1994-12-05'),(43211,'Vanessa Lima','vanessa.lima@gmail.com','free','1995-02-03'),(43214,'Vinícius Oliveira','vinicius.oliveira@gmail.com','free','1982-02-07'),(43217,'Carolina Oliveira','carolina.oliveira@gmail.com','free','1992-11-05'),(45678,'Ana Santos','ana.santos@gmail.com','premium','1988-04-30'),(54321,'Henrique Almeida','henrique.almeida@yahoo.com','premium','1988-04-16'),(54322,'Tatiane Souza','tatiane.souza@hotmail.com','premium','1990-06-30'),(54325,'Daniel Costa','daniel.costa@yahoo.com','free','1983-02-18'),(56789,'Luiza Costa','luiza.costa@yahoo.com','free','1992-09-05'),(65432,'Beatriz Souza','beatriz.souza@hotmail.com','free','1993-06-29'),(65433,'Carla Oliveira','carla.oliveira@gmail.com','free','1997-06-09'),(65436,'Thiago Santos','thiago.santos@yahoo.com','free','1981-08-23'),(67890,'Lucas Pereira','lucas.pereira@hotmail.com','premium','1983-12-18'),(76541,'Mariana Silva','mariana.silva@gmail.com','premium','1993-12-10'),(76542,'José Costa','jose.costa@yahoo.com','premium','1982-09-23'),(76547,'Marcos Alves','marcos.alves@yahoo.com','premium','1989-08-03'),(78901,'Camila Lima','camila.lima@gmail.com','premium','1998-02-25'),(87651,'Natália Oliveira','natalia.oliveira@gmail.com','free','1997-12-14'),(87653,'Juliana Oliveira','juliana.oliveira@gmail.com','free','1992-01-26'),(87658,'Cristiane Costa','cristiane.costa@hotmail.com','free','1980-01-25'),(89012,'Diego Santos','diego.santos@yahoo.com','free','1993-06-12'),(90123,'Mariana Oliveira','mariana.oliveira@gmail.com','free','1987-08-28'),(98760,'Lucas Oliveira','lucas.oliveira@yahoo.com','premium','1995-05-04'),(98763,'Gabriela Silva','gabriela.silva@hotmail.com','free','1985-02-07'),(98769,'Leonardo Lima','leonardo.lima@hotmail.com','free','1987-03-10'),(98770,'João','joao@example.com','Regular','1990-05-16'),(98771,'João','joao@example.com','Regular','1990-05-16'),(98772,' Rodrigo Cavallini','rodrigocavallini@gmail.com','Premium','1981-10-21');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-03 19:32:51

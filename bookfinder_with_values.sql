-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: book_finder_db
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `author` varchar(100) DEFAULT NULL,
  `description` text,
  `image_path` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `genre` varchar(100) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `books_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Pride and Prejudice','Jane Austen','The pride of high-ranking Mr Darcy and the prejudice of middle-class Elizabeth Bennet conduct an absorbing dance through the rigid social hierarchies of early-nineteenth-century England, with the passion of the two unlikely lovers growing as their union seems ever more improbable.','uploads/books/PrideAndPrejudice.jpeg',2,'Romance','Read'),(2,'The Count of Monte Cristo','Alexandre Dumas','Edmond Dantès, a young sailor betrayed by those he trusted, is falsely imprisoned in the Château d’If. After years of captivity, he escapes, discovers a vast treasure on the island of Monte Cristo, and returns under a new identity — the Count of Monte Cristo — to seek revenge on his enemies and justice for the life they stole from him.','uploads/books/TheCountOfMonteCristo.jpeg',2,'Adventure','Unread'),(3,'Alice\'s Adventures in Wonderland','Lewis Carroll','Alice is a curious young girl who follows a talking White Rabbit down a rabbit hole and finds herself in a strange and whimsical world called Wonderland. There, she encounters a series of bizarre and fantastical characters — including the Cheshire Cat, the Mad Hatter, the Queen of Hearts, and many others','uploads/books/1762865766871-AliceInWonderland.jpeg',2,'Fantasy','Borrowed'),(5,'Beauty and the Beast','Jeanne-Marie Leprince de Beaumont','When her father plucks a rose from a mysterious castle, Belle takes his place as the captive of a fearsome Beast. Within the enchanted halls, she discovers that behind his monstrous exterior lies a heart capable of love—and that her own compassion may be the key to breaking a terrible curse.','uploads/books/1762970372965-BeautyBeast.jpeg',2,'Fantasy','Read'),(6,'The Hunger Games','Suzanne Collins','In the ruins of a future nation, Katniss Everdeen volunteers to take her sister’s place in a brutal televised fight to the death. Armed with a bow and a fierce will to survive, she becomes the spark of rebellion in a world ruled by fear and spectacle.','uploads/books/1762970467295-HungerGames.jpeg',2,'Adventure','Unread'),(7,'The Maze Runner','James Dashner','Thomas wakes up in a strange metal lift with no memory of his past, emerging into a vast maze filled with other boys who are desperately searching for a way out. As the walls shift and deadly creatures hunt in the dark, he begins to suspect the maze hides a truth more dangerous than escape itself.','uploads/books/1762970546019-MazeRunner.jpeg',2,'Adventure','Borrowed'),(8,'Murder on the Orient Express','Agatha Christie','A snowbound luxury train becomes the scene of a chilling crime when a passenger is found dead in his compartment. With the tracks blocked and the killer trapped among them, detective Hercule Poirot must unravel a web of lies before the murderer strikes again.','uploads/books/1762970685780-OrientExpress.jpeg',2,'Thriller','Read'),(9,'Gone Girl','Gillian Flynn','When Amy Dunne disappears on her fifth wedding anniversary, suspicion quickly falls on her husband, Nick. But as the truth twists and turns through lies, media frenzy, and manipulation, it becomes clear that nothing—and no one—is what it seems.','uploads/books/1762970798056-GoneGirl.jpeg',2,'Thriller','Unread'),(10,'The Book Thief','Markus Zusak','In Nazi Germany, young Liesel steals books to make sense of a world falling apart. As Death himself narrates her story, words become her refuge and rebellion, a fragile act of beauty against overwhelming darkness.','uploads/books/1762970859818-BookThief.jpeg',2,'Drama','Borrowed'),(11,'The Cruel Prince','Holly Black','Stolen away to live among the immortal fae, mortal girl Jude Duarte learns that beauty in their world hides cruelty sharper than any blade. To survive—and to claim power—she must outwit the wicked prince who despises her, even as fascination begins to blur the line between hate and desire.','uploads/books/1762970999249-CruelPrince.jpeg',2,'Fantasy','Read'),(12,'Jane Eyre','Charlotte Brontë','Orphaned and plain but fiercely independent, Jane becomes a governess at the mysterious Thornfield Hall, where she meets the brooding Mr. Rochester. As love blooms amid secrets and shadows, Jane must choose between passion and her unshakable sense of self.','uploads/books/1762971100786-JaneEyre.jpeg',2,'Romance','Unread'),(13,'Jane Eyre','Charlotte Brontë','Orphaned and plain but fiercely independent, Jane becomes a governess at the mysterious Thornfield Hall, where she meets the brooding Mr. Rochester. As love blooms amid secrets and shadows, Jane must choose between passion and her unshakable sense of self.','uploads/books/1762971179115-JaneEyre.jpeg',3,'Romance','Read'),(14,'The Cruel Prince','Holly Black','Stolen away to live among the immortal fae, mortal girl Jude Duarte learns that beauty in their world hides cruelty sharper than any blade. To survive—and to claim power—she must outwit the wicked prince who despises her, even as fascination begins to blur the line between hate and desire.','uploads/books/1762971210194-CruelPrince.jpeg',3,'Fantasy','Read'),(15,'Beauty and the Beast','Jeanne-Marie Leprince de Beaumont','When her father plucks a rose from a mysterious castle, Belle takes his place as the captive of a fearsome Beast. Within the enchanted halls, she discovers that behind his monstrous exterior lies a heart capable of love—and that her own compassion may be the key to breaking a terrible curse.','uploads/books/1762971248586-BeautyBeast.jpeg',3,'Romance','Borrowed');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorites` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `book_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `book_id` (`book_id`),
  CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
INSERT INTO `favorites` VALUES (11,2,1),(16,3,15),(17,2,6),(21,2,3);
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genres` (
  `id` int NOT NULL AUTO_INCREMENT,
  `genre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'Fantasy'),(2,'Science Fiction'),(3,'Romance'),(4,'Mystery'),(5,'Thriller'),(6,'Horror'),(7,'Adventure'),(8,'Historical Fiction'),(9,'Biography'),(10,'Poetry'),(11,'Drama'),(12,'Crime'),(13,'Self-Help'),(14,'Programming'),(15,'Technology'),(16,'Science'),(17,'Education'),(18,'Children'),(19,'Classics'),(20,'History');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'read'),(2,'unread'),(3,'borrowed');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile_photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'Alina','$2b$10$K8/qdFLMkgCZgIy8re9Tv.MSnhFv37nhKaducr9pkqbwhe2BNXpuu','assets/images/profile_photos/profile_1.jpeg'),(3,'Sara','$2b$10$BwxA8WL/kK9BaP1MNZGtx.kVocClhPrI3MEEOy6v11l5FcJq8H0z.','assets/images/profile_photos/profile_3.jpeg'),(5,'Max','$2b$10$f5QcGIe9YtJYPF3PtvZXnOroLJTh.TfQePhpsCihS8dEOlyUmE1ai','assets/images/profile_photos/profile_6.jpeg');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-03 19:01:09

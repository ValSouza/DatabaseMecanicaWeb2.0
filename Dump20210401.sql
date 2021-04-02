-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_mecanica_mvc
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.38-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_client`
--

DROP TABLE IF EXISTS `tb_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_client` (
  `id_client` int(11) NOT NULL AUTO_INCREMENT,
  `client_name` varchar(80) NOT NULL,
  `client_telefone` varchar(15) NOT NULL,
  `client_endereco` varchar(90) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id_client`),
  KEY `fk_tb_client_tb_user1_idx` (`id_user`),
  CONSTRAINT `fk_tb_client_tb_user1` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_client`
--

LOCK TABLES `tb_client` WRITE;
/*!40000 ALTER TABLE `tb_client` DISABLE KEYS */;
INSERT INTO `tb_client` VALUES (1,'Rubens McBastian','43985444444','Rua do Trike',1),(2,'Rose McBastian','43999888888','Rua do Salvador',1),(3,'Will McBastian Brutis','43997988888','Rua do Eco',1),(4,'Vladimir Barros','43989898888','Rua do TI',1),(6,'Marco Polo','45544','Rua do Augusto Cury',1),(7,'Ariza Mello Valdecir','43 9999 88888','Rua do Trio',1),(8,'AMV','4333323544','MacBastiansMelloArizaSolutions',1),(9,'Cliente teste','43999999999','Rua do cliente',1);
/*!40000 ALTER TABLE `tb_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_item_venda`
--

DROP TABLE IF EXISTS `tb_item_venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_item_venda` (
  `id_item` int(11) NOT NULL AUTO_INCREMENT,
  `valor_item` decimal(10,2) NOT NULL,
  `id_servico` int(11) NOT NULL,
  `id_staff` int(11) NOT NULL,
  `id_venda` int(11) NOT NULL,
  PRIMARY KEY (`id_item`),
  KEY `fk_tb_item_venda_tb_servico1_idx` (`id_servico`),
  KEY `fk_tb_item_venda_tb_staff1_idx` (`id_staff`),
  KEY `fk_tb_item_venda_tb_venda1_idx` (`id_venda`),
  CONSTRAINT `fk_tb_item_venda_tb_servico1` FOREIGN KEY (`id_servico`) REFERENCES `tb_servico` (`id_servico`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_item_venda_tb_staff1` FOREIGN KEY (`id_staff`) REFERENCES `tb_staff` (`id_staff`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_item_venda_tb_venda1` FOREIGN KEY (`id_venda`) REFERENCES `tb_venda` (`id_venda`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_item_venda`
--

LOCK TABLES `tb_item_venda` WRITE;
/*!40000 ALTER TABLE `tb_item_venda` DISABLE KEYS */;
INSERT INTO `tb_item_venda` VALUES (1,65.00,2,3,1),(2,150.00,5,1,1),(3,65.00,2,3,2),(4,150.00,5,1,2),(5,250.00,4,1,2),(7,215.00,4,1,4),(8,145.00,5,2,4),(9,150.00,4,2,5),(10,80.00,6,1,5),(11,25.00,5,2,6),(12,33.00,5,3,7),(13,45.00,4,9,7),(14,33.00,5,3,8),(15,25.00,2,2,9),(16,23.00,5,2,9),(17,33.00,5,9,9),(18,55.00,3,9,10),(19,35.00,3,3,10),(20,45.00,4,1,10),(22,65.00,2,2,11),(23,25.00,5,3,13),(24,33.00,3,2,13),(25,33.00,6,1,13),(26,124.00,3,3,14),(27,125.00,5,2,14),(28,25.00,5,2,15),(29,33.00,4,12,15),(30,45.00,6,2,16),(31,65.00,4,1,16),(32,10.00,6,1,17),(33,35.00,3,12,17),(34,45.85,5,3,18),(35,55.00,2,3,18),(36,566.00,5,1,19),(37,850.00,2,3,19),(38,325.00,4,9,19),(39,1250.50,6,1,20),(40,175.00,6,9,20),(43,35.00,4,9,22),(44,35.00,4,9,22),(45,45.00,4,14,23),(46,45.00,4,14,23),(50,200.00,4,2,24),(51,150.00,5,14,25),(52,150.00,5,14,25),(53,150.00,4,9,26),(54,250.00,5,9,26),(55,140.00,6,2,26),(57,150.00,5,14,27),(58,200.00,6,3,27),(59,200.00,6,9,28),(60,125.00,5,14,29),(61,120.00,3,9,29),(62,124.00,4,1,29),(63,23.00,2,2,29),(64,125.00,3,1,29),(65,140.00,5,12,30),(66,400.00,4,9,30),(67,130.00,5,9,31),(68,45.00,6,14,32),(69,125.00,4,3,33),(70,155.00,5,14,33),(71,78.00,2,2,33),(72,110.00,6,14,34),(73,250.00,4,14,34),(74,220.00,3,2,34),(75,125.00,5,14,35),(76,150.00,4,3,35),(77,50.00,6,3,35),(78,150.00,5,1,36),(79,150.00,6,14,37),(80,140.00,5,3,38),(81,120.00,5,9,37),(82,145.00,4,3,39),(83,100.00,2,2,39),(84,200.00,4,1,39),(85,220.00,3,1,39),(86,90.00,6,1,39),(87,150.00,3,2,39),(88,250.00,5,14,39),(89,230.00,4,2,39),(90,150.00,2,3,40),(91,120.00,5,3,40),(92,320.00,4,3,40),(93,95.00,6,3,40),(94,150.00,3,3,40),(95,150.00,6,14,41),(96,154.00,4,3,41),(97,200.00,2,12,41),(98,150.00,4,12,41),(99,125.00,6,2,42),(100,85.00,2,2,42),(101,250.00,5,2,42),(102,330.00,4,2,42),(103,220.00,3,2,42),(104,150.00,6,9,43),(105,230.00,3,1,44),(106,125.00,2,12,45),(107,100.00,7,12,45),(108,250.00,5,12,45),(109,240.00,4,12,45),(110,115.00,6,12,45),(111,150.00,2,14,46),(112,250.00,3,1,47);
/*!40000 ALTER TABLE `tb_item_venda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_marca`
--

DROP TABLE IF EXISTS `tb_marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_marca` (
  `id_marca` int(11) NOT NULL AUTO_INCREMENT,
  `nome_marca` varchar(60) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id_marca`),
  KEY `fk_tb_marca_tb_user_idx` (`id_user`),
  CONSTRAINT `fk_tb_marca_tb_user` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_marca`
--

LOCK TABLES `tb_marca` WRITE;
/*!40000 ALTER TABLE `tb_marca` DISABLE KEYS */;
INSERT INTO `tb_marca` VALUES (1,'VolksWagen',1),(2,'Ford',1),(3,'Fiat',1),(4,'GM Chevrolet',1),(5,'Citroen',1),(6,'Jeep',1),(7,'Mercedez Benz',1),(8,'Ferrari',1),(14,'Renault',1),(15,'Lamborghini',1),(19,'Cherry Boom',1),(20,'Opel',1);
/*!40000 ALTER TABLE `tb_marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_modelo`
--

DROP TABLE IF EXISTS `tb_modelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_modelo` (
  `id_modelo` int(11) NOT NULL AUTO_INCREMENT,
  `nome_modelo` varchar(45) NOT NULL,
  `id_marca` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id_modelo`),
  KEY `fk_tb_modelo_tb_marca1_idx` (`id_marca`),
  KEY `fk_tb_modelo_tb_user1_idx` (`id_user`),
  CONSTRAINT `fk_tb_modelo_tb_marca1` FOREIGN KEY (`id_marca`) REFERENCES `tb_marca` (`id_marca`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_modelo_tb_user1` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_modelo`
--

LOCK TABLES `tb_modelo` WRITE;
/*!40000 ALTER TABLE `tb_modelo` DISABLE KEYS */;
INSERT INTO `tb_modelo` VALUES (1,'147 ',3,1),(2,'New Modena ',8,1),(3,'C4',5,1),(4,'Mustang',2,1),(5,'Cruze',4,1),(6,'Pajero',6,1),(7,'Classe A',7,1),(8,'Fusca',1,1),(9,'Corsa',4,1),(15,'Fuca Abacate do Paulão',1,1),(19,'Shelby GT',2,1);
/*!40000 ALTER TABLE `tb_modelo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_servico`
--

DROP TABLE IF EXISTS `tb_servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_servico` (
  `id_servico` int(11) NOT NULL AUTO_INCREMENT,
  `nome_servico` varchar(80) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id_servico`),
  KEY `fk_tb_servico_tb_user1_idx` (`id_user`),
  CONSTRAINT `fk_tb_servico_tb_user1` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_servico`
--

LOCK TABLES `tb_servico` WRITE;
/*!40000 ALTER TABLE `tb_servico` DISABLE KEYS */;
INSERT INTO `tb_servico` VALUES (2,'Balanceamento de Pneus',1),(3,'Troca de Pastilhas do Freio',1),(4,'Troca de Bomba d´agua',1),(5,'Troca das magueiras de refrigeração',1),(6,'Troca de oleo',1),(7,'Limpeza de bico injetor',1);
/*!40000 ALTER TABLE `tb_servico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_staff`
--

DROP TABLE IF EXISTS `tb_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_staff` (
  `id_staff` int(11) NOT NULL AUTO_INCREMENT,
  `staff_nome` varchar(80) NOT NULL,
  `staff_telefone` varchar(16) NOT NULL,
  `staff_endereco` varchar(90) NOT NULL,
  `staff_ativo` tinyint(1) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id_staff`),
  KEY `fk_tb_staff_tb_user1_idx` (`id_user`),
  CONSTRAINT `fk_tb_staff_tb_user1` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_staff`
--

LOCK TABLES `tb_staff` WRITE;
/*!40000 ALTER TABLE `tb_staff` DISABLE KEYS */;
INSERT INTO `tb_staff` VALUES (1,'Ronald McBastian','43999999999','Rua da Unimed',1,1),(2,'Robert McBastian','43666555554','Rua da Mum',1,1),(3,'Paul Fitzsimons','43945454545','RuadoEco',1,1),(9,'Joao Carlos dos Santos','1111111111111','Santa Barbara',0,1),(12,'Jackita  Jenny Jakl','998396924','Oceans 77',0,1),(13,'Teste','35415445','Rua de Mallorca',1,1),(14,'Joao Nobody','43 9999 88888','Rua de Ninguém',1,1);
/*!40000 ALTER TABLE `tb_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `email_user` varchar(60) NOT NULL,
  `senha_user` varchar(45) NOT NULL,
  `status_usuario` tinyint(1) NOT NULL,
  `data_cadastro` date NOT NULL,
  `nome_usuario` varchar(45) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user`
--

LOCK TABLES `tb_user` WRITE;
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
INSERT INTO `tb_user` VALUES (1,'bastian@brutus.com','bastianicos',1,'2020-08-17','Bastian Brutus'),(2,'melloko@hotmail.com','mello123',1,'2021-01-14','Arildo Mello'),(3,'vinicius.ariza@gmail.com','arizavini',1,'2021-01-14','Vinicius Ariza');
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_veiculos`
--

DROP TABLE IF EXISTS `tb_veiculos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_veiculos` (
  `id_veiculos` int(11) NOT NULL AUTO_INCREMENT,
  `placa_veiculo` varchar(11) NOT NULL,
  `cor_veiculo` varchar(45) NOT NULL,
  `id_client` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_modelo` int(11) NOT NULL,
  PRIMARY KEY (`id_veiculos`),
  KEY `fk_tb_veiculos_tb_client1_idx` (`id_client`),
  KEY `fk_tb_veiculos_tb_user1_idx` (`id_user`),
  KEY `fk_tb_veiculos_tb_modelo1_idx` (`id_modelo`),
  CONSTRAINT `fk_tb_veiculos_tb_client1` FOREIGN KEY (`id_client`) REFERENCES `tb_client` (`id_client`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_veiculos_tb_modelo1` FOREIGN KEY (`id_modelo`) REFERENCES `tb_modelo` (`id_modelo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_veiculos_tb_user1` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_veiculos`
--

LOCK TABLES `tb_veiculos` WRITE;
/*!40000 ALTER TABLE `tb_veiculos` DISABLE KEYS */;
INSERT INTO `tb_veiculos` VALUES (1,'AGE4566','Preto',2,1,3),(2,'AJS1222','Vermelha',2,1,2),(3,'AKE6988','Plata',1,1,4),(4,'','Verde',1,1,8),(5,'AIU7877','Cinza',4,1,4),(6,'AKJ4699','Preto',4,1,7),(7,'AJE9877','Branco',3,1,5),(8,'AKL5613','Azul',3,1,6),(9,'','Azul gelo',6,1,1),(10,'','Azul',1,1,1),(11,'','Amarelo',7,1,9),(12,'','Black Diamante',7,1,6),(13,'','Azul',7,1,1),(14,'AEF5544','Black Diamante',6,1,4),(15,'AMG3511','Prata',8,1,7),(16,'ADM3400','Red Rose',8,1,2);
/*!40000 ALTER TABLE `tb_veiculos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_venda`
--

DROP TABLE IF EXISTS `tb_venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_venda` (
  `id_venda` int(11) NOT NULL AUTO_INCREMENT,
  `data_venda` date NOT NULL,
  `obs_venda` varchar(200) DEFAULT NULL,
  `id_veiculos` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  PRIMARY KEY (`id_venda`),
  KEY `fk_tb_venda_tb_veiculos1_idx` (`id_veiculos`),
  KEY `fk_tb_venda_tb_user1_idx` (`id_user`),
  KEY `fk_tb_venda_tb_client1_idx` (`id_client`),
  CONSTRAINT `fk_tb_venda_tb_client1` FOREIGN KEY (`id_client`) REFERENCES `tb_client` (`id_client`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_venda_tb_user1` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_venda_tb_veiculos1` FOREIGN KEY (`id_veiculos`) REFERENCES `tb_veiculos` (`id_veiculos`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_venda`
--

LOCK TABLES `tb_venda` WRITE;
/*!40000 ALTER TABLE `tb_venda` DISABLE KEYS */;
INSERT INTO `tb_venda` VALUES (1,'2020-08-18','Cliente optou por mangueiras de segunda linha mesmo avisado que a garantia é somente um mês.',4,1,1),(2,'2020-08-18','Algo errado não está certo!\r\n',3,1,2),(3,'2020-08-18','Bomba dagua trazida pelo Cliente!',4,1,1),(4,'2020-08-18','Cliente foi avisado de um problema na bomba de Óleo!',4,1,4),(5,'2020-08-18','Cliente não quis trocar a correia dentada que já apresentava sinais de longa rodagem!',4,1,4),(6,'2020-10-14','PHP Record ',4,1,1),(7,'2020-10-15','PHP Terceiro',7,1,3),(8,'2020-10-15','PHP Terceiro',7,1,3),(9,'2020-10-16','PHP testing duplicates',3,1,1),(10,'2020-10-15','Testing Alter button, worked my friend!',5,1,4),(11,'2020-10-17','Trying to exclude',6,1,4),(12,'2020-10-16','teste if Altering\r\n',1,1,2),(13,'2020-10-15','Direto de Mallorca cidade/ de llucmajor para a WBarros Brasil',3,1,1),(14,'2020-10-20','PHP Rubens\r\n',3,1,1),(15,'2020-10-20','Testar tela atendimento!!',3,1,1),(16,'2020-10-21','Testando tela atendimento de novo.',4,1,1),(17,'2020-10-21','Fiat não tem força!',9,1,6),(18,'2020-10-21','Nada a declarar!',9,1,6),(19,'2020-10-23','Finally Will came to fix his car and we gave him a good discount!',7,1,3),(20,'2020-10-23','Will came to fix the tires!',8,1,3),(21,'2020-11-15','',8,1,3),(22,'2020-11-17','',1,1,2),(23,'2020-11-17','',8,1,3),(24,'2020-11-17','',7,1,3),(25,'2020-11-17','',5,1,4),(26,'2020-11-17','',7,1,3),(27,'2020-11-17','',6,1,4),(28,'2020-11-17','',2,1,2),(29,'2020-11-23','Tentar imprimir com PDF',1,1,2),(30,'2020-11-25','PDF first time',9,1,6),(31,'2020-11-17','',6,1,4),(32,'2020-11-10','',5,1,4),(33,'2020-11-23','',9,1,6),(34,'2020-11-29','Carro apresenta problemas com suspensão esquerda! Dono foi informado!',13,1,7),(35,'2020-11-30','',12,1,7),(36,'2020-11-30','',3,1,1),(37,'2020-12-01','',7,1,3),(38,'2020-12-01','',5,1,4),(39,'2020-12-01','',9,1,6),(40,'2020-12-02','Cliente só não é mais chato porque é um só!',12,1,7),(41,'2020-12-03','Vamos terminar essa APP??',9,1,6),(42,'2020-02-07','Cliente é mal pagador!! ',6,1,4),(43,'2020-12-09','Testando datas',1,1,2),(44,'2020-12-09','Data Invertida!',4,1,1),(45,'2020-12-14','Testando a data!',8,1,3),(46,'2020-12-15','Testando a data!',11,1,7),(47,'2021-01-11','',1,1,7);
/*!40000 ALTER TABLE `tb_venda` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-01 21:35:53
